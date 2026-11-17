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
// package org.allbinary.business.user.role

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/java/io/Serializable.dart';
import 'package:allbinary/org/allbinary/business/user/role/BasicUserRoles.dart';

class BasicUserRole implements Serializable {
    int m_int_RoleId = 0;
    late String role;
    late String displayValue;
    int sessionTimeout = 0;
    int sessionInactivityTimeout = 0;

    // Java field initializers run after the base constructor
    void initFieldsBasicUserRole() {
    
    
    
    
    
    }
    

    BasicUserRole(String aRole, int a_int_RoleId, int aSessionTimeout, int aSessionInactivityTimeout) : this.with5(aRole, aRole, a_int_RoleId, aSessionTimeout, aSessionInactivityTimeout);
    

    BasicUserRole.with5(String aRole, String aDisplayValue, int a_int_RoleId, int aSessionTimeout, int aSessionInactivityTimeout) {
        this.initFieldsBasicUserRole();
        this.m_int_RoleId = a_int_RoleId;
        this.role = aRole;
        this.displayValue = aDisplayValue;
        this.sessionTimeout = aSessionTimeout;
        this.sessionInactivityTimeout = aSessionInactivityTimeout;
        BasicUserRoles.getInstance().roleVector.add(this);
    }
    

    int getRoleId() {
        return this.m_int_RoleId;
    }
    

    String getRole() {
        return this.role;
    }
    

    int getSessionTimeout() {
        return this.sessionTimeout;
    }
    

    int getSessionInactivityTimeout() {
        return this.sessionInactivityTimeout;
    }
    

    bool equals(BasicUserRole basicUserRole) {
        if (this.getRoleId() == basicUserRole.getRoleId()) {
            return true;
        }
        return false;
    }
    

    @override
    String toString() {
        return this.getRole();
    }
}

