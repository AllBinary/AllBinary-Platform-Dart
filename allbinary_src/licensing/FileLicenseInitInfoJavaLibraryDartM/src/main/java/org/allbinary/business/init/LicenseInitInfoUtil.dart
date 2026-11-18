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
// package org.allbinary.business.init

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/TsUtil.dart';
import 'package:allbinary/org/allbinary/globals/PATH_GLOBALS.dart';
import 'package:allbinary/org/allbinary/globals/URLGLOBALS.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/io/AbDataInputStream.dart';
import 'package:allbinary/org/allbinary/logic/io/AbDataOutputStream.dart';
import 'package:allbinary/org/allbinary/logic/io/AbFileInputStream.dart';
import 'package:allbinary/org/allbinary/logic/io/DataOutputStreamFactory.dart';
import 'package:allbinary/org/allbinary/logic/io/FileStreamFactory.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/logic/system/security/crypt/DatabaseEncoder.dart';
import 'package:allbinary/org/allbinary/logic/system/security/crypt/WeakCrypt.dart';
import 'package:allbinary/org/allbinary/string/CommonLabels.dart';
import 'package:allbinary/org/allbinary/business/init/LicenseInitInfo.dart';

class LicenseInitInfoUtil {
    static final LicenseInitInfoUtil instance = LicenseInitInfoUtil();
    late LogUtil logUtil;
    late StringUtil stringUtil;
    late String INITFILENAME;
    late String ABOUT;
    late String PRIVACY_POLICY;
    late String filePath;

    // Java field initializers run after the base constructor
    void initFieldsLicenseInitInfoUtil() {
    this.logUtil = LogUtil.getInstance();
    this.stringUtil = StringUtil.getInstance();
    this.INITFILENAME = "licenseinitdata.dat";
    this.ABOUT = "about";
    this.PRIVACY_POLICY = "privacy_policy";
    this.filePath = this.stringUtil.EMPTY_STRING;
    }

    LicenseInitInfoUtil() {
        this.initFieldsLicenseInitInfoUtil();
    }
    

    static LicenseInitInfoUtil getInstance() {
        return LicenseInitInfoUtil.instance;
    }
    

    void setFilePath(String filePath) {
        this.filePath = filePath;
    }
    

    void write(LicenseInitInfo initData) {
        if (this.filePath == this.stringUtil.EMPTY_STRING) {
            this.filePath = URLGLOBALS.getMainPath() + PATH_GLOBALS.getInstance().INIT_PATH;
        }
        try {
            final TsUtil tsUtil = TsUtil.getInstance();
            final AbDataOutputStream dataOutputStream = DataOutputStreamFactory.getInstance().getInstance2(this.filePath, this.INITFILENAME);
            final List<int> licenseIdCrypted = tsUtil.getByteArray(WeakCrypt(1).encrypt(initData.getLicenseId()));
            dataOutputStream.writeUTF(DatabaseEncoder.encode(licenseIdCrypted));
            final int numberOfLicenseServers = initData.getNumberOfServers();
            dataOutputStream.writeInt(numberOfLicenseServers);
            late List<int> licenseServerCrypted;
            for (int index = 0; index < numberOfLicenseServers; index++) {
                licenseServerCrypted = tsUtil.getByteArray(WeakCrypt(3).encrypt(initData.getServer(index)));
                dataOutputStream.writeUTF(DatabaseEncoder.encode(licenseServerCrypted));
            }
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put("Command Failed: " + this.INITFILENAME, this, "write", e);
            FileStreamFactory.getInstance().delete(this.filePath, this.INITFILENAME);
            throw e;
            }
        }
    }
    

    LicenseInitInfo read() {
        return this.readAgain(0);
    }
    

    LicenseInitInfo readAgain(int initializeCounter) {
        final String METHOD_NAME = "readAgain";
        if (this.filePath == this.stringUtil.EMPTY_STRING) {
            this.filePath = URLGLOBALS.getMainPath() + PATH_GLOBALS.getInstance().INIT_PATH;
        }
        try {
            this.logUtil.putF("LicenseInitInfo File: " + this.INITFILENAME, this, METHOD_NAME);
            final FileStreamFactory fileStreamFactory = FileStreamFactory.getInstance();
            final AbFileInputStream iFile = fileStreamFactory.getFileInputStreamInstance(this.filePath, this.INITFILENAME);
            if (iFile != null) {
                final AbDataInputStream iData = AbDataInputStream(iFile);
                final LicenseInitInfo initInfo = LicenseInitInfo();
                List<int> decodedByteArray = DatabaseEncoder.decode(iData.readUTF());
                final String licenseIdDecoded = jNewString(decodedByteArray);
                initInfo.setLicenseId(WeakCrypt(1).decrypt(licenseIdDecoded));
                int numberOfLicenseServers = iData.readInt();
                final String NEXT_FILE = StringMaker().append(CommonLabels.getInstance().NEXT).append(" License Server From File: ").toString();
                late String licenseServerDecoded;
                for (int index = 0; index < numberOfLicenseServers; index++) {
                    decodedByteArray = DatabaseEncoder.decode(iData.readUTF());
                    licenseServerDecoded = jNewString(decodedByteArray);
                    initInfo.setServer(WeakCrypt(3).decrypt(licenseServerDecoded), index);
                    this.logUtil.putF(NEXT_FILE + initInfo.getServer(index), this, METHOD_NAME);
                }
                return initInfo;
            } else {
                throw JException('Exception', "Could Not Load License InitInfo: " + this.INITFILENAME);
            }
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            try {
                this.logUtil.put("Command Failed: " + this.INITFILENAME, this, METHOD_NAME, e);
            } catch (jcaught) {
                {
                    final dynamic e2 = jcaught;
                this.logUtil.put("LicenseInitInfo Read Retry: " + this.INITFILENAME, this, "readAgain()", e2);
                }
            }
            throw JException('Exception', "LicenseInitInfo Read Error: " + this.INITFILENAME);
            }
        }
    }
    

    String getFilePath() {
        return this.filePath;
    }
}

