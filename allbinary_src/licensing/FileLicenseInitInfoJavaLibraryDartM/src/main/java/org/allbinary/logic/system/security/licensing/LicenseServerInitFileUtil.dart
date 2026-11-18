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
import 'package:allbinary/java/io/InputStream.dart';
import 'package:allbinary/java/io/OutputStream.dart';
import 'package:allbinary/org/allbinary/business/init/LicenseInitInfoUtil.dart';
import 'package:allbinary/org/allbinary/data/resource/ResourceUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/io/FileStreamFactory.dart';
import 'package:allbinary/org/allbinary/logic/io/StreamUtil.dart';
import 'package:allbinary/org/allbinary/logic/io/file/FileFactory.dart';
import 'package:allbinary/org/allbinary/logic/io/file/SimpleFileUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';

class LicenseServerInitFileUtil {
    late LogUtil logUtil;
    late CommonStrings commonStrings;
    late OutputStream NULL_OUTPUT_STREAM;

    // Java field initializers run after the base constructor
    void initFieldsLicenseServerInitFileUtil() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.NULL_OUTPUT_STREAM = SimpleFileUtil.nullOutputStream();
    }

    LicenseServerInitFileUtil() {
        this.initFieldsLicenseServerInitFileUtil();
    }
    

    void init() {
        try {
            final String filePath = LicenseInitInfoUtil.getInstance().INITFILENAME;
            LicenseInitInfoUtil.getInstance().setFilePath(StringUtil.getInstance().EMPTY_STRING);
            if (FileFactory.getInstance().isFile(filePath)) {
                this.logUtil.putF("Using Existing License File", this, this.commonStrings.INIT);
            } else {
                this.write();
            }
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.INIT, e);
            }
        }
    }
    

    void write() {
        OutputStream fileOutputStream = this.NULL_OUTPUT_STREAM;
        try {
            final ResourceUtil resourceUtil = ResourceUtil.getInstance();
            final String filePath = LicenseInitInfoUtil.getInstance().INITFILENAME;
            final InputStream inputStream = resourceUtil.getResourceAsStream(filePath);
            this.logUtil.putF("Writing Default License File", this, this.commonStrings.INIT);
            final FileStreamFactory fileStreamFactory = FileStreamFactory.getInstance();
            fileOutputStream = fileStreamFactory.getFileOutputStreamInstance(StringUtil.getInstance().EMPTY_STRING, filePath);
            int b = 0;
            int index = 0;
            while (true) {
                b = inputStream.read();
                if (b == -1) {
                    break;
                }
                fileOutputStream.write(b);
                index++;
            }
            this.logUtil.putF("Wrote Bytes: " + jstr(index), this, this.commonStrings.INIT);
            fileOutputStream.flush();
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.INIT, e);
            }
        } finally {
            StreamUtil.getInstance().close(fileOutputStream);
        }
    }
}

