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
// package org.allbinary.game.terrain

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/util/event/AllBinaryEventObject.dart';
import 'package:allbinary/org/allbinary/game/terrain/BasicTerrainInfo.dart';

class TerrainEvent extends AllBinaryEventObject {
    late BasicTerrainInfo basicTerrainInfo;

    // Java field initializers run after the base constructor
    void initFieldsTerrainEvent() {
    this.basicTerrainInfo = BasicTerrainInfo.NULL_BASIC_TERRAIN_INFO;
    }
    

    TerrainEvent(Object basicTerrainInfo) : super(basicTerrainInfo) {
        this.initFieldsTerrainEvent();
        
        this.setBasicTerrainInfo(this.basicTerrainInfo);
    }
    

    @override
    String toString() {
        final StringMaker stringBuffer = StringMaker();
        stringBuffer.append("TerrainEvent: \n");
        stringBuffer.append("LayerInterface: ");
        stringBuffer.append(this.basicTerrainInfo.toString());
        return stringBuffer.toString();
    }
    

    BasicTerrainInfo getBasicTerrainInfo() {
        return this.basicTerrainInfo;
    }
    

    void setBasicTerrainInfo(BasicTerrainInfo basicTerrainInfo) {
        this.basicTerrainInfo = basicTerrainInfo;
    }
    

    void setBasicTerrainInfoForCircularStaticPool(BasicTerrainInfo basicTerrainInfo) {
        this.basicTerrainInfo = basicTerrainInfo;
    }
}

