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
// package org.allbinary.content

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Command.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';

class CommandUriAction {
    static final CommandUriAction instance = CommandUriAction();
    late LogUtil logUtil;

    // Java field initializers run after the base constructor
    void initFieldsCommandUriAction() {
    this.logUtil = LogUtil.getInstance();
    }

    CommandUriAction() {
        this.initFieldsCommandUriAction();
    }
    

    static CommandUriAction getInstance() {
        return CommandUriAction.instance;
    }
    

    void add(Command command, String url) {
    }
    

    void process(Command command) {
    }
}

