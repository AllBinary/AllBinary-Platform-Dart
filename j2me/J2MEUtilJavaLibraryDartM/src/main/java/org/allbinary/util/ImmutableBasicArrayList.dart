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
import 'package:allbinary/org/allbinary/logic/communication/log/ForcedLogUtil.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListS.dart';

class ImmutableBasicArrayList extends BasicArrayListS {
    late String name;

    // Java field initializers run after the base constructor
    void initFieldsImmutableBasicArrayList() {
    
    }
    

    ImmutableBasicArrayList(String name, int size) : super(size) {
        this.initFieldsImmutableBasicArrayList();
        
        this.name = name;
    }
    

    @override
    bool add(Object e) {
        ForcedLogUtil.log(this.name, this);
        return true;
    }
    

    @override
    void addAt(int index, Object element) {
        ForcedLogUtil.log(this.name, this);
    }
    

    @override
    String toString() {
        return this.name;
    }
}

