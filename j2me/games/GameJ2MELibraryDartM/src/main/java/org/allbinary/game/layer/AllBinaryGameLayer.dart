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
// package org.allbinary.game.layer

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/khronos/opengles/GL.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/graphics/Rectangle.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorFactory.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorSetUtil.dart';
import 'package:allbinary/org/allbinary/graphics/paint/NullPaintable.dart';
import 'package:allbinary/org/allbinary/graphics/paint/Paintable.dart';
import 'package:allbinary/org/allbinary/image/opengles/OpenGLSurfaceChangedInterface.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayerManager.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/ForcedLogUtil.dart';
import 'package:allbinary/org/allbinary/logic/util/event/AllBinaryEventObject.dart';
import 'package:allbinary/org/allbinary/logic/util/event/EventStrings.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/view/ViewPositionBase.dart';
import 'package:allbinary/org/allbinary/view/event/ViewPositionEvent.dart';
import 'package:allbinary/org/allbinary/view/event/ViewPositionEventListenerInterface.dart';
import 'package:allbinary/org/allbinary/game/layer/SWTUtil.dart';
import 'package:allbinary/org/allbinary/game/layer/SWTBlackPaintable.dart';
import 'package:allbinary/org/allbinary/game/layer/GameLayerUtil.dart';

class AllBinaryGameLayer extends AllBinaryLayer implements ViewPositionEventListenerInterface, OpenGLSurfaceChangedInterface {
    late CommonStrings commonStrings;
    late BasicColorSetUtil basicSetColorUtil;
    late BasicColor RED;
    late Paintable paintable;
    late BasicArrayList gameKeyEventList;

    // Java field initializers run after the base constructor
    void initFieldsAllBinaryGameLayer() {
    this.commonStrings = CommonStrings.getInstance();
    this.basicSetColorUtil = BasicColorSetUtil.getInstance();
    this.RED = BasicColorFactory.getInstance().RED;
    this.paintable = AllBinaryGameLayer.createPaintable();
    this.gameKeyEventList = BasicArrayListD();
    }
    

    static Paintable createPaintable() {
        if (SWTUtil.isSWT) {
            return SWTBlackPaintable();
        }
        return NullPaintable.getInstance();
    }
    

    AllBinaryGameLayer(String name, Rectangle layerInfo, ViewPositionBase viewPosition) : super(name, layerInfo, viewPosition) {
        this.initFieldsAllBinaryGameLayer();
        
    }
    

    @override
    void set(GL gl) {
        throw JException('Exception', this.commonStrings.NOT_IMPLEMENTED);
    }
    

    void move() {
    }
    

    BasicArrayList getGameKeyEventList() {
        return this.gameKeyEventList;
    }
    

    void processInput(AllBinaryLayerManager allBinaryLayerManager) {
        throw JException('Exception', this.commonStrings.NOT_IMPLEMENTED);
    }
    

    void processTick(AllBinaryLayerManager allBinaryLayerManager) {
        throw JException('Exception', this.commonStrings.NOT_IMPLEMENTED);
    }
    

    @override
    void onEvent(AllBinaryEventObject eventObject) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    void onViewPositionChangeEvent() {
        this.onChangeEvent(this.viewPositionEvent);
    }
    

    @override
    void onChangeEvent(ViewPositionEvent layerManagerEvent) {
        if (GameLayerUtil.isOnScreen(this)) {
            this.setVisible(true);
        } else {
            this.setVisible(false);
        }
    }
    

    void paintFirst(Graphics graphics) {
        this.paintable.paint(graphics);
    }
    

    void paintDebug(Graphics graphics) {
        final ViewPositionBase viewPosition = this.getViewPosition();
        final int viewX = viewPosition.getX();
        final int viewY = viewPosition.getY();
        this.basicSetColorUtil.setBasicColorP(graphics, this.RED);
        graphics.drawRect(viewX, viewY, this.getWidth(), this.getHeight());
    }
    

    void setWidth(int width) {
        super.setLayerWidth(width);
        this.setHalfWidth(width >> 1);
    }
    

    void setHeight(int height) {
        super.setLayerHeight(height);
        this.setHalfHeight(height >> 1);
    }
}

