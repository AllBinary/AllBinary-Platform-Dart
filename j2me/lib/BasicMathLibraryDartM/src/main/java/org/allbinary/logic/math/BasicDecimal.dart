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
// package org.allbinary.logic.math

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/math/ScaleFactorFactory.dart';

class BasicDecimal {
    static final BasicDecimal ZERO_BIGDECIMAL = BasicDecimal(0);
    int units = 0;
    int scaled = 0;
    int factor = 0;
    int factorValue = 0;

    // Java field initializers run after the base constructor
    void initFieldsBasicDecimal() {
    
    this.scaled = 0;
    this.factor = ScaleFactorFactory.getInstance().DEFAULT_SCALE_FACTOR;
    this.factorValue = ScaleFactorFactory.getInstance().DEFAULT_SCALE_VALUE;
    }
    

    static BasicDecimal createBigDecimal(BasicDecimal bigDecimal) {
        return BasicDecimal(bigDecimal.getUnscaled());
    }
    

    BasicDecimal(int units) {
        this.initFieldsBasicDecimal();
        this.units = units;
        this.updateScaled();
    }
    

    void setint(int value) {
        this.units = value;
        this.updateScaled();
    }
    

    void setlong(int value) {
        this.units = value;
        this.updateScaled();
    }
    

    void set(BasicDecimal bigDecimal) {
        this.units = bigDecimal.getUnscaled();
        this.updateScaled();
    }
    

    void addint(int value) {
        this.units = this.units + value;
        this.updateScaled();
    }
    

    void addlong(int value) {
        this.units = this.units + value;
        this.updateScaled();
    }
    

    void add(BasicDecimal bigDecimal) {
        this.units = this.units + bigDecimal.getUnscaled();
        this.updateScaled();
    }
    

    void subtractint(int value) {
        this.units = this.units - value;
        this.updateScaled();
    }
    

    void subtractlong(int value) {
        this.units = this.units - value;
        this.updateScaled();
    }
    

    void subtract(BasicDecimal bigDecimal) {
        this.units = this.units - bigDecimal.getUnscaled();
        this.updateScaled();
    }
    

    void multiplyint(int value) {
        this.units = this.units * value;
        this.updateScaled();
    }
    

    void multiplylong(int value) {
        this.units = this.units * value;
        this.updateScaled();
    }
    

    void multiply(BasicDecimal bigDecimal) {
        this.units = this.units * bigDecimal.getUnscaled();
        this.updateScaled();
    }
    

    void divideint(int value) {
        this.units = this.units ~/ value;
        this.updateScaled();
    }
    

    void dividelong(int value) {
        this.units = this.units ~/ value;
        this.updateScaled();
    }
    

    void divide(BasicDecimal bigDecimal) {
        this.units = this.units ~/ bigDecimal.getUnscaled();
        this.updateScaled();
    }
    

    int getUnscaled() {
        return this.units;
    }
    

    void updateScaled() {
        this.scaled = ((this.units ~/ this.factorValue)).toSigned(32);
    }
    

    int getScaled() {
        return this.scaled;
    }
    

    @override
    String toString() {
        return jstr(this.units);
    }
    

    int getScaledFactor() {
        return this.factor;
    }
    

    int getScaledFactorValue() {
        return this.factorValue;
    }
}

