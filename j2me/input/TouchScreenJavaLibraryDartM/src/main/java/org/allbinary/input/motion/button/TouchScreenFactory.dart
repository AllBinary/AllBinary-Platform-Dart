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
// package org.allbinary.input.motion.button

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/input/motion/button/TouchScreenTypesFactory.dart';
import 'package:allbinary/org/allbinary/input/motion/button/TouchScreenType.dart';

class TouchScreenFactory {
    static final TouchScreenFactory SINGLETON = TouchScreenFactory();
    late LogUtil logUtil;
    bool touch = false;
    bool multiTouch = false;
    bool multiTouchDistinct = false;
    late TouchScreenType touchScreenType;

    // Java field initializers run after the base constructor
    void initFieldsTouchScreenFactory() {
    this.logUtil = LogUtil.getInstance();
    this.touch = false;
    this.multiTouch = false;
    this.multiTouchDistinct = false;
    this.touchScreenType = TouchScreenTypesFactory.getInstance().NOTOUCH;
    }
    

    TouchScreenFactory() {
        this.initFieldsTouchScreenFactory();
        try {
            this.setTouch(true);
            this.setMultiTouch(false);
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            final CommonStrings commonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, TouchScreenFactory.SINGLETON, commonStrings.GET_INSTANCE, e);
            }
        }
    }
    

    static TouchScreenFactory getInstance() {
        return TouchScreenFactory.SINGLETON;
    }
    

    void setMultiTouch(bool multiTouch) {
        this.multiTouch = multiTouch;
    }
    

    bool isMultiTouch() {
        return this.multiTouch;
    }
    

    void setTouch(bool touch) {
        this.touch = touch;
    }
    

    bool isTouch() {
        return this.touch;
    }
    

    void setMultiTouchDistinct(bool multiTouchDistinct) {
        this.multiTouchDistinct = multiTouchDistinct;
    }
    

    bool isMultiTouchDistinct() {
        return this.multiTouchDistinct;
    }
    

    void setTouchScreenType(TouchScreenType touchScreenType) {
        this.touchScreenType = touchScreenType;
    }
    

    TouchScreenType getTouchScreenType() {
        return this.touchScreenType;
    }
    

    @override
    String toString() {
        StringMaker stringBuffer = StringMaker();
        stringBuffer.append("TouchScreen: ");
        stringBuffer.appendboolean(this.isTouch());
        stringBuffer.append(" MultiTouch: ");
        stringBuffer.appendboolean(this.isMultiTouch());
        stringBuffer.append(" Distinct MultiTouch: ");
        stringBuffer.appendboolean(this.isMultiTouchDistinct());
        stringBuffer.append(" TouchScreenType: ");
        stringBuffer.append(StringUtil.getInstance().toString1(this.getTouchScreenType()));
        return stringBuffer.toString();
    }
}

