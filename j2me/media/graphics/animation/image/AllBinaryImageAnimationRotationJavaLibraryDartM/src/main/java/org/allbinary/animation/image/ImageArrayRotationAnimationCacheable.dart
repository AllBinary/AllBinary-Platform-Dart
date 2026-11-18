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
import 'package:allbinary/org/allbinary/animation/AnimationBehavior.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/logic/util/cache/CacheableInterface.dart';
import 'package:allbinary/org/allbinary/animation/image/AdjustedImageArrayRotationAnimation.dart';
import 'package:allbinary/org/allbinary/animation/image/ImageArrayRotationAnimationInfo.dart';

class ImageArrayRotationAnimationCacheable extends AdjustedImageArrayRotationAnimation implements CacheableInterface {
    

    ImageArrayRotationAnimationCacheable(Object anyType, AnimationBehavior animationBehavior) : super(((anyType as ImageArrayRotationAnimationInfo)).getImageArray(), ((anyType as ImageArrayRotationAnimationInfo)).getAngleInfoP(), ((anyType as ImageArrayRotationAnimationInfo)).getTotalAngle(), ((anyType as ImageArrayRotationAnimationInfo)).getDx(), ((anyType as ImageArrayRotationAnimationInfo)).getDy(), animationBehavior) {
        
    }
    

    @override
    Object getKey() {
        return NullUtil.getInstance().NULL_OBJECT;
    }
    

    @override
    String toString() {
        return StringUtil.getInstance().EMPTY_STRING;
    }
}

