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
// package org.allbinary.game.ag.layer.hud.basic.score

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Font.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/game/ag/layer/hud/basic/NumberStringHud.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorFactory.dart';

class ScoreHudWidget extends NumberStringHud {
    

    static ScoreHudWidget getInstance3(int maxscore, int location, int direction) {
        return ScoreHudWidget(maxscore, location, direction, 2, BasicColorFactory.getInstance().GREY);
    }
    

    ScoreHudWidget(int maxscore, int location, int direction, int bufferZone, BasicColor basicColor) : super("Pts ", maxscore, location, direction, bufferZone, basicColor) {
        
        this.updateMaxHeight = 14;
    }
    

    @override
    void updateMeasurement(Graphics graphics) {
        final Font font = graphics.getFont();
        this.updateMaxWidth = font.getSize() * 5;
        super.updateMeasurement(graphics);
    }
}

