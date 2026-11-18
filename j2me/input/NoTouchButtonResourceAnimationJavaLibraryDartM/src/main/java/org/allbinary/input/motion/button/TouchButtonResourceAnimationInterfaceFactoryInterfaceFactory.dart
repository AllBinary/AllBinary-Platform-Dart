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
// package org.allbinary.input.motion.button

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/animation/resource/BaseResourceAnimationInterfaceFactoryInterfaceFactory.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/Features.dart';
import 'package:allbinary/org/allbinary/game/resource/ResourceLoadingLevelFactory.dart';
import 'package:allbinary/org/allbinary/graphics/opengles/OpenGLFeatureFactory.dart';
import 'package:allbinary/org/allbinary/image/ImageCache.dart';
import 'package:allbinary/org/allbinary/image/ImageCacheFactory.dart';
import 'package:allbinary/org/allbinary/logic/StdUtil.dart';

class TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory extends BaseResourceAnimationInterfaceFactoryInterfaceFactory {
    

    static TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory createFactory() {
        return TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory("TouchButton Animations");
    }
    

    TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory(String name) : super(name, StdUtil.getInstance().createHashtable(), StdUtil.getInstance().createHashtable(), StdUtil.getInstance().createHashtable()) {
        
    }
    

    @override
    void init(int level) {
        this.initImageCache(ImageCacheFactory.getInstance(), level);
    }
    

    @override
    void initImageCache(ImageCache imageCache, int level) {
        if (this.isInitialized()) {
            return;
        }
        super.init(level);
    }
    

    @override
    bool isLoadingLevel(int level) {
        ResourceLoadingLevelFactory resourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance();
        if (level == resourceLoadingLevelFactory.LOAD_TOUCH.getLevel()) {
            return true;
        } else {
            return super.isLoadingLevel(level);
        }
    }
    

    @override
    bool isFeature() {
        if (!Features.getInstance().isDefault(OpenGLFeatureFactory.getInstance().OPENGL)) {
            return true;
        } else {
            return false;
        }
    }
}

