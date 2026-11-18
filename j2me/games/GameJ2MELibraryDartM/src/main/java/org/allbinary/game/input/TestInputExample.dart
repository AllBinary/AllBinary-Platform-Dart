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
// package org.allbinary.game.input

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/game/input/TestInputInterface.dart';

class TestInputExample implements TestInputInterface {
    int testValue = 0;

    // Java field initializers run after the base constructor
    void initFieldsTestInputExample() {
    this.testValue = 0;
    }

    TestInputExample() {
        this.initFieldsTestInputExample();
    }
    

    @override
    void up() {
    }
    

    @override
    void down() {
    }
    

    @override
    void left() {
        this.testValue++;
    }
    

    @override
    void right() {
        this.testValue--;
    }
    

    @override
    void strafeLeft() {
    }
    

    @override
    void strafeRight() {
    }
    

    @override
    void paint(Graphics graphics) {
    }
    

    @override
    void paintThreed(Graphics graphics) {
    }
}

