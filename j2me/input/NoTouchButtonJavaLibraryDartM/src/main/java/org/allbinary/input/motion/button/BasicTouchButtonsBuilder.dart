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
// package org.allbinary.input.motion.button

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListUtil.dart';
import 'package:allbinary/org/allbinary/input/motion/button/BaseTouchInput.dart';

class BasicTouchButtonsBuilder extends BaseTouchInput {
    static final BasicTouchButtonsBuilder SINGLETON = BasicTouchButtonsBuilder();
    late LogUtil logUtil;

    // Java field initializers run after the base constructor
    void initFieldsBasicTouchButtonsBuilder() {
    this.logUtil = LogUtil.getInstance();
    }

    BasicTouchButtonsBuilder() {
        this.initFieldsBasicTouchButtonsBuilder();
    }
    

    static BaseTouchInput getInstance() {
        return BasicTouchButtonsBuilder.SINGLETON;
    }
    

    @override
    BasicArrayList getList() {
        try {
            this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.GET_LIST);
            final BasicArrayList list = BasicArrayListD();
            return list;
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.GET_LIST, e);
            return BasicArrayListUtil.getInstance().getImmutableInstance();
            }
        }
    }
}

