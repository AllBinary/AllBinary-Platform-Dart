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
// package org.allbinary.game.resource

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/graphics/RelativeRelationship.dart';
import 'package:allbinary/org/allbinary/logic/StdUtil.dart';
import 'package:allbinary/org/allbinary/util/ABHashtable.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListUtil.dart';
import 'package:allbinary/org/allbinary/game/resource/ResourceRelativeRelationshipFactoryInterface.dart';

class ResourceRelativeRelationshipFactory implements ResourceRelativeRelationshipFactoryInterface {
    late BasicArrayListUtil basicArrayListUtil;
    late ABHashtable hashtable;
    bool initialized = false;

    // Java field initializers run after the base constructor
    void initFieldsResourceRelativeRelationshipFactory() {
    this.basicArrayListUtil = BasicArrayListUtil.getInstance();
    this.hashtable = StdUtil.getInstance().createHashtable();
    this.initialized = false;
    }

    ResourceRelativeRelationshipFactory() {
        this.initFieldsResourceRelativeRelationshipFactory();
    }
    

    @override
    void init(int level) {
        this.setInitialized(true);
    }
    

    @override
    BasicArrayList getResourceRelativeRelationshipList(String resource) {
        final Object listCanBeNull = this.hashtable.get(resource);
        if (listCanBeNull == null) {
            return this.basicArrayListUtil.getImmutableInstance();
        }
        return (listCanBeNull as BasicArrayList);
    }
    

    @override
    void addResourceRelativeRelationship(String resource, RelativeRelationship hardPoint) {
        BasicArrayList list = this.getResourceRelativeRelationshipList(resource);
        if (list == this.basicArrayListUtil.getImmutableInstance()) {
            list = BasicArrayListD();
        }
        list.add(hardPoint);
        this.hashtable.put(resource, list);
    }
    

    @override
    bool isLoadingLevel(int level) {
        return false;
    }
    

    @override
    bool isFeature() {
        return false;
    }
    

    void setInitialized(bool initialized) {
        this.initialized = initialized;
    }
    

    bool isInitialized() {
        return this.initialized;
    }
}

