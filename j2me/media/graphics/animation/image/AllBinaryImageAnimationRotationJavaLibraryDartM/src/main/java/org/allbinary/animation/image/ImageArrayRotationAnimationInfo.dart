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
// package org.allbinary.animation.image

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Image.dart';
import 'package:allbinary/org/allbinary/math/AngleInfo.dart';

class ImageArrayRotationAnimationInfo {
    late List<Image?> imageArray;
    int angleIncrement = 0;
    int totalAngle = 0;
    int dx = 0;
    int dy = 0;

    // Java field initializers run after the base constructor
    void initFieldsImageArrayRotationAnimationInfo() {
    
    
    
    
    
    }
    

    ImageArrayRotationAnimationInfo(List<Image?> imageArray, int angleIncrement, int totalAngle, int dx, int dy) {
        this.initFieldsImageArrayRotationAnimationInfo();
        this.imageArray = imageArray;
        this.angleIncrement = angleIncrement;
        this.totalAngle = totalAngle;
        this.dx = dx;
        this.dy = dy;
    }
    

    void setImageArray(List<Image?> imageArray) {
        this.imageArray = imageArray;
    }
    

    List<Image?> getImageArray() {
        return this.imageArray;
    }
    

    AngleInfo getAngleInfoP() {
        return AngleInfo.getInstance1((this.angleIncrement).toSigned(16));
    }
    

    void setTotalAngle(int totalAngle) {
        this.totalAngle = totalAngle;
    }
    

    int getTotalAngle() {
        return this.totalAngle;
    }
    

    void setDx(int dx) {
        this.dx = dx;
    }
    

    int getDx() {
        return this.dx;
    }
    

    void setDy(int dy) {
        this.dy = dy;
    }
    

    int getDy() {
        return this.dy;
    }
}

