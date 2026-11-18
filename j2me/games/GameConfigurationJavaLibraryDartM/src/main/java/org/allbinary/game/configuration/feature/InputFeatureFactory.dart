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
// package org.allbinary.game.configuration.feature

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/InputFeature.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/Features.dart';

class InputFeatureFactory {
    static final InputFeatureFactory instance = InputFeatureFactory();
    late InputFeature REMOVE_DUPLICATE_KEY_PRESSES;
    late InputFeature INPUT_MAPPING;
    late InputFeature MULTI_KEY_PRESS;
    late InputFeature SINGLE_KEY_REPEAT_PRESS;
    late InputFeature SINGLE_KEY_PRESS;

    // Java field initializers run after the base constructor
    void initFieldsInputFeatureFactory() {
    this.REMOVE_DUPLICATE_KEY_PRESSES = InputFeature("Remove Duplicate Key Presses");
    this.INPUT_MAPPING = InputFeature("Input Mapping");
    this.MULTI_KEY_PRESS = InputFeature("Multi Key Press");
    this.SINGLE_KEY_REPEAT_PRESS = InputFeature("Single Key Repeat Press");
    this.SINGLE_KEY_PRESS = InputFeature("Single Key Press");
    }
    

    static InputFeatureFactory getInstance() {
        return InputFeatureFactory.instance;
    }
    

    InputFeatureFactory() {
        this.initFieldsInputFeatureFactory();
    }
    

    bool isSingleKeyProcessing() {
        Features features = Features.getInstance();
        if (features.isFeature(this.SINGLE_KEY_REPEAT_PRESS) || features.isFeature(this.SINGLE_KEY_PRESS)) {
            return true;
        } else {
            return false;
        }
    }
}

