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
// package org.allbinary.util

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/java/util/Enumeration.dart';
import 'package:allbinary/org/allbinary/util/EnumerationUtil.dart';
import 'package:allbinary/org/allbinary/util/ABHashtable.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListS.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';

class HashtableUtil {
    static final HashtableUtil instance = HashtableUtil();
    late EnumerationUtil enumerationUtil;

    // Java field initializers run after the base constructor
    void initFieldsHashtableUtil() {
    this.enumerationUtil = EnumerationUtil.getInstance();
    }

    HashtableUtil() {
        this.initFieldsHashtableUtil();
    }
    

    static HashtableUtil getInstance() {
        return HashtableUtil.instance;
    }
    

    void putAll(ABHashtable fromHashtable, ABHashtable hashtable) {
        final Enumeration enumeration = fromHashtable.keys();
        late Object keyCanBeNull;
        late Object valueCanBeNull;
        while (this.enumerationUtil.hasMoreElements(enumeration)) {
            keyCanBeNull = this.enumerationUtil.nextElement(enumeration);
            valueCanBeNull = hashtable.get(keyCanBeNull);
            if (valueCanBeNull == null) {
            } else {
                hashtable.put(keyCanBeNull, valueCanBeNull);
            }
        }
    }
    

    List<Object?> getKeysAsArray(ABHashtable hashtable) {
        final List<Object?> objectArray = List<Object?>.filled(hashtable.size(), null);
        int index = 0;
        final Enumeration enumeration = hashtable.keys();
        while (this.enumerationUtil.hasMoreElements(enumeration)) {
            objectArray[index++] = this.enumerationUtil.nextElement(enumeration);
        }
        return objectArray;
    }
    

    BasicArrayList getKeysAsList(ABHashtable hashtable) {
        final BasicArrayList list = BasicArrayListS(hashtable.size());
        final Enumeration enumeration = hashtable.keys();
        while (this.enumerationUtil.hasMoreElements(enumeration)) {
            list.add(this.enumerationUtil.nextElement(enumeration));
        }
        return list;
    }
}

