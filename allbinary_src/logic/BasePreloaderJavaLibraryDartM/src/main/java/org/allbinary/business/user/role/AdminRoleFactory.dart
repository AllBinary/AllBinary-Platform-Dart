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
// package org.allbinary.business.user.role

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/business/user/role/BasicUserRoleFactory.dart';

class AdminRoleFactory {
    static final AdminRoleFactory instance = AdminRoleFactory();
    late BasicArrayList adminRoles;
    late BasicArrayList storeAdminRoles;
    late BasicArrayList storeManagementRoles;
    late BasicArrayList productManagementRoles;
    late BasicArrayList reviewManagementRoles;
    late BasicArrayList customerManagementRoles;
    late BasicArrayList workflowManagementRoles;
    late BasicArrayList orderManagementRoles;
    late BasicArrayList adjusterManagementRoles;
    late BasicArrayList shippingManagementRoles;
    late BasicArrayList webManagementRoles;

    // Java field initializers run after the base constructor
    void initFieldsAdminRoleFactory() {
    this.adminRoles = BasicArrayListD();
    this.storeAdminRoles = BasicArrayListD();
    this.storeManagementRoles = BasicArrayListD();
    this.productManagementRoles = BasicArrayListD();
    this.reviewManagementRoles = BasicArrayListD();
    this.customerManagementRoles = BasicArrayListD();
    this.workflowManagementRoles = BasicArrayListD();
    this.orderManagementRoles = BasicArrayListD();
    this.adjusterManagementRoles = BasicArrayListD();
    this.shippingManagementRoles = BasicArrayListD();
    this.webManagementRoles = BasicArrayListD();
    }
    

    static AdminRoleFactory getInstance() {
        return AdminRoleFactory.instance;
    }
    

    AdminRoleFactory() {
        this.initFieldsAdminRoleFactory();
        final BasicUserRoleFactory basicUserRoleFactory = BasicUserRoleFactory.getInstance();
        this.adminRoles.add(basicUserRoleFactory.ADMINISTRATOR);
        this.storeAdminRoles.add(basicUserRoleFactory.ADMINISTRATOR);
        this.storeAdminRoles.add(basicUserRoleFactory.STOREMANAGER);
        this.storeManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR);
        this.storeManagementRoles.add(basicUserRoleFactory.STOREMANAGER);
        this.storeManagementRoles.add(basicUserRoleFactory.CUSTOMERMANAGER);
        this.storeManagementRoles.add(basicUserRoleFactory.ADJUSTER);
        this.storeManagementRoles.add(basicUserRoleFactory.PRODUCTMANAGER);
        this.storeManagementRoles.add(basicUserRoleFactory.REVIEWER);
        this.storeManagementRoles.add(basicUserRoleFactory.SHIPPING);
        this.productManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR);
        this.productManagementRoles.add(basicUserRoleFactory.STOREMANAGER);
        this.productManagementRoles.add(basicUserRoleFactory.PRODUCTMANAGER);
        this.reviewManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR);
        this.reviewManagementRoles.add(basicUserRoleFactory.STOREMANAGER);
        this.reviewManagementRoles.add(basicUserRoleFactory.REVIEWER);
        this.customerManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR);
        this.customerManagementRoles.add(basicUserRoleFactory.STOREMANAGER);
        this.customerManagementRoles.add(basicUserRoleFactory.CUSTOMERMANAGER);
        this.workflowManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR);
        this.workflowManagementRoles.add(basicUserRoleFactory.STOREMANAGER);
        this.workflowManagementRoles.add(basicUserRoleFactory.WORKFLOWEDITOR);
        this.orderManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR);
        this.orderManagementRoles.add(basicUserRoleFactory.STOREMANAGER);
        this.adjusterManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR);
        this.adjusterManagementRoles.add(basicUserRoleFactory.STOREMANAGER);
        this.adjusterManagementRoles.add(basicUserRoleFactory.ADJUSTER);
        this.shippingManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR);
        this.shippingManagementRoles.add(basicUserRoleFactory.STOREMANAGER);
        this.shippingManagementRoles.add(basicUserRoleFactory.SHIPPING);
        this.webManagementRoles.add(basicUserRoleFactory.ADMINISTRATOR);
        this.webManagementRoles.add(basicUserRoleFactory.STOREMANAGER);
        this.webManagementRoles.add(basicUserRoleFactory.WEBMANAGER);
        this.webManagementRoles.add(basicUserRoleFactory.WORKFLOWEDITOR);
        this.webManagementRoles.add(basicUserRoleFactory.VIEWEDITOR);
    }
    

    BasicArrayList getProductManagementRoles() {
        return this.productManagementRoles;
    }
    

    BasicArrayList getAdminRoles() {
        return this.adminRoles;
    }
    

    BasicArrayList getStoreAdminRoles() {
        return this.storeAdminRoles;
    }
    

    BasicArrayList getStoreManagementRoles() {
        return this.storeManagementRoles;
    }
    

    BasicArrayList getReviewManagementRoles() {
        return this.reviewManagementRoles;
    }
    

    BasicArrayList getCustomerManagementRoles() {
        return this.customerManagementRoles;
    }
    

    BasicArrayList getWorkflowManagementRoles() {
        return this.workflowManagementRoles;
    }
    

    BasicArrayList getWebManagementRoles() {
        return this.webManagementRoles;
    }
    

    BasicArrayList getShippingManagementRoles() {
        return this.shippingManagementRoles;
    }
    

    BasicArrayList getAdjusterManagementRoles() {
        return this.adjusterManagementRoles;
    }
    

    BasicArrayList getOrderManagementRoles() {
        return this.orderManagementRoles;
    }
}

