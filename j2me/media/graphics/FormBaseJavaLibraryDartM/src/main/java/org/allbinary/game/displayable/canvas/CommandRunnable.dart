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
// package org.allbinary.game.displayable.canvas

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Command.dart';
import 'package:allbinary/javax/microedition/lcdui/CommandListener.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/MyCanvas.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/CommandFormInputProcessor.dart';

class CommandRunnable implements Runnable {
    late LogUtil logUtil;
    late CommonStrings commonStrings;
    late CommandFormInputProcessor commandFormInputProcessor;
    late Command command;

    // Java field initializers run after the base constructor
    void initFieldsCommandRunnable() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    
    
    }
    

    CommandRunnable(CommandFormInputProcessor commandFormInputProcessor, Command command) {
        this.initFieldsCommandRunnable();
        this.commandFormInputProcessor = commandFormInputProcessor;
        this.command = command;
    }
    

    @override
    void run() {
        try {
            this.logUtil.putF(this.commonStrings.START_RUNNABLE, this, this.commonStrings.RUN);
            final MyCanvas canvas = this.commandFormInputProcessor.getCanvas();
            final CommandListener commandListener = canvas.getCustomCommandListener();
            commandListener.commandAction(this.command, canvas);
            this.logUtil.putF(this.commonStrings.END_RUNNABLE, this, this.commonStrings.RUN);
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.RUN, e);
            }
        }
    }
}

