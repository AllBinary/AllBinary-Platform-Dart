/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2026 AllBinary 
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
// package org.allbinary.business.user.role

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/business/user/role/BasicUserRole.dart';

class BasicUserRoles {
    static final BasicUserRoles instance = BasicUserRoles();
    late BasicArrayList roleVector;

    // Java field initializers run after the base constructor
    void initFieldsBasicUserRoles() {
    this.roleVector = BasicArrayListD();
    }

    BasicUserRoles() {
        this.initFieldsBasicUserRoles();
    }
    

    static BasicUserRoles getInstance() {
        return BasicUserRoles.instance;
    }
    

    BasicUserRole getRole(String role) {
        final BasicArrayList roleVector = this.getAll();
        final int size = roleVector.size();
        for (int index = 0; index < size; index++) {
            BasicUserRole userRole = (roleVector.get(index) as BasicUserRole);
            if (role.compareTo(userRole.toString()) == 0) {
                return userRole;
            }
        }
        throw JException('Exception', "Unable to get role - Unknown Role");
    }
    

    BasicArrayList getAll() {
        return this.roleVector;
    }
}

