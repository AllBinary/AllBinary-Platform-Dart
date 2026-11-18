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
import 'package:allbinary/org/allbinary/logic/system/security/licensing/LockedUtilInterface.dart';
import 'package:allbinary/org/allbinary/logic/system/security/licensing/LockableFeature.dart';

class LockedUtil implements LockedUtilInterface {
    static final LockedUtil instance = LockedUtil();
    

    static LockedUtil getInstance() {
        return LockedUtil.instance;
    }
    

    @override
    bool isLocked() {
        return true;
    }
    

    @override
    bool isLockedFeature(LockableFeature lockableFeatrue) {
        return true;
    }
}

