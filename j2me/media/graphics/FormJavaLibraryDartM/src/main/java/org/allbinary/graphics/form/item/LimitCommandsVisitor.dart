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
// package org.allbinary.graphics.form.item

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Command.dart';
import 'package:allbinary/org/allbinary/game/commands/GameCommandsFactory.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/DisplayInfoSingleton.dart';
import 'package:allbinary/org/allbinary/graphics/form/ScreenInfo.dart';
import 'package:allbinary/org/allbinary/logic/java/bool/BooleanFactory.dart';
import 'package:allbinary/org/allbinary/logic/util/visitor/Visitor.dart';

class LimitCommandsVisitor extends Visitor {
    bool isNotSmallDisplay = false;

    // Java field initializers run after the base constructor
    void initFieldsLimitCommandsVisitor() {
    
    }
    

    LimitCommandsVisitor() {
        this.initFieldsLimitCommandsVisitor();
        DisplayInfoSingleton displayInfo = DisplayInfoSingleton.getInstance();
        this.isNotSmallDisplay = (displayInfo.isPortrait() && displayInfo.getLastHeight() > ScreenInfo.getInstance().SMALL_WIDTH) || (!displayInfo.isPortrait() && displayInfo.getLastHeight() > ScreenInfo.getInstance().SMALL_HEIGHT);
    }
    

    @override
    Object visit(Object anyType) {
        Command command = (anyType as Command);
        BooleanFactory booleanFactory = BooleanFactory.getInstance();
        if (this.isNotSmallDisplay || command.getPriority() == 1 || command == GameCommandsFactory.getInstance().EXIT_COMMAND || command == GameCommandsFactory.getInstance().EXIT_WITHOUT_PROGRESS_COMMAND) {
            return booleanFactory.TRUE;
        } else {
            return booleanFactory.FALSE;
        }
    }
}

