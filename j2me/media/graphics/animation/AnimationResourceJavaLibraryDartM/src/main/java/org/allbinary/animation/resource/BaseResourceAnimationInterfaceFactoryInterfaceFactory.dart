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
// package org.allbinary.animation.resource

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/animation/BasicAnimationInterfaceFactoryInterface.dart';
import 'package:allbinary/org/allbinary/animation/NullAnimationFactory.dart';
import 'package:allbinary/org/allbinary/game/resource/ResourceLoadingLevelFactory.dart';
import 'package:allbinary/org/allbinary/graphics/Rectangle.dart';
import 'package:allbinary/org/allbinary/graphics/RectangleFactory.dart';
import 'package:allbinary/org/allbinary/image/ImageCache.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/util/ABHashtable.dart';
import 'package:allbinary/org/allbinary/animation/resource/FeatureResourceAnimationInterfaceFactoryInterface.dart';

class BaseResourceAnimationInterfaceFactoryInterfaceFactory implements FeatureResourceAnimationInterfaceFactoryInterface {
    late LogUtil logUtil;
    late CommonStrings commonStrings;
    late ABHashtable hashtable;
    late ABHashtable rectangleHashtable;
    late ABHashtable rectangleArrayOfArraysHashtable;
    late String name;
    bool initialized = false;

    // Java field initializers run after the base constructor
    void initFieldsBaseResourceAnimationInterfaceFactoryInterfaceFactory() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    
    
    
    
    this.initialized = false;
    }
    

    BaseResourceAnimationInterfaceFactoryInterfaceFactory(String name, ABHashtable hashtable, ABHashtable rectangleHashtable, ABHashtable rectangleArrayHashtable) {
        this.initFieldsBaseResourceAnimationInterfaceFactoryInterfaceFactory();
        this.hashtable = hashtable;
        this.rectangleHashtable = rectangleHashtable;
        this.rectangleArrayOfArraysHashtable = rectangleArrayHashtable;
        this.name = name;
    }
    

    String getName() {
        return this.name;
    }
    

    @override
    void init(int level) {
        final CommonStrings commonStrings = CommonStrings.getInstance();
        this.logUtil.putF(StringMaker().append("Available List of Animations: ").append(this.hashtable.toString()).toString(), this, commonStrings.INIT);
        this.setInitialized(true);
    }
    

    void initImageCache(ImageCache imageCache, int level) {
    }
    

    void add(String resource, BasicAnimationInterfaceFactoryInterface animationInterfaceFactoryInterface) {
        if (this.hashtable.containsKey((resource as Object))) {
            throw JException('Exception', StringMaker().append("Resource Already Created: ").append(resource).toString());
        }
        this.hashtable.put(resource, animationInterfaceFactoryInterface);
    }
    

    @override
    BasicAnimationInterfaceFactoryInterface getBasicAnimationInterfaceFactoryInstance(String resource) {
        final Object basicAnimationInterfaceFactoryInterfaceCanBeNull = this.hashtable.get(resource);
        if (basicAnimationInterfaceFactoryInterfaceCanBeNull == null) {
            return NullAnimationFactory.NULL_NOT_FOR_USE_ANIMATION_FACTORY;
        }
        return (basicAnimationInterfaceFactoryInterfaceCanBeNull as BasicAnimationInterfaceFactoryInterface);
    }
    

    @override
    Rectangle getRectangle(String resource) {
        final Object rectangleCanBeNull = this.rectangleHashtable.get(resource);
        if (rectangleCanBeNull == null) {
            return RectangleFactory.SINGLETON;
        }
        return (rectangleCanBeNull as Rectangle);
    }
    

    void addRectangle(String resource, Rectangle rectangle) {
        this.rectangleHashtable.put(resource, rectangle);
    }
    

    @override
    List<List<Rectangle?>?> getRectangleArrayOfArrays(String resource) {
        Object valueCanBeNull = this.rectangleArrayOfArraysHashtable.get(resource);
        if (valueCanBeNull != null) {
            final List<List<Rectangle?>?> rectangleArrayOfArrays = (valueCanBeNull as List<List<Rectangle?>?>);
            return rectangleArrayOfArrays;
        } else {
            return RectangleFactory.ARRAY_OF_ARRAYS;
        }
    }
    

    void addRectangleArrayOfArrays(String resource, List<List<Rectangle?>?> rectangleArrayOfArrays) {
        this.rectangleArrayOfArraysHashtable.put(resource, rectangleArrayOfArrays);
    }
    

    @override
    bool isFeature() {
        return false;
    }
    

    @override
    bool isLoadingLevel(int level) {
        final ResourceLoadingLevelFactory resourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance();
        if (level == resourceLoadingLevelFactory.LOAD_ALL.getLevel()) {
            return true;
        } else {
            return false;
        }
    }
    

    @override
    String toString() {
        return StringMaker().append(jClassName(this)).append(CommonSeps.getInstance().SEMICOLON).append(CommonSeps.getInstance().SPACE).append(this.name).toString();
    }
    

    @override
    ABHashtable getHashtable() {
        return this.hashtable;
    }
    

    ABHashtable getRectangleHashtable() {
        return this.rectangleHashtable;
    }
    

    ABHashtable getRectangleArrayOfArraysHashtable() {
        return this.rectangleArrayOfArraysHashtable;
    }
    

    void setInitialized(bool initialized) {
        this.initialized = initialized;
    }
    

    bool isInitialized() {
        return this.initialized;
    }
}

