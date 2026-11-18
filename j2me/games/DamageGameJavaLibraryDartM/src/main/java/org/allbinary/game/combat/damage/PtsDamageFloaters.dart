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
// package org.allbinary.game.combat.damage

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/game/rand/MyRandomFactory.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorArrayIndexer.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorFactory.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorSetUtil.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/logic/java/character/CharArrayFactory.dart';
import 'package:allbinary/org/allbinary/logic/math/PrimitiveLongUtil.dart';
import 'package:allbinary/org/allbinary/util/CircularIndexUtil.dart';
import 'package:allbinary/org/allbinary/view/ViewPositionBase.dart';
import 'package:allbinary/org/allbinary/game/combat/damage/DamageFloaters.dart';

class PtsDamageFloaters extends DamageFloaters {
    static final BasicColorArrayIndexer basicColorArrayIndexer = BasicColorArrayIndexer(<BasicColor?>[BasicColorFactory.getInstance().WHITE, BasicColorFactory.getInstance().RED, BasicColorFactory.getInstance().YELLOW, BasicColorFactory.getInstance().BLUE]);
    late BasicColorSetUtil basicSetColorUtil;
    late AllBinaryLayer layerInterface;
    late List<int> lastDamage;
    late List<List<int>?> lastDamageString;
    late List<int> lastDamageStringSizeArray;
    late CircularIndexUtil circularIndexUtil;
    late PrimitiveLongUtil primitiveLongUtil;
    late MyRandomFactory myRandomFactory;

    // Java field initializers run after the base constructor
    void initFieldsPtsDamageFloaters() {
    this.basicSetColorUtil = BasicColorSetUtil.getInstance();
    
    this.lastDamage = List<int>.filled(5, 0);
    this.lastDamageString = List<List<int>>.generate(5, (_) => List<int>.filled(0, 0));
    this.lastDamageStringSizeArray = List<int>.filled(5, 0);
    this.circularIndexUtil = CircularIndexUtil.createInstance(5);
    
    this.myRandomFactory = MyRandomFactory.getInstance();
    }
    

    PtsDamageFloaters(AllBinaryLayer layerInterface) {
        this.initFieldsPtsDamageFloaters();
        this.primitiveLongUtil = PrimitiveLongUtil.createPowerOfTen(100000);
        this.layerInterface = layerInterface;
        List<int> CHAR_ARRAY = CharArrayFactory.getInstance().getZeroCharArray();
        for (int index = this.lastDamageString.length - 1; index >= 0; index--) {
            this.lastDamageString[index] = CHAR_ARRAY;
        }
    }
    

    @override
    void add(int damage) {
        int index = this.circularIndexUtil.getIndex();
        this.lastDamage[index] = damage;
        this.lastDamageString[index] = this.primitiveLongUtil.getCharArray(this.lastDamage[index]);
        this.lastDamageStringSizeArray[index] = this.primitiveLongUtil.getCurrentTotalDigits();
        this.circularIndexUtil.next();
    }
    

    @override
    void paint(Graphics graphics) {
        final ViewPositionBase viewPosition = this.layerInterface.getViewPosition();
        final int x = viewPosition.getX();
        final int y = viewPosition.getY();
        for (int index = this.lastDamage.length - 1; index >= 0; index--) {
            if (this.lastDamage[index] != 0) {
                int delta = 10 * (index + 2);
                this.basicSetColorUtil.setBasicColorP(graphics, PtsDamageFloaters.basicColorArrayIndexer.get());
                graphics.drawChars(this.lastDamageString[index]!, 0, this.lastDamageStringSizeArray[index], x - this.myRandomFactory.getNextInt(delta), y - delta, 0);
                PtsDamageFloaters.basicColorArrayIndexer.next();
            }
            this.lastDamage[index] = 0;
        }
    }
}

