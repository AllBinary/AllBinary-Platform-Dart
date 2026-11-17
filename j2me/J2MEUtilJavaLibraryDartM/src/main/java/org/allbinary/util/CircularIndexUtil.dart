/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2011 AllBinary
 * 
 * By agreeing to this license you and any business entity you represent are
 * legally bound to the AllBinary Open License Version 1 legal agreement.
 * 
 * You may obtain the AllBinary Open License Version 1 legal agreement from
 * AllBinary or the root directory of AllBinary's AllBinary Platform repository.
 * 
 * Created By: Travis Berthelot
 *  
 */
// Generated Code Do Not Modify
// ignore_for_file: unused_import, unused_local_variable, unnecessary_null_comparison
// package org.allbinary.util

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/string/CommonLabels.dart';

class CircularIndexUtil {
    static final CircularIndexUtil NULL_CIRCULAR_INDEX_UTIL = CircularIndexUtil(0, 0);
    int index = 0;
    int lastIndex = 0;
    int size = 0;

    // Java field initializers run after the base constructor
    void initFieldsCircularIndexUtil() {
    this.index = 0;
    this.lastIndex = 0;
    this.size = 0;
    }
    

    CircularIndexUtil(int index, int size) {
        this.initFieldsCircularIndexUtil();
        this.setSize(size);
        this.setIndex(index);
    }
    

    int next() {
        if (this.index >= this.lastIndex) {
            this.index = 0;
        } else {
            this.index++;
        }
        return this.index;
    }
    

    int previous() {
        if (this.index < 1) {
            this.index = this.lastIndex;
        } else {
            this.index--;
        }
        return this.index;
    }
    

    void setIndex(int index) {
        if (index > this.lastIndex) {
            return;
        }
        this.index = index;
    }
    

    int getIndex() {
        return this.index;
    }
    

    static CircularIndexUtil createInstance(int max) {
        return CircularIndexUtil(0, max);
    }
    

    static CircularIndexUtil createInstanceAt(int index, int max) {
        return CircularIndexUtil(index, max);
    }
    

    void setSize(int size) {
        this.size = size;
        this.lastIndex = size - 1;
        this.index = 0;
    }
    

    int getSize() {
        return this.size;
    }
    

    @override
    String toString() {
        return StringMaker().append(CommonLabels.getInstance().INDEX_LABEL).appendint(this.index).append("lastIndex: ").appendint(this.lastIndex).append("size: ").appendint(this.size).toString();
    }
}

