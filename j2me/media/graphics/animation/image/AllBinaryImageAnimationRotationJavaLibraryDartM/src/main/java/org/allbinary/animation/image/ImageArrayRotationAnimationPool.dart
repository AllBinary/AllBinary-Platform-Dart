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
import 'package:allbinary/org/allbinary/logic/util/cache/BasicArrayListResetablePool.dart';
import 'package:allbinary/org/allbinary/logic/util/cache/CacheableInterface.dart';
import 'package:allbinary/org/allbinary/logic/util/cache/CacheableInterfaceFactoryInterface.dart';
import 'package:allbinary/org/allbinary/logic/util/cache/PoolInterface.dart';
import 'package:allbinary/org/allbinary/animation/image/ImageArrayRotationAnimationCacheableInterfaceFactory.dart';
import 'package:allbinary/org/allbinary/animation/image/ImageArrayRotationAnimationInfo.dart';
import 'package:allbinary/org/allbinary/animation/image/ImageArrayRotationAnimationCacheable.dart';

class ImageArrayRotationAnimationPool extends BasicArrayListResetablePool {
    static PoolInterface IMAGE_ROTATION_ANIMATION_POOL = ImageArrayRotationAnimationPool(ImageArrayRotationAnimationCacheableInterfaceFactory());
    

    ImageArrayRotationAnimationPool(CacheableInterfaceFactoryInterface cacheableInterfaceFactoryInterface) : super(cacheableInterfaceFactoryInterface) {
        
    }
    

    static PoolInterface getInstance() {
        return ImageArrayRotationAnimationPool.IMAGE_ROTATION_ANIMATION_POOL;
    }
    

    @override
    CacheableInterface remove(Object key) {
        final CacheableInterface cacheableInterface = super.remove(key);
        final ImageArrayRotationAnimationInfo allBinaryImageRotationAnimationInfo = (key as ImageArrayRotationAnimationInfo);
        final ImageArrayRotationAnimationCacheable imageArrayRotationAnimationCacheable = ((cacheableInterface as ImageArrayRotationAnimationCacheable));
        imageArrayRotationAnimationCacheable.setImageArray(allBinaryImageRotationAnimationInfo.getImageArray());
        return cacheableInterface;
    }
}

