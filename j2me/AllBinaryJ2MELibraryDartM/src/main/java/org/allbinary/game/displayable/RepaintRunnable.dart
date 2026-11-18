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
// package org.allbinary.game.displayable

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Canvas.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/DisplayInfoSingleton.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/thread/ARunnable.dart';

class RepaintRunnable extends ARunnable {
    late Canvas canvas;

    // Java field initializers run after the base constructor
    void initFieldsRepaintRunnable() {
    
    }
    

    RepaintRunnable(Canvas canvas) {
        this.initFieldsRepaintRunnable();
        this.canvas = canvas;
    }
    

    @override
    void run() {
        try {
            this.canvas.repaint();
            DisplayInfoSingleton.getInstance().process();
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            final CommonStrings commonStrings = CommonStrings.getInstance();
            final LogUtil logUtil = LogUtil.getInstance();
            logUtil.put(commonStrings.EXCEPTION, this, commonStrings.RUN, e);
            }
        }
    }
}

