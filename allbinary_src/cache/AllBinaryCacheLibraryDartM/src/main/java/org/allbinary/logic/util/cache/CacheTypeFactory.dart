// Generated Code Do Not Modify
// ignore_for_file: unused_import, unnecessary_import, unused_local_variable, unnecessary_null_comparison, unnecessary_cast
// package org.allbinary.logic.util.cache

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/logic/util/cache/CacheType.dart';

class CacheTypeFactory {
    static final CacheTypeFactory instance = CacheTypeFactory();
    late CacheType NO_CACHE;
    late CacheType CACHE;
    late CacheType SET;
    late CacheType CACHE_VECTOR;

    // Java field initializers run after the base constructor
    void initFieldsCacheTypeFactory() {
    this.NO_CACHE = CacheType(StringUtil.getInstance().EMPTY_STRING, StringUtil.getInstance().EMPTY_STRING);
    this.CACHE = CacheType(StringUtil.getInstance().EMPTY_STRING, StringUtil.getInstance().EMPTY_STRING);
    this.SET = CacheType(StringUtil.getInstance().EMPTY_STRING, "Set");
    this.CACHE_VECTOR = CacheType(StringUtil.getInstance().EMPTY_STRING, StringUtil.getInstance().EMPTY_STRING);
    }

    CacheTypeFactory() {
        this.initFieldsCacheTypeFactory();
    }
    

    static CacheTypeFactory getInstance() {
        return CacheTypeFactory.instance;
    }
}

