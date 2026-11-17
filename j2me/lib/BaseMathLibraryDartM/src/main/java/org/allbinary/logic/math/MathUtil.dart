// Generated Code Do Not Modify
// ignore_for_file: unused_import, unused_local_variable, unnecessary_null_comparison
// package org.allbinary.logic.math

import 'package:allbinary/allbinary_java.dart';

class MathUtil {
    static final MathUtil instance = MathUtil();
    int ACCURACY = 0;

    // Java field initializers run after the base constructor
    void initFieldsMathUtil() {
    this.ACCURACY = 100;
    }

    MathUtil() {
        this.initFieldsMathUtil();
    }
    

    static MathUtil getInstance() {
        return MathUtil.instance;
    }
    

    int getTotalDigits(int digits) {
        int total = 0;
        while (digits > 0) {
            digits = digits ~/ 10;
            total++;
        }
        return total;
    }
    

    int sqrt(int value) {
        if (value <= 1) {
            return value;
        }
        int accumulated = value >> 1;
        int result = (accumulated + (value ~/ accumulated)) >> 1;
        do {
            accumulated = result;
            result = (accumulated + (value ~/ accumulated)) >> 1;
        } while (accumulated > result);
        return accumulated;
    }
    

    double sqrtd(int x) {
        if (x == 0) {
            return 0.0;
        }
        if (x < 0) {
            return -1.0;
        }
        double result = (x).toDouble();
        for (int index = 0; index < this.ACCURACY; index++) {
            result = (result + ((x).toDouble() / result)) / 2.0;
        }
        return result;
    }
    

    int abs(int value) {
        return ((value < 0) ? -value : value);
    }
    

    int abslong(int value) {
        return ((value < 0) ? -value : value);
    }
    

    int min(int value, int value2) {
        return ((value <= value2) ? value : value2);
    }
    

    int max(int value, int value2) {
        return ((value >= value2) ? value : value2);
    }
}

