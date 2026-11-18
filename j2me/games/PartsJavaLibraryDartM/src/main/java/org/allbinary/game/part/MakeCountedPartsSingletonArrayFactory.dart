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
// package org.allbinary.game.part

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory.dart';
import 'package:allbinary/org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactoryPool.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListUtil.dart';
import 'package:allbinary/org/allbinary/game/part/CountedLayerInterfaceFactoryPart.dart';
import 'package:allbinary/org/allbinary/game/part/PartInterface.dart';

class MakeCountedPartsSingletonArrayFactory {
    static final MakeCountedPartsSingletonArrayFactory instance = MakeCountedPartsSingletonArrayFactory();
    late LogUtil logUtil;
    late BasicArrayList list;

    // Java field initializers run after the base constructor
    void initFieldsMakeCountedPartsSingletonArrayFactory() {
    this.logUtil = LogUtil.getInstance();
    this.list = BasicArrayListUtil.getInstance().getImmutableInstance();
    }

    MakeCountedPartsSingletonArrayFactory() {
        this.initFieldsMakeCountedPartsSingletonArrayFactory();
    }
    

    static MakeCountedPartsSingletonArrayFactory getInstance() {
        return MakeCountedPartsSingletonArrayFactory.instance;
    }
    

    List<PartInterface?> getUpdated(List<PartInterface?> partInterfaceArray) {
        this.list = BasicArrayListD();
        for (int index = 0; index < partInterfaceArray.length; index++) {
            this.list.add(partInterfaceArray[index]!);
        }
        final BasicArrayList countedBasicArrayList = CountedPickedUpLayerInterfaceFactoryPool.getInstance().getList();
        late CountedPickedUpLayerInterfaceFactory layerInterfaceFactoryInterface;
        int size = countedBasicArrayList.size();
        for (int index = 0; index < size; index++) {
            layerInterfaceFactoryInterface = (countedBasicArrayList.objectArray[index]! as CountedPickedUpLayerInterfaceFactory);
            this.list.add(CountedLayerInterfaceFactoryPart(0, layerInterfaceFactoryInterface));
        }
        final StringMaker stringBuffer = StringMaker();
        stringBuffer.append("Total Parts: ");
        stringBuffer.appendint(this.list.size());
        stringBuffer.append(" Counted: ");
        stringBuffer.appendint(countedBasicArrayList.size());
        final CommonStrings commonStrings = CommonStrings.getInstance();
        this.logUtil.putF(stringBuffer.toString(), this, commonStrings.GET_INSTANCE);
        final List<PartInterface?> newPartInterfaceArray = List<PartInterface?>.filled(this.list.size(), null);
        final int newSize = newPartInterfaceArray.length;
        for (int index = 0; index < newSize; index++) {
            newPartInterfaceArray[index] = (this.list.get(index) as PartInterface);
        }
        return newPartInterfaceArray;
    }
}

