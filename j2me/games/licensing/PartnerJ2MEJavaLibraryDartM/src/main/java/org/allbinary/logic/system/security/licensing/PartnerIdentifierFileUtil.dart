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
import 'package:allbinary/java/io/InputStreamReader.dart';
import 'package:allbinary/org/allbinary/data/resource/ResourceUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';

class PartnerIdentifierFileUtil {
    static final PartnerIdentifierFileUtil instance = PartnerIdentifierFileUtil();
    late LogUtil logUtil;
    late String FILE_NAME;

    // Java field initializers run after the base constructor
    void initFieldsPartnerIdentifierFileUtil() {
    this.logUtil = LogUtil.getInstance();
    this.FILE_NAME = "partner.txt";
    }

    PartnerIdentifierFileUtil() {
        this.initFieldsPartnerIdentifierFileUtil();
    }
    

    static PartnerIdentifierFileUtil getInstance() {
        return PartnerIdentifierFileUtil.instance;
    }
    

    String get() {
        try {
            final ResourceUtil resourceUtil = ResourceUtil.getInstance();
            final InputStream inputStream = resourceUtil.getResourceAsStream(this.FILE_NAME);
            final InputStreamReader inputStreamReader = InputStreamReader(inputStream);
            final List<int> chars = List<int>.filled(30, 0);
            final int size = inputStreamReader.read(chars);
            String partnerString = StringUtil.getInstance().EMPTY_STRING;
            if (size > 0) {
                partnerString = JString.fromChars(chars, 0, size);
            }
            inputStreamReader.close();
            return partnerString;
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            final CommonStrings commonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.GET, e);
            return StringUtil.getInstance().NULL_STRING;
            }
        }
    }
}

