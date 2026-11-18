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
import 'package:allbinary/org/allbinary/game/configuration/event/ChangedGameFeatureListener.dart';
import 'package:allbinary/org/allbinary/logic/StdUtil.dart';
import 'package:allbinary/org/allbinary/util/ABHashtable.dart';

class Feature {
    static ABHashtable hashtable = StdUtil.getInstance().createHashtable();
    late String name;

    // Java field initializers run after the base constructor
    void initFieldsFeature() {
    
    }
    

    Feature(String name) {
        this.initFieldsFeature();
        this.name = name;
        Feature.add(name, this);
        ChangedGameFeatureListener.getInstance().add(this);
    }
    

    static Feature getInstance1(String name) {
        return (Feature.hashtable.get(name) as Feature);
    }
    

    static void add(String name, Feature gameFeature) {
        Feature.hashtable.put(name, gameFeature);
    }
    

    @override
    String toString() {
        return this.getName();
    }
    

    String getName() {
        return this.name;
    }
}

