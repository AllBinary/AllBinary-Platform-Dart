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
// package org.allbinary.image

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Image.dart';
import 'package:allbinary/org/allbinary/animation/IndexedAnimation.dart';
import 'package:allbinary/org/allbinary/image/AnimationFrameToImageUtil.dart';

class IndexedAnimationToImageArrayUtil {
    

    static List<Image?> getInstance3(int width, int height, IndexedAnimation sequentialAnimationInterface) {
        int size = sequentialAnimationInterface.getAnimationSize();
        List<Image?> imageArray = List<Image?>.filled(size, null);
        for (int index = 0; index < size; index++) {
            sequentialAnimationInterface.setFrame(index);
            imageArray[index] = AnimationFrameToImageUtil.getInstance().getInstanceWH(width, height, sequentialAnimationInterface);
        }
        return imageArray;
    }
}

