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
// package org.allbinary.game.configuration

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/Features.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/GameFeatureChoiceGroups.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/InGameFeatureChoiceGroups.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/SensorFeatureFactory.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/TouchFeatureFactory.dart';
import 'package:allbinary/org/allbinary/init/Init.dart';
import 'package:allbinary/org/allbinary/input/gyro/OrientationData.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';

class InGameFeatures extends Init {
    

    @override
    void init() {
        final String LABEL = "Screen Buttons";
        final OrientationData orientationData = OrientationData.getInstance();
        final BasicArrayList exclusiveOrientationSensorVector = (GameFeatureChoiceGroups.getExclusiveInstance().get().get((orientationData.ORIENTATION_SENSOR_INPUT as Object)) as BasicArrayList);
        final InGameFeatureChoiceGroups inGameFeatureChoiceGroups = InGameFeatureChoiceGroups.getExclusiveInstance();
        if (exclusiveOrientationSensorVector != null) {
            final Object inGameExclusiveOrientationSensorVectorCanBeNull = inGameFeatureChoiceGroups.get().get((orientationData.ORIENTATION_SENSOR_INPUT as Object));
            if (inGameExclusiveOrientationSensorVectorCanBeNull == null) {
                this.addToInGameMenu();
            } else {
                final BasicArrayList inGameExclusiveOrientationSensorVector = (inGameExclusiveOrientationSensorVectorCanBeNull as BasicArrayList);
                if (inGameExclusiveOrientationSensorVector.size() == 0) {
                    this.addToInGameMenu();
                }
            }
        }
        final Features features = Features.getInstance();
        if (features.isFeature(TouchFeatureFactory.getInstance().SHOW_SCREEN_BUTTONS) || features.isFeature(TouchFeatureFactory.getInstance().AUTO_HIDE_SHOW_SCREEN_BUTTONS) || features.isFeature(TouchFeatureFactory.getInstance().HIDE_SCREEN_BUTTONS)) {
            final BasicArrayList exclusiveScreenButtonsVector = BasicArrayListD();
            final TouchFeatureFactory touchFeatureFactory = TouchFeatureFactory.getInstance();
            exclusiveScreenButtonsVector.add(touchFeatureFactory.AUTO_HIDE_SHOW_SCREEN_BUTTONS);
            exclusiveScreenButtonsVector.add(touchFeatureFactory.SHOW_SCREEN_BUTTONS);
            exclusiveScreenButtonsVector.add(touchFeatureFactory.HIDE_SCREEN_BUTTONS);
            inGameFeatureChoiceGroups.add(LABEL, exclusiveScreenButtonsVector);
        }
    }
    

    void addToInGameMenu() {
        final OrientationData orientationData = OrientationData.getInstance();
        final BasicArrayList inGameExclusiveOrientationSensorVector = BasicArrayListD();
        inGameExclusiveOrientationSensorVector.add(SensorFeatureFactory.getInstance().ORIENTATION_SENSORS);
        inGameExclusiveOrientationSensorVector.add(SensorFeatureFactory.getInstance().NO_ORIENTATION);
        InGameFeatureChoiceGroups.getExclusiveInstance().add(orientationData.ORIENTATION_SENSOR_INPUT, inGameExclusiveOrientationSensorVector);
    }
    

    bool isAny() {
        final Features features = Features.getInstance();
        final TouchFeatureFactory touchFeatureFactory = TouchFeatureFactory.getInstance();
        if (features.isFeature(touchFeatureFactory.SHOW_SCREEN_BUTTONS) || features.isFeature(touchFeatureFactory.AUTO_HIDE_SHOW_SCREEN_BUTTONS) || features.isFeature(touchFeatureFactory.HIDE_SCREEN_BUTTONS)) {
            return true;
        }
        final BasicArrayList exclusiveOrientationSensorVector = (GameFeatureChoiceGroups.getExclusiveInstance().get().get((OrientationData.getInstance().ORIENTATION_SENSOR_INPUT as Object)) as BasicArrayList);
        if (exclusiveOrientationSensorVector != null) {
            return true;
        }
        return false;
    }
}

