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
import 'package:allbinary/org/allbinary/J2MEUtil.dart';
import 'package:allbinary/org/allbinary/TsUtil.dart';
import 'package:allbinary/org/allbinary/data/resource/ResourceUtil.dart';
import 'package:allbinary/org/allbinary/game/gd/resource/GDResources.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/system/Memory.dart';
import 'package:allbinary/org/allbinary/image/ImageCacheBase.dart';

class ImageCache extends ImageCacheBase {
    static final ImageCache NULL_IMAGE_CACHE = ImageCache();
    late CommonStrings commonStrings;
    late TsUtil tsUtil;

    // Java field initializers run after the base constructor
    void initFieldsImageCache() {
    this.commonStrings = CommonStrings.getInstance();
    this.tsUtil = TsUtil.getInstance();
    }
    

    ImageCache() {
        this.initFieldsImageCache();
    }
    

    void addListener(Object renderer) {
    }
    

    int getIndex(Object key) {
        final GDResources gdResources = GDResources.getInstance();
        final List<String?> resourceStringArray = gdResources.resourceStringArray;
        final int size = resourceStringArray.length;
        for (int index = 0; index < size; index++) {
            if (identical(resourceStringArray[index]!, key)) {
                return index;
            }
        }
        this.logUtil.putF(StringMaker().append("unable to find key: ").append(StringUtil.getInstance().toString1(key)).toString(), this, this.commonStrings.RUN);
        throw JException('RuntimeException', '');
    }
    

    @override
    Image get(String caller, int width, int height) {
        int foundIndex = this.getIndexWH(width, height);
        Image image = this.getFromAvailable(foundIndex, width, height);
        if (image == NullImage.NULL_IMAGE) {
            this.volume += width * height;
            if (this.volume > 32000) {
                this.tsUtil.gc();
                this.volume = 0;
            }
            image = this.createImage(caller, width, height);
            final List<int> widths = this.widths;
            if (this.nextIndex > widths.length - 1) {
                if (foundIndex == -1) {
                    foundIndex = this.nextIndex;
                    widths[this.nextIndex] = width;
                    this.heights[this.nextIndex] = height;
                    this.nextIndex++;
                }
                this.listOfList[foundIndex]!.add(image);
            }
        }
        return image;
    }
    

    @override
    Image getWithKey(Object key) {
        Image image = this.getImage(key);
        if (image == NullImage.NULL_IMAGE) {
            final ResourceUtil resourceUtil = ResourceUtil.getInstance();
            final InputStream resourceInputStream = resourceUtil.getResourceAsStream((key as String));
            if (resourceInputStream == null) {
                throw JException('RuntimeException', StringMaker().append("Image resource is not available for key: ").append(StringUtil.getInstance().toString1(key)).toString());
            }
            try {
                image = this.createImageFromInputStream(key, resourceInputStream);
            } catch (jcaught) {
                {
                    final dynamic e = jcaught;
                this.logUtil.put("Exception: Trying Again After GC", this, this.commonStrings.GET, e);
                this.logUtil.putF(StringMaker().append("InputStream: ").append(StringUtil.getInstance().toString1(resourceInputStream)).toString(), this, this.commonStrings.GET);
                this.tsUtil.gc();
                this.tsUtil.gc();
                this.logUtil.putF(Memory.getInfo(), this, this.commonStrings.GET);
                Thread.sleep(100);
                image = this.createImageFromInputStream(key, resourceInputStream);
                }
            }
            if (J2MEUtil.isHTML()) {
            } else {
                resourceInputStream.close();
            }
            this.hashtable.put(key, image);
        }
        return image;
    }
    

    void loadImageForAnimation() {
    }
    

    void progressEnded() {
    }
    

    void runTask() {
    }
    

    bool isLazy() {
        return false;
    }
}

