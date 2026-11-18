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
// package org.allbinary.logic.util.cache

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/logic/util/cache/PoolInterface.dart';
import 'package:allbinary/org/allbinary/logic/util/cache/CacheableInterfaceFactoryInterface.dart';
import 'package:allbinary/org/allbinary/logic/util/cache/CacheableInterface.dart';

class AbstractArrayListPool implements PoolInterface {
    late CommonStrings commonStrings;
    late BasicArrayList buffers;
    late CacheableInterfaceFactoryInterface cacheableInterfaceFactoryInterface;

    // Java field initializers run after the base constructor
    void initFieldsAbstractArrayListPool() {
    this.commonStrings = CommonStrings.getInstance();
    this.buffers = BasicArrayListD();
    
    }
    

    AbstractArrayListPool(CacheableInterfaceFactoryInterface cacheableInterfaceFactoryInterface) {
        this.initFieldsAbstractArrayListPool();
        this.cacheableInterfaceFactoryInterface = cacheableInterfaceFactoryInterface;
    }
    

    @override
    void clear() {
        throw JException('Exception', this.commonStrings.NOT_IMPLEMENTED);
    }
    

    @override
    CacheableInterface remove(Object key) {
        throw JException('Exception', this.commonStrings.NOT_IMPLEMENTED);
    }
    

    @override
    void add(CacheableInterface cacheableInterface) {
        this.buffers.add(cacheableInterface);
    }
    

    @override
    void addArray(List<CacheableInterface?> cacheableInterfaces) {
        for (int index = 0; index < cacheableInterfaces.length; index++) {
            this.buffers.add(cacheableInterfaces[index]!);
        }
    }
}

