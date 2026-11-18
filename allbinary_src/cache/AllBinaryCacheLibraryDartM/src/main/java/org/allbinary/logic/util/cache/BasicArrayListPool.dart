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
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/logic/util/cache/AbstractArrayListPool.dart';
import 'package:allbinary/org/allbinary/logic/util/cache/CacheableInterfaceFactoryInterface.dart';
import 'package:allbinary/org/allbinary/logic/util/cache/CacheableInterface.dart';
import 'package:allbinary/org/allbinary/logic/util/cache/BasicArrayListCacheable.dart';

class BasicArrayListPool extends AbstractArrayListPool {
    

    BasicArrayListPool(CacheableInterfaceFactoryInterface cacheableInterfaceFactoryInterface) : super(cacheableInterfaceFactoryInterface) {
        
    }
    

    @override
    void clear() {
        this.buffers.clear();
    }
    

    @override
    CacheableInterface remove(Object key) {
        int size = this.buffers.size();
        if (size > 0) {
            return (this.buffers.removeAt(size - 1) as CacheableInterface);
        } else {
            return this.cacheableInterfaceFactoryInterface.getInstance1(key);
        }
    }
    

    void addAll(BasicArrayList usedList) {
        for (int index = usedList.size(); --index >= 0; ) {
            CacheableInterface anyType = (usedList.objectArray[index]! as CacheableInterface);
            this.add(anyType);
        }
        usedList.clear();
    }
    

    void releaseUsedBackToPool(BasicArrayList usedList) {
        for (int index = usedList.size(); --index >= 0; ) {
            BasicArrayListCacheable list = (usedList.objectArray[index]! as BasicArrayListCacheable);
            if (list.size() == 0) {
                usedList.removeAt(index);
                this.add(list);
            }
        }
    }
}

