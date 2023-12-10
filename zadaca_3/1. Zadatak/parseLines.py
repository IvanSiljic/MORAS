def _parse_lines(self):
    self._comment = False    
    self._iter_lines(self._parse_line)

def _parse_line(self, line, p, o):
    l = ""
    i = 0
    while i < len(line) - 1:
        p = line[i] + line[i + 1]

        if (not self._comment and p == "/*") or (self._comment and p == "*/"):
            self._comment = not self._comment
            i += 1
        elif not self._comment and p == "*/":
            self._flag = False
            self._line = o
            self._errm = "Unbalanced comment delimiter"
        elif p == "//":
            break
        elif not line[i].isspace() and not self._comment:
            l += line[i]

        i += 1
    return l
