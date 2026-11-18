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
// package org.allbinary.game.input

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/input/analog/AnalogLocationInputFactory.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';

class LocalPlayerInputIdFactory {
    static final LocalPlayerInputIdFactory instance = LocalPlayerInputIdFactory();
    late LogUtil logUtil;
    int MAX_NUMBER_OF_PLAYERS = 0;
    int MAX_FAST_DEVICEID = 0;
    late List<int> deviceIdToplayerId;
    late List<int> playerIdToDeviceId;
    late List<bool> playersInPlay;
    int totalDevicesMapped = 0;

    // Java field initializers run after the base constructor
    void initFieldsLocalPlayerInputIdFactory() {
    this.logUtil = LogUtil.getInstance();
    this.MAX_NUMBER_OF_PLAYERS = 6;
    this.MAX_FAST_DEVICEID = 65;
    this.deviceIdToplayerId = List<int>.filled(this.MAX_FAST_DEVICEID, 0);
    this.playerIdToDeviceId = List<int>.filled(this.MAX_NUMBER_OF_PLAYERS, 0);
    this.playersInPlay = List<bool>.filled(this.MAX_NUMBER_OF_PLAYERS, false);
    this.totalDevicesMapped = 0;
    }
    

    LocalPlayerInputIdFactory() {
        this.initFieldsLocalPlayerInputIdFactory();
        for (int index = this.deviceIdToplayerId.length - 1; index >= 0; index--) {
            this.deviceIdToplayerId[index] = -1;
        }
    }
    

    static LocalPlayerInputIdFactory getInstance() {
        return LocalPlayerInputIdFactory.instance;
    }
    

    int getDeviceId(int playerInputId) {
        return this.playerIdToDeviceId[playerInputId];
    }
    

    int getPlayerForDevice(int deviceId) {
        int index = 0;
        if (deviceId < this.MAX_FAST_DEVICEID) {
            int playerInputId = this.deviceIdToplayerId[deviceId];
            if (playerInputId != -1) {
                return playerInputId;
            }
        } else {
            for (index = this.totalDevicesMapped - 1; index >= 0; index--) {
                if (this.playerIdToDeviceId[index] == deviceId) {
                    return index;
                }
            }
        }
        index = this.totalDevicesMapped;
        if (deviceId < this.MAX_FAST_DEVICEID) {
            this.deviceIdToplayerId[deviceId] = index;
        } else {
            this.logUtil.putF(StringMaker().append("Added DeviceId: ").appendint(deviceId).append(" beyond fast Id list").toString(), this, "getPlayerForDevice");
        }
        this.playerIdToDeviceId[index] = deviceId;
        AnalogLocationInputFactory.getInstance().addPlayer(this.totalDevicesMapped);
        this.totalDevicesMapped++;
        this.logUtil.putF(StringMaker().append("Added DeviceId: ").appendint(deviceId).append(" at: ").appendint(index).append(" Total: ").appendint(this.totalDevicesMapped).toString(), this, "getPlayerForDevice");
        return index;
    }
    

    int getTotalDevicesInPlay() {
        int total = 0;
        for (int index = this.totalDevicesMapped - 1; index >= 0; index--) {
            if (this.playersInPlay[index] == true) {
                total++;
            }
        }
        return total;
    }
    

    bool isPlayerInPlay(int playerInputId) {
        return this.playersInPlay[playerInputId];
    }
    

    void setPlayerInPlay(int playerInputId) {
        this.logUtil.putF(StringMaker().append("Setting PlayerInPlay with playerInputId: ").appendint(playerInputId).toString(), this, "setPlayerInPlay");
        this.playersInPlay[playerInputId] = true;
    }
    

    void setPlayerOutOfPlay(int playerInputId) {
        this.logUtil.putF(StringMaker().append("Setting PlayerOutOfPlay with playerInputId: ").appendint(playerInputId).toString(), this, "setPlayerOutOfPlay");
        this.playersInPlay[playerInputId] = false;
    }
    

    List<bool> getPlayersInPlay() {
        return this.playersInPlay;
    }
}

