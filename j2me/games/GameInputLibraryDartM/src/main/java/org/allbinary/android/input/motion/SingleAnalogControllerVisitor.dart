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
// package org.allbinary.android.input.motion

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/input/analog/AnalogLocationInput.dart';
import 'package:allbinary/org/allbinary/game/input/analog/AnalogLocationInputFactory.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayerManager.dart';
import 'package:allbinary/org/allbinary/android/input/motion/AnalogControllerVisitor.dart';
import 'package:allbinary/org/allbinary/android/input/motion/AnalogLocationInputProcessor.dart';

class SingleAnalogControllerVisitor extends AnalogControllerVisitor {
    int playerInputId = 0;

    // Java field initializers run after the base constructor
    void initFieldsSingleAnalogControllerVisitor() {
    
    }
    

    SingleAnalogControllerVisitor(int playerInputId) {
        this.initFieldsSingleAnalogControllerVisitor();
        this.playerInputId = playerInputId;
    }
    

    @override
    void process(AllBinaryLayerManager allbinaryLayerManager, AnalogLocationInputProcessor analogLocationInputProcessor) {
        final AnalogLocationInput analogLocationInput = AnalogLocationInputFactory.getInstance().getInstanceForPlayer(this.playerInputId);
        analogLocationInputProcessor.process(allbinaryLayerManager, analogLocationInput);
    }
}

