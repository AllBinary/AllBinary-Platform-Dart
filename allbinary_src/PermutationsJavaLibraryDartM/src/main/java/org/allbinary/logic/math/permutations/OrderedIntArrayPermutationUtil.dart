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
// ignore_for_file: unused_import, unnecessary_import, unused_local_variable, unnecessary_null_comparison, unnecessary_cast
// package org.allbinary.logic.math.permutations

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/util/visitor/Visitor.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/math/permutations/IntPermutationVisitor.dart';

class OrderedIntArrayPermutationUtil {
    static final OrderedIntArrayPermutationUtil instance = OrderedIntArrayPermutationUtil();
    late String TOTAL_ITERATIONS_TABLE;
    late String FINISHED;

    // Java field initializers run after the base constructor
    void initFieldsOrderedIntArrayPermutationUtil() {
    this.TOTAL_ITERATIONS_TABLE = "Total Iterations: ";
    this.FINISHED = "\nFINISHED";
    }
    

    static OrderedIntArrayPermutationUtil getInstance() {
        return OrderedIntArrayPermutationUtil.instance;
    }
    

    OrderedIntArrayPermutationUtil() {
        this.initFieldsOrderedIntArrayPermutationUtil();
    }
    

    void getNext(List<int> data) {
        int length = data.length;
        int i = length - 1;
        while (data[i - 1] >= data[i]) {
            i = i - 1;
        }
        int j = length;
        while (data[j - 1] <= data[i - 1]) {
            j = j - 1;
        }
        this.swap(data, i - 1, j - 1);
        i++;
        j = length;
        while (i < j) {
            this.swap(data, i - 1, j - 1);
            i++;
            j--;
        }
    }
    

    void swap(List<int> data, int a, int b) {
        int temp = data[a];
        data[a] = data[b];
        data[b] = temp;
    }
    

    int factorial(int dataLength) {
        int temp = 1;
        if (dataLength > 1) {
            for (int i = 1; i <= dataLength; i++) {
                temp *= i;
            }
        }
        return temp;
    }
    

    void generate(List<int> data, Visitor visitor) {
        int iterations = this.factorial(data.length);
        JSystem.println(jstr(this.TOTAL_ITERATIONS_TABLE));
        JSystem.println(jstr(iterations));
        for (int count = 0; count < iterations - 1; count++) {
            this.getNext(data);
            visitor.visit(this);
        }
        JSystem.println(jstr(this.FINISHED));
    }
    

    static void main(List<String?> args) {
        final int TOTAL = 3;
        final List<int> data = List<int>.filled(TOTAL, 0);
        for (int i = 0; i < TOTAL; i++) {
            data[i] = i;
        }
        final IntPermutationVisitor permutationVisitor = IntPermutationVisitor(data);
        final String ORIGINAL_DATA_LABEL = "Original Data: ";
        JSystem.println(jstr(ORIGINAL_DATA_LABEL));
        permutationVisitor.print(data, StringMaker());
        OrderedIntArrayPermutationUtil.getInstance().generate(data, permutationVisitor);
    }
}

