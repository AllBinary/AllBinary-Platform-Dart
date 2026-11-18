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
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/android/input/motion/AnalogControllerVisitor.dart';
import 'package:allbinary/org/allbinary/android/input/motion/AnalogLocationInputProcessor.dart';

class AllAnalogControllerVisitor extends AnalogControllerVisitor {
    

    @override
    void process(AllBinaryLayerManager allbinaryLayerManager, AnalogLocationInputProcessor analogLocationInputProcessor) {
        final BasicArrayList analogLocationInputList = AnalogLocationInputFactory.getInstance().getList();
        late AnalogLocationInput analogLocationInput;
        for (int index = analogLocationInputList.size() - 1; index >= 0; index--) {
            analogLocationInput = (analogLocationInputList.get(index) as AnalogLocationInput);
            analogLocationInputProcessor.process(allbinaryLayerManager, analogLocationInput);
        }
    }
}

