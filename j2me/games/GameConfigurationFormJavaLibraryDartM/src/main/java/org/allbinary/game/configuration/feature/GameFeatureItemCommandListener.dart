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
// package org.allbinary.game.configuration.feature

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Command.dart';
import 'package:allbinary/javax/microedition/lcdui/Item.dart';
import 'package:allbinary/javax/microedition/lcdui/ItemCommandListener.dart';
import 'package:allbinary/org/allbinary/game/configuration/GameConfigurationGauge.dart';
import 'package:allbinary/org/allbinary/game/configuration/GameConfigurationUtil.dart';
import 'package:allbinary/org/allbinary/game/configuration/GameOptionsForm.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/midlet/MidletStrings.dart';
import 'package:allbinary/org/allbinary/string/CommonLabels.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';

class GameFeatureItemCommandListener implements ItemCommandListener {
    late LogUtil logUtil;
    late GameOptionsForm gameOptionsForm;

    // Java field initializers run after the base constructor
    void initFieldsGameFeatureItemCommandListener() {
    this.logUtil = LogUtil.getInstance();
    
    }
    

    GameFeatureItemCommandListener(GameOptionsForm gameOptionsForm) {
        this.initFieldsGameFeatureItemCommandListener();
        this.gameOptionsForm = gameOptionsForm;
    }
    

    @override
    void commandAction(Command command, Item item) {
        try {
            String itemLabel = item.getLabel();
            this.logUtil.putF(StringMaker().append(CommonLabels.getInstance().ITEM_LABEL).append(itemLabel).toString(), this, MidletStrings.getInstance().COMMAND_ACTION);
            if ((item is GameConfigurationGauge)) {
                GameConfigurationUtil.getInstance().change(this.gameOptionsForm, item);
            }
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            final CommonStrings commonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, MidletStrings.getInstance().COMMAND_ACTION, e);
            }
        }
    }
}

