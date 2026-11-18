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
// package org.allbinary.game.part

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Font.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/animation/Animation.dart';
import 'package:allbinary/org/allbinary/animation/NullAnimationFactory.dart';
import 'package:allbinary/org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory.dart';
import 'package:allbinary/org/allbinary/graphics/font/MyFontProcessor.dart';
import 'package:allbinary/org/allbinary/graphics/font/UpdateMyFontInterface.dart';
import 'package:allbinary/org/allbinary/graphics/font/UpdateMyFontProcessor.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/logic/math/PrimitiveLongUtil.dart';
import 'package:allbinary/org/allbinary/util/ABHashtable.dart';
import 'package:allbinary/org/allbinary/game/part/PartInterface.dart';

class CountedLayerInterfaceFactoryPart implements PartInterface, UpdateMyFontInterface {
    static final CountedLayerInterfaceFactoryPart NULL_COUNTED_LAYER_INTERFACE_FACTORY = CountedLayerInterfaceFactoryPart(0, CountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY);
    late MyFontProcessor updateMyFontProcessor;
    late MyFontProcessor myFontProcessor;
    late Animation animationInterface;
    int total = 0;
    late List<int> totalString;
    int xOffset = 0;
    late CountedPickedUpLayerInterfaceFactory countedPickedUpLayerInterfaceFactory;
    late PrimitiveLongUtil primitiveLongUtil;

    // Java field initializers run after the base constructor
    void initFieldsCountedLayerInterfaceFactoryPart() {
    this.updateMyFontProcessor = UpdateMyFontProcessor(this);
    this.myFontProcessor = this.updateMyFontProcessor;
    this.animationInterface = NullAnimationFactory.getFactoryInstance().getInstance1(0);
    this.total = 0;
    this.totalString = NullUtil.getInstance().NULL_CHAR_ARRAY;
    this.xOffset = 0;
    this.countedPickedUpLayerInterfaceFactory = CountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY;
    
    }
    

    CountedLayerInterfaceFactoryPart(int total, CountedPickedUpLayerInterfaceFactory countedPickedUpLayerInterfaceFactory) {
        this.initFieldsCountedLayerInterfaceFactoryPart();
        this.primitiveLongUtil = PrimitiveLongUtil.createPowerOfTen(1000);
        this.init(total, countedPickedUpLayerInterfaceFactory);
    }
    

    @override
    void updateMeasurement(Graphics graphics) {
        final Font font = graphics.getFont();
        this.setXOffset(font.charsWidth(this.totalString, 0, this.primitiveLongUtil.getCurrentTotalDigits()) + (font.getSize() >> 1));
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    void init(int total, CountedPickedUpLayerInterfaceFactory countedPickedUpLayerInterfaceFactory) {
        this.setCountedPickedUpLayerInterfaceFactory(countedPickedUpLayerInterfaceFactory);
        this.total = total;
    }
    

    AllBinaryLayer getInstance4(ABHashtable hashtable, int x, int y, int z) {
        if (this.total > 0) {
            this.setTotal(this.total - 1);
            return this.getCountedPickedUpLayerInterfaceFactory().getNextInstance(hashtable, x, y, z);
        } else {
            throw JException('Exception', "No more left. Could use a listener to automatically remove");
        }
    }
    

    int getTotal() {
        return this.total;
    }
    

    void setTotal(int total) {
        this.total = total;
        this.totalString = this.primitiveLongUtil.getCharArray(total);
        this.myFontProcessor = this.updateMyFontProcessor;
    }
    

    @override
    void paint(Graphics graphics) {
        this.myFontProcessor.process(graphics);
    }
    

    @override
    void paintThreed(Graphics graphics) {
    }
    

    @override
    Animation getAnimationInterface() {
        return this.animationInterface;
    }
    

    void setAnimationInterface(Animation animationInterface) {
        this.animationInterface = animationInterface;
    }
    

    int getXOffset() {
        return this.xOffset;
    }
    

    void setXOffset(int totalStringWidth) {
        this.xOffset = totalStringWidth;
    }
    

    List<int> getTotalString() {
        return this.totalString;
    }
    

    CountedPickedUpLayerInterfaceFactory getCountedPickedUpLayerInterfaceFactory() {
        return this.countedPickedUpLayerInterfaceFactory;
    }
    

    void setCountedPickedUpLayerInterfaceFactory(CountedPickedUpLayerInterfaceFactory countedPickedUpLayerInterfaceFactory) {
        this.countedPickedUpLayerInterfaceFactory = countedPickedUpLayerInterfaceFactory;
    }
}

