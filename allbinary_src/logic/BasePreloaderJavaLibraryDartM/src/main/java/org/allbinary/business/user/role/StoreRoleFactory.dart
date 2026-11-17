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
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/business/user/role/BasicUserRoleFactory.dart';

class StoreRoleFactory {
    static final StoreRoleFactory instance = StoreRoleFactory();
    late BasicArrayList roles;
    late BasicArrayList subscriberRoles;
    late BasicArrayList wholesaleRoles;

    // Java field initializers run after the base constructor
    void initFieldsStoreRoleFactory() {
    this.roles = BasicArrayListD();
    this.subscriberRoles = BasicArrayListD();
    this.wholesaleRoles = BasicArrayListD();
    }
    

    static StoreRoleFactory getInstance() {
        return StoreRoleFactory.instance;
    }
    

    StoreRoleFactory() {
        this.initFieldsStoreRoleFactory();
        final BasicUserRoleFactory basicUserRoleFactory = BasicUserRoleFactory.getInstance();
        this.roles.add(basicUserRoleFactory.CUSTOMER);
        this.roles.add(basicUserRoleFactory.SUBSCRIBERCUSTOMER);
        this.roles.add(basicUserRoleFactory.WHOLESALECUSTOMER);
        this.subscriberRoles.add(basicUserRoleFactory.SUBSCRIBERCUSTOMER);
        this.wholesaleRoles.add(basicUserRoleFactory.WHOLESALECUSTOMER);
    }
    

    BasicArrayList getRoles() {
        return this.roles;
    }
    

    BasicArrayList getSubscriberRoles() {
        return this.subscriberRoles;
    }
    

    BasicArrayList getWholesaleRoles() {
        return this.wholesaleRoles;
    }
}

