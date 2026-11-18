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
// package org.allbinary.graphics.pipeline

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/rand/MyRandomFactory.dart';
import 'package:allbinary/org/allbinary/math/AngleFactory.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/graphics/pipeline/BasicGraphicsPipeline.dart';

class RandomRotationFactory {
    static final RandomRotationFactory instance = RandomRotationFactory();
    late MyRandomFactory myRandomFactory;
    late AngleFactory angleFactory;

    // Java field initializers run after the base constructor
    void initFieldsRandomRotationFactory() {
    this.myRandomFactory = MyRandomFactory.getInstance();
    this.angleFactory = AngleFactory.getInstance();
    }

    RandomRotationFactory() {
        this.initFieldsRandomRotationFactory();
    }
    

    static RandomRotationFactory getInstance() {
        return RandomRotationFactory.instance;
    }
    

    BasicArrayList getInstanceList(BasicArrayList vector, int howMuch) {
        final BasicGraphicsPipeline graphicsPipe = BasicGraphicsPipeline(vector);
        graphicsPipe.createMatrix();
        graphicsPipe.rotateToAngle(this.angleFactory.getAt(this.getNextRandomAngle(howMuch)));
        return graphicsPipe.getMatrix();
    }
    

    int getNextRandomAngle(int howMuch) {
        return this.myRandomFactory.getNextInt(howMuch * 10);
    }
}

