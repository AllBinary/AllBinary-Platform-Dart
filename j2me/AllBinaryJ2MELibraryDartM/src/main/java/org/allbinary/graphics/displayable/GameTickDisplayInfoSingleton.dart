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
// package org.allbinary.graphics.displayable

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/DisplayInfoSingleton.dart';

class GameTickDisplayInfoSingleton {
    static final GameTickDisplayInfoSingleton instance = GameTickDisplayInfoSingleton();
    late DisplayInfoSingleton displayInfoSingleton;
    int lastWidth = 0;
    int lastHeight = 0;
    int lastHalfWidth = 0;
    int lastHalfHeight = 0;

    // Java field initializers run after the base constructor
    void initFieldsGameTickDisplayInfoSingleton() {
    this.displayInfoSingleton = DisplayInfoSingleton.getInstance();
    this.lastWidth = this.displayInfoSingleton.getLastWidth();
    this.lastHeight = this.displayInfoSingleton.getLastHeight();
    this.lastHalfWidth = this.displayInfoSingleton.getLastHalfWidth();
    this.lastHalfHeight = this.displayInfoSingleton.getLastHalfHeight();
    }

    GameTickDisplayInfoSingleton() {
        this.initFieldsGameTickDisplayInfoSingleton();
    }
    

    static GameTickDisplayInfoSingleton getInstance() {
        return GameTickDisplayInfoSingleton.instance;
    }
    

    void update() {
        this.lastWidth = this.displayInfoSingleton.getLastWidth();
        this.lastHeight = this.displayInfoSingleton.getLastHeight();
        this.lastHalfWidth = this.displayInfoSingleton.getLastHalfWidth();
        this.lastHalfHeight = this.displayInfoSingleton.getLastHalfHeight();
    }
    

    int getLastWidth() {
        return this.lastWidth;
    }
    

    int getLastHeight() {
        return this.lastHeight;
    }
    

    int getLastHalfWidth() {
        return this.lastHalfWidth;
    }
    

    int getLastHalfHeight() {
        return this.lastHalfHeight;
    }
}

