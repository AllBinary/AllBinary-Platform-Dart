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
// package org.apache.xmlrpc

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/apache/xmlrpc/XmlRpcHandler.dart';

class NullXmlRpcHandler implements XmlRpcHandler {
    static final NullXmlRpcHandler NULL_XML_RPC_HANDLER = NullXmlRpcHandler();
    

    @override
    Object execute(String method, BasicArrayList params) {
        return NullUtil.getInstance().NULL_OBJECT;
    }
}

