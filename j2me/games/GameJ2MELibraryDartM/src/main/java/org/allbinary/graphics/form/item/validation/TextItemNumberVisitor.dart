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
// package org.allbinary.graphics.form.item.validation

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/input/TextNotificationUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/java/bool/BooleanFactory.dart';
import 'package:allbinary/org/allbinary/logic/string/StringValidationUtil.dart';
import 'package:allbinary/org/allbinary/logic/util/visitor/Visitor.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';

class TextItemNumberVisitor extends Visitor {
    late LogUtil logUtil;

    // Java field initializers run after the base constructor
    void initFieldsTextItemNumberVisitor() {
    this.logUtil = LogUtil.getInstance();
    }
    

    TextItemNumberVisitor() {
        this.initFieldsTextItemNumberVisitor();
    }
    

    @override
    Object visit(Object anyType) {
        String value = (anyType as String);
        if (value.length < 2) {
            final StringValidationUtil stringValidationUtil = StringValidationUtil.getInstance();
            if (stringValidationUtil.isNumber(value)) {
                return BooleanFactory.getInstance().TRUE;
            } else {
                try {
                    TextNotificationUtil.getInstance().fireError("Numbers Only");
                } catch (jcaught) {
                    {
                        final dynamic e = jcaught;
                    final CommonStrings commonStrings = CommonStrings.getInstance();
                    this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.VISIT, e);
                    }
                }
                return BooleanFactory.getInstance().FALSE;
            }
        } else {
            return BooleanFactory.getInstance().FALSE;
        }
    }
}

