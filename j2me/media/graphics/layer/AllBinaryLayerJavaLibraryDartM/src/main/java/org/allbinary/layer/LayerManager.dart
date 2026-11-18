// Generated Code Do Not Modify
// ignore_for_file: unused_import, unnecessary_import, unused_local_variable, unnecessary_null_comparison, unnecessary_cast
// package org.allbinary.layer

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/TsUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/thread/SynchObject.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/logic/ABSystemWrapper.dart';
import 'package:allbinary/org/allbinary/layer/LayerManagerLoggingBase.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/layer/Layer.dart';

class LayerManager {
    late LogUtil logUtil;
    late CommonStrings commonStrings;
    late ABSystemWrapper systemWrapper;
    late TsUtil tsUtil;
    late LayerManagerLoggingBase layerManagerLogging;
    late BasicArrayList list;
    late SynchObject anyType;

    // Java field initializers run after the base constructor
    void initFieldsLayerManager() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.systemWrapper = ABSystemWrapper.getInstance();
    this.tsUtil = TsUtil.getInstance();
    
    this.list = BasicArrayListD();
    this.anyType = SynchObject();
    }
    

    LayerManager(LayerManagerLoggingBase layerManagerLogging) {
        this.initFieldsLayerManager();
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR);
        this.layerManagerLogging = layerManagerLogging;
    }
    

    bool contains(AllBinaryLayer layerInterface) {
        return this.list.contains(layerInterface);
    }
    

    void update(AllBinaryLayer layerInterface) {
        bool had = this.list.remove(layerInterface);
        if (had) {
            late AllBinaryLayer nextLayerInterface;
            final int size = this.list.size();
            for (int index = 0; index < size; index++) {
                nextLayerInterface = (this.list.get(index) as AllBinaryLayer);
                if (layerInterface.getZP() > nextLayerInterface.getZP()) {
                    this.list.addAt(index, layerInterface);
                    return;
                }
            }
            this.list.add(layerInterface);
        }
    }
    

    void insert(AllBinaryLayer layerInterface) {
        late AllBinaryLayer nextLayerInterface;
        final int size = this.list.size();
        for (int index = 0; index < size; index++) {
            nextLayerInterface = (this.list.get(index) as AllBinaryLayer);
            if (layerInterface.getZP() > nextLayerInterface.getZP()) {
                this.appendAt(layerInterface, index);
                return;
            }
        }
        this.append(layerInterface);
    }
    

    void append(AllBinaryLayer layerInterface) {
        this.layerManagerLogging.append(layerInterface);
        this.list.add(layerInterface);
    }
    

    void appendAt(AllBinaryLayer layerInterface, int index) {
        this.layerManagerLogging.appendAt(layerInterface, index);
        this.list.addAt(index, layerInterface);
    }
    

    void remove(AllBinaryLayer layerInterface) {
        {
            this.layerManagerLogging.remove(layerInterface);
            final bool result = this.list.remove(layerInterface);
            this.layerManagerLogging.removeResult(this, layerInterface, result);
        }
    }
    

    Layer getLayerAt(int index) {
        return (this.list.objectArray[index]! as Layer);
    }
    

    int getSize() {
        return this.list.size();
    }
    

    void cleanup() {
        {
            this.list.clear();
            this.layerManagerLogging.clear();
            this.tsUtil.gc();
            this.tsUtil.gc();
        }
    }
    

    void paint(Graphics g, int x, int y) {
        {
            late Layer comp;
            for (int index = this.list.size(); --index >= 0; ) {
                comp = (this.list.objectArray[index]! as Layer);
                if (comp != null && comp.isVisible()) {
                    comp.paint(g);
                }
            }
        }
    }
}

