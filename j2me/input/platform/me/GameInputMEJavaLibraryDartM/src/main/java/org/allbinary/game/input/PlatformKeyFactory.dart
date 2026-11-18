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
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/game/input/J2MEGameKey.dart';
import 'package:allbinary/org/allbinary/game/input/J2MEKeyFactory.dart';
import 'package:allbinary/org/allbinary/game/input/Input.dart';

class PlatformKeyFactory {
    static Object instance = NullUtil.getInstance().NULL_OBJECT;
    

    static PlatformKeyFactory getInstance() {
        if (PlatformKeyFactory.instance == NullUtil.getInstance().NULL_OBJECT) {
            PlatformKeyFactory.instance = PlatformKeyFactory();
        }
        return (PlatformKeyFactory.instance as PlatformKeyFactory);
    }
    

    String getString(int keyCode) {
        return J2MEGameKey.getString(keyCode);
    }
    

    bool isSubmission(Input input) {
        return J2MEKeyFactory.getInstance().isSubmission(input);
    }
    

    bool isDelete(Input input) {
        return J2MEKeyFactory.getInstance().isDelete(input);
    }
    

    bool isBackSpace(Input input) {
        return J2MEKeyFactory.getInstance().isBackSpace(input);
    }
    

    bool isLeft(Input input) {
        return J2MEKeyFactory.getInstance().isLeft(input);
    }
    

    bool isRight(Input input) {
        return J2MEKeyFactory.getInstance().isRight(input);
    }
    

    bool isUp(Input input) {
        return J2MEKeyFactory.getInstance().isUp(input);
    }
    

    bool isDown(Input input) {
        return J2MEKeyFactory.getInstance().isDown(input);
    }
    

    bool isEnter(Input input) {
        return J2MEKeyFactory.getInstance().isEnter(input);
    }
}

