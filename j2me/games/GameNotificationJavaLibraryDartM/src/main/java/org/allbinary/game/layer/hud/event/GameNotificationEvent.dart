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
// package org.allbinary.game.layer.hud.event

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorFactory.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/logic/util/event/AllBinaryEventObject.dart';

class GameNotificationEvent extends AllBinaryEventObject {
    late String string;
    late int seconds;
    late BasicColor basicColor;
    late bool removeable;

    // Java field initializers run after the base constructor
    void initFieldsGameNotificationEvent() {
    this.string = StringUtil.getInstance().EMPTY_STRING;
    
    this.basicColor = BasicColorFactory.getInstance().BLACK;
    
    }
    

    GameNotificationEvent(Object anyType, String string, int seconds, BasicColor basicColor, bool permanent) : super(anyType) {
        this.initFieldsGameNotificationEvent();
        
        this.setString(string);
        this.seconds = seconds;
        this.setBasicColorP(basicColor);
        this.removeable = permanent;
    }
    

    String getString() {
        return this.string;
    }
    

    int getSeconds() {
        return this.seconds;
    }
    

    BasicColor getBasicColorP() {
        return this.basicColor;
    }
    

    bool getPermanent() {
        return this.removeable;
    }
    

    void setString(String string) {
        this.string = string;
    }
    

    void setBasicColorP(BasicColor basicColor) {
        this.basicColor = basicColor;
    }
}

