#include "iostream"
#include "cmath"
#include <fstream>

using namespace std;

int main() {
    ofstream Trig("Trig.jack");

    Trig << "class Trig {\n"
            "    static Array sin;\n"
            "    static Array v;\n"
            "    static Array atan;\n"
            "    static Array t;\n"
            "\n"
            "    method void init() {\n"
            "        let sin = Array.new(46);\n\n";

    // Fill the sin array
    for (int i = 0; i < 37; i++) {
        Trig << "        let sin[" << i << "] = " << (int)(sin(i * 5 * M_PI / 180.f) * 100) << ";\n";
    }

    Trig << "\n        let v = Array.new(143);\n\n";

    // Fill the v array
    for (int i = -71; i <= 71; i++) {
        float theta = acos(i / 100.f);
        Trig << "        let v[" << i + 71 << "] = " << (int)(theta / M_PI * 100) << ";\n";
    }

    int atanSize = 301;
    Trig << "\n        let atan = Array.new(" << atanSize << ");\n\n";

    // Fill the atan array
    for (int i = 0; i < atanSize; i++) {
        Trig << "        let atan[" << i << "] = " << (int)(atan(i / 100.) * 100) << ";\n";
    }

    Trig << "\n        let t = Array.new(201);\n\n";

    // Fill the t array
    for (int i = 0; i < 101; i++) {
        float a = (float)(i + 100) / 100.f;
        float d = 2.f * (2.f - a);
        Trig << "        let t[" << i << "] = " << (int)((2.f - sqrt(d)) / (2.f * a) * 100) << ";\n";
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
    Trig << "    method int getV(int x) {\n"
            "        return v[x + 71];\n"
            "    }\n\n";

    // Atan function
    Trig << "    method int atan(int x) {\n"
            "        if (x > " << atanSize << ") {\n"
            "            return 156; // Approximate value for very large arguments\n"
            "        }\n"
            "        if (x < -" << atanSize << ") {\n"
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
            "    method int atan2(int y, int x) {\n"
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

    Trig << "    function int getT(int x) {\n"
            "        return t[x];\n"
            "    }\n\n";

    // Dispose function
    Trig << "    method void dispose() {\n"
            "        do Memory.deAlloc(sin);\n"
            "        do Memory.deAlloc(v);\n"
            "        do Memory.deAlloc(atan);\n"
            "        do Memory.deAlloc(t);\n"
            "\n"
            "        return;\n"
            "    }\n"
            "}";

    Trig.close();

    return 0;
}