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
// package org.allbinary.game.init

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/configuration/event/GameInitializedEvent.dart';
import 'package:allbinary/org/allbinary/game/configuration/event/GameInitializedEventHandler.dart';
import 'package:allbinary/org/allbinary/game/configuration/event/GameInitializedListenerInterface.dart';
import 'package:allbinary/org/allbinary/game/resource/FeatureResourceInitializationUtil.dart';
import 'package:allbinary/org/allbinary/graphics/threed/SWTJOGLProcessor.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/ForcedLogUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/util/event/AllBinaryEventObject.dart';
import 'package:allbinary/org/allbinary/logic/util/event/EventStrings.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';

class DefaultGameInitializationListener implements GameInitializedListenerInterface {
    late LogUtil logUtil;
    late SWTJOGLProcessor swtJOGLProcessor;
    bool firstTime = false;

    // Java field initializers run after the base constructor
    void initFieldsDefaultGameInitializationListener() {
    this.logUtil = LogUtil.getInstance();
    this.swtJOGLProcessor = SWTJOGLProcessor.getInstance();
    this.firstTime = true;
    }
    

    DefaultGameInitializationListener() {
        this.initFieldsDefaultGameInitializationListener();
        GameInitializedEventHandler gameInitializedEventHandler = GameInitializedEventHandler.getInstance();
        gameInitializedEventHandler.removeAllListeners();
        gameInitializedEventHandler.addListenerInterface((this as GameInitializedListenerInterface));
    }
    

    @override
    void onEvent(AllBinaryEventObject eventObject) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    @override
    void onGameInitialized(GameInitializedEvent gameInitializedEvent) {
        final String ON_GAME_INITIALIZED = "onGameInitialized";
        final CommonStrings commonStrings = CommonStrings.getInstance();
        try {
            this.logUtil.putF(commonStrings.START, this, ON_GAME_INITIALIZED);
            while (!this.swtJOGLProcessor.isHolderCreated()) {
                this.logUtil.putF(commonStrings.UPDATE, this, ON_GAME_INITIALIZED);
                Thread.sleep(20);
            }
            FeatureResourceInitializationUtil.getInstance().init(gameInitializedEvent.getLevel());
            if (this.firstTime) {
                this.firstTime = false;
            } else {
                this.swtJOGLProcessor.onSurfaceChanged();
            }
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(commonStrings.EXCEPTION, this, ON_GAME_INITIALIZED, e);
            }
        }
    }
}

