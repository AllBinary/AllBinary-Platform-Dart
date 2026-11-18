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
// package org.allbinary.game.ag.ai.tactical

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Canvas.dart';
import 'package:allbinary/org/allbinary/game/ai/BasicAI.dart';
import 'package:allbinary/org/allbinary/game/ag/ai/InputProbability.dart';
import 'package:allbinary/org/allbinary/game/input/GameInput.dart';
import 'package:allbinary/org/allbinary/game/rand/MyRandomFactory.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayerManager.dart';
import 'package:allbinary/org/allbinary/logic/util/visitor/Visitor.dart';
import 'package:allbinary/org/allbinary/time/GameTickTimeDelayHelperFactory.dart';

class BasicRandomAI extends BasicAI {
    int i_random = 0;
    late InputProbability inputProbability;
    late Visitor visitor;
    late List<int> keyArray;
    late MyRandomFactory myRandomFactory;

    // Java field initializers run after the base constructor
    void initFieldsBasicRandomAI() {
    this.i_random = 0;
    
    
    this.keyArray = <int>[Canvas.UP, Canvas.DOWN, Canvas.LEFT, Canvas.RIGHT, Canvas.KEY_NUM1, Canvas.KEY_NUM7, Canvas.KEY_NUM9];
    this.myRandomFactory = MyRandomFactory.getInstance();
    }
    

    BasicRandomAI(AllBinaryLayer ownerLayerInterface, GameInput gameInput, InputProbability inputProbability, Visitor visitor) : super(ownerLayerInterface, gameInput) {
        this.initFieldsBasicRandomAI();
        
        this.inputProbability = inputProbability;
        this.visitor = visitor;
    }
    

    @override
    void processAI(AllBinaryLayerManager allBinaryLayerManager) {
        if (this.inputProbability.getTimeDelayHelper().isTime(GameTickTimeDelayHelperFactory.getInstance().startTime)) {
            this.i_random = this.myRandomFactory.getAbsoluteNextInt(this.inputProbability.getMax());
            bool repeat = false;
            List<int?> repeatLikelyhoodIntegerArray = this.inputProbability.getRepeatLikelyhoodIntegerArray();
            if (this.getLastKey() != -1 && (repeatLikelyhoodIntegerArray[this.getLastKey()]!).toInt() >= this.i_random) {
                repeat = true;
            }
            if (!repeat) {
                List<List<int?>?> likelyhoodIntegerArray = this.inputProbability.getLikelyhoodIntegerArray();
                this.i_random = this.myRandomFactory.getAbsoluteNextInt(this.inputProbability.getMax());
                int size = this.keyArray.length;
                late List<int?> likelyhoodIntegerKeyArray;
                for (int index = 0; index < size; index++) {
                    int key = this.keyArray[index];
                    likelyhoodIntegerKeyArray = likelyhoodIntegerArray[key]!;
                    if (likelyhoodIntegerArray.length >= key && likelyhoodIntegerKeyArray[0] != null) {
                        if (this.i_random >= (likelyhoodIntegerKeyArray[0]!).toInt() && this.i_random < (likelyhoodIntegerKeyArray[1]!).toInt()) {
                            this.setLastKey(key);
                            break;
                        }
                    }
                }
            }
            this.visitor.visit(this);
        }
    }
}

