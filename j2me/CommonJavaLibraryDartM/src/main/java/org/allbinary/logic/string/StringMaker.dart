// Generated Code Do Not Modify
// ignore_for_file: unused_import, unnecessary_import, unused_local_variable, unnecessary_null_comparison, unnecessary_cast
// package org.allbinary.logic.string

import 'package:allbinary/allbinary_java.dart';

class StringMaker {
    late List<int> charArray;
    int currentLength = 0;

    // Java field initializers run after the base constructor
    void initFieldsStringMaker() {
    
    this.currentLength = 0;
    }
    

    StringMaker() {
        this.initFieldsStringMaker();
        this.charArray = List<int>.filled(20, 0);
    }
    

    StringMaker append(String string) {
        final int stringLength = string.length;
        this.ensureCapacity(this.currentLength + stringLength);
        JString.getChars(string, 0, stringLength, this.charArray, this.currentLength);
        this.currentLength += stringLength;
        return this;
    }
    

    StringMaker appendchar(int c) {
        this.ensureCapacity(this.currentLength + 1);
        this.charArray[this.currentLength++] = c;
        return this;
    }
    

    StringMaker appendCharArray(List<int> charArray, int start, int end) {
        this.ensureCapacity(this.currentLength + (end - start));
        for (int index = start; index < end; index++) {
            this.charArray[this.currentLength++] = charArray[index];
        }
        return this;
    }
    

    StringMaker appendbyte(int b) {
        this.append(jstr(b));
        return this;
    }
    

    StringMaker appendshort(int b) {
        this.append(jstr(b));
        return this;
    }
    

    StringMaker appendint(int i) {
        this.append(jstr(i));
        return this;
    }
    

    StringMaker appendlong(int l) {
        this.append(jstr(l));
        return this;
    }
    

    StringMaker appendfloat(double f) {
        this.append(jstr(f));
        return this;
    }
    

    StringMaker appendboolean(bool bool) {
        if (bool) {
            this.ensureCapacity(this.currentLength + 4);
            this.charArray[this.currentLength++] = "t".codeUnitAt(0);
            this.charArray[this.currentLength++] = "r".codeUnitAt(0);
            this.charArray[this.currentLength++] = "u".codeUnitAt(0);
            this.charArray[this.currentLength++] = "e".codeUnitAt(0);
        } else {
            this.ensureCapacity(this.currentLength + 5);
            this.charArray[this.currentLength++] = "f".codeUnitAt(0);
            this.charArray[this.currentLength++] = "a".codeUnitAt(0);
            this.charArray[this.currentLength++] = "l".codeUnitAt(0);
            this.charArray[this.currentLength++] = "s".codeUnitAt(0);
            this.charArray[this.currentLength++] = "e".codeUnitAt(0);
        }
        return this;
    }
    

    void ensureCapacity(int minSize) {
        final int oldCapacity = this.charArray.length;
        if (minSize > oldCapacity) {
            int newCapacity = oldCapacity * 3;
            if (newCapacity < minSize) {
                newCapacity = minSize;
            }
            final List<int> copy = List<int>.filled(newCapacity, 0);
            final int min = this.min(this.charArray.length, newCapacity);
            JSystem.arraycopy(this.charArray, 0, copy, 0, min);
            this.charArray = copy;
        }
    }
    

    int min(int value, int value2) {
        return ((value <= value2) ? value : value2);
    }
    

    StringMaker delete(int start, int end) {
        this.currentLength -= (end - start);
        return this;
    }
    

    int length() {
        return this.currentLength;
    }
    

    @override
    String toString() {
        return JString.fromChars(this.charArray, 0, this.currentLength);
    }
}

