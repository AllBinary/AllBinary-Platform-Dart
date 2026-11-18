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
import 'package:allbinary/org/allbinary/game/configuration/feature/Features.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/DisplayInfoSingleton.dart';
import 'package:allbinary/org/allbinary/graphics/opengles/OpenGLFeatureFactory.dart';
import 'package:allbinary/org/allbinary/game/displayable/RepaintBehavior.dart';
import 'package:allbinary/org/allbinary/game/displayable/RepaintRunnable.dart';

class AlwaysRepaintBehavior extends RepaintBehavior {
    static final AlwaysRepaintBehavior instanceC = AlwaysRepaintBehavior();
    late String NAME;

    // Java field initializers run after the base constructor
    void initFieldsAlwaysRepaintBehavior() {
    this.NAME = "AlwaysRepaintBehavior";
    }

    AlwaysRepaintBehavior() {
        this.initFieldsAlwaysRepaintBehavior();
    }
    

    static AlwaysRepaintBehavior getInstance() {
        return AlwaysRepaintBehavior.instanceC;
    }
    

    @override
    void repaint(Canvas canvas) {
        final Features features = Features.getInstance();
        final OpenGLFeatureFactory openGLFeatureFactory = OpenGLFeatureFactory.getInstance();
        if (features.isFeature(openGLFeatureFactory.OPENGL)) {
            DisplayInfoSingleton.getInstance().process();
        } else {
            final Thread thread = Thread(RepaintRunnable(canvas), this.NAME);
            thread.start();
        }
    }
    

    @override
    void onChangeRepaint(Canvas canvas) {
    }
}

