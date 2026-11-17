// Generated Code Do Not Modify
// ignore_for_file: unused_import, unused_local_variable, unnecessary_null_comparison
// package org.allbinary.util

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/math/MathUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';

class ArrayUtil {
    static final ArrayUtil instance = ArrayUtil();
    late MathUtil mathUtil;

    // Java field initializers run after the base constructor
    void initFieldsArrayUtil() {
    this.mathUtil = MathUtil.getInstance();
    }

    ArrayUtil() {
        this.initFieldsArrayUtil();
    }
    

    static ArrayUtil getInstance() {
        return ArrayUtil.instance;
    }
    

    List<Object?> copyOf(List<Object?> original, int newLength) {
        return this.copyOfType(original, newLength, jClassName(original));
    }
    

    List<Object?> copyOfType(List<Object?> original, int newLength, String newType) {
        final List<Object?> copy = List<Object?>.filled(newLength, null);
        JSystem.arraycopy(original, 0, copy, 0, this.mathUtil.min(original.length, newLength));
        return copy;
    }
    

    List<int> copyOfbyte(List<int> original, int newLength) {
        final List<int> copy = List<int>.filled(newLength, 0);
        JSystem.arraycopy(original, 0, copy, 0, this.mathUtil.min(original.length, newLength));
        return copy;
    }
    

    List<int> copyOfshort(List<int> original, int newLength) {
        final List<int> copy = List<int>.filled(newLength, 0);
        JSystem.arraycopy(original, 0, copy, 0, this.mathUtil.min(original.length, newLength));
        return copy;
    }
    

    List<int> copyOfint(List<int> original, int newLength) {
        final List<int> copy = List<int>.filled(newLength, 0);
        JSystem.arraycopy(original, 0, copy, 0, this.mathUtil.min(original.length, newLength));
        return copy;
    }
    

    List<int> copyOflong(List<int> original, int newLength) {
        final List<int> copy = List<int>.filled(newLength, 0);
        JSystem.arraycopy(original, 0, copy, 0, this.mathUtil.min(original.length, newLength));
        return copy;
    }
    

    List<int> copyOfchar(List<int> original, int newLength) {
        final List<int> copy = List<int>.filled(newLength, 0);
        JSystem.arraycopy(original, 0, copy, 0, this.mathUtil.min(original.length, newLength));
        return copy;
    }
    

    List<double> copyOffloat(List<double> original, int newLength) {
        final List<double> copy = List<double>.filled(newLength, 0.0);
        JSystem.arraycopy(original, 0, copy, 0, this.mathUtil.min(original.length, newLength));
        return copy;
    }
    

    List<double> copyOfdouble(List<double> original, int newLength) {
        final List<double> copy = List<double>.filled(newLength, 0.0);
        JSystem.arraycopy(original, 0, copy, 0, this.mathUtil.min(original.length, newLength));
        return copy;
    }
    

    List<bool> copyOfboolean(List<bool> original, int newLength) {
        final List<bool> copy = List<bool>.filled(newLength, false);
        JSystem.arraycopy(original, 0, copy, 0, this.mathUtil.min(original.length, newLength));
        return copy;
    }
    

    void reverse(List<int> intArray) {
        final int length = intArray.length - 1;
        int temp = 0;
        final int size = length ~/ 2;
        for (int index = 0; index <= size; index++) {
            temp = intArray[index];
            intArray[index] = intArray[length - index];
            intArray[length - index] = temp;
        }
    }
    

    void flip(List<int> intArray, int width, int height) {
        final int length = height - 1;
        int temp = 0;
        int index = 0;
        int rowIndex = 0;
        for (int y = 0; y <= length ~/ 2; y++) {
            for (int x = 0; x < width; x++) {
                rowIndex = ((length - y) * width);
                index = x + (y * width);
                temp = intArray[index];
                intArray[index] = intArray[rowIndex + x];
                intArray[rowIndex + x] = temp;
            }
        }
    }
    

    String toStringFromTwoDimensionaArray(List<List<int>?> twoDimensionalIntArray) {
        final StringMaker stringBuffer = StringMaker();
        final CommonSeps commonSeps = CommonSeps.getInstance();
        final int endIndex = twoDimensionalIntArray.length;
        final int endIndex2 = twoDimensionalIntArray[0]!.length;
        for (int index = 0; index < endIndex; index++) {
            stringBuffer.append(commonSeps.BRACE_OPEN);
            for (int index2 = 0; index2 < endIndex2; index2++) {
                stringBuffer.appendint(twoDimensionalIntArray[index]![index2]);
                stringBuffer.append(commonSeps.COMMA_SEP);
            }
            stringBuffer.append(commonSeps.BRACE_CLOSE);
            stringBuffer.append(commonSeps.NEW_LINE);
        }
        return stringBuffer.toString();
    }
    

    String toStringFromObjectArray(List<Object?> objectArray) {
        final StringMaker stringBuffer = StringMaker();
        final CommonSeps commonSeps = CommonSeps.getInstance();
        for (int index = 0; index < objectArray.length; index++) {
            stringBuffer.append(StringUtil.getInstance().toString1(objectArray[index]!));
            stringBuffer.append(commonSeps.COMMA_SEP);
        }
        return stringBuffer.toString();
    }
    

    String toStringFromByteArray(List<int> byteArray) {
        final StringMaker stringBuffer = StringMaker();
        final CommonSeps commonSeps = CommonSeps.getInstance();
        for (int index = 0; index < byteArray.length; index++) {
            stringBuffer.appendbyte(byteArray[index]);
            stringBuffer.append(commonSeps.COMMA_SEP);
        }
        return stringBuffer.toString();
    }
}

