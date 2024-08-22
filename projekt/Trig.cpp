#include "iostream"
#include "cmath"
#include <fstream>

using namespace std;

int main() {
    ofstream Trig("Trig.jack");

    Trig << "class Trig {\n"
            "    static Array sin;\n"
            "    static Array acos;\n"
            "    static Array atan;\n"
            "\n"
            "    method void init() {\n"
            "        let sin = Array.new(46);\n\n";

    // Fill the sin array
    for (int i = 0; i < 37; i++) {
        Trig << "        let sin[" << i << "] = " << (int)(sin(i * 5 * M_PI / 180.f) * 100) << ";\n";
    }

    Trig << "\n        let acos = Array.new(101);\n\n";

    // Fill the acos array
    for (int i = 0; i < 101; i++) {
        Trig << "        let acos[" << i << "] = " << (int)(acos(i / 100.) * 100) << ";\n";
    }

    Trig << "\n        let atan = Array.new(301);\n\n";

    // Fill the atan array
    for (int i = 0; i < 301; i++) {
        Trig << "        let atan[" << i << "] = " << (int)(atan(i / 100.) * 100) << ";\n";
    }

    Trig << "\n        return;\n    }\n\n";

    // Sin function
    Trig << "    method int sin(int angle) {\n"
            "        var int ret, nAngle;\n"
            "        let ret = 1;\n"
            "\n"
            "        if (angle < 0) {\n"
            "            let ret = -1;\n"
            "            let angle = -angle;\n"
            "        }\n"
            "\n"
            "        let nAngle = angle - (angle / 360 * 360);\n"
            "\n"
            "        if (nAngle > 180) {\n"
            "            let ret = -ret * sin[(360 - nAngle) / 5];\n"
            "        } else {\n"
            "            let ret = ret * sin[nAngle / 5];\n"
            "        }\n"
            "\n"
            "        return ret;\n"
            "    }\n\n";

    // Acos function
    Trig << "    method int acos(int x) {\n"
            "        var int ret;\n"
            "\n"
            "        if (x < 0) {\n"
            "            let ret = 314 - acos[-x];\n"
            "        } else {\n"
            "            let ret = acos[x];\n"
            "        }\n"
            "\n"
            "        return ret;\n"
            "    }\n\n";

    // Atan function
    Trig << "    method int atan(int x) {\n"
            "        if (x > 300) {\n"
            "            return 156; // Approximate value for very large arguments\n"
            "        }\n"
            "        if (x < -300) {\n"
            "            return -156;\n"
            "        }\n"
            "\n"
            "        if (x < 0) {\n"
            "            return -atan[-x];\n"
            "        } else {\n"
            "            return atan[x];\n"
            "        }\n"
            "    }\n";

    // Atan2 function
    Trig << "\n"
            "method int atan2(int y, int x) {\n"
            "        if (x > 0) {\n"
            "            return atan((y * 100) / x);\n"
            "        }\n"
            "        \n"
            "        if (x < 0) {\n"
            "            if (y < 0) {\n"
            "                return atan((y * 100) / x) - 314;\n"
            "            } else {\n"
            "                return atan((y * 100) / x) + 314;\n"
            "            }\n"
            "            \n"
            "        }\n"
            "\n"
            "        if (x = 0) {\n"
            "            if (y = 0) {\n"
            "                return 0;\n"
            "            }\n"
            "            if (y > 0) {\n"
            "                return 157;\n"
            "            } else {\n"
            "                return -157;\n"
            "            }\n"
            "        }\n"
            "        return 0;\n"
            "    }\n\n";

    // Dispose function
    Trig << "    method void dispose() {\n"
            "        do Memory.deAlloc(sin);\n"
            "        do Memory.deAlloc(acos);\n"
            "        do Memory.deAlloc(atan);\n"
            "\n"
            "        return;\n"
            "    }\n"
            "}";

    Trig.close();

    return 0;
}