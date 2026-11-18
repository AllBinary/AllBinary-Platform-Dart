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
// package org.allbinary.game.ag.ai

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/ai/BasicAI.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/java/bool/BooleanFactory.dart';
import 'package:allbinary/org/allbinary/logic/util/visitor/Visitor.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';

class LastKeyAIVisitor extends Visitor {
    late LogUtil logUtil;
    late bool TRUE;

    // Java field initializers run after the base constructor
    void initFieldsLastKeyAIVisitor() {
    this.logUtil = LogUtil.getInstance();
    this.TRUE = BooleanFactory.getInstance().TRUE;
    }
    

    LastKeyAIVisitor() {
        this.initFieldsLastKeyAIVisitor();
    }
    

    @override
    Object visit(Object anyType) {
        try {
            BasicAI basicAI = (anyType as BasicAI);
            int key = basicAI.getLastKey();
            if (key != -1) {
                basicAI.processKeyAI(key);
            }
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            final CommonStrings commonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.VISIT, e);
            }
        }
        return this.TRUE;
    }
}

