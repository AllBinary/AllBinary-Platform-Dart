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
import 'package:allbinary/org/allbinary/game/configuration/persistance/GameConfigurationPersistanceSingleton.dart';
import 'package:allbinary/org/allbinary/game/configuration/persistance/KeyValuePersistance.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/math/SmallIntegerSingletonFactory.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/util/ABHashtable.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/game/configuration/GameConfiguration.dart';

class GameConfigurationCentral {
    static Object SINGLETON = NullUtil.getInstance().NULL_OBJECT;
    late LogUtil logUtil;
    late GameConfiguration SCALE;
    late GameConfiguration ORIENTATION;
    late GameConfiguration SENSOR_UPDATE_RATE;
    late GameConfiguration VIBRATION;
    late GameConfiguration CHALLENGE_LEVEL;
    late GameConfiguration COLLIDE_DAMAGE;
    late GameConfiguration DURABILITY_CHALLENGE_LEVEL;
    late GameConfiguration SPEED_CHALLENGE_LEVEL;
    late GameConfiguration ATTACK_CHALLENGE_LEVEL;
    late GameConfiguration CONTROL_LEVEL;
    late GameConfiguration PLAYER_INPUT_WAIT;
    late GameConfiguration SPEED;
    late GameConfiguration SOUND_VOLUME;
    late GameConfiguration MAX_GAME_OBJECTS;
    late GameConfiguration MAX_LAYERS;
    int gameControlFidelity = 0;

    // Java field initializers run after the base constructor
    void initFieldsGameConfigurationCentral() {
    this.logUtil = LogUtil.getInstance();
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    this.gameControlFidelity = 36;
    }
    

    static GameConfigurationCentral getInstance() {
        if (GameConfigurationCentral.SINGLETON == NullUtil.getInstance().NULL_OBJECT) {
            GameConfigurationCentral.SINGLETON = GameConfigurationCentral();
        }
        return (GameConfigurationCentral.SINGLETON as GameConfigurationCentral);
    }
    

    GameConfigurationCentral() {
        this.initFieldsGameConfigurationCentral();
        final SmallIntegerSingletonFactory smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance();
        this.SCALE = GameConfiguration("Scale", smallIntegerSingletonFactory.getAt(2), smallIntegerSingletonFactory.getAt(2), smallIntegerSingletonFactory.getAt(3));
        this.ORIENTATION = GameConfiguration("Orientation", smallIntegerSingletonFactory.getAt(0), smallIntegerSingletonFactory.getAt(0), smallIntegerSingletonFactory.getAt(8));
        this.SENSOR_UPDATE_RATE = GameConfiguration("Sensor Update Rate", smallIntegerSingletonFactory.getAt(0), smallIntegerSingletonFactory.getAt(0), smallIntegerSingletonFactory.getAt(3));
        this.VIBRATION = GameConfiguration("Vibration", smallIntegerSingletonFactory.getAt(0), smallIntegerSingletonFactory.getAt(0), smallIntegerSingletonFactory.getAt(3));
        this.CHALLENGE_LEVEL = GameConfiguration("Global Challenge Level", smallIntegerSingletonFactory.getAt(3), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10));
        this.COLLIDE_DAMAGE = GameConfiguration("Collide Damage Challenge Level", smallIntegerSingletonFactory.getAt(3), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10));
        this.DURABILITY_CHALLENGE_LEVEL = GameConfiguration("Enemy Durability Challenge Level", smallIntegerSingletonFactory.getAt(3), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10));
        this.SPEED_CHALLENGE_LEVEL = GameConfiguration("Enemy Speed Challenge Level", smallIntegerSingletonFactory.getAt(3), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10));
        this.ATTACK_CHALLENGE_LEVEL = GameConfiguration("Enemy Attack Challenge Level", smallIntegerSingletonFactory.getAt(3), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10));
        this.CONTROL_LEVEL = GameConfiguration("Control Fidelity", smallIntegerSingletonFactory.getAt(5), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10));
        this.PLAYER_INPUT_WAIT = GameConfiguration("Input Wait", smallIntegerSingletonFactory.getAt(5), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10));
        this.SPEED = GameConfiguration("Game Speed (Device Specific)", smallIntegerSingletonFactory.getAt(5), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10));
        this.SOUND_VOLUME = GameConfiguration("Sound Volume", smallIntegerSingletonFactory.getAt(6), smallIntegerSingletonFactory.getAt(0), smallIntegerSingletonFactory.getAt(10));
        this.MAX_GAME_OBJECTS = GameConfiguration("Max Game Objects", smallIntegerSingletonFactory.getAt(20), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(50));
        this.MAX_LAYERS = GameConfiguration("Max Layers", smallIntegerSingletonFactory.getAt(20), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(50));
    }
    

    void load(AbeClientInformationInterface abeClientInformation) {
        final CommonStrings commonStrings = CommonStrings.getInstance();
        try {
            final SmallIntegerSingletonFactory smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance();
            final KeyValuePersistance keyValuePersistance = GameConfigurationPersistanceSingleton.getInstance();
            keyValuePersistance.clear();
            keyValuePersistance.loadAll(abeClientInformation);
            final BasicArrayList list = keyValuePersistance.getIds();
            if (list.size() > 0) {
                final ABHashtable hashtable = keyValuePersistance.get(0);
                final Object anyType = (this.SCALE.getName() as Object);
                final String value = (hashtable.get(anyType) as String);
                this.SCALE.setValue(smallIntegerSingletonFactory.getAt((int.parse(value)).toInt()));
            } else {
                this.logUtil.putF("No Game Configuration To Load", this, commonStrings.LOAD);
            }
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.LOAD, e);
            }
        }
    }
    

    void setGameControlFidelity(int gameControlFidelity) {
        this.gameControlFidelity = gameControlFidelity;
    }
    

    int getGameControlFidelity() {
        return this.gameControlFidelity;
    }
    

    @override
    String toString() {
        final StringMaker stringBuffer = StringMaker();
        final CommonSeps commonStrings = CommonSeps.getInstance();
        stringBuffer.append(commonStrings.COMMA_SEP);
        stringBuffer.append(this.SCALE.getName());
        stringBuffer.append(commonStrings.EQUALS);
        stringBuffer.appendint((this.SCALE.getValue()).toInt());
        stringBuffer.append(commonStrings.COMMA_SEP);
        stringBuffer.append(this.ORIENTATION.getName());
        stringBuffer.append(commonStrings.EQUALS);
        stringBuffer.appendint((this.ORIENTATION.getValue()).toInt());
        stringBuffer.append(commonStrings.COMMA_SEP);
        stringBuffer.append(this.SENSOR_UPDATE_RATE.getName());
        stringBuffer.append(commonStrings.EQUALS);
        stringBuffer.appendint((this.SENSOR_UPDATE_RATE.getValue()).toInt());
        stringBuffer.append(commonStrings.COMMA_SEP);
        stringBuffer.append(this.VIBRATION.getName());
        stringBuffer.append(commonStrings.EQUALS);
        stringBuffer.appendint((this.VIBRATION.getValue()).toInt());
        stringBuffer.append(commonStrings.COMMA_SEP);
        stringBuffer.append(this.CHALLENGE_LEVEL.getName());
        stringBuffer.append(commonStrings.EQUALS);
        stringBuffer.appendint((this.CHALLENGE_LEVEL.getValue()).toInt());
        stringBuffer.append(commonStrings.COMMA_SEP);
        stringBuffer.append(this.COLLIDE_DAMAGE.getName());
        stringBuffer.append(commonStrings.EQUALS);
        stringBuffer.appendint((this.COLLIDE_DAMAGE.getValue()).toInt());
        stringBuffer.append(commonStrings.COMMA_SEP);
        stringBuffer.append(this.DURABILITY_CHALLENGE_LEVEL.getName());
        stringBuffer.append(commonStrings.EQUALS);
        stringBuffer.appendint((this.DURABILITY_CHALLENGE_LEVEL.getValue()).toInt());
        stringBuffer.append(commonStrings.COMMA_SEP);
        stringBuffer.append(this.SPEED_CHALLENGE_LEVEL.getName());
        stringBuffer.append(commonStrings.EQUALS);
        stringBuffer.appendint((this.SPEED_CHALLENGE_LEVEL.getValue()).toInt());
        stringBuffer.append(commonStrings.COMMA_SEP);
        stringBuffer.append(this.ATTACK_CHALLENGE_LEVEL.getName());
        stringBuffer.append(commonStrings.EQUALS);
        stringBuffer.appendint((this.ATTACK_CHALLENGE_LEVEL.getValue()).toInt());
        stringBuffer.append(commonStrings.COMMA_SEP);
        stringBuffer.append(this.CONTROL_LEVEL.getName());
        stringBuffer.append(commonStrings.EQUALS);
        stringBuffer.appendint((this.CONTROL_LEVEL.getValue()).toInt());
        stringBuffer.append(commonStrings.COMMA_SEP);
        stringBuffer.append(this.SPEED.getName());
        stringBuffer.append(commonStrings.EQUALS);
        stringBuffer.appendint((this.SPEED.getValue()).toInt());
        stringBuffer.append(commonStrings.COMMA_SEP);
        stringBuffer.append(this.MAX_GAME_OBJECTS.getName());
        stringBuffer.append(commonStrings.EQUALS);
        stringBuffer.appendint((this.MAX_GAME_OBJECTS.getValue()).toInt());
        stringBuffer.append(commonStrings.COMMA_SEP);
        stringBuffer.append(this.MAX_LAYERS.getName());
        stringBuffer.append(commonStrings.EQUALS);
        stringBuffer.appendint((this.MAX_LAYERS.getValue()).toInt());
        return stringBuffer.toString();
    }
}

