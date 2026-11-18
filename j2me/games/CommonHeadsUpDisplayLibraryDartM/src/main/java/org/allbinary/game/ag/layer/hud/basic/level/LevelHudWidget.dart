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
// package org.allbinary.game.ag.layer.hud.basic.level

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Font.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/game/graphics/hud/BasicHud.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorFactory.dart';
import 'package:allbinary/org/allbinary/graphics/paint/PaintableInterface.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/logic/math/PrimitiveLongUtil.dart';

class LevelHudWidget extends BasicHud implements PaintableInterface {
    int level = 0;
    int maxlevel = 0;
    late List<int> levelString;
    late List<int> levelNumberCharArray;
    int levelNumberTotalDigits = 0;
    int offset = 0;
    late PrimitiveLongUtil primitiveLongUtil;

    // Java field initializers run after the base constructor
    void initFieldsLevelHudWidget() {
    
    
    
    this.levelNumberCharArray = NullUtil.getInstance().NULL_CHAR_ARRAY;
    this.levelNumberTotalDigits = 0;
    this.offset = 0;
    
    }
    

    static LevelHudWidget createHud(int maxlevel, int location, int direction) {
        return LevelHudWidget(maxlevel, location, direction);
    }
    

    LevelHudWidget(int maxlevel, int location, int direction) : super(location, direction, 2, BasicColorFactory.getInstance().GREY) {
        this.initFieldsLevelHudWidget();
        
        this.primitiveLongUtil = PrimitiveLongUtil.createPowerOfTen(1000);
        final String LEVEL = "Lv ";
        this.levelString = JString.toCharArray(LEVEL);
        this.maxlevel = maxlevel;
        this.level = maxlevel;
        this.update();
        this.updateMaxHeight = 14;
    }
    

    @override
    void updateMeasurement(Graphics graphics) {
        final Font font = graphics.getFont();
        this.updateMaxWidth = font.getSize() * 4;
        this.offset = font.charsWidth(this.levelString, 0, this.levelString.length) + font.getSize();
        super.updateMeasurement(graphics);
    }
    

    void update() {
        this.levelNumberCharArray = this.primitiveLongUtil.getCharArray(this.level);
        this.levelNumberTotalDigits = this.primitiveLongUtil.getCurrentTotalDigits();
    }
    

    void setLevel(int level) {
        this.level = level;
        this.update();
    }
    

    void nextLevel() {
        this.level++;
        this.update();
    }
    

    void previousLevel() {
        this.level--;
        if (this.level < 0) {
            this.level = 0;
        }
        this.update();
    }
    

    bool isComplete() {
        if (this.level <= this.maxlevel) {
            return false;
        } else {
            return true;
        }
    }
    

    @override
    void paint(Graphics graphics) {
        super.paintDX(graphics, this.levelString, 0, this.levelString.length, this.levelNumberCharArray, 0, this.levelNumberTotalDigits, this.offset);
    }
    

    @override
    void paintThreed(Graphics graphics) {
    }
}

