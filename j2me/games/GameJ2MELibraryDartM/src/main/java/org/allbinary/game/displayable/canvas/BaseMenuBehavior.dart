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
// package org.allbinary.game.displayable.canvas

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/event/DisplayChangeEvent.dart';
import 'package:allbinary/org/allbinary/graphics/paint/NullPaintable.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.dart';

class BaseMenuBehavior {
    static final BaseMenuBehavior instance = BaseMenuBehavior();
    

    static BaseMenuBehavior getInstance() {
        return BaseMenuBehavior.instance;
    }
    

    void onDisplayChangeEvent(AllBinaryGameCanvas allBinaryGameCanvas, DisplayChangeEvent displayChangeEvent) {
    }
    

    void initSpecialPaint(AllBinaryGameCanvas allBinaryGameCanvas) {
        allBinaryGameCanvas.setNonBotPaintableP(NullPaintable.getInstance());
    }
    

    void initMenu(AllBinaryGameCanvas allBinaryGameCanvas) {
    }
    

    void updateMenu(AllBinaryGameCanvas allBinaryGameCanvas) {
    }
    

    void popupMenu(AllBinaryGameCanvas allBinaryGameCanvas) {
    }
    

    void closeMenu(AllBinaryGameCanvas allBinaryGameCanvas) {
    }
}

