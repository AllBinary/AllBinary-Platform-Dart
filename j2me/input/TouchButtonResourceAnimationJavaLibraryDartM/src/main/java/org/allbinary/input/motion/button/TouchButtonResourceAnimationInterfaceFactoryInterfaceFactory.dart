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
import 'package:allbinary/javax/microedition/lcdui/Image.dart';
import 'package:allbinary/org/allbinary/animation/AnimationBehaviorFactory.dart';
import 'package:allbinary/org/allbinary/animation/NullAnimationFactory.dart';
import 'package:allbinary/org/allbinary/animation/image/sprite/OneRowSpriteIndexedAnimationFactory.dart';
import 'package:allbinary/org/allbinary/animation/resource/BaseResourceAnimationInterfaceFactoryInterfaceFactory.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/Features.dart';
import 'package:allbinary/org/allbinary/game/resource/ResourceLoadingLevelFactory.dart';
import 'package:allbinary/org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.dart';
import 'package:allbinary/org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.dart';
import 'package:allbinary/org/allbinary/graphics/opengles/OpenGLFeatureFactory.dart';
import 'package:allbinary/org/allbinary/image/ImageCache.dart';
import 'package:allbinary/org/allbinary/image/ImageCacheFactory.dart';
import 'package:allbinary/org/allbinary/logic/StdUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/system/os/OperatingSystemFactory.dart';
import 'package:allbinary/org/allbinary/media/image/ImageCompleteUtil.dart';
import 'package:allbinary/org/allbinary/input/motion/button/TouchButtonBlankResource.dart';
import 'package:allbinary/org/allbinary/input/motion/button/TouchButtonResource.dart';
import 'package:allbinary/org/allbinary/input/motion/button/TouchButtonGenericActionResource.dart';
import 'package:allbinary/org/allbinary/input/motion/button/TouchButtonStartResource.dart';
import 'package:allbinary/org/allbinary/input/motion/button/TouchButtonUpResource.dart';
import 'package:allbinary/org/allbinary/input/motion/button/TouchButtonDownResource.dart';
import 'package:allbinary/org/allbinary/input/motion/button/TouchButtonTurnLeftResource.dart';
import 'package:allbinary/org/allbinary/input/motion/button/TouchButtonTurnRightResource.dart';
import 'package:allbinary/org/allbinary/input/motion/button/TouchButtonStrafeLeftResource.dart';
import 'package:allbinary/org/allbinary/input/motion/button/TouchButtonStrafeRightResource.dart';

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
        final int portion = 140;
        final String loadingString = StringMaker().append(this.toString()).append(" Loading: ").toString();
        int index = 0;
        final ProgressCanvas progressCanvas = ProgressCanvasFactory.getInstance();
        progressCanvas.addPortion(portion, loadingString, index++);
        final TouchButtonResource touchButtonBlankResource = TouchButtonBlankResource.getInstance();
        final TouchButtonResource touchButtonGenericActionResource = TouchButtonGenericActionResource.getInstance();
        final TouchButtonResource touchButtonStartResource = TouchButtonStartResource.getInstance();
        final TouchButtonResource touchButtonUpResource = TouchButtonUpResource.getInstance();
        final TouchButtonResource touchButtonDownResource = TouchButtonDownResource.getInstance();
        final TouchButtonResource touchButtonTurnLeftResource = TouchButtonTurnLeftResource.getInstance();
        final TouchButtonResource touchButtonTurnRightResource = TouchButtonTurnRightResource.getInstance();
        final TouchButtonResource touchButtonStrafeLeftResource = TouchButtonStrafeLeftResource.getInstance();
        final TouchButtonResource touchButtonStrafeRightResource = TouchButtonStrafeRightResource.getInstance();
        final Image touchButtonBlankResourceImage = imageCache.getWithKey(touchButtonBlankResource.RESOURCE);
        final Image touchButtonGenericActionResourceImage = imageCache.getWithKey(touchButtonGenericActionResource.RESOURCE);
        final Image touchButtonStartResourceImage = imageCache.getWithKey(touchButtonStartResource.RESOURCE);
        final Image touchButtonUpResourceImage = imageCache.getWithKey(touchButtonUpResource.RESOURCE);
        final Image touchButtonDownResourceImage = imageCache.getWithKey(touchButtonDownResource.RESOURCE);
        final Image touchButtonTurnLeftResourceImage = imageCache.getWithKey(touchButtonTurnLeftResource.RESOURCE);
        final Image touchButtonTurnRightResourceImage = imageCache.getWithKey(touchButtonTurnRightResource.RESOURCE);
        final Image touchButtonStrafeLeftResourceImage = imageCache.getWithKey(touchButtonStrafeLeftResource.RESOURCE);
        final Image touchButtonStrafeRightResourceImage = imageCache.getWithKey(touchButtonStrafeRightResource.RESOURCE);
        final NullAnimationFactory nullAnimationFactory = NullAnimationFactory.getFactoryInstance();
        if (OperatingSystemFactory.getInstance().getOperatingSystemInstance().isOverScan()) {
            imageCache.getWithKey(TouchButtonStartResource.getInstance().HINT);
        }
        progressCanvas.addPortion(portion, loadingString, index++);
        final ImageCompleteUtil imageCompleteUtil = ImageCompleteUtil.getInstance();
        progressCanvas.addPortion(portion, loadingString, index++);
        imageCompleteUtil.waitForImage(touchButtonBlankResourceImage, touchButtonBlankResource.RESOURCE);
        this.add(touchButtonBlankResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonBlankResourceImage, AnimationBehaviorFactory.getInstance()));
        this.add(touchButtonBlankResource.HINT, nullAnimationFactory);
        progressCanvas.addPortion(portion, loadingString, index++);
        imageCompleteUtil.waitForImage(touchButtonGenericActionResourceImage, touchButtonGenericActionResource.RESOURCE);
        this.add(touchButtonGenericActionResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonGenericActionResourceImage, AnimationBehaviorFactory.getInstance()));
        this.add(touchButtonGenericActionResource.HINT, nullAnimationFactory);
        progressCanvas.addPortion(portion, loadingString, index++);
        imageCompleteUtil.waitForImage(touchButtonStartResourceImage, touchButtonStartResource.RESOURCE);
        this.add(touchButtonStartResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonStartResourceImage, AnimationBehaviorFactory.getInstance()));
        progressCanvas.addPortion(portion, loadingString, index++);
        imageCompleteUtil.waitForImage(touchButtonUpResourceImage, touchButtonUpResource.RESOURCE);
        this.add(touchButtonUpResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonUpResourceImage, AnimationBehaviorFactory.getInstance()));
        this.add(touchButtonUpResource.HINT, nullAnimationFactory);
        progressCanvas.addPortion(portion, loadingString, index++);
        imageCompleteUtil.waitForImage(touchButtonDownResourceImage, touchButtonDownResource.RESOURCE);
        this.add(touchButtonDownResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonDownResourceImage, AnimationBehaviorFactory.getInstance()));
        this.add(touchButtonDownResource.HINT, nullAnimationFactory);
        progressCanvas.addPortion(portion, loadingString, index++);
        imageCompleteUtil.waitForImage(touchButtonTurnLeftResourceImage, touchButtonTurnLeftResource.RESOURCE);
        this.add(touchButtonTurnLeftResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonTurnLeftResourceImage, AnimationBehaviorFactory.getInstance()));
        this.add(touchButtonTurnLeftResource.HINT, nullAnimationFactory);
        progressCanvas.addPortion(portion, loadingString, index++);
        imageCompleteUtil.waitForImage(touchButtonTurnRightResourceImage, touchButtonTurnRightResource.RESOURCE);
        this.add(touchButtonTurnRightResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonTurnRightResourceImage, AnimationBehaviorFactory.getInstance()));
        this.add(touchButtonTurnRightResource.HINT, nullAnimationFactory);
        progressCanvas.addPortion(portion, loadingString, index++);
        imageCompleteUtil.waitForImage(touchButtonStrafeLeftResourceImage, touchButtonStrafeLeftResource.RESOURCE);
        this.add(touchButtonStrafeLeftResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonStrafeLeftResourceImage, AnimationBehaviorFactory.getInstance()));
        this.add(touchButtonStrafeLeftResource.HINT, nullAnimationFactory);
        progressCanvas.addPortion(portion, loadingString, index++);
        imageCompleteUtil.waitForImage(touchButtonStrafeRightResourceImage, touchButtonStrafeRightResource.RESOURCE);
        this.add(touchButtonStrafeRightResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonStrafeRightResourceImage, AnimationBehaviorFactory.getInstance()));
        this.add(touchButtonStrafeRightResource.HINT, nullAnimationFactory);
        if (OperatingSystemFactory.getInstance().getOperatingSystemInstance().isOverScan()) {
            final Image touchButtonStartHintResource = imageCache.getWithKey(TouchButtonStartResource.getInstance().HINT);
            this.add(touchButtonStartResource.HINT, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonStartHintResource, AnimationBehaviorFactory.getInstance()));
        } else {
            this.add(touchButtonStartResource.HINT, nullAnimationFactory);
        }
        super.init(level);
    }
    

    @override
    bool isLoadingLevel(int level) {
        final ResourceLoadingLevelFactory resourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance();
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

