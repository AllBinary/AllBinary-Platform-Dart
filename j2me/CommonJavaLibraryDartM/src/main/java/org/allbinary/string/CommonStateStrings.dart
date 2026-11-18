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
// package org.allbinary.string

import 'package:allbinary/allbinary_java.dart';

class CommonStateStrings {
    static final CommonStateStrings instance = CommonStateStrings();
    late String CONTEXT;
    late String FINISH;
    late String CREATE;
    late String START;
    late String RESTART;
    late String RESUME;
    late String PAUSE;
    late String STOP;
    late String DESTROY;
    late String BIND;
    late String ON_SAVE_INSTANCE_STATE;
    late String ON_START_COMMAND;

    // Java field initializers run after the base constructor
    void initFieldsCommonStateStrings() {
    this.CONTEXT = "Context: ";
    this.FINISH = "finish";
    this.CREATE = "onCreate";
    this.START = "onStart";
    this.RESTART = "onRestart";
    this.RESUME = "onResume";
    this.PAUSE = "onPause";
    this.STOP = "onStop";
    this.DESTROY = "onDestroy";
    this.BIND = "onBind";
    this.ON_SAVE_INSTANCE_STATE = "onSaveInstanceState";
    this.ON_START_COMMAND = "onStartCommand";
    }

    CommonStateStrings() {
        this.initFieldsCommonStateStrings();
    }
    

    static CommonStateStrings getInstance() {
        return CommonStateStrings.instance;
    }
}

