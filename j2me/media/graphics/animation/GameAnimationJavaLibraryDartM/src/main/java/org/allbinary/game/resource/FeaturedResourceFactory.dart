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
// package org.allbinary.game.resource

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/Features.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/GameFeatureControlledInterface.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/GraphicsFeatureFactory.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonLabels.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/game/resource/ResourceLoadingLevelFactory.dart';

class FeaturedResourceFactory {
    late LogUtil logUtil;
    late BasicArrayList list;
    late CommonStrings commonStrings;
    late String ANIMATION_FEATURES;
    late String IMAGE_LABEL;
    late String IMAGE_GRAPHICS_ARRAY;
    late String IMAGE_GRAPHICS_ROTATION;
    late String SPRITE_QUARTER;
    late String SPRITE_FULL;
    late String IS_LOADING_LEVEL_LABEL;
    late String IS_FEATURE;
    late String GAME_FEATURE_CONTROLLED;

    // Java field initializers run after the base constructor
    void initFieldsFeaturedResourceFactory() {
    this.logUtil = LogUtil.getInstance();
    this.list = BasicArrayListD();
    this.commonStrings = CommonStrings.getInstance();
    this.ANIMATION_FEATURES = "Animation Features: Vector: ";
    this.IMAGE_LABEL = " Image: ";
    this.IMAGE_GRAPHICS_ARRAY = "Image Array: ";
    this.IMAGE_GRAPHICS_ROTATION = "Image Rotate: ";
    this.SPRITE_QUARTER = " Sprite Quarter: ";
    this.SPRITE_FULL = " Sprite Full: ";
    this.IS_LOADING_LEVEL_LABEL = " isLoadingLevel ";
    this.IS_FEATURE = " isFeature: ";
    this.GAME_FEATURE_CONTROLLED = "GameFeatureControlledInterface: ";
    }
    

    FeaturedResourceFactory() {
        this.initFieldsFeaturedResourceFactory();
    }
    

    void init(int level) {
        int size = this.list.size();
        for (int index = 0; index < size; index++) {
            GameFeatureControlledInterface featureInterface = (this.list.objectArray[index]! as GameFeatureControlledInterface);
            bool isLoadingLevel = featureInterface.isLoadingLevel(level);
            bool isFeature = featureInterface.isFeature();
            this.logUtil.putF(StringMaker().append(this.GAME_FEATURE_CONTROLLED).append(featureInterface.toString()).append(this.IS_LOADING_LEVEL_LABEL).append(ResourceLoadingLevelFactory.getInstance().getLevelString(level)).append(CommonSeps.getInstance().COLON_SEP).appendboolean(isLoadingLevel).append(this.IS_FEATURE).appendboolean(isFeature).toString(), this, this.commonStrings.INIT);
            if (isLoadingLevel && isFeature) {
                featureInterface.init(level);
            }
        }
        Features features = Features.getInstance();
        GraphicsFeatureFactory graphicsFeatureFactory = GraphicsFeatureFactory.getInstance();
        StringMaker stringBuffer = StringMaker();
        stringBuffer.append(this.ANIMATION_FEATURES);
        stringBuffer.appendboolean(features.isFeature(graphicsFeatureFactory.VECTOR_GRAPHICS));
        stringBuffer.append(this.IMAGE_LABEL);
        stringBuffer.appendboolean(features.isFeature(graphicsFeatureFactory.IMAGE_GRAPHICS));
        this.logUtil.putF(stringBuffer.toString(), this, this.commonStrings.INIT);
        if (features.isFeature(graphicsFeatureFactory.IMAGE_GRAPHICS)) {
            stringBuffer.delete(0, stringBuffer.length());
            stringBuffer.append(this.IMAGE_GRAPHICS_ARRAY);
            stringBuffer.appendboolean(features.isFeature(graphicsFeatureFactory.IMAGE_TO_ARRAY_GRAPHICS));
            stringBuffer.append(this.IMAGE_GRAPHICS_ROTATION);
            stringBuffer.appendboolean(features.isFeature(graphicsFeatureFactory.IMAGE_TO_ARRAY_GRAPHICS));
            stringBuffer.append(this.SPRITE_QUARTER);
            stringBuffer.appendboolean(features.isFeature(graphicsFeatureFactory.SPRITE_QUARTER_ROTATION_GRAPHICS));
            stringBuffer.append(this.SPRITE_FULL);
            stringBuffer.appendboolean(features.isFeature(graphicsFeatureFactory.SPRITE_FULL_GRAPHICS));
            this.logUtil.putF(stringBuffer.toString(), this, this.commonStrings.INIT);
        }
    }
    

    void clear() {
        this.list.clear();
    }
    

    void add(GameFeatureControlledInterface featureInterface) {
        this.logUtil.putF(StringMaker().append(CommonLabels.getInstance().START_LABEL).append(StringUtil.getInstance().toString1(featureInterface)).toString(), this, this.commonStrings.ADD);
        this.list.add(featureInterface);
    }
    

    BasicArrayList getList() {
        return this.list;
    }
}

