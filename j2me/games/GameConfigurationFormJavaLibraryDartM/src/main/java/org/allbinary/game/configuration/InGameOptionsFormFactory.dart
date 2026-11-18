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
import 'package:allbinary/org/allbinary/init/Init.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/game/configuration/InGameOptionsForm.dart';

class InGameOptionsFormFactory {
    static Object instance = NullUtil.getInstance().NULL_OBJECT;
    late LogUtil logUtil;
    late CommandForm SINGLETON;

    // Java field initializers run after the base constructor
    void initFieldsInGameOptionsFormFactory() {
    this.logUtil = LogUtil.getInstance();
    this.SINGLETON = CommandForm.getNullCommandForm();
    }

    InGameOptionsFormFactory() {
        this.initFieldsInGameOptionsFormFactory();
    }
    

    static InGameOptionsFormFactory getInstance() {
        if (InGameOptionsFormFactory.instance == NullUtil.getInstance().NULL_OBJECT) {
            InGameOptionsFormFactory.instance = InGameOptionsFormFactory();
        }
        return (InGameOptionsFormFactory.instance as InGameOptionsFormFactory);
    }
    

    void init(CommandListener commandListener, Init initInterface, String title, BasicColor backgrounBasicColor, BasicColor foregroundBasicColor) {
        try {
            if (this.SINGLETON == CommandForm.getNullCommandForm()) {
                initInterface.init();
                this.SINGLETON = InGameOptionsForm(commandListener, title, backgrounBasicColor, foregroundBasicColor);
            }
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            final CommonStrings commonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.INIT, e);
            }
        }
    }
    

    CommandForm get() {
        return this.SINGLETON;
    }
}

