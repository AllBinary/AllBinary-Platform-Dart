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
import 'package:allbinary/org/allbinary/logic/util/cache/BaseBasicArrayListCache.dart';
import 'package:allbinary/org/allbinary/logic/util/cache/CacheInterface.dart';
import 'package:allbinary/org/allbinary/logic/util/cache/CacheableInterface.dart';

class IndexedBasicArrayListCache extends BaseBasicArrayListCache implements CacheInterface {
    late CommonStrings commonStrings;
    int size = 0;
    int index = 0;

    // Java field initializers run after the base constructor
    void initFieldsIndexedBasicArrayListCache() {
    this.commonStrings = CommonStrings.getInstance();
    this.size = 0;
    this.index = 0;
    }
    

    static IndexedBasicArrayListCache createCache(int size) {
        final IndexedBasicArrayListCache indexedBasicArrayListCache = IndexedBasicArrayListCache();
        indexedBasicArrayListCache.init(size);
        return indexedBasicArrayListCache;
    }
    

    IndexedBasicArrayListCache() {
        this.initFieldsIndexedBasicArrayListCache();
    }
    

    void init(int size) {
        if (this.size < size) {
            this.list.ensureCapacity(size);
            for (int index = size - 1; index >= this.size; index--) {
                this.addDefault();
            }
            this.size = size;
        }
    }
    

    Object getAt(int index) {
        return this.list.objectArray[index]!;
    }
    

    void addDefault() {
    }
    

    void addObject(Object anyType) {
        this.list.add(anyType);
    }
    

    @override
    void add(CacheableInterface cacheableInterface) {
        this.list.add(cacheableInterface);
    }
    

    @override
    void addArray(List<CacheableInterface?> cacheableInterfaces) {
        throw JException('Exception', "No Imple");
    }
    

    @override
    void clear() {
        this.index = 0;
    }
}

