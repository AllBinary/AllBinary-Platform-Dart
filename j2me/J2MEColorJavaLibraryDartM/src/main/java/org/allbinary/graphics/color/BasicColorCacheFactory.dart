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
// ignore_for_file: unused_import, unused_local_variable, unnecessary_null_comparison
// package org.allbinary.graphics.color

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/StdUtil.dart';
import 'package:allbinary/org/allbinary/util/ABHashtable.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorFactory.dart';

class BasicColorCacheFactory {
    static final BasicColorCacheFactory instance = BasicColorCacheFactory();
    late ABHashtable hashtable;

    // Java field initializers run after the base constructor
    void initFieldsBasicColorCacheFactory() {
    this.hashtable = StdUtil.getInstance().createHashtable();
    }
    

    static BasicColorCacheFactory getInstance() {
        return BasicColorCacheFactory.instance;
    }
    

    BasicColorCacheFactory() {
        this.initFieldsBasicColorCacheFactory();
    }
    

    void add(BasicColor basicDefaultColor) {
        this.hashtable.put(basicDefaultColor.intValue(), basicDefaultColor);
    }
    

    BasicColor getAndOrCreate(int integer) {
        BasicColor basicColor = (this.hashtable.get(integer) as BasicColor);
        if (basicColor == null) {
            basicColor = BasicColorFactory.getInstance().createInstance((integer).toInt());
            this.hashtable.put(integer, basicColor);
        }
        return basicColor;
    }
}

