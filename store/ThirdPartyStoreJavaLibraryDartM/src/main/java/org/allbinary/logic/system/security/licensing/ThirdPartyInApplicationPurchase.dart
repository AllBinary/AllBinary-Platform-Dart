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
import 'package:allbinary/org/allbinary/logic/system/security/licensing/ThirdPartyInApplicationPurchaseInterface.dart';
import 'package:allbinary/org/allbinary/logic/system/security/licensing/LockableFeature.dart';

class ThirdPartyInApplicationPurchase implements ThirdPartyInApplicationPurchaseInterface {
    

    @override
    bool isPurchased(LockableFeature lockableFeature) {
        return false;
    }
    

    @override
    void onCreate(Object anyType, Object stateObject) {
    }
    

    @override
    void onDestroy() {
    }
    

    @override
    void onStart() {
    }
    

    @override
    void onActivityResult(int requestCode, int resultCode, Object dataObject) {
    }
    

    @override
    void onSaveInstanceState(Object anyType) {
    }
    

    @override
    void onStop() {
    }
    

    @override
    void requestPurchase(LockableFeature lockableFeature) {
    }
    

    @override
    void requestReceipts() {
    }
    

    @override
    void add(LockableFeature lockableFeature) {
    }
    

    @override
    String getUserName() {
        return StringUtil.getInstance().EMPTY_STRING;
    }
    

    @override
    bool isEnabled() {
        return false;
    }
    

    void requestProducts() {
    }
}

