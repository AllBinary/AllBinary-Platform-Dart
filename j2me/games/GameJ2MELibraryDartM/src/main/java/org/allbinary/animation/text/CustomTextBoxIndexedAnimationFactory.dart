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
// package org.allbinary.animation.text

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Font.dart';
import 'package:allbinary/javax/microedition/lcdui/TextField.dart';
import 'package:allbinary/org/allbinary/graphics/form/item/CustomTextBox.dart';
import 'package:allbinary/org/allbinary/animation/Animation.dart';
import 'package:allbinary/org/allbinary/animation/AnimationInterfaceFactoryInterface.dart';
import 'package:allbinary/org/allbinary/game/canvas/ABToGBUtil.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/media/ScaleProperties.dart';
import 'package:allbinary/org/allbinary/animation/text/CustomTextBox2.dart';
import 'package:allbinary/org/allbinary/animation/text/CustomTextBoxIndexedAnimation.dart';

class CustomTextBoxIndexedAnimationFactory implements AnimationInterfaceFactoryInterface {
    late LogUtil logUtil;
    late ScaleProperties scaleProperties;
    int maxLength = 0;

    // Java field initializers run after the base constructor
    void initFieldsCustomTextBoxIndexedAnimationFactory() {
    this.logUtil = LogUtil.getInstance();
    
    
    }
    

    CustomTextBoxIndexedAnimationFactory(int fontSize, int maxLength) {
        this.initFieldsCustomTextBoxIndexedAnimationFactory();
        this.scaleProperties = ScaleProperties();
        this.scaleProperties.scaleHeight = fontSize;
        this.maxLength = maxLength;
    }
    

    @override
    Animation getInstance1(int instanceId) {
        final ABToGBUtil abToGBUtil = ABToGBUtil.getInstance();
        final AllBinaryGameCanvas abCanvas = (abToGBUtil.abCanvas as AllBinaryGameCanvas);
        final Font font = Font.getFont(Font.FACE_SYSTEM, Font.STYLE_PLAIN, this.scaleProperties.scaleHeight);
        final CustomTextBox customTextBox = CustomTextBox2(abCanvas.getCustomCommandListener(), StringUtil.getInstance().EMPTY_STRING, StringUtil.getInstance().EMPTY_STRING, this.maxLength, TextField.ANY, font, abCanvas.getLayerManager().getBackgroundBasicColor(), abCanvas.getLayerManager().getForegroundBasicColor());
        return CustomTextBoxIndexedAnimation(customTextBox);
    }
    

    @override
    void setInitialScale(ScaleProperties scaleProperties) {
        final int fontSize = this.scaleProperties.scaleHeight;
        this.scaleProperties = scaleProperties;
        if (this.scaleProperties.scaleHeight < 6) {
            this.scaleProperties.scaleHeight = fontSize;
        }
    }
}

