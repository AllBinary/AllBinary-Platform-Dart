/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/math/PositionStrings.dart';
import 'package:allbinary/org/allbinary/string/CommonLabels.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';

class AnimationFactoryInitializationVisitor {
    int width = 0;
    int height = 0;
    int dx = 0;
    int dy = 0;
    int originalDx = 0;
    int originalDy = 0;

    // Java field initializers run after the base constructor
    void initFieldsAnimationFactoryInitializationVisitor() {
    this.width = 0;
    this.height = 0;
    this.dx = 0;
    this.dy = 0;
    this.originalDx = 0;
    this.originalDy = 0;
    }

    AnimationFactoryInitializationVisitor() {
        this.initFieldsAnimationFactoryInitializationVisitor();
    }
    

    void visit() {
    }
    

    @override
    String toString() {
        final CommonSeps commonSeps = CommonSeps.getInstance();
        final CommonLabels commonLabels = CommonLabels.getInstance();
        final StringMaker stringBuffer = StringMaker();
        stringBuffer.append(PositionStrings.getInstance().DX_LABEL).appendfloat((this.dx).toDouble());
        stringBuffer.append(PositionStrings.getInstance().DY_LABEL).appendfloat((this.dy).toDouble());
        stringBuffer.append(commonLabels.WIDTH_LABEL);
        stringBuffer.appendint(this.width);
        stringBuffer.append(commonSeps.SPACE);
        stringBuffer.append(commonLabels.HEIGHT_LABEL);
        stringBuffer.appendint(this.height);
        return stringBuffer.toString();
    }
}

