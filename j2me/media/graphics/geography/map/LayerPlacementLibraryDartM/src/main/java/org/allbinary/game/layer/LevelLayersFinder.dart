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
// package org.allbinary.game.layer

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/java/util/Enumeration.dart';
import 'package:allbinary/org/allbinary/layer/Layer.dart';
import 'package:allbinary/org/allbinary/logic/math/SmallIntegerSingletonFactory.dart';
import 'package:allbinary/org/allbinary/util/ABHashtable.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/util/EnumerationUtil.dart';

class LevelLayersFinder {
    static final LevelLayersFinder instance = LevelLayersFinder();
    late EnumerationUtil enumerationUtil;

    // Java field initializers run after the base constructor
    void initFieldsLevelLayersFinder() {
    this.enumerationUtil = EnumerationUtil.getInstance();
    }

    LevelLayersFinder() {
        this.initFieldsLevelLayersFinder();
    }
    

    static LevelLayersFinder getInstance() {
        return LevelLayersFinder.instance;
    }
    

    BasicArrayList get(ABHashtable hashtable) {
        final SmallIntegerSingletonFactory smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance();
        final BasicArrayList list = BasicArrayListD();
        final Enumeration enumeration = hashtable.keys();
        late ABHashtable layerHashtableCanBeNull;
        late int integerCanBeNull;
        late int cachedIntegerCanBeNull;
        while (this.enumerationUtil.hasMoreElements(enumeration)) {
            layerHashtableCanBeNull = (hashtable.get((this.enumerationUtil.nextElement(enumeration) as Object)) as ABHashtable);
            integerCanBeNull = (layerHashtableCanBeNull.get((Layer.ID as Object)) as int);
            cachedIntegerCanBeNull = smallIntegerSingletonFactory.getAt((integerCanBeNull).toInt());
            if (!list.contains(cachedIntegerCanBeNull)) {
                list.add(cachedIntegerCanBeNull);
            }
        }
        return list;
    }
}

