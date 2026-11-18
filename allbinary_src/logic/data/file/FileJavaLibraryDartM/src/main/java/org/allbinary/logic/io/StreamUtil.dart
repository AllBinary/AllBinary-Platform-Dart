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
import 'package:allbinary/java/io/ByteArrayOutputStream.dart';
import 'package:allbinary/java/io/Closeable.dart';
import 'package:allbinary/java/io/InputStream.dart';
import 'package:allbinary/java/io/OutputStream.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';

class StreamUtil {
    static final StreamUtil instance = StreamUtil();
    late LogUtil logUtil;

    // Java field initializers run after the base constructor
    void initFieldsStreamUtil() {
    this.logUtil = LogUtil.getInstance();
    }
    

    static StreamUtil getInstance() {
        return StreamUtil.instance;
    }
    

    StreamUtil() {
        this.initFieldsStreamUtil();
    }
    

    OutputStream get(InputStream inputStream, OutputStream outputStream, List<int> buffer) {
        int len = 0;
        while (true) {
            len = inputStream.read(buffer, 0, buffer.length);
            if (len != -1) {
            } else {
                break;
            }
            outputStream.write(buffer, 0, len);
        }
        return outputStream;
    }
    

    List<int> getByteArray(InputStream inputStream, ByteArrayOutputStream outputStream2, List<int> byteArray) {
        final ByteArrayOutputStream outputStream = outputStream2;
        try {
            this.get(inputStream, outputStream, byteArray);
            return outputStream.toByteArray();
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            throw e;
            }
        } finally {
            this.close(outputStream);
        }
    }
    

    bool close(Closeable closeable) {
        try {
            if (closeable != null) {
                closeable.close();
            }
            return true;
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            final CommonStrings commonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.CLOSE, e);
            return false;
            }
        }
    }
}

