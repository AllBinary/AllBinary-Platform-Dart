// Generated Code Do Not Modify
// ignore_for_file: unused_import, unnecessary_import, unused_local_variable, unnecessary_null_comparison, unnecessary_cast
// package org.allbinary.logic.util.cache

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/util/cache/PoolType.dart';
import 'package:allbinary/org/allbinary/logic/util/cache/CacheTypeFactory.dart';

class PoolTypeFactory {
    static final PoolTypeFactory instance = PoolTypeFactory();
    late PoolType VECTOR_POOL;

    // Java field initializers run after the base constructor
    void initFieldsPoolTypeFactory() {
    this.VECTOR_POOL = PoolType(CacheTypeFactory.getInstance().NO_CACHE);
    }

    PoolTypeFactory() {
        this.initFieldsPoolTypeFactory();
    }
    

    static PoolTypeFactory getInstance() {
        return PoolTypeFactory.instance;
    }
}

