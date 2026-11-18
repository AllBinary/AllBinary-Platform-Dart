/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.game.identification

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/logic/math/SmallIntegerSingletonFactory.dart';

class GroupCommonFactory {
    static Object instance = NullUtil.getInstance().NULL_OBJECT;
    late int ID;
    late String GROUP_NAME_LABEL;
    late String ID_LABEL;
    late String ADDING_LABEL;
    late String TO_LABEL;

    // Java field initializers run after the base constructor
    void initFieldsGroupCommonFactory() {
    this.ID = SmallIntegerSingletonFactory.getInstance().getAt(10);
    this.GROUP_NAME_LABEL = "Group Name: ";
    this.ID_LABEL = " Id: ";
    this.ADDING_LABEL = "Adding: ";
    this.TO_LABEL = " to: ";
    }

    GroupCommonFactory() {
        this.initFieldsGroupCommonFactory();
    }
    

    static GroupCommonFactory getInstance() {
        if (GroupCommonFactory.instance == NullUtil.getInstance().NULL_OBJECT) {
            GroupCommonFactory.instance = GroupCommonFactory();
        }
        return (GroupCommonFactory.instance as GroupCommonFactory);
    }
}

