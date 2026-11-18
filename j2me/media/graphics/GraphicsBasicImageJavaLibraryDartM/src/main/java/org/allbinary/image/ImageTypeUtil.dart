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
// package org.allbinary.image

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';

class ImageTypeUtil {
    static ImageTypeUtil SINGLETON = ImageTypeUtil();
    late String PNG;
    late String JPG;
    late String GIF;
    late BasicArrayList list;

    // Java field initializers run after the base constructor
    void initFieldsImageTypeUtil() {
    this.PNG = "png";
    this.JPG = "jpg";
    this.GIF = "gif";
    this.list = BasicArrayListD();
    }
    

    ImageTypeUtil() {
        this.initFieldsImageTypeUtil();
        this.list.add(this.JPG);
        this.list.add(this.GIF);
        this.list.add(this.PNG);
    }
    

    bool isSupported(String mediaFileType) {
        mediaFileType = mediaFileType.toLowerCase();
        for (int index = this.list.size() - 1; index >= 0; index--) {
            String name = (this.list.get(index) as String);
            if (mediaFileType.compareTo(name) == 0) {
                return true;
            }
        }
        return false;
    }
    

    static ImageTypeUtil getInstance() {
        return ImageTypeUtil.SINGLETON;
    }
}

