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
// package org.allbinary.game.ag.layer.hud.basic

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Font.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/business/advertisement/GameAdStateFactory.dart';
import 'package:allbinary/org/allbinary/canvas/Processor.dart';
import 'package:allbinary/org/allbinary/game/GameAdState.dart';
import 'package:allbinary/org/allbinary/game/ag/layer/hud/basic/notification/GameNotification.dart';
import 'package:allbinary/org/allbinary/game/ag/layer/hud/basic/notification/GameNotificationHud.dart';
import 'package:allbinary/org/allbinary/game/layer/hud/event/GameNotificationEventHandler.dart';
import 'package:allbinary/org/allbinary/graphics/CustomGPoint.dart';
import 'package:allbinary/org/allbinary/graphics/GPoint.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/DisplayInfoSingleton.dart';
import 'package:allbinary/org/allbinary/graphics/font/UpdateMyFontInterface.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/time/GameTickTimeDelayHelper.dart';
import 'package:allbinary/org/allbinary/time/GameTickTimeDelayHelperFactory.dart';
import 'package:allbinary/org/allbinary/time/TimeDelayHelper.dart';
import 'package:allbinary/org/allbinary/util/CircularIndexUtil.dart';
import 'package:allbinary/org/allbinary/game/ag/layer/hud/basic/SetAndRemoveProcessor.dart';
import 'package:allbinary/org/allbinary/game/ag/layer/hud/basic/NextUnremoveableProcessor.dart';

class PlayerGameNotificationHud extends GameNotificationHud implements UpdateMyFontInterface {
    late GameTickTimeDelayHelper gameTickTimeDelayHelper;
    late String EMPTY_STRING;
    late DisplayInfoSingleton displayInfo;
    late TimeDelayHelper timeDelayHelper;
    late CircularIndexUtil circularIndexUtil;
    late GameNotification gameNotification;
    late GameNotification permanentGameNotification;
    late Processor setAndRemoveProcessor;
    late Processor nextUnremoveableProcessor;
    late Processor processor;
    late String PERMANENT_GAME_NOTIFICATION;
    late String lastString;
    late String string;
    late CustomGPoint point;
    int width = 0;

    // Java field initializers run after the base constructor
    void initFieldsPlayerGameNotificationHud() {
    this.gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance();
    this.EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING;
    this.displayInfo = DisplayInfoSingleton.getInstance();
    this.timeDelayHelper = TimeDelayHelper(0);
    
    this.gameNotification = GameNotification();
    this.permanentGameNotification = GameNotification();
    this.setAndRemoveProcessor = SetAndRemoveProcessor(this);
    this.nextUnremoveableProcessor = NextUnremoveableProcessor(this);
    this.processor = Processor.getInstance();
    this.PERMANENT_GAME_NOTIFICATION = "Permanent Game Notification: ";
    this.lastString = StringUtil.getInstance().EMPTY_STRING;
    this.string = this.EMPTY_STRING;
    this.point = CustomGPoint.NULL_CUSTOM_POINT;
    this.width = 0;
    }
    

    PlayerGameNotificationHud(int location, int direction, int bufferZone, BasicColor basicColor) : super(location, direction, bufferZone, basicColor) {
        this.initFieldsPlayerGameNotificationHud();
        
        this.circularIndexUtil = CircularIndexUtil.createInstance(0);
        final GameNotificationEventHandler gameNotificationEventHandler = GameNotificationEventHandler.getInstance();
        gameNotificationEventHandler.removeAllListeners();
        gameNotificationEventHandler.addListenerInterface(this);
    }
    

    @override
    void updateMeasurement(Graphics graphics) {
        try {
            super.updateMeasurement(graphics);
            final Font font = graphics.getFont();
            this.width = font.stringWidth(this.string);
            this.processor.process();
            this.processor = Processor.getInstance();
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            final LogUtil logUtil = LogUtil.getInstance();
            final CommonStrings commonStrings = CommonStrings.getInstance();
            logUtil.put(commonStrings.EXCEPTION, this, commonStrings.UPDATE, e);
            }
        }
    }
    

    @override
    GPoint getPoint(int x, int y) {
        this.point = CustomGPoint.getInstance3(0, 0);
        this.point.setX(x);
        this.point.setY(y);
        return this.point;
    }
    

    @override
    void add(String string, int seconds, BasicColor basicColor, bool permanent) {
        if (permanent) {
            if (this.lastString != string) {
                this.lastString = string;
                this.logUtil.putF(StringMaker().append(this.PERMANENT_GAME_NOTIFICATION).append(string).toString(), this, this.commonStrings.ADD);
            }
            this.permanentGameNotification.add(string, seconds, basicColor);
            this.circularIndexUtil.setSize(this.permanentGameNotification.getSize());
        } else {
            this.gameNotification.add(string, seconds, basicColor);
        }
    }
    

    @override
    void processTick() {
        if (this.timeDelayHelper.isTime(this.gameTickTimeDelayHelper.startTime)) {
            final GameAdState gameAdState = GameAdStateFactory.getInstance().getCurrentInstance();
            if (gameAdState.isShowingAtLocation(this.getLocation())) {
                this.offsetY = -54;
            } else {
                this.offsetY = 0;
            }
            if (this.gameNotification.getSize() > 0) {
                this.setAndRemove();
            } else if (this.permanentGameNotification.getSize() > 0) {
                this.setNextUnremoveable();
            } else {
                this.string = this.EMPTY_STRING;
            }
        }
    }
    

    void setAndRemove() {
        this.string = (this.gameNotification.stringList.removeAt(0) as String);
        this.processor = this.setAndRemoveProcessor;
    }
    

    void setAndRemoveProcess() {
        this.setX((this.displayInfo.getLastWidth() - this.width) >> 1);
        this.point.setX(this.getX());
        this.point.setY(this.getY());
        final int time = (this.gameNotification.timeList.removeAt(0) as int);
        int iTime = (time).toInt() * 1000;
        if (iTime == 0) {
            iTime = 500;
        }
        this.timeDelayHelper.delay = iTime;
        this.setBasicColorP((this.gameNotification.colorList.removeAt(0) as BasicColor));
    }
    

    void setNextUnremoveable() {
        final int index = this.circularIndexUtil.getIndex();
        this.string = (this.permanentGameNotification.stringList.objectArray[index]! as String);
        this.processor = this.nextUnremoveableProcessor;
    }
    

    void setNextUnremoveableProcess() {
        final int index = this.circularIndexUtil.getIndex();
        this.setX((this.displayInfo.getLastWidth() - this.width) >> 1);
        this.point.setX(this.getX());
        this.point.setY(this.getY());
        int time = (this.permanentGameNotification.timeList.objectArray[index]! as int);
        this.timeDelayHelper.delay = (time).toInt() * 1000;
        this.setBasicColorP((this.permanentGameNotification.colorList.objectArray[index]! as BasicColor));
        this.circularIndexUtil.next();
    }
    

    @override
    void clear() {
        this.gameNotification.clear();
        this.permanentGameNotification.clear();
    }
    

    @override
    void paint(Graphics graphics) {
        this.myFontProcessor.process(graphics);
        super.paintString(graphics, this.string);
    }
}

