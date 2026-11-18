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
// package org.allbinary.game.configuration.feature

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/GraphicsFeature.dart';

class GraphicsFeatureFactory {
    static final GraphicsFeatureFactory instance = GraphicsFeatureFactory();
    late GraphicsFeature NONE;
    late GraphicsFeature TRANSPARENT_IMAGE_CREATION;
    late GraphicsFeature IMAGE_GRAPHICS;
    late GraphicsFeature IMAGE_ROTATION_ON_THE_FLY;
    late GraphicsFeature IMAGE_TO_ARRAY_GRAPHICS;
    late GraphicsFeature SPRITE_QUARTER_ROTATION_GRAPHICS;
    late GraphicsFeature SPRITE_FULL_GRAPHICS;
    late GraphicsFeature VECTOR_GRAPHICS;
    late GraphicsFeature VECTOR_TO_IMAGE_GRAPHICS;

    // Java field initializers run after the base constructor
    void initFieldsGraphicsFeatureFactory() {
    this.NONE = GraphicsFeature(StringUtil.getInstance().NULL_STRING);
    this.TRANSPARENT_IMAGE_CREATION = GraphicsFeature("Transparent Image Creation");
    this.IMAGE_GRAPHICS = GraphicsFeature("Image Graphics");
    this.IMAGE_ROTATION_ON_THE_FLY = GraphicsFeature("Image Rotated On The Fly");
    this.IMAGE_TO_ARRAY_GRAPHICS = GraphicsFeature("Image To Array Graphics");
    this.SPRITE_QUARTER_ROTATION_GRAPHICS = GraphicsFeature("Sprite Quarter Rotation Graphics");
    this.SPRITE_FULL_GRAPHICS = GraphicsFeature("Sprite Full Rotation Graphics");
    this.VECTOR_GRAPHICS = GraphicsFeature("BasicArrayList Graphics");
    this.VECTOR_TO_IMAGE_GRAPHICS = GraphicsFeature("BasicArrayList To Image Graphics");
    }
    

    static GraphicsFeatureFactory getInstance() {
        return GraphicsFeatureFactory.instance;
    }
    

    GraphicsFeatureFactory() {
        this.initFieldsGraphicsFeatureFactory();
    }
}

