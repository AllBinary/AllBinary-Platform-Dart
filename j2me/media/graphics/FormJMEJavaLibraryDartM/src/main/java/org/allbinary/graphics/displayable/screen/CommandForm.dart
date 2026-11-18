/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2002 AllBinary 
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
// package org.allbinary.graphics.displayable.screen

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Command.dart';
import 'package:allbinary/javax/microedition/lcdui/CommandListener.dart';
import 'package:allbinary/javax/microedition/lcdui/Form.dart';
import 'package:allbinary/javax/microedition/lcdui/NullCommandListener.dart';
import 'package:allbinary/org/allbinary/canvas/Processor.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/MenuListener.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorFactory.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/command/MyCommandInterface.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/logic/StdUtil.dart';
import 'package:allbinary/org/allbinary/util/ABStack.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/screen/ScreenRepaintProcessorFactory.dart';

class CommandForm extends Form implements MyCommandInterface, MenuListener {
    static Object NULL_COMMAND_FORM = NullUtil.getInstance().NULL_OBJECT;
    late LogUtil logUtil;
    late CommonStrings commonStrings;
    late Processor repaintProcessor;
    late ABStack commandStack;

    // Java field initializers run after the base constructor
    void initFieldsCommandForm() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.repaintProcessor = ScreenRepaintProcessorFactory.getInstance().create(this);
    
    }
    

    static CommandForm getNullCommandForm() {
        if (CommandForm.NULL_COMMAND_FORM == NullUtil.getInstance().NULL_OBJECT) {
            CommandForm.NULL_COMMAND_FORM = CommandForm(NullCommandListener.NULL_COMMAND_LISTENER, StringUtil.getInstance().EMPTY_STRING, BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE);
        }
        return (CommandForm.NULL_COMMAND_FORM as CommandForm);
    }
    

    CommandForm(CommandListener commandListener, String formTitle, BasicColor backgrounBasicColor, BasicColor foregroundBasicColor) : super(formTitle) {
        this.initFieldsCommandForm();
        
        this.commandStack = StdUtil.getInstance().createStack();
        try {
            this.repaintProcessor.process();
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.CONSTRUCTOR, e);
            }
        }
    }
    

    void initCommands(CommandListener cmdListener) {
    }
    

    @override
    void open() {
        this.logUtil.putF(this.commonStrings.START, this, "open");
    }
    

    @override
    void close() {
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CLOSE);
    }
    

    void update() {
        this.repaintProcessor.process();
    }
    

    @override
    int getSourceId() {
        return 0;
    }
    

    @override
    void addCommand(Command command) {
        this.commandStack.push(command);
        super.addCommand(command);
    }
    

    @override
    void removeAllCommands() {
        final int size = this.commandStack.size();
        for (int index = 0; index < size; index++) {
            super.removeCommand((this.commandStack.pop() as Command));
        }
    }
}

