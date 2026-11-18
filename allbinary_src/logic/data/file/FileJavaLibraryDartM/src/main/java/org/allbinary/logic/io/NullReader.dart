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
// package org.allbinary.logic.io

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/java/io/Reader.dart';

class NullReader extends Reader {
    static final NullReader NULL_READER = NullReader();
    

    int read([dynamic p0 = jnone, dynamic p1 = jnone, dynamic p2 = jnone]) {
        if (identical(p0, jnone)) {
            return this.read$0();
        }
        if (!identical(p2, jnone) && jIsList(p0) && p1 is int && p2 is int) {
            return this.read$3(p0, p1, p2);
        }
        throw JException('NoSuchMethodError', 'read');
    }

    int read$0() {
        return -1;
    }
    

    int read$3(List<int> cbuf, int off, int len) {
        return -1;
    }
    

    @override
    bool ready() {
        return false;
    }
    

    @override
    int skip(int n) {
        return 0;
    }
    

    @override
    void close() {
    }
}

