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
// package org.allbinary.game.configuration

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/CommandListener.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/screen/CommandForm.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/game/configuration/GameOptionsForm.dart';

class GameOptionsFormFactory {
    static final GameOptionsFormFactory instance = GameOptionsFormFactory();
    late LogUtil logUtil;

    // Java field initializers run after the base constructor
    void initFieldsGameOptionsFormFactory() {
    this.logUtil = LogUtil.getInstance();
    }
    

    GameOptionsFormFactory() {
        this.initFieldsGameOptionsFormFactory();
    }
    

    static GameOptionsFormFactory getInstance() {
        return GameOptionsFormFactory.instance;
    }
    

    CommandForm init(CommandListener commandListener, String title, BasicColor backgrounBasicColor, BasicColor foregroundBasicColor) {
        try {
            return GameOptionsForm(commandListener, title, backgrounBasicColor, foregroundBasicColor);
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            final CommonStrings commonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.INIT, e);
            return CommandForm.getNullCommandForm();
            }
        }
    }
}

