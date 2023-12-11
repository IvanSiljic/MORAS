def _parse_macros(self):
    self._while = False
    self._while_counter = -1
    self._while_nested = []
    self._iter_lines(self._parse_macro)


def _parse_macro(self, line, p, o):
    import re
    line = line.strip()

    if line[0] != "$":
        return line

    if line == "$END":
        if not self._while:
            self._flag = False
            self._line = o
            self._errm = "Unexpected end of WHILE loop"
            return

        end = self._while_nested.pop()

        return [f"@WHILE_LOOP_START_{end}",
                f"0;JMP",
                f"(WHILE_LOOP_END_{end})"
                ]

    command = line[1:].split('(')[0]

    if len(command) == 0:
        self._flag = False
        self._line = o
        self._errm = "Missing command after $"
        return

    args = line.split('(')[1].split(')')[0]

    if len(args) > 2:
        self._flag = False
        self._line = o
        self._errm = "Unexpected character after ;"
        return

    if len(args[0].strip()) == 0:
        self._flag = False
        self._line = o
        self._errm = "Empty argument A"
        return

    a = args[0].strip()

    if command == "MV":
        if len(args) != 2:
            self._flag = False
            self._line = o
            self._errm = "Missing macro arguments"
            return

        if len(args[1].strip()) == 0:
            self._flag = False
            self._line = o
            self._errm = "Empty argument B"
            return


        b = args[1].strip()

        return [f"@{a}",
                f"D=M;",
                f"@{b}",
                f"M=D;"]

    elif command == "SWP":
        if len(args) != 2:
            self._flag = False
            self._line = o
            self._errm = "Missing macro arguments"
            return

        if len(args[1].strip()) == 0:
            self._flag = False
            self._line = o
            self._errm = "Empty"
            return

        b = args[1].strip()

        return [f"@{a}",
                f"D=M;",
                f"@swap",
                f"M=D;",
                f"@{b}",
                f"D=M;",
                f"@{a}",
                f"M=D;",
                f"@swap",
                f"D=M;",
                f"@{b}",
                f"M=D;"]

    elif command == "SUM":
        if len(args) != 3:
            self._flag = False
            self._line = o
            self._errm = "Missing macro arguments"
            return

        if len(args[1].strip()) == 0:
            self._flag = False
            self._line = o
            self._errm = "Empty argument B"
            return

        if len(args[2].strip()) == 0:
            self._flag = False
            self._line = o
            self._errm = "Empty argument D"
            return

        b = args[1].strip()
        d = args[2].strip()

        return [f"@{a}",
                f"D=D+M;",
                f"@{b}",
                f"D=D+M;",
                f"@{d}",
                f"M=D;"]

    elif command == "WHILE":
        if len(a.strip()) == 0:
            self._flag = False
            self._line = o
            self._errm = "Empty argument A"
            return

        self._while_counter += 1
        self._while_nested.append(self._while_counter)
        self._while = True

        a = args[0].strip()

        return [f"(WHILE_LOOP_START_{self._while_counter})",
                f"@{a}",
                f"D=M;",
                f"@WHILE_LOOP_END_{self._while_counter}",
                f"D;JEQ"
                ]

    else:
        self._flag = False
        self._line = o
        self._errm = f"Unknown macro: {command}"
        return
