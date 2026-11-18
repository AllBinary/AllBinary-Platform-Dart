/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package javax.microedition.lcdui

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/MIDPUtil.dart';
import 'package:allbinary/javax/microedition/lcdui/Image.dart';

class ChoiceGroupImageFactory {
    static final ChoiceGroupImageFactory instance = ChoiceGroupImageFactory();
    late JArray<int> multiOff;
    late JArray<int> multiOn;
    late JArray<int> radioOff;
    late JArray<int> radioOn;
    late MIDPUtil midpUtil;
    late Image imgMultiOffO;
    late Image imgMultiOnO;
    late Image imgRadioOffO;
    late Image imgRadioOnO;
    late Image imgMultiOff;
    late Image imgMultiOn;
    late Image imgRadioOff;
    late Image imgRadioOn;
    late JArray<Image?> imageArray;

    // Java field initializers run after the base constructor
    void initFieldsChoiceGroupImageFactory() {
    this.multiOff = <int>[(-119).toSigned(8), 80, 78, 71, 13, 10, 26, 10, 0, 0, 0, 13, 73, 72, 68, 82, 0, 0, 0, 10, 0, 0, 0, 11, 2, 3, 0, 0, 0, 59, 0, (-12).toSigned(8), (-117).toSigned(8), 0, 0, 0, 6, 80, 76, 84, 69, (-1).toSigned(8), (-1).toSigned(8), (-1).toSigned(8), (-69).toSigned(8), (-69).toSigned(8), (-69).toSigned(8), (-57).toSigned(8), 75, (-33).toSigned(8), (-8).toSigned(8), 0, 0, 0, 30, 73, 68, 65, 84, 120, (-38).toSigned(8), 99, 96, 96, 96, 96, 12, 101, (-8).toSigned(8), (-51).toSigned(8), (-32).toSigned(8), (-64).toSigned(8), 32, (-64).toSigned(8), (-60).toSigned(8), (-64).toSigned(8), (-64).toSigned(8), (-128).toSigned(8), 11, 51, (-122).toSigned(8), 50, (-4).toSigned(8), 6, 0, 63, 116, 3, 1, 53, (-108).toSigned(8), 39, (-26).toSigned(8), 0, 0, 0, 0, 73, 69, 78, 68, (-82).toSigned(8), 66, 96, (-126).toSigned(8)];
    this.multiOn = <int>[(-119).toSigned(8), 80, 78, 71, 13, 10, 26, 10, 0, 0, 0, 13, 73, 72, 68, 82, 0, 0, 0, 10, 0, 0, 0, 11, 2, 3, 0, 0, 0, 59, 0, (-12).toSigned(8), (-117).toSigned(8), 0, 0, 0, 12, 80, 76, 84, 69, (-1).toSigned(8), (-1).toSigned(8), (-1).toSigned(8), (-69).toSigned(8), (-69).toSigned(8), (-69).toSigned(8), 106, 106, 106, 2, 2, 2, 106, (-103).toSigned(8), 14, (-47).toSigned(8), 0, 0, 0, 53, 73, 68, 65, 84, 120, (-38).toSigned(8), 99, 96, 96, 124, (-64).toSigned(8), (-16).toSigned(8), (-1).toSigned(8), (-77).toSigned(8), 3, (-45).toSigned(8), 65, (-111).toSigned(8), 15, 76, 12, 108, 12, 76, 12, (-4).toSigned(8), 12, 76, 12, 18, 12, 76, (-68).toSigned(8), 127, 24, (-104).toSigned(8), 126, 45, 96, 96, (-7).toSigned(8), (-11).toSigned(8), (-109).toSigned(8), (-127).toSigned(8), (-23).toSigned(8), (-65).toSigned(8), 3, 3, (-29).toSigned(8), 127, (-122).toSigned(8), (-113).toSigned(8), 0, 5, 37, 12, (-34).toSigned(8), 1, (-99).toSigned(8), (-83).toSigned(8), 100, 0, 0, 0, 0, 73, 69, 78, 68, (-82).toSigned(8), 66, 96, (-126).toSigned(8)];
    this.radioOff = <int>[(-119).toSigned(8), 80, 78, 71, 13, 10, 26, 10, 0, 0, 0, 13, 73, 72, 68, 82, 0, 0, 0, 11, 0, 0, 0, 11, 2, 3, 0, 0, 0, (-44).toSigned(8), (-62).toSigned(8), (-97).toSigned(8), (-75).toSigned(8), 0, 0, 0, 9, 80, 76, 84, 69, (-1).toSigned(8), (-1).toSigned(8), (-1).toSigned(8), (-69).toSigned(8), (-69).toSigned(8), (-69).toSigned(8), 106, 106, 106, (-44).toSigned(8), 13, (-1).toSigned(8), (-24).toSigned(8), 0, 0, 0, 42, 73, 68, 65, 84, 120, (-38).toSigned(8), 99, 96, 90, (-59).toSigned(8), (-64).toSigned(8), 32, (-63).toSigned(8), 48, (-127).toSigned(8), 65, (-127).toSigned(8), 65, (-127).toSigned(8), 41, (-127).toSigned(8), (-31).toSigned(8), 5, 19, 3, 3, 3, 50, 102, 80, 96, 80, 96, (-6).toSigned(8), (-63).toSigned(8), 80, (-64).toSigned(8), (-64).toSigned(8), (-76).toSigned(8), (-118).toSigned(8), 1, 0, 113, 24, 5, 61, 73, (-68).toSigned(8), (-100).toSigned(8), 98, 0, 0, 0, 0, 73, 69, 78, 68, (-82).toSigned(8), 66, 96, (-126).toSigned(8)];
    this.radioOn = <int>[(-119).toSigned(8), 80, 78, 71, 13, 10, 26, 10, 0, 0, 0, 13, 73, 72, 68, 82, 0, 0, 0, 11, 0, 0, 0, 11, 2, 3, 0, 0, 0, (-44).toSigned(8), (-62).toSigned(8), (-97).toSigned(8), (-75).toSigned(8), 0, 0, 0, 12, 80, 76, 84, 69, (-1).toSigned(8), (-1).toSigned(8), (-1).toSigned(8), (-69).toSigned(8), (-69).toSigned(8), (-69).toSigned(8), 106, 106, 106, 2, 2, 2, 106, (-103).toSigned(8), 14, (-47).toSigned(8), 0, 0, 0, 50, 73, 68, 65, 84, 120, (-38).toSigned(8), 5, (-63).toSigned(8), 65, 13, 0, 32, 12, 4, (-63).toSigned(8), (-19).toSigned(8), (-11).toSigned(8), (-117).toSigned(8), 1, 18, 68, (-100).toSigned(8), 10, 52, 19, 94, 72, 64, 17, 101, (-122).toSigned(8), 44, (-44).toSigned(8), (-29).toSigned(8), 98, (-52).toSigned(8), 89, 77, (-102).toSigned(8), 40, 2, 85, (-95).toSigned(8), (-73).toSigned(8), (-63).toSigned(8), (-104).toSigned(8), (-63).toSigned(8), 37, (-117).toSigned(8), 15, (-40).toSigned(8), 119, 10, 41, 78, 26, (-79).toSigned(8), 59, 0, 0, 0, 0, 73, 69, 78, 68, (-82).toSigned(8), 66, 96, (-126).toSigned(8)];
    this.midpUtil = MIDPUtil.getInstance();
    this.imgMultiOffO = this.midpUtil.createImageFromByteArray(this.multiOff, 0, this.multiOff.length);
    this.imgMultiOnO = this.midpUtil.createImageFromByteArray(this.multiOn, 0, this.multiOn.length);
    this.imgRadioOffO = this.midpUtil.createImageFromByteArray(this.radioOff, 0, this.radioOff.length);
    this.imgRadioOnO = this.midpUtil.createImageFromByteArray(this.radioOn, 0, this.radioOn.length);
    this.imgMultiOff = this.imgMultiOffO;
    this.imgMultiOn = this.imgMultiOnO;
    this.imgRadioOff = this.imgRadioOffO;
    this.imgRadioOn = this.imgRadioOnO;
    this.imageArray = <Image?>[this.imgMultiOff, this.imgMultiOn, this.imgRadioOff, this.imgRadioOn];
    }

    ChoiceGroupImageFactory() {
        this.initFieldsChoiceGroupImageFactory();
    }
    

    static ChoiceGroupImageFactory getInstance() {
        return ChoiceGroupImageFactory.instance;
    }
    

    JArray<Image?> getImageArray() {
        return this.imageArray;
    }
    

    void init(JArray<Image?> imageArray) {
        this.imgMultiOff = imageArray[0]!;
        this.imageArray[0] = this.imgMultiOff;
        this.imgMultiOn = imageArray[1]!;
        this.imageArray[1] = this.imgMultiOn;
        this.imgRadioOff = imageArray[2]!;
        this.imageArray[2] = this.imgRadioOff;
        this.imgRadioOn = imageArray[3]!;
        this.imageArray[3] = this.imgRadioOn;
    }
}

