/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
import 'package:allbinary/org/allbinary/game/graphics/hud/BasicHudFactory.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorFactory.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/game/ag/layer/hud/basic/NumberStringHud.dart';

class NumberStringHudFactory {
    static Object instance = NullUtil.getInstance();
    late NumberStringHud NULL_NUMBER_STRING_HUD;

    // Java field initializers run after the base constructor
    void initFieldsNumberStringHudFactory() {
    this.NULL_NUMBER_STRING_HUD = this.createHud();
    }

    NumberStringHudFactory() {
        this.initFieldsNumberStringHudFactory();
    }
    

    static NumberStringHudFactory getInstance() {
        if (NumberStringHudFactory.instance == NullUtil.getInstance()) {
            NumberStringHudFactory.instance = NumberStringHudFactory();
        }
        return (NumberStringHudFactory.instance as NumberStringHudFactory);
    }
    

    NumberStringHud createHud() {
        try {
            return NumberStringHud(StringUtil.getInstance().EMPTY_STRING, 9, BasicHudFactory.getInstance().ABSOLUTE, 1, 0, BasicColorFactory.getInstance().NULL_COLOR);
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            final LogUtil logUtil = LogUtil.getInstance();
            final CommonStrings commonStrings = CommonStrings.getInstance();
            logUtil.put(commonStrings.EXCEPTION, this, commonStrings.CONSTRUCTOR, e);
            throw JException('RuntimeException', '');
            }
        }
    }
}

