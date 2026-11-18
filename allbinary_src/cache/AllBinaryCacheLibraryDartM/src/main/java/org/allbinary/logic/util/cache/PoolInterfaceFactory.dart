/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2007 AllBinary 
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
import 'package:allbinary/org/allbinary/logic/util/cache/PoolInterface.dart';
import 'package:allbinary/org/allbinary/logic/util/cache/CacheableInterfaceFactoryInterface.dart';
import 'package:allbinary/org/allbinary/logic/util/cache/PoolType.dart';
import 'package:allbinary/org/allbinary/logic/util/cache/CachePolicy.dart';

class PoolInterfaceFactory {
    

    PoolInterfaceFactory() {
    }
    

    static PoolInterface getInstance3(CacheableInterfaceFactoryInterface cacheableInterfaceFactoryInterface, PoolType poolType, CachePolicy cachePolicy) {
        throw JException('Exception', "No Such PoolType: " + poolType.toString());
    }
}

