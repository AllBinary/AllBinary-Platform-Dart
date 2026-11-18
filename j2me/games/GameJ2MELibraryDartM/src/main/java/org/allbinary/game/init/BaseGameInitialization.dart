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
import 'package:allbinary/javax/microedition/lcdui/CommandListener.dart';
import 'package:allbinary/org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory.dart';
import 'package:allbinary/org/allbinary/game/configuration/GameConfigurationCentral.dart';
import 'package:allbinary/org/allbinary/game/configuration/event/ChangedGameFeatureListener.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/InputFeatureFactory.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/MainFeatureFactory.dart';
import 'package:allbinary/org/allbinary/game/input/PlatformInputMappingFactory.dart';
import 'package:allbinary/org/allbinary/game/input/event/GameKeyEventFactory.dart';
import 'package:allbinary/org/allbinary/game/resource/FeaturedResourceRelativeRelationshipFactory.dart';
import 'package:allbinary/org/allbinary/game/resource/ResourceInitialization.dart';
import 'package:allbinary/org/allbinary/game/resource/ResourceLoadingLevelFactory.dart';
import 'package:allbinary/org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.dart';
import 'package:allbinary/org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.dart';
import 'package:allbinary/org/allbinary/image/GameFeatureImageCacheFactory.dart';
import 'package:allbinary/org/allbinary/input/motion/CompleteMotionGestureInputToGameMotionGestureInput.dart';
import 'package:allbinary/org/allbinary/input/motion/button/BasicTouchInputFactory.dart';
import 'package:allbinary/org/allbinary/input/motion/button/CancelTouchButtonInputFactory.dart';
import 'package:allbinary/org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.dart';
import 'package:allbinary/org/allbinary/game/init/GameInitializationInterface.dart';

class BaseGameInitialization implements GameInitializationInterface {
    static final BaseGameInitialization NULL_BASE_GAME_INITIALIZATION = BaseGameInitialization(List<ResourceInitialization?>.filled(0, null), 0);
    late List<ResourceInitialization?> resourceInitializationArray;
    int portion = 0;
    bool initialized = false;
    int EARLY_RESOURCES = 0;
    int GAME_RESOURCES = 0;
    int EARLY_CHANGABLE_RESOURCES = 0;
    int GAME_CHANGABLE_RESOURCES = 0;
    bool gameInitialized = false;
    bool allLoaded = false;

    // Java field initializers run after the base constructor
    void initFieldsBaseGameInitialization() {
    
    
    this.initialized = false;
    this.EARLY_RESOURCES = 0;
    this.GAME_RESOURCES = 1;
    this.EARLY_CHANGABLE_RESOURCES = 2;
    this.GAME_CHANGABLE_RESOURCES = 3;
    this.gameInitialized = false;
    this.allLoaded = false;
    }
    

    BaseGameInitialization(List<ResourceInitialization?> resourceInitializationArray, int portion) {
        this.initFieldsBaseGameInitialization();
        this.resourceInitializationArray = resourceInitializationArray;
        this.portion = portion;
    }
    

    void initKey(int portion) {
    }
    

    void initKeyMapping(AbeClientInformationInterface abeClientInformation, int portion) {
        if (ChangedGameFeatureListener.getInstance().isChangedFeature(InputFeatureFactory.getInstance().INPUT_MAPPING)) {
            PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().init(abeClientInformation);
            ProgressCanvasFactory.getInstance().addNormalPortion(50, "Game Keys");
            ChangedGameFeatureListener.getInstance().remove(InputFeatureFactory.getInstance().INPUT_MAPPING);
        }
    }
    

    @override
    void init(AbeClientInformationInterface abeClientInformation, CommandListener commandListener, int level) {
        final ResourceLoadingLevelFactory resourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance();
        if (!this.isInitialized() && (level == resourceLoadingLevelFactory.LOAD_ALL.getLevel() || level == resourceLoadingLevelFactory.LOAD_EARLY.getLevel())) {
            int localPortion = 40;
            if (level == resourceLoadingLevelFactory.LOAD_EARLY.getLevel()) {
                localPortion = 8;
            }
            this.setInitialized(true);
            this.initKey(this.getPortion());
            this.initKeyMapping(abeClientInformation, this.getPortion());
            GameKeyEventFactory.getInstance().init();
            final ProgressCanvas progressCanvas = ProgressCanvasFactory.getInstance();
            progressCanvas.addNormalPortion(localPortion, "Game Key Events");
            BasicTouchInputFactory.getInstance().init(PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping());
            CancelTouchButtonInputFactory.getInstance();
            progressCanvas.addNormalPortion(localPortion, "Touch Input");
            CompleteMotionGestureInputToGameMotionGestureInput.getInstance().init();
            progressCanvas.addNormalPortion(localPortion, "Motion Input");
            GameFeatureImageCacheFactory.init();
            progressCanvas.addNormalPortion(localPortion, "Image Cache");
            this.resourceInitializationArray[this.EARLY_RESOURCES]!.init();
        }
    }
    

    void resourceInitialization(int level) {
        ResourceLoadingLevelFactory resourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance();
        if (this.resourceAnimationChange() && level == resourceLoadingLevelFactory.LOAD_EARLY.getLevel()) {
            this.clearResources();
            this.resourceInitializationArray[this.EARLY_CHANGABLE_RESOURCES]!.init();
        }
        if (this.resourceAnimationChange() && level == resourceLoadingLevelFactory.LOAD_ALL.getLevel()) {
            if (this.allLoaded) {
                this.clearResources();
            }
            if (FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().getList().size() == 0) {
                this.resourceInitializationArray[this.EARLY_CHANGABLE_RESOURCES]!.init();
            }
            this.resourceInitializationArray[this.GAME_CHANGABLE_RESOURCES]!.init();
            this.allLoaded = true;
        }
    }
    

    bool resourceAnimationChange() {
        ChangedGameFeatureListener changedGameFeatureListener = ChangedGameFeatureListener.getInstance();
        GameConfigurationCentral gameConfigurationCentral = GameConfigurationCentral.getInstance();
        if (changedGameFeatureListener.isChangedGameConfiguration(gameConfigurationCentral.SCALE)) {
            return true;
        }
        if (ChangedGameFeatureListener.getInstance().isChangedFeature(MainFeatureFactory.getInstance().STATIC)) {
            return true;
        }
        return false;
    }
    

    void clearResources() {
        this.allLoaded = false;
        GameFeatureImageCacheFactory.releaseAll();
        FeaturedAnimationInterfaceFactoryInterfaceFactory featuredAnimationInterfaceFactoryInterfaceFactory = FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance();
        featuredAnimationInterfaceFactoryInterfaceFactory.clear();
        FeaturedResourceRelativeRelationshipFactory.getInstance().clear();
    }
    

    void setGameInitialized(bool gameInitialized) {
        this.gameInitialized = gameInitialized;
    }
    

    bool isGameInitialized() {
        return this.gameInitialized;
    }
    

    int getPortion() {
        return this.portion;
    }
    

    void setInitialized(bool initialized) {
        this.initialized = initialized;
    }
    

    bool isInitialized() {
        return this.initialized;
    }
}

