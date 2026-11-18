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
// package org.allbinary.game.layer.resources

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/Features.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/GraphicsFeature.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/GraphicsFeatureFactory.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/CanvasStrings.dart';
import 'package:allbinary/org/allbinary/graphics/opengles/OpenGLFeatureUtil.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';

class GameGraphicsResourceUtil {
    static Object instance = NullUtil.getInstance().NULL_OBJECT;
    late LogUtil logUtil;
    late String SPRITE;
    late String QUARTER;
    late String name;

    // Java field initializers run after the base constructor
    void initFieldsGameGraphicsResourceUtil() {
    this.logUtil = LogUtil.getInstance();
    this.SPRITE = "_sprite";
    this.QUARTER = "_quarter";
    this.name = StringUtil.getInstance().EMPTY_STRING;
    }
    

    static GameGraphicsResourceUtil getInstance() {
        if (GameGraphicsResourceUtil.instance == NullUtil.getInstance().NULL_OBJECT) {
            GameGraphicsResourceUtil.instance = GameGraphicsResourceUtil();
        }
        return (GameGraphicsResourceUtil.instance as GameGraphicsResourceUtil);
    }
    

    GameGraphicsResourceUtil() {
        this.initFieldsGameGraphicsResourceUtil();
        try {
            this.name = this.getString();
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            final CommonStrings commonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.CONSTRUCTOR, e);
            }
        }
    }
    

    String getString() {
        final GraphicsFeatureFactory graphicsFeatureFactory = GraphicsFeatureFactory.getInstance();
        GraphicsFeature graphicsFeature = graphicsFeatureFactory.NONE;
        final Features features = Features.getInstance();
        if (features.isFeature(graphicsFeatureFactory.IMAGE_TO_ARRAY_GRAPHICS)) {
            graphicsFeature = graphicsFeatureFactory.IMAGE_TO_ARRAY_GRAPHICS;
        } else if (features.isFeature(graphicsFeatureFactory.SPRITE_FULL_GRAPHICS)) {
            graphicsFeature = graphicsFeatureFactory.SPRITE_FULL_GRAPHICS;
        } else if (features.isFeature(graphicsFeatureFactory.SPRITE_QUARTER_ROTATION_GRAPHICS)) {
            graphicsFeature = graphicsFeatureFactory.SPRITE_QUARTER_ROTATION_GRAPHICS;
        } else if (features.isFeature(graphicsFeatureFactory.IMAGE_ROTATION_ON_THE_FLY)) {
            graphicsFeature = graphicsFeatureFactory.IMAGE_ROTATION_ON_THE_FLY;
        }
        return this.getStringForFeature(graphicsFeature);
    }
    

    String getStringForFeature(GraphicsFeature graphicsFeature) {
        final StringMaker stringBuffer = StringMaker();
        final GraphicsFeatureFactory graphicsFeatureFactory = GraphicsFeatureFactory.getInstance();
        stringBuffer.delete(0, stringBuffer.length());
        final Features features = Features.getInstance();
        if (features.isFeature(graphicsFeatureFactory.VECTOR_GRAPHICS)) {
        } else if (features.isFeature(graphicsFeatureFactory.IMAGE_GRAPHICS)) {
            if (graphicsFeature == graphicsFeatureFactory.IMAGE_TO_ARRAY_GRAPHICS || graphicsFeature == graphicsFeatureFactory.IMAGE_ROTATION_ON_THE_FLY) {
            } else if (graphicsFeature == graphicsFeatureFactory.SPRITE_FULL_GRAPHICS) {
                stringBuffer.append(this.SPRITE);
            } else if (graphicsFeature == graphicsFeatureFactory.SPRITE_QUARTER_ROTATION_GRAPHICS) {
                stringBuffer.append(this.QUARTER);
                stringBuffer.append(this.SPRITE);
            } else {
                throw JException('Exception', "None/Unknown Sub Image Resource Type Specified");
            }
        } else if (OpenGLFeatureUtil.getInstance().isAnyThreed()) {
            stringBuffer.append(CanvasStrings.getInstance().OBJ_MODEL);
        } else {
            throw JException('Exception', "None/Unknown Main Image Resource Type Specified");
        }
        return stringBuffer.toString();
    }
    

    String getName() {
        return this.name;
    }
}

