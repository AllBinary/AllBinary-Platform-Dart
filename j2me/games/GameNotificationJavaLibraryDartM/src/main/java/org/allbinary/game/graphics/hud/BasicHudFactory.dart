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
// package org.allbinary.game.graphics.hud

import 'package:allbinary/allbinary_java.dart';

class BasicHudFactory {
    static final BasicHudFactory instance = BasicHudFactory();
    late String DIRECTION_EXCEPTION;
    int VERTICAL = 0;
    int HORIZONTAL = 0;
    int BOTTOMLEFT = 0;
    int BOTTOMRIGHT = 0;
    int TOPLEFT = 0;
    int TOPRIGHT = 0;
    int BOTTOMCENTER = 0;
    int TOPCENTER = 0;
    int ABSOLUTE = 0;

    // Java field initializers run after the base constructor
    void initFieldsBasicHudFactory() {
    this.DIRECTION_EXCEPTION = "Only Horizontal Direction is Allowed Currently";
    this.VERTICAL = 0;
    this.HORIZONTAL = 1;
    this.BOTTOMLEFT = 0;
    this.BOTTOMRIGHT = 1;
    this.TOPLEFT = 2;
    this.TOPRIGHT = 3;
    this.BOTTOMCENTER = 4;
    this.TOPCENTER = 5;
    this.ABSOLUTE = 6;
    }
    

    static BasicHudFactory getInstance() {
        return BasicHudFactory.instance;
    }
    

    BasicHudFactory() {
        this.initFieldsBasicHudFactory();
    }
}

