// Generated Code Do Not Modify
// ignore_for_file: unused_import, unnecessary_import, unused_local_variable, unnecessary_null_comparison, unnecessary_cast
// package org.allbinary.game.configuration.feature

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Canvas.dart';
import 'package:allbinary/org/allbinary/game/commands/GameCommandsFactory.dart';

class MultiPlayerGameFeatureFactory {
    static final MultiPlayerGameFeatureFactory instance = MultiPlayerGameFeatureFactory();
    

    static MultiPlayerGameFeatureFactory getInstance() {
        return MultiPlayerGameFeatureFactory.instance;
    }
    

    MultiPlayerGameFeatureFactory() {
    }
    

    void addCommands(Object anyType) {
        final GameCommandsFactory gameCommandsFactory = GameCommandsFactory.getInstance();
        final Canvas canvas = (anyType as Canvas);
        canvas.addCommand(gameCommandsFactory.QUIT_COMMAND);
    }
}

