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
// package org.allbinary.game.ai

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/util/ABHashtable.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListUtil.dart';
import 'package:allbinary/org/allbinary/game/ai/BasicAI.dart';
import 'package:allbinary/org/allbinary/game/ai/ArtificialIntelligenceInterfaceFactoryInterface.dart';

class ArtificialIntelligenceInterfaceFactoryInterfaceFactory {
    static ArtificialIntelligenceInterfaceFactoryInterfaceFactory SINGLETON = ArtificialIntelligenceInterfaceFactoryInterfaceFactory();
    late BasicArrayList list;

    // Java field initializers run after the base constructor
    void initFieldsArtificialIntelligenceInterfaceFactoryInterfaceFactory() {
    this.list = BasicArrayListUtil.getInstance().getImmutableInstance();
    }

    ArtificialIntelligenceInterfaceFactoryInterfaceFactory() {
        this.initFieldsArtificialIntelligenceInterfaceFactoryInterfaceFactory();
    }
    

    void clear() {
        this.list = BasicArrayListD();
    }
    

    static ArtificialIntelligenceInterfaceFactoryInterfaceFactory getInstance() {
        return ArtificialIntelligenceInterfaceFactoryInterfaceFactory.SINGLETON;
    }
    

    ArtificialIntelligenceInterfaceFactoryInterface getInstanceFromCollection(ABHashtable hashtable) {
        final int typeInteger = (hashtable.get((BasicAI.ID as Object)) as int);
        int type = (typeInteger).toInt();
        final ArtificialIntelligenceInterfaceFactoryInterface artificialIntelligenceInterfaceFactoryInterface = (this.list.objectArray[type - 1]! as ArtificialIntelligenceInterfaceFactoryInterface);
        return artificialIntelligenceInterfaceFactoryInterface;
    }
    

    void add(ArtificialIntelligenceInterfaceFactoryInterface artificialIntelligenceInterfaceFactoryInterface) {
        this.list.add(artificialIntelligenceInterfaceFactoryInterface);
    }
}

