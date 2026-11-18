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
// package org.allbinary.logic.io

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/io/file/AbFile.dart';
import 'package:allbinary/org/allbinary/logic/io/AbFileOutputStream.dart';
import 'package:allbinary/org/allbinary/logic/io/AbDataOutputStream.dart';
import 'package:allbinary/org/allbinary/logic/io/FileStreamFactory.dart';

class DataOutputStreamFactory {
    static final DataOutputStreamFactory instance = DataOutputStreamFactory();
    

    static DataOutputStreamFactory getInstance() {
        return DataOutputStreamFactory.instance;
    }
    

    AbDataOutputStream getInstanceForAbFile(AbFile file) {
        final AbFileOutputStream idFileOutputStream = AbFileOutputStream.createFromAbFile(file);
        final AbDataOutputStream idOutData = AbDataOutputStream(idFileOutputStream);
        return idOutData;
    }
    

    AbDataOutputStream getInstance2(String filePath, String fileName) {
        final FileStreamFactory fileStreamFactory = FileStreamFactory.getInstance();
        final AbFileOutputStream fileOutputStream = fileStreamFactory.getFileOutputStreamInstance(filePath, fileName);
        AbDataOutputStream idOutData = AbDataOutputStream(fileOutputStream);
        return idOutData;
    }
}

