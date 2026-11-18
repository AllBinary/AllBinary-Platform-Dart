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
import 'package:allbinary/org/allbinary/game/displayable/canvas/BaseMenuBehavior.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/GameCanvasNonBotPaintable.dart';

class InGameMenuBehavior extends BaseMenuBehavior {
    static final InGameMenuBehavior instanceC = InGameMenuBehavior();
    

    static InGameMenuBehavior getInstance() {
        return InGameMenuBehavior.instanceC;
    }
    

    @override
    void onDisplayChangeEvent(AllBinaryGameCanvas allBinaryGameCanvas, DisplayChangeEvent displayChangeEvent) {
        allBinaryGameCanvas.updateMenuFromEvent(displayChangeEvent);
    }
    

    @override
    void initSpecialPaint(AllBinaryGameCanvas allBinaryGameCanvas) {
        allBinaryGameCanvas.setNonBotPaintableP(GameCanvasNonBotPaintable(allBinaryGameCanvas));
    }
    

    @override
    void initMenu(AllBinaryGameCanvas allBinaryGameCanvas) {
        allBinaryGameCanvas.initMenu2();
    }
    

    @override
    void updateMenu(AllBinaryGameCanvas allBinaryGameCanvas) {
        allBinaryGameCanvas.initMenu2();
    }
    

    @override
    void popupMenu(AllBinaryGameCanvas allBinaryGameCanvas) {
        allBinaryGameCanvas.popupMenu2();
    }
    

    @override
    void closeMenu(AllBinaryGameCanvas allBinaryGameCanvas) {
        allBinaryGameCanvas.closeMenu2();
    }
}

