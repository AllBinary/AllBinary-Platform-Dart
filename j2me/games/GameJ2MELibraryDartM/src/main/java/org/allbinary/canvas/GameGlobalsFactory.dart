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
// package org.allbinary.canvas

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/graphics/GPoint.dart';
import 'package:allbinary/org/allbinary/graphics/PointFactory.dart';

class GameGlobalsFactory {
    static final GameGlobalsFactory instance = GameGlobalsFactory();
    bool newCanvas = false;
    int newDisplaybleTime = 0;
    late GPoint point;

    // Java field initializers run after the base constructor
    void initFieldsGameGlobalsFactory() {
    this.newCanvas = true;
    this.newDisplaybleTime = Integer.MIN_VALUE;
    this.point = PointFactory.getInstance().ZERO_ZERO;
    }

    GameGlobalsFactory() {
        this.initFieldsGameGlobalsFactory();
    }
    

    static GameGlobalsFactory getInstance() {
        return GameGlobalsFactory.instance;
    }
}

