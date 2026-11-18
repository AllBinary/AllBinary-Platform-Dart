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
// package org.allbinary.layer

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/TsUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';
import 'package:allbinary/org/allbinary/layer/LayerManagerLoggingBase.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/layer/LayerManager.dart';

class LayerManagerLogging extends LayerManagerLoggingBase {
    static final LayerManagerLogging instance = LayerManagerLogging();
    static bool removeFailed = false;
    late LogUtil logUtil;
    late StringMaker stringBuilder;
    late String APPEND;
    late String APPEND_;
    late String u_AT_;
    late String ATTEMPT_REMOVE_;
    late String REMOVE_;
    late String REMOVE;
    late String DID_NOT_REMOVE;
    late String CLEAR;

    // Java field initializers run after the base constructor
    void initFieldsLayerManagerLogging() {
    this.logUtil = LogUtil.getInstance();
    this.stringBuilder = StringMaker();
    this.APPEND = "append";
    this.APPEND_ = " append: ";
    this.u_AT_ = " at: ";
    this.ATTEMPT_REMOVE_ = " Remove Attempt: ";
    this.REMOVE_ = " Remove: ";
    this.REMOVE = "remove";
    this.DID_NOT_REMOVE = " Did not remove: ";
    this.CLEAR = " Clear List";
    }

    LayerManagerLogging() {
        this.initFieldsLayerManagerLogging();
    }
    

    static LayerManagerLogging getInstance() {
        return LayerManagerLogging.instance;
    }
    

    @override
    void append(AllBinaryLayer layerInterface) {
        this.stringBuilder.delete(0, this.stringBuilder.length());
        this.logUtil.putF(this.stringBuilder.appendint(TsUtil.getInstance().hashCode1(this)).append(this.APPEND_).append(layerInterface.getName()).toString(), this, this.APPEND);
    }
    

    @override
    void appendAt(AllBinaryLayer layerInterface, int index) {
        this.stringBuilder.delete(0, this.stringBuilder.length());
        this.logUtil.putF(this.stringBuilder.appendint(TsUtil.getInstance().hashCode1(this)).append(this.APPEND_).append(layerInterface.getName()).append(this.u_AT_).appendint(index).toString(), this, this.APPEND);
    }
    

    @override
    void remove(AllBinaryLayer layerInterface) {
        if (layerInterface == null) {
            this.stringBuilder.delete(0, this.stringBuilder.length());
            this.logUtil.putF(this.stringBuilder.appendint(TsUtil.getInstance().hashCode1(this)).append(this.ATTEMPT_REMOVE_).append(StringUtil.getInstance().toString1(layerInterface)).toString(), this, this.REMOVE);
        } else {
            this.stringBuilder.delete(0, this.stringBuilder.length());
            this.logUtil.putF(this.stringBuilder.appendint(TsUtil.getInstance().hashCode1(this)).append(this.ATTEMPT_REMOVE_).append(layerInterface.getName()).toString(), this, this.REMOVE);
        }
    }
    

    @override
    void removeResult(LayerManager layerManager, AllBinaryLayer layerInterface, bool result) {
        if (layerInterface == null) {
            this.stringBuilder.delete(0, this.stringBuilder.length());
            this.logUtil.putF(this.stringBuilder.appendint(TsUtil.getInstance().hashCode1(this)).append(this.REMOVE_).append(StringUtil.getInstance().toString1(layerInterface)).toString(), this, this.REMOVE);
        } else if (result) {
            if (LayerManagerLogging.removeFailed) {
                this.stringBuilder.delete(0, this.stringBuilder.length());
                this.logUtil.putF(this.stringBuilder.appendint(TsUtil.getInstance().hashCode1(this)).append(this.REMOVE_).append(layerInterface.getName()).toString(), this, this.REMOVE);
            }
        } else {
            this.stringBuilder.delete(0, this.stringBuilder.length());
            this.logUtil.putF(this.stringBuilder.appendint(TsUtil.getInstance().hashCode1(this)).append(this.DID_NOT_REMOVE).append(layerInterface.getName()).toString(), this, this.REMOVE);
            LayerManagerLogging.removeFailed = true;
        }
    }
    

    void log(LayerManager layerManager) {
        this.stringBuilder.delete(0, this.stringBuilder.length());
        final int size = layerManager.getSize();
        final CommonSeps commonSeps = CommonSeps.getInstance();
        this.stringBuilder.append(Integer.toHexString(TsUtil.getInstance().hashCode1(layerManager))).append(commonSeps.COLON_SEP);
        this.stringBuilder.appendint(size).append(commonSeps.COLON_SEP);
        late AllBinaryLayer allBinaryLayer;
        for (int index = 0; index < size; index++) {
            allBinaryLayer = ((layerManager.getLayerAt(index) as AllBinaryLayer));
            this.stringBuilder.append(allBinaryLayer.getName()).append(commonSeps.COMMA);
        }
        this.logUtil.putF(this.stringBuilder.toString(), this, this.REMOVE);
    }
    

    @override
    void clear() {
        this.stringBuilder.delete(0, this.stringBuilder.length());
        this.logUtil.putF(this.stringBuilder.appendint(TsUtil.getInstance().hashCode1(this)).append(this.CLEAR).toString(), this, this.CLEAR);
    }
}

