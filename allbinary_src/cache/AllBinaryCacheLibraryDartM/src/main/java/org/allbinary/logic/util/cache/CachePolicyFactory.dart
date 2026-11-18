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
import 'package:allbinary/org/allbinary/logic/util/cache/CachePolicy.dart';

class CachePolicyFactory {
    static final CachePolicyFactory instance = CachePolicyFactory();
    late String NAME;
    late CachePolicy MAX_TIME_THOUSAND_MAX;
    late CachePolicy THIRTY_MINUTES_TEN_THOUSAND_MAX;
    late CachePolicy THIRTY_MINUTES_FIFTY_THOUSAND_MAX;
    late CachePolicy ONE_MINUTE_FIVE_MAX;
    late CachePolicy ONE_MINUTE_TEN_MAX;
    late CachePolicy ONE_MINUTE_ONE_HUNDRED_MAX;

    // Java field initializers run after the base constructor
    void initFieldsCachePolicyFactory() {
    this.NAME = "lru";
    this.MAX_TIME_THOUSAND_MAX = CachePolicy(this.NAME, Long.MAX_VALUE, 1000);
    this.THIRTY_MINUTES_TEN_THOUSAND_MAX = CachePolicy(this.NAME, 1000 * 60 * 30, 10000);
    this.THIRTY_MINUTES_FIFTY_THOUSAND_MAX = CachePolicy(this.NAME, 1000 * 60 * 30, 100000);
    this.ONE_MINUTE_FIVE_MAX = CachePolicy(this.NAME, 1000 * 60 * 1, 5);
    this.ONE_MINUTE_TEN_MAX = CachePolicy(this.NAME, 1000 * 60 * 1, 10);
    this.ONE_MINUTE_ONE_HUNDRED_MAX = CachePolicy(this.NAME, 1000 * 60 * 1, 100);
    }

    CachePolicyFactory() {
        this.initFieldsCachePolicyFactory();
    }
    

    static CachePolicyFactory getInstance() {
        return CachePolicyFactory.instance;
    }
}

