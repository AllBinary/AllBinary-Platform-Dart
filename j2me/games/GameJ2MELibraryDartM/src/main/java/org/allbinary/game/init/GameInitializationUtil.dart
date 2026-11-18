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
import 'package:allbinary/org/allbinary/game/configuration/event/ChangedGameFeatureListener.dart';
import 'package:allbinary/org/allbinary/game/configuration/event/GameInitializedEvent.dart';
import 'package:allbinary/org/allbinary/game/configuration/event/GameInitializedEventHandler.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/Features.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/MainFeatureFactory.dart';
import 'package:allbinary/org/allbinary/game/resource/ResourceLoadingLevelFactory.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/MyCanvas.dart';
import 'package:allbinary/org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.dart';
import 'package:allbinary/org/allbinary/game/init/GameInitializationInterface.dart';
import 'package:allbinary/org/allbinary/game/init/BasicBuildGameInitializerFactory.dart';

class GameInitializationUtil {
    static final GameInitializationUtil instance = GameInitializationUtil();
    late GameInitializedEvent EVENT;

    // Java field initializers run after the base constructor
    void initFieldsGameInitializationUtil() {
    this.EVENT = GameInitializedEvent(this);
    }

    GameInitializationUtil() {
        this.initFieldsGameInitializationUtil();
    }
    

    void initDemo(AbeClientInformationInterface abeClientInformation, MyCanvas canvas, BasicBuildGameInitializerFactory gameInitializationInterfaceFactoryInterface) {
        final MainFeatureFactory mainFeatureFactory = MainFeatureFactory.getInstance();
        if (ChangedGameFeatureListener.getInstance().isChangedFeature(mainFeatureFactory.STATIC)) {
            GameInitializationInterface gameInitializationInterface = gameInitializationInterfaceFactoryInterface.getInstance();
            Features features = Features.getInstance();
            if (features.isFeature(mainFeatureFactory.LOAD_ALL)) {
                this.initGame(abeClientInformation, canvas, gameInitializationInterfaceFactoryInterface);
            } else if (features.isFeature(mainFeatureFactory.LOAD_ONDEMAND)) {
                ResourceLoadingLevelFactory resourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance();
                gameInitializationInterface.init(abeClientInformation, canvas.getCustomCommandListener(), resourceLoadingLevelFactory.LOAD_EARLY.getLevel());
                this.EVENT.setResourceLoadingLevel(resourceLoadingLevelFactory.LOAD_EARLY);
            } else {
                throw JException('Exception', "No Loading Feature Available");
            }
            GameInitializedEventHandler.getInstance().fireEvent(this.EVENT);
        }
    }
    

    void initGame(AbeClientInformationInterface abeClientInformation, MyCanvas canvas, BasicBuildGameInitializerFactory gameInitializationInterfaceFactoryInterface) {
        if (ChangedGameFeatureListener.getInstance().isChangedFeature(MainFeatureFactory.getInstance().STATIC)) {
            GameInitializationInterface gameInitializationInterface = gameInitializationInterfaceFactoryInterface.getInstance();
            ResourceLoadingLevelFactory resourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance();
            gameInitializationInterface.init(abeClientInformation, canvas.getCustomCommandListener(), resourceLoadingLevelFactory.LOAD_ALL.getLevel());
            this.EVENT.setResourceLoadingLevel(resourceLoadingLevelFactory.LOAD_ALL);
            GameInitializedEventHandler.getInstance().fireEvent(this.EVENT);
            ChangedGameFeatureListener.getInstance().remove(MainFeatureFactory.getInstance().STATIC);
        }
    }
    

    static GameInitializationUtil getInstance() {
        return GameInitializationUtil.instance;
    }
}

