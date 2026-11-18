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
import 'package:allbinary/org/allbinary/business/user/role/BasicUserRole.dart';

class BasicUserRoleFactory {
    static final BasicUserRoleFactory instance = BasicUserRoleFactory();
    int INACTIVITYTIMEOUT = 0;
    int CUSTOMERTIMEOUT = 0;
    int CUSTOMERMAXSESSIONTIME = 0;
    int MAXSESSIONTIME = 0;
    late BasicUserRole INSTALLER;
    late BasicUserRole ADMINISTRATOR;
    late BasicUserRole CUSTOMER;
    late BasicUserRole SUBSCRIBERCUSTOMER;
    late BasicUserRole WHOLESALECUSTOMER;
    late BasicUserRole STOREMANAGER;
    late BasicUserRole PRODUCTMANAGER;
    late BasicUserRole CUSTOMERMANAGER;
    late BasicUserRole PAYMENTMANAGER;
    late BasicUserRole ORDERMANAGER;
    late BasicUserRole WEBMANAGER;
    late BasicUserRole REVIEWER;
    late BasicUserRole SHIPPING;
    late BasicUserRole ADJUSTER;
    late BasicUserRole WORKFLOWEDITOR;
    late BasicUserRole WIZARD;
    late BasicUserRole VIEWEDITOR;

    // Java field initializers run after the base constructor
    void initFieldsBasicUserRoleFactory() {
    this.INACTIVITYTIMEOUT = 360000000;
    this.CUSTOMERTIMEOUT = 360000000;
    this.CUSTOMERMAXSESSIONTIME = 360000000;
    this.MAXSESSIONTIME = 360000000;
    this.INSTALLER = BasicUserRole("Installer", 16, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT);
    this.ADMINISTRATOR = BasicUserRole("Administrator", 0, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT);
    this.CUSTOMER = BasicUserRole.with5("CustomerUser", "Customer User", 1, this.CUSTOMERTIMEOUT, this.CUSTOMERMAXSESSIONTIME);
    this.SUBSCRIBERCUSTOMER = BasicUserRole.with5("SubscriberUser", "Subscriber User", 2, this.CUSTOMERTIMEOUT, this.CUSTOMERMAXSESSIONTIME);
    this.WHOLESALECUSTOMER = BasicUserRole.with5("WholesaleUser", "Wholesale User", 3, this.CUSTOMERTIMEOUT, this.CUSTOMERMAXSESSIONTIME);
    this.STOREMANAGER = BasicUserRole.with5("StoreManager", "Store Manager", 4, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT);
    this.PRODUCTMANAGER = BasicUserRole.with5("ProductManager", "Product Manager", 5, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT);
    this.CUSTOMERMANAGER = BasicUserRole.with5("UserManager", "User Manager", 6, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT);
    this.PAYMENTMANAGER = BasicUserRole.with5("PaymentManager", "Payment Manager", 7, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT);
    this.ORDERMANAGER = BasicUserRole.with5("OrderManager", "Order Manager", 8, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT);
    this.WEBMANAGER = BasicUserRole.with5("WebManager", "Web Manager", 9, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT);
    this.REVIEWER = BasicUserRole("Reviewer", 10, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT);
    this.SHIPPING = BasicUserRole("Shipping", 11, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT);
    this.ADJUSTER = BasicUserRole("Adjuster", 12, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT);
    this.WORKFLOWEDITOR = BasicUserRole.with5("WorkFlowEditor", "WorkFlow Editor", 13, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT);
    this.WIZARD = BasicUserRole.with5("WizardUser", "Wizard User", 14, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT);
    this.VIEWEDITOR = BasicUserRole.with5("ViewEditor", "View Editor", 15, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT);
    }

    BasicUserRoleFactory() {
        this.initFieldsBasicUserRoleFactory();
    }
    

    static BasicUserRoleFactory getInstance() {
        return BasicUserRoleFactory.instance;
    }
}

