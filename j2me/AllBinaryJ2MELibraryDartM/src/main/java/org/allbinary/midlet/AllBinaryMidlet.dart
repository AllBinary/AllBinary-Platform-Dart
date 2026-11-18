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
// package org.allbinary.midlet

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Command.dart';
import 'package:allbinary/javax/microedition/lcdui/CommandListener.dart';
import 'package:allbinary/javax/microedition/lcdui/Display.dart';
import 'package:allbinary/javax/microedition/lcdui/Displayable.dart';
import 'package:allbinary/javax/microedition/lcdui/NullCanvas.dart';
import 'package:allbinary/javax/microedition/midlet/MIDlet.dart';
import 'package:allbinary/javax/microedition/midlet/MIDletStateChangeException.dart';
import 'package:allbinary/org/allbinary/logic/StdUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/ForcedLogUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/PreLogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/logic/util/event/EventStrings.dart';
import 'package:allbinary/org/allbinary/string/CommonLabels.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/system/Memory.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/util/ABHashtable.dart';

class AllBinaryMidlet extends MIDlet implements CommandListener {
    static Object NULL_ALLBINARY_MIDLET = NullUtil.getInstance().NULL_OBJECT;
    late LogUtil logUtil;
    late CommonStrings commonStrings;
    late String SET_DISPLAY;
    late String SETTING_;
    late String u_DISPLAY_;
    late String SETTING_NO_TITLE;
    late ABHashtable hashtable;
    bool midletDestroyed = false;

    // Java field initializers run after the base constructor
    void initFieldsAllBinaryMidlet() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.SET_DISPLAY = "setDisplay";
    this.SETTING_ = "Setting: ";
    this.u_DISPLAY_ = " Display: ";
    this.SETTING_NO_TITLE = "Setting: No Title, Display: ";
    this.hashtable = StdUtil.getInstance().createHashtable();
    this.midletDestroyed = false;
    }
    

    static AllBinaryMidlet getNullInstance() {
        if (AllBinaryMidlet.NULL_ALLBINARY_MIDLET == NullUtil.getInstance().NULL_OBJECT) {
            AllBinaryMidlet.NULL_ALLBINARY_MIDLET = AllBinaryMidlet();
        }
        return (AllBinaryMidlet.NULL_ALLBINARY_MIDLET as AllBinaryMidlet);
    }
    

    AllBinaryMidlet() {
        this.initFieldsAllBinaryMidlet();
        this.logUtil.putF(this.commonStrings.CONSTRUCTOR, this, "AllBinaryMidlet::AllBinaryMidlet");
    }
    

    void setDisplay(Displayable newDisplay) {
        String title = StringUtil.getInstance().EMPTY_STRING;
        if (newDisplay != NullCanvas.NULL_CANVAS) {
            title = newDisplay.getTitle();
            this.logUtil.putF(StringMaker().append(this.SETTING_).append(title).append(this.u_DISPLAY_).append(StringUtil.getInstance().toString1(newDisplay)).toString(), this, this.SET_DISPLAY);
        }
        final Display display = this.getDisplay();
        display.setCurrent(newDisplay);
    }
    

    Display getDisplay() {
        return Display.getDisplay(this);
    }
    

    Displayable getCurrentDisplayable() {
        return Display.getDisplay(this).getCurrent();
    }
    

    void setDestroyed(bool destroyed) {
        this.midletDestroyed = destroyed;
    }
    

    bool isDestroyed() {
        return this.midletDestroyed;
    }
    

    @override
    void startApp() {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    @override
    void pauseApp() {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    void destroyAppInRunnable(bool unconditional, bool isProgress) {
    }
    

    @override
    void destroyApp(bool unconditional) {
        final String METHOD_NAME = "AllBinaryMidlet::destroyApp";
        try {
            this.logUtil.putF(this.commonStrings.START, this, METHOD_NAME);
            PreLogUtil.put(Memory.getInfo(), this, METHOD_NAME);
            this.setDestroyed(true);
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, METHOD_NAME, e);
            }
        }
    }
    

    void setStartStateHashtable(ABHashtable hashtable) {
        this.logUtil.putF(StringMaker().append(CommonLabels.getInstance().START_LABEL).append(StringUtil.getInstance().toString1(hashtable)).toString(), this, "setStartStateHashtable");
        this.hashtable = hashtable;
    }
    

    ABHashtable getStartStateHashtable() {
        this.logUtil.putF(StringMaker().append(CommonLabels.getInstance().START_LABEL).append(StringUtil.getInstance().toString1(this.hashtable)).toString(), this, "getStartStateHashtable");
        return this.hashtable;
    }
    

    ABHashtable getCurrentStateHashtable() {
        this.logUtil.putF(this.commonStrings.START, this, "getStateHashtable");
        return StdUtil.getInstance().NULL_TABLE;
    }
    

    @override
    void commandAction(Command command, Displayable displayable) {
    }
}

