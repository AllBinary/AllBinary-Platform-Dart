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
// package org.allbinary.layer

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/game/identification/BasicGroupFactory.dart';
import 'package:allbinary/org/allbinary/game/identification/Group.dart';
import 'package:allbinary/org/allbinary/graphics/GPoint.dart';
import 'package:allbinary/org/allbinary/graphics/Rectangle.dart';
import 'package:allbinary/org/allbinary/graphics/RectangleFactory.dart';
import 'package:allbinary/org/allbinary/graphics/opengles/OpenGLFeatureUtil.dart';
import 'package:allbinary/org/allbinary/TsUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/math/PositionStrings.dart';
import 'package:allbinary/org/allbinary/string/CommonLabels.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';
import 'package:allbinary/org/allbinary/view/ViewPositionBase.dart';
import 'package:allbinary/org/allbinary/view/event/ViewPositionEvent.dart';
import 'package:allbinary/org/allbinary/layer/Layer.dart';
import 'package:allbinary/org/allbinary/layer/LayerInterface.dart';

class AllBinaryLayer extends Layer implements LayerInterface {
    static final AllBinaryLayer NULL_ALLBINARY_LAYER = AllBinaryLayer(StringUtil.getInstance().EMPTY_STRING, RectangleFactory.SINGLETON, ViewPositionBase.NULL_VIEW_POSITION);
    static const String TYPE = "Type: ";
    late ViewPositionEvent viewPositionEvent;
    int halfWidth = 0;
    int halfHeight = 0;
    late String name;
    late ViewPositionBase viewPosition;

    // Java field initializers run after the base constructor
    void initFieldsAllBinaryLayer() {
    this.viewPositionEvent = ViewPositionEvent(this);
    this.halfWidth = 0;
    this.halfHeight = 0;
    
    this.viewPosition = ViewPositionBase.NULL_VIEW_POSITION;
    }
    

    AllBinaryLayer(String name, Rectangle rectangle, ViewPositionBase viewPosition) : super(rectangle.getWidth(), rectangle.getHeight()) {
        this.initFieldsAllBinaryLayer();
        
        late String localName;
        localName = StringMaker().append(name).append(CommonSeps.getInstance().COLON).append(Integer.toHexString(TsUtil.getInstance().hashCode1(this))).toString();
        this.name = localName;
        final GPoint point = rectangle.getPoint();
        this.setPosition(point.getX(), point.getY(), point.getZ());
        this.setHalfWidth((this.getWidth() >> 1));
        this.setHalfHeight((this.getHeight() >> 1));
        this.viewPosition = viewPosition;
        this.viewPosition.setAllbinaryLayer(this);
    }
    

    @override
    void setPosition(int x, int y, int z) {
        super.setPosition(x, y, z);
    }
    

    @override
    void moveDXYZ(int dx, int dy, int dz) {
        super.moveDXYZ(dx, dy, dz);
    }
    

    @override
    int getXP() {
        return super.getXP();
    }
    

    @override
    int getYP() {
        return super.getYP();
    }
    

    @override
    int getZP() {
        return super.getZP();
    }
    

    @override
    int getWidth() {
        return super.getWidth();
    }
    

    @override
    int getHeight() {
        return super.getHeight();
    }
    

    @override
    void setVisible(bool visible) {
        super.setVisible(visible);
    }
    

    @override
    bool isVisible() {
        return super.isVisible();
    }
    

    @override
    void paint(Graphics graphics) {
        super.paint(graphics);
    }
    

    void onChangeEvent(ViewPositionEvent layerManagerEvent) {
    }
    

    @override
    void paintThreed(Graphics graphics) {
    }
    

    @override
    int getX2() {
        return this.getXP() + this.getWidth();
    }
    

    @override
    int getY2() {
        return this.getYP() + this.getHeight();
    }
    

    @override
    int getZ2() {
        return ((this.getZP() + this.getDepth())).toSigned(32);
    }
    

    @override
    String getName() {
        return this.name;
    }
    

    void setHalfWidth(int halfWidth) {
        this.halfWidth = halfWidth;
    }
    

    @override
    int getHalfWidth() {
        return this.halfWidth;
    }
    

    void setHalfHeight(int halfHeight) {
        this.halfHeight = halfHeight;
    }
    

    @override
    int getHalfHeight() {
        return this.halfHeight;
    }
    

    int getHalfDepth() {
        return (this.getDepth()).toSigned(32) ~/ 2;
    }
    

    ViewPositionBase getViewPosition() {
        return this.viewPosition;
    }
    

    void setViewPosition(ViewPositionBase viewPosition) {
        this.viewPosition = viewPosition;
    }
    

    @override
    List<Group?> getGroupInterface() {
        return BasicGroupFactory.getInstance().NONE_ARRAY;
    }
    

    @override
    bool implmentsTickableInterface() {
        return false;
    }
    

    @override
    bool implmentsGameInputInterface() {
        return false;
    }
    

    @override
    bool implmentsArtificialIntelligenceCompositeInterface() {
        return false;
    }
    

    @override
    bool implmentsCollidableInterface() {
        return false;
    }
    

    bool implementsThreedInterface() {
        return OpenGLFeatureUtil.getInstance().isAnyThreed();
    }
    

    @override
    int getType() {
        return -1;
    }
    

    int getMultiPlayerType() {
        return -1;
    }
    

    @override
    void toStringAppend(StringMaker stringBuffer) {
        final CommonSeps commonSeps = CommonSeps.getInstance();
        final PositionStrings positionStrings = PositionStrings.getInstance();
        final CommonLabels commonLabels = CommonLabels.getInstance();
        stringBuffer.append(this.getName());
        stringBuffer.append(commonSeps.COLON);
        stringBuffer.append(AllBinaryLayer.TYPE);
        stringBuffer.appendint(this.getType());
        stringBuffer.append(commonSeps.SPACE);
        stringBuffer.append(positionStrings.X_LABEL);
        stringBuffer.appendint(this.getXP());
        stringBuffer.append(commonSeps.SPACE);
        stringBuffer.append(positionStrings.Y_LABEL);
        stringBuffer.appendint(this.getYP());
        stringBuffer.append(commonSeps.SPACE);
        stringBuffer.append(positionStrings.Z_LABEL);
        stringBuffer.appendint(this.getZP());
        stringBuffer.append(commonSeps.SPACE);
        stringBuffer.append(commonLabels.WIDTH_LABEL);
        stringBuffer.appendint(this.getWidth());
        stringBuffer.append(commonSeps.SPACE);
        stringBuffer.append(commonLabels.HEIGHT_LABEL);
        stringBuffer.appendint(this.getHeight());
    }
    

    @override
    String toString() {
        final StringMaker stringBuffer = StringMaker();
        this.toStringAppend(stringBuffer);
        return stringBuffer.toString();
    }
}

