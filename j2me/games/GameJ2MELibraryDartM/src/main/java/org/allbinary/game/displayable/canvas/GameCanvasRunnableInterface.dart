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
import 'package:allbinary/javax/microedition/lcdui/CommandListener.dart';
import 'package:allbinary/javax/microedition/lcdui/ItemStateListener.dart';
import 'package:allbinary/org/allbinary/game/state/GameStateCompositeInterface.dart';
import 'package:allbinary/org/allbinary/graphics/paint/PaintableInterface.dart';
import 'package:allbinary/org/allbinary/thread/RunnableInterface.dart';
import 'package:allbinary/org/allbinary/util/ABHashtable.dart';

abstract interface class GameCanvasRunnableInterface implements RunnableInterface, PaintableInterface, ItemStateListener, GameStateCompositeInterface {
    

    String getTitle();
    

    bool isInitialized();
    

    bool isPaused();
    

    void unPause();
    

    void pause();
    

    bool isHighScoreSubmitted();
    

    void setHighScoreSubmitted(bool highScoreSubmitted);
    

    void processGameOver();
    

    bool isGameOver();
    

    void initCommands(CommandListener cmdListener);
    

    ABHashtable getCurrentStateHashtable();
    

    ABHashtable getLoadStateHashtable();
    

    void setLoadStateHashtable(ABHashtable hashtable);
    

    int getType();
}

