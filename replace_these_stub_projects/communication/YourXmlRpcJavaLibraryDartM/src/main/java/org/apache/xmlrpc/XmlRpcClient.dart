// Generated Code Do Not Modify
// ignore_for_file: unused_import, unnecessary_import, unused_local_variable, unnecessary_null_comparison, unnecessary_cast
// package org.apache.xmlrpc

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/java/net/URL.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/init/crypt/jcehelper/CryptInterface.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/apache/xmlrpc/XmlRpcHandler.dart';
import 'package:allbinary/org/apache/xmlrpc/XmlRpcException.dart';

class XmlRpcClient implements XmlRpcHandler {
    late URL url;

    // Java field initializers run after the base constructor
    void initFieldsXmlRpcClient() {
    
    }
    

    XmlRpcClient(String url) {
        this.initFieldsXmlRpcClient();
        this.url = URL(url);
    }
    

    URL getURL() {
        return this.url;
    }
    

    void setBasicAuthentication(String user, String password) {
    }
    

    @override
    Object execute(String method, BasicArrayList params) {
        return NullUtil.getInstance().NULL_OBJECT;
    }
    

    Object executeWithCrypt(String method, BasicArrayList params, CryptInterface cryptInterface) {
        return NullUtil.getInstance().NULL_OBJECT;
    }
}

