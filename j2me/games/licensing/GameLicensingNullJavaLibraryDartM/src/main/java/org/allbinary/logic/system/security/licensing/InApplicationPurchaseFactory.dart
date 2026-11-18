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
// package org.allbinary.logic.system.security.licensing

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/logic/system/security/licensing/LockableFeature.dart';

class InApplicationPurchaseFactory {
    static final InApplicationPurchaseFactory instance = InApplicationPurchaseFactory();
    

    static InApplicationPurchaseFactory getInstance() {
        return InApplicationPurchaseFactory.instance;
    }
    

    InApplicationPurchaseFactory() {
    }
    

    void init(Object anyType, Object stateObject) {
    }
    

    void onCreate(Object anyType, Object stateObject) {
    }
    

    void onStart() {
    }
    

    void onResult(int requestCode, int resultCode, Object data) {
    }
    

    void onSaveState(Object anyType) {
    }
    

    void onStop() {
    }
    

    void onDestroy() {
    }
    

    void purchase(LockableFeature lockableFeature) {
    }
    

    bool isPurchased(LockableFeature lockableFeature) {
        return false;
    }
    

    void add(LockableFeature lockableFeature) {
    }
    

    String getUserName() {
        return StringUtil.getInstance().EMPTY_STRING;
    }
    

    bool isEnabled() {
        return false;
    }
}

