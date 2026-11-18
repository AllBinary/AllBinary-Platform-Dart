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
import 'package:allbinary/java/io/OutputStream.dart';

class NullOutputStream extends OutputStream {
    static final NullOutputStream NULL_OUTPUT_STREAM = NullOutputStream();
    

    void write([dynamic p0 = jnone, dynamic p1 = jnone, dynamic p2 = jnone]) {
        if (!identical(p0, jnone) && identical(p1, jnone) && p0 is int) {
            this.write$1(p0);
            return;
        }
        if (!identical(p2, jnone) && jIsList(p0) && p1 is int && p2 is int) {
            this.write$3(p0, p1, p2);
            return;
        }
        throw JException('NoSuchMethodError', 'write');
    }

    void write$1(int b) {
    }
    

    void write$3(List<int> b, int off, int len) {
    }
    

    @override
    void close() {
    }
}

