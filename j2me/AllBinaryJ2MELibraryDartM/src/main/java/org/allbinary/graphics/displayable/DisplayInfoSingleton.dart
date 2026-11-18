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
// package org.allbinary.graphics.displayable

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Displayable.dart';
import 'package:allbinary/org/allbinary/AndroidUtil.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/Features.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/event/DisplayChangeEvent.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/event/DisplayChangeEventHandler.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/event/LastDisplayChangeEventHandler.dart';
import 'package:allbinary/org/allbinary/graphics/opengles/OpenGLFeatureFactory.dart';
import 'package:allbinary/org/allbinary/graphics/threed/SWTJOGLProcessor.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/PreLogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/system/os/GenericOperatingSystem.dart';
import 'package:allbinary/org/allbinary/logic/system/os/OperatingSystemFactory.dart';
import 'package:allbinary/org/allbinary/string/CommonLabels.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/BaseScalable.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/ScalableListener.dart';

class DisplayInfoSingleton {
    static final DisplayInfoSingleton SINGLETON = DisplayInfoSingleton();
    late LogUtil logUtil;
    late CommonLabels commonLabels;
    late CommonSeps commonSeps;
    late CommonStrings commonStrings;
    late String ORIENTATION;
    late String ADJUSTING_FOR_SCALING_IN_PORTRAIT;
    late String ADJUSTING_FOR_SCALING_IN_LANDSCAPE;
    late List<int> last;
    late List<int> lastHalf;
    late List<int> full;
    int top = 0;
    int left = 0;
    int xOffset = 0;
    int yOffset = 0;
    double scaleLargestTo = 0.0;
    int WIDTH = 0;
    int HEIGHT = 0;
    int CUSTOM_WIDTH = 0;
    int CUSTOM_HEIGHT = 0;
    late BaseScalable scalableListener;
    double displayRatio = 0.0;
    double ratio = 0.0;
    late String SET_LAST_SIZE_METHOD_NAME;
    late String FULL_WIDTH;
    late String FULL_HEIGHT;
    late String LAST_WIDTH;
    late String LAST_HEIGHT;
    late String PORTRAIT;
    late String LANDSCAPE;
    late DisplayChangeEvent displayChangeEvent;
    late String FIRE_METHOD_NAME;
    late String REASON;
    late String UPDATE_FROM_ORIENTATION_CHANGE;
    late BasicArrayList list;
    late String DISPLAY_INFO;
    late String FULL;
    late String LAST;
    late String LAST_HALF;

    // Java field initializers run after the base constructor
    void initFieldsDisplayInfoSingleton() {
    this.logUtil = LogUtil.getInstance();
    this.commonLabels = CommonLabels.getInstance();
    this.commonSeps = CommonSeps.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.ORIENTATION = "ORIENTATION";
    this.ADJUSTING_FOR_SCALING_IN_PORTRAIT = "Adjusting for Scaling in portrait display ratio: ";
    this.ADJUSTING_FOR_SCALING_IN_LANDSCAPE = "Adjusting for Scaling in landscape display ratio: ";
    this.last = List<int>.filled(4, 0);
    this.lastHalf = List<int>.filled(4, 0);
    this.full = List<int>.filled(4, 0);
    this.top = 0;
    this.left = 0;
    this.xOffset = 0;
    this.yOffset = 0;
    this.scaleLargestTo = 0.0;
    this.WIDTH = 0;
    this.HEIGHT = 1;
    this.CUSTOM_WIDTH = 2;
    this.CUSTOM_HEIGHT = 3;
    this.scalableListener = BaseScalable();
    this.displayRatio = 0.0;
    this.ratio = 1.0;
    this.SET_LAST_SIZE_METHOD_NAME = "setLastSize";
    this.FULL_WIDTH = " FullWidth: ";
    this.FULL_HEIGHT = " FullHeight: ";
    this.LAST_WIDTH = "LastWidth: ";
    this.LAST_HEIGHT = " LastHeight: ";
    this.PORTRAIT = "Portrait";
    this.LANDSCAPE = "Landscape";
    this.displayChangeEvent = DisplayChangeEvent(this);
    this.FIRE_METHOD_NAME = "fire";
    this.REASON = "reason: ";
    this.UPDATE_FROM_ORIENTATION_CHANGE = "Updating from Orientation Change ";
    this.list = BasicArrayListD();
    this.DISPLAY_INFO = "Display Info: ";
    this.FULL = "full";
    this.LAST = "last";
    this.LAST_HALF = "lastHalf";
    }
    

    static DisplayInfoSingleton getInstance() {
        return DisplayInfoSingleton.SINGLETON;
    }
    

    DisplayInfoSingleton() {
        this.initFieldsDisplayInfoSingleton();
        final int size = this.last.length;
        for (int index = 0; index < size; index++) {
            this.last[index] = 0;
            this.lastHalf[index] = 0;
            this.full[index] = 0;
        }
        if (AndroidUtil.isAndroid()) {
            this.scaleLargestTo = 640.0;
        } else {
            this.scaleLargestTo = 1080.0;
        }
    }
    

    List<int> getLastHalf() {
        return this.lastHalf;
    }
    

    List<int> getLast() {
        return this.last;
    }
    

    List<int> getFull() {
        return this.full;
    }
    

    double getScaleLargestTo() {
        return this.scaleLargestTo;
    }
    

    void setScaleLargestTo(int scaleLargestTo) {
        this.scaleLargestTo = (scaleLargestTo).toDouble();
    }
    

    void setLastSize(int aLastWidth, int aLastHeight, String reason) {
        if (this.full[this.WIDTH] != aLastWidth || this.full[this.HEIGHT] != aLastHeight) {
            this.setLastSizeForce(aLastWidth, aLastHeight, reason);
        }
    }
    

    void setLastSizeForce(int aLastWidth, int aLastHeight, String reason) {
        final StringMaker stringMaker = StringMaker();
        this.logUtil.putF(stringMaker.append(CommonLabels.getInstance().START_LABEL).append(reason).toString(), this, this.SET_LAST_SIZE_METHOD_NAME);
        final int aFullWidth = aLastWidth;
        final int aFullHeight = aLastHeight;
        stringMaker.delete(0, stringMaker.length());
        this.logUtil.putF(stringMaker.append(this.FULL_WIDTH).appendint(aFullWidth).append(this.FULL_HEIGHT).appendint(aFullHeight).append(this.toString()).toString(), this, this.SET_LAST_SIZE_METHOD_NAME);
        final GenericOperatingSystem operatingSystemInterface = OperatingSystemFactory.getInstance().getOperatingSystemInstance();
        if (operatingSystemInterface.isOverScan()) {
            aLastWidth = aLastWidth * operatingSystemInterface.getOverScanXPercent() ~/ 100;
            aLastHeight = aLastHeight * operatingSystemInterface.getOverScanYPercent() ~/ 100;
        }
        if (operatingSystemInterface.isScalable()) {
            if (this.isPortraitWH(aLastWidth, aLastHeight)) {
                if ((aLastHeight).toDouble() > this.scaleLargestTo) {
                    this.displayRatio = this.scaleLargestTo / (aLastHeight).toDouble();
                    this.ratio = (aLastHeight).toDouble() / this.scaleLargestTo;
                    stringMaker.delete(0, stringMaker.length());
                    this.logUtil.putF(stringMaker.append(this.ADJUSTING_FOR_SCALING_IN_PORTRAIT).appendfloat(this.displayRatio).toString(), this, this.SET_LAST_SIZE_METHOD_NAME);
                    aLastWidth = JMath.toInt32(((aLastWidth).toDouble() * this.displayRatio));
                    aLastHeight = JMath.toInt32(((aLastHeight).toDouble() * this.displayRatio));
                    this.scalableListener.scale(this.ratio);
                } else {
                    this.ratio = 1.0;
                    this.scalableListener.scale(this.ratio);
                }
            } else {
                if ((aLastWidth).toDouble() > this.scaleLargestTo) {
                    this.displayRatio = this.scaleLargestTo / (aLastWidth).toDouble();
                    this.ratio = (aLastWidth).toDouble() / this.scaleLargestTo;
                    stringMaker.delete(0, stringMaker.length());
                    this.logUtil.putF(stringMaker.append(this.ADJUSTING_FOR_SCALING_IN_LANDSCAPE).appendfloat(this.displayRatio).toString(), this, this.SET_LAST_SIZE_METHOD_NAME);
                    aLastWidth = JMath.toInt32(((aLastWidth).toDouble() * this.displayRatio));
                    aLastHeight = JMath.toInt32(((aLastHeight).toDouble() * this.displayRatio));
                    this.scalableListener.scale(this.ratio);
                } else {
                    this.ratio = 1.0;
                    this.scalableListener.scale(this.ratio);
                }
            }
        }
        stringMaker.delete(0, stringMaker.length());
        this.logUtil.putF(stringMaker.append(this.LAST_WIDTH).appendint(aLastWidth).append(this.LAST_HEIGHT).appendint(aLastHeight).toString(), this, this.SET_LAST_SIZE_METHOD_NAME);
        this.xOffset = aFullWidth - aLastWidth;
        this.yOffset = aFullHeight - aLastHeight;
        this.left = this.scalableListener.getLeft(this.xOffset);
        this.top = this.scalableListener.getTop(this.yOffset);
        this.full[this.WIDTH] = aFullWidth;
        this.full[this.HEIGHT] = aFullHeight;
        this.last[this.WIDTH] = aLastWidth;
        this.lastHalf[this.WIDTH] = (this.last[this.WIDTH] >> 1);
        this.last[this.HEIGHT] = aLastHeight;
        this.lastHalf[this.HEIGHT] = (this.last[this.HEIGHT] >> 1);
        SWTJOGLProcessor.getInstance().setCustom(aLastWidth, aLastHeight, this.ratio);
        this.add(this.SET_LAST_SIZE_METHOD_NAME);
    }
    

    bool isPortraitWH(int lastWidth, int lastHeight) {
        if (lastHeight > lastWidth) {
            return true;
        } else {
            return false;
        }
    }
    

    bool isPortrait() {
        return this.isPortraitWH(this.last[this.WIDTH], this.last[this.HEIGHT]);
    }
    

    void add(String reason) {
        final StringMaker stringMaker = StringMaker();
        this.logUtil.putF(stringMaker.append(this.REASON).append(reason).toString(), this, this.FIRE_METHOD_NAME);
        stringMaker.delete(0, stringMaker.length());
        this.logUtil.putF(this.toStringAppend(stringMaker), this, this.FIRE_METHOD_NAME);
        this.list.add(reason);
    }
    

    void process() {
        try {
            if (this.list.size() > 0) {
                this.processForced();
            }
            this.list.clear();
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            PreLogUtil.putOE(this.commonStrings.EXCEPTION, this, this.FIRE_METHOD_NAME, e);
            }
        }
    }
    

    void processForced() {
        try {
            final SWTJOGLProcessor swtJOGLProcessor = SWTJOGLProcessor.getInstance();
            swtJOGLProcessor.clear();
            DisplayChangeEventHandler.getInstance().fireEvent(this.displayChangeEvent);
            LastDisplayChangeEventHandler.getInstance().fireEvent(this.displayChangeEvent);
            swtJOGLProcessor.onSurfaceChanged();
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            PreLogUtil.putOE(this.commonStrings.EXCEPTION, this, this.FIRE_METHOD_NAME, e);
            }
        }
    }
    

    void update(Displayable displayable, String reason) {
        int aLastWidth = displayable.getWidth();
        int aLastHeight = displayable.getHeight();
        final int aFullWidth = aLastWidth;
        final int aFullHeight = aLastHeight;
        final StringMaker stringMaker = StringMaker();
        this.logUtil.putF(stringMaker.append(CommonLabels.getInstance().START_LABEL).append(reason).append(this.LAST_WIDTH).appendint(aLastWidth).append(this.LAST_HEIGHT).appendint(aLastHeight).append(this.commonSeps.SPACE).append(this.toString()).toString(), this, this.commonStrings.UPDATE);
        if (aLastWidth > 0 && aLastHeight > 0) {
            final Features features = Features.getInstance();
            final OpenGLFeatureFactory openGLFeatureFactory = OpenGLFeatureFactory.getInstance();
            if (!features.isDefault(openGLFeatureFactory.OPENGL) || this.last[this.WIDTH] != aLastWidth || this.last[this.HEIGHT] != aLastHeight) {
                stringMaker.delete(0, stringMaker.length());
                this.logUtil.putF(stringMaker.append(this.UPDATE_FROM_ORIENTATION_CHANGE).toString(), this, this.commonStrings.UPDATE);
                final GenericOperatingSystem operatingSystemInterface = OperatingSystemFactory.getInstance().getOperatingSystemInstance();
                if (operatingSystemInterface.isOverScan()) {
                    aLastWidth = aLastWidth * operatingSystemInterface.getOverScanXPercent() ~/ 100;
                    aLastHeight = aLastHeight * operatingSystemInterface.getOverScanYPercent() ~/ 100;
                }
                if (operatingSystemInterface.isScalable()) {
                    if (this.isPortraitWH(aLastWidth, aLastHeight)) {
                        if ((aLastHeight).toDouble() > this.scaleLargestTo) {
                            this.displayRatio = this.scaleLargestTo / (aLastHeight).toDouble();
                            this.ratio = (aLastHeight).toDouble() / this.scaleLargestTo;
                            stringMaker.delete(0, stringMaker.length());
                            this.logUtil.putF(stringMaker.append(this.ADJUSTING_FOR_SCALING_IN_PORTRAIT).appendfloat(this.displayRatio).toString(), this, this.commonStrings.UPDATE);
                            aLastWidth = JMath.toInt32(((aLastWidth).toDouble() * this.displayRatio));
                            aLastHeight = JMath.toInt32(((aLastHeight).toDouble() * this.displayRatio));
                            this.scalableListener.scale(this.ratio);
                        } else {
                            this.ratio = 1.0;
                            this.scalableListener.scale(this.ratio);
                        }
                    } else {
                        if ((aLastWidth).toDouble() > this.scaleLargestTo) {
                            this.displayRatio = this.scaleLargestTo / (aLastWidth).toDouble();
                            this.ratio = (aLastWidth).toDouble() / this.scaleLargestTo;
                            stringMaker.delete(0, stringMaker.length());
                            this.logUtil.putF(stringMaker.append(this.ADJUSTING_FOR_SCALING_IN_LANDSCAPE).appendfloat(this.displayRatio).toString(), this, this.commonStrings.UPDATE);
                            aLastWidth = JMath.toInt32(((aLastWidth).toDouble() * this.displayRatio));
                            aLastHeight = JMath.toInt32(((aLastHeight).toDouble() * this.displayRatio));
                            this.scalableListener.scale(this.ratio);
                        } else {
                            this.ratio = 1.0;
                            this.scalableListener.scale(this.ratio);
                        }
                    }
                }
                stringMaker.delete(0, stringMaker.length());
                this.logUtil.putF(stringMaker.append(this.UPDATE_FROM_ORIENTATION_CHANGE).append(this.LAST_WIDTH).appendint(aLastWidth).append(this.LAST_HEIGHT).appendint(aLastHeight).toString(), this, this.commonStrings.UPDATE);
                this.xOffset = aFullWidth - aLastWidth;
                this.yOffset = aFullHeight - aLastHeight;
                this.left = this.scalableListener.getLeft(this.xOffset);
                this.top = this.scalableListener.getTop(this.yOffset);
                this.full[this.WIDTH] = aFullWidth;
                this.full[this.HEIGHT] = aFullHeight;
                this.last[this.WIDTH] = aLastWidth;
                this.lastHalf[this.WIDTH] = (this.last[this.WIDTH] >> 1);
                this.last[this.HEIGHT] = aLastHeight;
                this.lastHalf[this.HEIGHT] = (this.last[this.HEIGHT] >> 1);
                SWTJOGLProcessor.getInstance().setCustom(aLastWidth, aLastHeight, this.ratio);
                this.add(this.commonStrings.UPDATE);
            }
        }
    }
    

    @override
    String toString() {
        final StringMaker stringBuffer = StringMaker();
        return this.toStringAppend(stringBuffer);
    }
    

    String toStringAppend(StringMaker stringBuffer) {
        stringBuffer.append(this.DISPLAY_INFO);
        stringBuffer.append(this.FULL);
        stringBuffer.append(this.commonLabels.WIDTH_LABEL);
        stringBuffer.appendint(this.full[this.WIDTH]);
        stringBuffer.append(this.commonSeps.SPACE);
        stringBuffer.append(this.FULL);
        stringBuffer.append(this.commonLabels.HEIGHT_LABEL);
        stringBuffer.appendint(this.full[this.HEIGHT]);
        stringBuffer.append(this.commonSeps.SPACE);
        stringBuffer.append(this.LAST);
        stringBuffer.append(this.commonLabels.WIDTH_LABEL);
        stringBuffer.appendint(this.last[this.WIDTH]);
        stringBuffer.append(this.commonSeps.SPACE);
        stringBuffer.append(this.LAST);
        stringBuffer.append(this.commonLabels.HEIGHT_LABEL);
        stringBuffer.appendint(this.last[this.HEIGHT]);
        stringBuffer.append(this.commonSeps.SPACE);
        stringBuffer.append(this.LAST_HALF);
        stringBuffer.append(this.commonLabels.WIDTH_LABEL);
        stringBuffer.appendint(this.lastHalf[this.WIDTH]);
        stringBuffer.append(this.commonSeps.SPACE);
        stringBuffer.append(this.LAST_HALF);
        stringBuffer.append(this.commonLabels.HEIGHT_LABEL);
        stringBuffer.appendint(this.lastHalf[this.HEIGHT]);
        stringBuffer.append(this.commonSeps.SPACE);
        stringBuffer.append((this.isPortrait() ? this.PORTRAIT : this.LANDSCAPE));
        return stringBuffer.toString();
    }
    

    int getTop() {
        return this.top;
    }
    

    int getLeft() {
        return this.left;
    }
    

    int getLastWidth() {
        return this.last[this.WIDTH];
    }
    

    int getLastHeight() {
        return this.last[this.HEIGHT];
    }
    

    int getLastHalfWidth() {
        return this.lastHalf[this.WIDTH];
    }
    

    int getLastHalfHeight() {
        return this.lastHalf[this.HEIGHT];
    }
    

    int getCustomLastWidth() {
        return this.last[this.CUSTOM_WIDTH];
    }
    

    int getCustomLastHeight() {
        return this.last[this.CUSTOM_HEIGHT];
    }
    

    int getRawLastWidth() {
        return this.last[this.WIDTH];
    }
    

    int getRawLastHeight() {
        return this.last[this.HEIGHT];
    }
    

    void setCustom(int width, int height) {
        this.last[this.CUSTOM_WIDTH] = width;
        this.lastHalf[this.CUSTOM_WIDTH] = (this.last[this.CUSTOM_WIDTH] >> 1);
        this.last[this.CUSTOM_HEIGHT] = height;
        this.lastHalf[this.CUSTOM_HEIGHT] = (this.last[this.CUSTOM_HEIGHT] >> 1);
    }
    

    void setScalableListener(BaseScalable scalableListener) {
        this.scalableListener = scalableListener;
    }
    

    ScalableListener getScalableListener() {
        return this.scalableListener;
    }
    

    double getRatio() {
        return this.ratio;
    }
    

    double getDisplayRatio() {
        return this.displayRatio;
    }
    

    void setOffset(int left, int top) {
        this.left = left;
    }
    

    int getxOffset() {
        return this.xOffset;
    }
    

    int getyOffset() {
        return this.yOffset;
    }
}

