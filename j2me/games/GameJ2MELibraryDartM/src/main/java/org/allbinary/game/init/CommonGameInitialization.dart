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
import 'package:allbinary/org/allbinary/game/resource/ResourceInitialization.dart';
import 'package:allbinary/org/allbinary/game/resource/ResourceLoadingLevelFactory.dart';
import 'package:allbinary/org/allbinary/graphics/PointFactory.dart';
import 'package:allbinary/org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.dart';
import 'package:allbinary/org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.dart';
import 'package:allbinary/org/allbinary/logic/math/SmallIntegerSingletonFactory.dart';
import 'package:allbinary/org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.dart';
import 'package:allbinary/org/allbinary/math/AngleFactory.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/game/init/BaseGameInitialization.dart';

class CommonGameInitialization extends BaseGameInitialization {
    late CommonStrings commonStrings;

    // Java field initializers run after the base constructor
    void initFieldsCommonGameInitialization() {
    this.commonStrings = CommonStrings.getInstance();
    }
    

    CommonGameInitialization(List<ResourceInitialization?> resourceInitializationArray, int portion) : super(resourceInitializationArray, portion) {
        this.initFieldsCommonGameInitialization();
        
    }
    

    @override
    void init(AbeClientInformationInterface abeClientInformation, CommandListener commandListener, int level) {
        super.init(abeClientInformation, commandListener, level);
        final ResourceLoadingLevelFactory resourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance();
        if (!this.isGameInitialized() && level == resourceLoadingLevelFactory.LOAD_ALL.getLevel()) {
            this.setGameInitialized(true);
            final ProgressCanvas progressCanvas = ProgressCanvasFactory.getInstance();
            SmallIntegerSingletonFactory.getInstance().init();
            progressCanvas.addNormalPortion(50, "Integers");
            PointFactory.getInstance().init();
            progressCanvas.addNormalPortion(50, "Points");
            AngleFactory.getInstance();
            progressCanvas.addNormalPortion(50, "Angles");
            this.initGame();
            this.resourceInitializationArray[this.GAME_RESOURCES]!.init();
        }
        super.resourceInitialization(level);
    }
    

    void initGame() {
        throw JException('Exception', this.commonStrings.NOT_IMPLEMENTED);
    }
}

