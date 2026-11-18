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
// package org.allbinary.graphics.form

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/animation/Animation.dart';
import 'package:allbinary/org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory.dart';
import 'package:allbinary/org/allbinary/logic/system/security/licensing/LockedResources.dart';
import 'package:allbinary/org/allbinary/logic/system/security/licensing/LockedUtil.dart';
import 'package:allbinary/org/allbinary/graphics/form/ItemPaintable.dart';

class LockablePaintable extends ItemPaintable {
    late Animation animation;
    int lockedIndex = 0;

    // Java field initializers run after the base constructor
    void initFieldsLockablePaintable() {
    this.animation = FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(LockedResources.getInstance().LOCKED_DEMO_GAME_FEATURE_RESOURCE).getInstance1(0);
    
    }
    

    LockablePaintable(int lockedIndex) {
        this.initFieldsLockablePaintable();
        this.lockedIndex = lockedIndex;
    }
    

    @override
    void paint(Graphics graphics, int currentIndex, int x, int y) {
        if (LockedUtil.getInstance().isLocked() && currentIndex >= this.getLockedIndex()) {
            this.getAnimation().paintXY(graphics, x, y);
        }
    }
    

    int getLockedIndex() {
        return this.lockedIndex;
    }
    

    Animation getAnimation() {
        return this.animation;
    }
}

