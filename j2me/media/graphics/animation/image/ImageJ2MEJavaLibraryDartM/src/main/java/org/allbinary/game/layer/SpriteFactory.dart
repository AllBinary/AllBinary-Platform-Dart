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
// package org.allbinary.game.layer

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Image.dart';
import 'package:allbinary/javax/microedition/lcdui/game/Sprite.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/game/layer/SpriteFactoryInterface.dart';

class SpriteFactory implements SpriteFactoryInterface {
    static final SpriteFactory instance = SpriteFactory();
    late LogUtil logUtil;

    // Java field initializers run after the base constructor
    void initFieldsSpriteFactory() {
    this.logUtil = LogUtil.getInstance();
    }

    SpriteFactory() {
        this.initFieldsSpriteFactory();
    }
    

    static SpriteFactory getInstance() {
        return SpriteFactory.instance;
    }
    

    @override
    Sprite createSprite(Image image, int frameWidth, int frameHeight) {
        return Sprite.with3(image, frameWidth, frameHeight);
    }
}

