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
// package org.allbinary.game.ag.layer.hud.basic

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/canvas/Processor.dart';
import 'package:allbinary/org/allbinary/game/ag/layer/hud/basic/PlayerGameNotificationHud.dart';

class NextUnremoveableProcessor extends Processor {
    late PlayerGameNotificationHud updateMeasurementProcessor;

    // Java field initializers run after the base constructor
    void initFieldsNextUnremoveableProcessor() {
    
    }
    

    NextUnremoveableProcessor(PlayerGameNotificationHud updateMeasurementProcessor) {
        this.initFieldsNextUnremoveableProcessor();
        this.updateMeasurementProcessor = updateMeasurementProcessor;
    }
    

    @override
    void process() {
        this.updateMeasurementProcessor.setNextUnremoveableProcess();
    }
}

