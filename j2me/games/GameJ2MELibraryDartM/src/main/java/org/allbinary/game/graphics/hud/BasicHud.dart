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
// package org.allbinary.game.graphics.hud

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/J2MEUtil.dart';
import 'package:allbinary/org/allbinary/graphics/Anchor.dart';
import 'package:allbinary/org/allbinary/graphics/GPoint.dart';
import 'package:allbinary/org/allbinary/graphics/PointFactory.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorFactory.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorSetUtil.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/CanvasStrings.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/DisplayInfoSingleton.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/event/DisplayChangeEvent.dart';
import 'package:allbinary/org/allbinary/graphics/font/MyFontProcessor.dart';
import 'package:allbinary/org/allbinary/graphics/font/UpdateMyFontInterface.dart';
import 'package:allbinary/org/allbinary/graphics/font/UpdateMyFontProcessor.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/ForcedLogUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/util/event/AllBinaryEventObject.dart';
import 'package:allbinary/org/allbinary/logic/util/event/EventStrings.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/game/graphics/hud/HudGraphicsPosition.dart';
import 'package:allbinary/org/allbinary/game/graphics/hud/BasicHudFactory.dart';

class BasicHud implements UpdateMyFontInterface {
    late LogUtil logUtil;
    late CommonStrings commonStrings;
    late CanvasStrings canvasStrings;
    late BasicColorSetUtil basicSetColorUtil;
    late DisplayInfoSingleton displayInfo;
    late MyFontProcessor updateMyFontProcessor;
    late MyFontProcessor myFontProcessor;
    int location = 0;
    int direction = 0;
    int bufferZone = 0;
    int bufferZoneY = 0;
    late HudGraphicsPosition hudGraphicsPosition;
    int x = 0;
    int y = 0;
    late BasicColor basicColor;
    int color = 0;
    int updateMaxWidth = 0;
    int updateMaxHeight = 0;
    int offsetY = 0;

    // Java field initializers run after the base constructor
    void initFieldsBasicHud() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.canvasStrings = CanvasStrings.getInstance();
    this.basicSetColorUtil = BasicColorSetUtil.getInstance();
    this.displayInfo = DisplayInfoSingleton.getInstance();
    this.updateMyFontProcessor = UpdateMyFontProcessor(this);
    this.myFontProcessor = this.updateMyFontProcessor;
    this.location = 0;
    this.direction = 0;
    this.bufferZone = 0;
    this.bufferZoneY = 0;
    this.hudGraphicsPosition = HudGraphicsPosition.NULL_HUD_GRAPHICS_POSITION;
    this.x = 0;
    this.y = 0;
    this.basicColor = BasicColorFactory.getInstance().BLACK;
    
    this.updateMaxWidth = 0;
    this.updateMaxHeight = 0;
    this.offsetY = 0;
    }
    

    BasicHud(int location, int direction, int bufferZone, BasicColor basicColor) {
        this.initFieldsBasicHud();
        this.setLocation(location);
        this.setDirection(direction);
        this.setBufferZone(bufferZone);
        this.onDisplayChangeEvent(DisplayInfoSingleton.getInstance().displayChangeEvent);
        this.setBasicColorP(basicColor);
        this.color = basicColor.intValue();
    }
    

    @override
    void updateMeasurement(Graphics graphics) {
        try {
            this.hudGraphicsPosition = this.getHudGraphicsPositionWH(this.displayInfo.getLastWidth(), this.displayInfo.getLastHeight(), this.updateMaxWidth, this.updateMaxHeight);
            this.x = this.hudGraphicsPosition.getPoint().getX();
            this.setY(this.hudGraphicsPosition.getPoint().getY());
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            final CommonStrings commonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, this.canvasStrings.ON_DISPLAY_CHANGE_EVENT, e);
            }
        }
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    int getLocation() {
        return this.location;
    }
    

    int getDirection() {
        return this.direction;
    }
    

    HudGraphicsPosition getHudGraphicsPositionWH(int width, int height, int maxWidth, int maxHeight) {
        int x = 0;
        int y = 0;
        int anchor = 0;
        final BasicHudFactory basicHudFactory = BasicHudFactory.getInstance();
        if (basicHudFactory.BOTTOMLEFT == this.getLocation()) {
            x = this.bufferZone + 2;
            y = height - maxHeight - this.bufferZone;
            anchor = Graphics.BOTTOM & Graphics.LEFT;
        } else if (basicHudFactory.BOTTOMRIGHT == this.getLocation()) {
            x = width - maxWidth;
            y = height - maxHeight - this.bufferZone;
            anchor = Graphics.BOTTOM & Graphics.RIGHT;
        } else if (basicHudFactory.TOPLEFT == this.getLocation()) {
            x = this.bufferZone + 2;
            y = this.bufferZoneY;
            anchor = Anchor.TOP_LEFT;
        } else if (basicHudFactory.TOPRIGHT == this.getLocation()) {
            x = width - maxWidth;
            y = this.bufferZoneY;
            anchor = Graphics.TOP & Graphics.RIGHT;
        } else if (basicHudFactory.TOPCENTER == this.getLocation()) {
            x = ((width - maxWidth) ~/ 2);
            y = this.bufferZoneY;
            anchor = Graphics.TOP & Graphics.HCENTER;
        } else if (basicHudFactory.BOTTOMCENTER == this.getLocation()) {
            x = ((width - maxWidth) ~/ 2);
            y = height - maxHeight - this.bufferZone;
            anchor = Graphics.BOTTOM & Graphics.HCENTER;
        } else if (basicHudFactory.ABSOLUTE == this.getLocation()) {
            x = maxHeight;
            y = maxWidth;
            anchor = 0;
        }
        return HudGraphicsPosition(this.getPoint(x, y), anchor);
    }
    

    void onEvent(AllBinaryEventObject eventObject) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    void onDisplayChangeEvent(DisplayChangeEvent displayChangeEvent) {
        this.myFontProcessor = this.updateMyFontProcessor;
    }
    

    GPoint getPoint(int x, int y) {
        return PointFactory.getInstance().createXY(x, y);
    }
    

    int getBufferZone() {
        return this.bufferZone;
    }
    

    void setBufferZone(int bufferZone) {
        this.bufferZone = bufferZone;
        if (J2MEUtil.isHTML()) {
            this.bufferZoneY = this.bufferZone;
        } else {
            this.bufferZoneY = this.bufferZone + 5;
        }
    }
    

    void setLocation(int location) {
        this.location = location;
    }
    

    void setDirection(int direction) {
        this.direction = direction;
    }
    

    HudGraphicsPosition getHudGraphicsPosition() {
        return this.hudGraphicsPosition;
    }
    

    int getColor() {
        return this.color;
    }
    

    int getX() {
        return this.x;
    }
    

    void setX(int x) {
        this.x = x;
    }
    

    void setBasicColorP(BasicColor basicColor) {
        this.basicColor = basicColor;
    }
    

    BasicColor getBasicColorP() {
        return this.basicColor;
    }
    

    void setY(int y) {
        this.y = y;
    }
    

    int getY() {
        return this.y;
    }
    

    void paintSSO(Graphics graphics, String string, String string2, int offset) {
        this.myFontProcessor.process(graphics);
        this.basicSetColorUtil.setBasicColorP(graphics, this.getBasicColorP());
        graphics.drawString(string, this.x, this.getY(), this.hudGraphicsPosition.getAnchor());
        graphics.drawString(string2, this.x + offset, this.getY(), this.hudGraphicsPosition.getAnchor());
    }
    

    void paintSSOO(Graphics graphics, String string, String string2, int offset, int offset2) {
        this.myFontProcessor.process(graphics);
        graphics.setColor(this.getColor());
        graphics.drawString(string, this.x + offset, this.getY(), this.hudGraphicsPosition.getAnchor());
        graphics.drawString(string2, this.x + offset2, this.getY(), this.hudGraphicsPosition.getAnchor());
    }
    

    void paintDXY(Graphics graphics, List<int> charArray, int offset, int len, List<int> charArray2, int offset2, int len2, int xOffset, int xOffset2) {
        this.myFontProcessor.process(graphics);
        this.basicSetColorUtil.setBasicColorP(graphics, this.getBasicColorP());
        final int y = this.getY();
        graphics.drawChars(charArray, offset, len, this.x + xOffset, y, this.hudGraphicsPosition.getAnchor());
        graphics.drawChars(charArray2, offset2, len2, this.x + xOffset2, y, this.hudGraphicsPosition.getAnchor());
    }
    

    void paintDX(Graphics graphics, List<int> charArray, int offset, int len, List<int> charArray2, int offset2, int len2, int xOffset) {
        this.myFontProcessor.process(graphics);
        this.basicSetColorUtil.setBasicColorP(graphics, this.getBasicColorP());
        final int y = this.getY();
        graphics.drawChars(charArray, offset, len, this.x, y, this.hudGraphicsPosition.getAnchor());
        graphics.drawChars(charArray2, offset2, len2, this.x + xOffset, y, this.hudGraphicsPosition.getAnchor());
    }
    

    void paintOffsetAndLength(Graphics graphics, List<int> charArray, int offset, int len) {
        this.myFontProcessor.process(graphics);
        this.basicSetColorUtil.setBasicColorP(graphics, this.getBasicColorP());
        final int y = this.getY();
        graphics.drawChars(charArray, offset, len, this.x, y, this.hudGraphicsPosition.getAnchor());
    }
    

    void paintString(Graphics graphics, String string) {
        this.myFontProcessor.process(graphics);
        this.basicSetColorUtil.setBasicColorP(graphics, this.getBasicColorP());
        final int y = this.getY() + this.offsetY;
        graphics.drawString(string, this.x, y, this.hudGraphicsPosition.getAnchor());
    }
}

