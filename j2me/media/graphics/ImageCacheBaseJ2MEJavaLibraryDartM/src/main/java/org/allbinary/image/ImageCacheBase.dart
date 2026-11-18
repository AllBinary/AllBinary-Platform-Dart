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
import 'package:allbinary/java/io/InputStream.dart';
import 'package:allbinary/javax/microedition/lcdui/Image.dart';
import 'package:allbinary/javax/microedition/lcdui/NullImage.dart';
import 'package:allbinary/org/allbinary/logic/StdUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/string/CommonLabels.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';
import 'package:allbinary/org/allbinary/util/ABHashtable.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/image/ImageFactory.dart';

class ImageCacheBase {
    late LogUtil logUtil;
    late ImageFactory imageFactory;
    late ABHashtable hashtable;
    int SIZE = 0;
    late List<int> widths;
    late List<int> heights;
    late List<BasicArrayList?> listOfList;
    late List<BasicArrayList?> availableListOfList;
    int volume = 0;
    int nextIndex = 0;

    // Java field initializers run after the base constructor
    void initFieldsImageCacheBase() {
    this.logUtil = LogUtil.getInstance();
    this.imageFactory = ImageFactory.getInstance();
    this.hashtable = StdUtil.getInstance().createHashtable();
    this.SIZE = 128;
    this.widths = List<int>.filled(this.SIZE, 0);
    this.heights = List<int>.filled(this.SIZE, 0);
    this.listOfList = List<BasicArrayList?>.filled(this.SIZE, null);
    this.availableListOfList = List<BasicArrayList?>.filled(this.SIZE, null);
    this.volume = 0;
    this.nextIndex = 0;
    }
    

    ImageCacheBase() {
        this.initFieldsImageCacheBase();
        for (int index = this.listOfList.length - 1; index >= 0; index--) {
            this.listOfList[index] = BasicArrayListD();
        }
        for (int index = this.availableListOfList.length - 1; index >= 0; index--) {
            this.availableListOfList[index] = BasicArrayListD();
        }
    }
    

    Image getImage(Object resourceId) {
        final Object imageCanBeNull = this.hashtable.get(resourceId);
        if (imageCanBeNull == null) {
            return NullImage.NULL_IMAGE;
        }
        return (imageCanBeNull as Image);
    }
    

    void releaseAll() {
        for (int index = this.listOfList.length - 1; index >= 0; index--) {
            this.availableListOfList[index]!.clear();
            this.availableListOfList[index]!.addAllList(this.listOfList[index]!);
        }
        this.logUtil.putF(StringMaker().append("ImageCache: ").append(this.toString()).toString(), this, "releaseAll");
    }
    

    int getIndexWH(int width, int height) {
        int foundIndex = -1;
        int size = this.widths.length;
        for (int index = 0; index < size; index++) {
            if (this.widths[index] == width && this.heights[index] == height) {
                foundIndex = index;
                return foundIndex;
            }
        }
        return foundIndex;
    }
    

    Image getFromAvailable(int foundIndex, int width, int height) {
        if (foundIndex != -1) {
            if (this.availableListOfList[foundIndex]!.size() > 0) {
                BasicArrayList list = this.availableListOfList[foundIndex]!;
                return (list.removeAt(list.size() - 1) as Image);
            }
        }
        return NullImage.NULL_IMAGE;
    }
    

    Image get(String caller, int width, int height) {
        throw JException('RuntimeException', '');
    }
    

    Image getWithKey(Object key) {
        throw JException('RuntimeException', '');
    }
    

    Image createImage(String caller, int width, int height) {
        return this.imageFactory.createImage(caller, width, height);
    }
    

    Image createImageFromInputStream(Object key, InputStream inputStream) {
        return this.imageFactory.createImageFromInputStream(key, inputStream);
    }
    

    @override
    String toString() {
        final StringMaker stringBuffer = StringMaker();
        for (int index = this.nextIndex - 1; index >= 0; index--) {
            final int width = this.widths[index];
            final int height = this.heights[index];
            final int total = this.listOfList[index]!.size();
            final int totalAvailable = this.availableListOfList[index]!.size();
            stringBuffer.append(" w: ");
            stringBuffer.appendint(width);
            stringBuffer.append(" h: ");
            stringBuffer.appendint(height);
            stringBuffer.append(CommonSeps.getInstance().SPACE);
            stringBuffer.append(CommonLabels.getInstance().TOTAL_LABEL);
            stringBuffer.appendint(total);
            stringBuffer.append(" available: ");
            stringBuffer.appendint(totalAvailable);
        }
        return stringBuffer.toString();
    }
    

    ABHashtable getHashtableP() {
        return this.hashtable;
    }
    

    void init(Image image) {
    }
    

    void initProgress() {
    }
}

