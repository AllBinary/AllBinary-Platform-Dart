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
// package org.allbinary.logic.system.security.licensing

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/layer/hud/event/GameNotificationEvent.dart';
import 'package:allbinary/org/allbinary/game/layer/hud/event/GameNotificationEventHandler.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorFactory.dart';
import 'package:allbinary/org/allbinary/logic/java/bool/BooleanFactory.dart';
import 'package:allbinary/org/allbinary/logic/math/SmallIntegerSingletonFactory.dart';
import 'package:allbinary/org/allbinary/media/audio/ErrorSound.dart';
import 'package:allbinary/org/allbinary/media/audio/PrimaryPlayerQueueFactory.dart';
import 'package:allbinary/org/allbinary/logic/system/security/licensing/LicenseStrings.dart';

class LockedFeatureNotificationUtil {
    static final LockedFeatureNotificationUtil instance = LockedFeatureNotificationUtil();
    late GameNotificationEvent gameNotificationEvent;

    // Java field initializers run after the base constructor
    void initFieldsLockedFeatureNotificationUtil() {
    this.gameNotificationEvent = GameNotificationEvent(this, LicenseStrings.getInstance().LOCKED, SmallIntegerSingletonFactory.getInstance().getAt(3), BasicColorFactory.getInstance().RED, BooleanFactory.getInstance().FALSE);
    }

    LockedFeatureNotificationUtil() {
        this.initFieldsLockedFeatureNotificationUtil();
    }
    

    static LockedFeatureNotificationUtil getInstance() {
        return LockedFeatureNotificationUtil.instance;
    }
    

    void fire() {
        PrimaryPlayerQueueFactory.getInstance().add(ErrorSound.getInstance());
        GameNotificationEventHandler.getInstance().fireEvent(this.gameNotificationEvent);
    }
    

    void fireWithColor(BasicColor basicColor) {
        PrimaryPlayerQueueFactory.getInstance().add(ErrorSound.getInstance());
        this.gameNotificationEvent.setBasicColorP(basicColor);
        GameNotificationEventHandler.getInstance().fireEvent(this.gameNotificationEvent);
    }
}

