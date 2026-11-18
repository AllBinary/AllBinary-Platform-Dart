/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2022 AllBinary
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
import 'package:allbinary/java/awt/Desktop.dart';
import 'package:allbinary/java/net/URI.dart';
import 'package:allbinary/javax/microedition/lcdui/Canvas.dart';
import 'package:allbinary/javax/microedition/lcdui/Command.dart';
import 'package:allbinary/javax/microedition/lcdui/CommandListener.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/screen/AboutCommandProcessor.dart';

class WebCommandProcessor {
    static final WebCommandProcessor instance = WebCommandProcessor();
    late LogUtil logUtil;
    late AboutCommandProcessor aboutCommandProcessor;
    late BasicArrayList list;

    // Java field initializers run after the base constructor
    void initFieldsWebCommandProcessor() {
    this.logUtil = LogUtil.getInstance();
    this.aboutCommandProcessor = AboutCommandProcessor.getInstance();
    this.list = BasicArrayListD();
    }

    WebCommandProcessor() {
        this.initFieldsWebCommandProcessor();
    }
    

    static WebCommandProcessor getInstance() {
        return WebCommandProcessor.instance;
    }
    

    void process(CommandListener midletCommandListener, Command command, Canvas canvas) {
        try {
            if (Desktop.isDesktopSupported() && Desktop.getDesktop().isSupported(Desktop.Action.BROWSE)) {
                Desktop.getDesktop().browse(URI((this.list.removeAt(0) as String)));
            }
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            final CommonStrings commonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.PROCESS, e);
            }
        }
    }
}

