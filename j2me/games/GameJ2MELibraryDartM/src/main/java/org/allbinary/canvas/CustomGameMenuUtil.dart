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
// package org.allbinary.canvas

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/AppletUtil.dart';
import 'package:allbinary/org/allbinary/J2MEUtil.dart';
import 'package:allbinary/org/allbinary/game/commands/GameCommandsFactory.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/MyCanvas.dart';

class CustomGameMenuUtil {
    

    static void add(MyCanvas canvas) {
        final GameCommandsFactory gameCommandsFactory = GameCommandsFactory.getInstance();
        if (AppletUtil.isAppletLoader(canvas)) {
        } else if (J2MEUtil.isHTML()) {
        } else {
            canvas.addCommand(gameCommandsFactory.EXIT_COMMAND);
        }
    }
}

