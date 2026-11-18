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
// package org.allbinary.game.physics.velocity

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/physics/velocity/BasicVelocityProperties.dart';
import 'package:allbinary/org/allbinary/game/physics/velocity/VelocityInterface.dart';

class VelocityProperties extends BasicVelocityProperties implements VelocityInterface {
    static final VelocityProperties NULL_VELOCITY_PROPERTIES = VelocityProperties(0, 0);
    int maxForwardVelocity = 0;
    int maxReverseVelocity = 0;

    // Java field initializers run after the base constructor
    void initFieldsVelocityProperties() {
    this.maxForwardVelocity = 0;
    this.maxReverseVelocity = 0;
    }
    

    VelocityProperties(int maxForwardVelocity, int maxReverseVelocity) {
        this.initFieldsVelocityProperties();
        this.setMaxForwardVelocity(maxForwardVelocity);
        this.setMaxReverseVelocity(maxReverseVelocity);
    }
    

    @override
    int getMaxForwardVelocity() {
        return this.maxForwardVelocity;
    }
    

    @override
    void setMaxForwardVelocity(int maxForwardVelocity) {
        this.maxForwardVelocity = maxForwardVelocity;
    }
    

    @override
    int getMaxReverseVelocity() {
        return this.maxReverseVelocity;
    }
    

    @override
    void setMaxReverseVelocity(int maxReverseVelocity) {
        this.maxReverseVelocity = maxReverseVelocity;
    }
    

    @override
    void limitMaxXYForwardVelocity() {
        this.limitMaxXYVelocity(this.getMaxForwardVelocity());
    }
    

    @override
    void limitMaxXYReverseVelocity() {
        this.limitMaxXYVelocity(this.getMaxReverseVelocity());
    }
    

    void limitMaxYForwardVelocity() {
        this.limitMaxYVelocity(this.getMaxForwardVelocity());
    }
    

    void limitMaxYReverseVelocity() {
        this.limitMaxYVelocity(this.getMaxReverseVelocity());
    }
    

    void limitMaxXForwardVelocity() {
        this.limitMaxXVelocity(this.getMaxForwardVelocity());
    }
    

    void limitMaxXReverseVelocity() {
        this.limitMaxXVelocity(this.getMaxReverseVelocity());
    }
    

    bool isOverXYMaxForwardVelocity() {
        return this.isOverXYMaxVelocity(this.getMaxForwardVelocity());
    }
    

    bool isOverXYMaxReverseVelocity() {
        return this.isOverXYMaxVelocity(this.getMaxReverseVelocity());
    }
    

    @override
    void limitXYToForwardAndReverseMaxVelocity() {
        this.limitMaxXYForwardVelocity();
        this.limitMaxXYReverseVelocity();
    }
    

    @override
    void limitMaxXYVelocity(int maxVelocity) {
        this.limitMaxXVelocity(maxVelocity);
        this.limitMaxYVelocity(maxVelocity);
    }
    

    void limitMaxPositiveYVelocity(int maxVelocity) {
        if (this.velocityYBasicDecimal.getUnscaled() > maxVelocity) {
            this.velocityYBasicDecimal.setint(maxVelocity);
        }
    }
    

    void limitMaxNegativeYVelocity(int maxVelocity) {
        if (this.velocityYBasicDecimal.getUnscaled() < -maxVelocity) {
            this.velocityYBasicDecimal.setint(-maxVelocity);
        }
    }
    

    void limitMaxYVelocity(int maxVelocity) {
        this.limitMaxPositiveYVelocity(maxVelocity);
        this.limitMaxNegativeYVelocity(maxVelocity);
    }
    

    void limitMaxXVelocity(int maxVelocity) {
        if (this.velocityXBasicDecimal.getUnscaled() > maxVelocity) {
            this.velocityXBasicDecimal.setint(maxVelocity);
        }
        if (this.velocityXBasicDecimal.getUnscaled() < -maxVelocity) {
            this.velocityXBasicDecimal.setint(-maxVelocity);
        }
    }
    

    bool isOverXYMaxVelocity(int maxVelocity) {
        if (this.velocityXBasicDecimal.getUnscaled() > maxVelocity) {
            return true;
        }
        if (this.velocityXBasicDecimal.getUnscaled() < -maxVelocity) {
            return true;
        }
        if (this.velocityYBasicDecimal.getUnscaled() > maxVelocity) {
            return true;
        }
        if (this.velocityYBasicDecimal.getUnscaled() < -maxVelocity) {
            return true;
        }
        return false;
    }
    

    @override
    void setVelocityi(int magnitude, int angle, int otherAngle) {
        super.setVelocityi(magnitude, angle, otherAngle);
        this.limitXYToForwardAndReverseMaxVelocity();
    }
    

    @override
    void addVelocityi(int magnitude, int angle, int otherAngle) {
        super.addVelocityi(magnitude, angle, otherAngle);
        this.limitXYToForwardAndReverseMaxVelocity();
    }
}

