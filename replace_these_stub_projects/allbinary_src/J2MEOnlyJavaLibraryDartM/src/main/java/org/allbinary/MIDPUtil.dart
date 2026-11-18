/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2026 AllBinary
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
// package org.allbinary

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/java/io/InputStream.dart';
import 'package:allbinary/javax/microedition/lcdui/Form.dart';
import 'package:allbinary/javax/microedition/lcdui/Image.dart';
import 'package:allbinary/javax/microedition/lcdui/Item.dart';
import 'package:allbinary/javax/microedition/media/Manager.dart';
import 'package:allbinary/javax/microedition/media/MediaException.dart';
import 'package:allbinary/javax/microedition/media/Player.dart';

//like microemu-playn, so the languages without overloading can be generated. J2ME uses the MIDP overloads.
class MIDPUtil {
    static final MIDPUtil instance = MIDPUtil();
    

    static MIDPUtil getInstance() {
        return MIDPUtil.instance;
    }
    

    Image createImageWH(int width, int height) {
        return Image.createImageWH(width, height);
    }
    

    Image createImageFromByteArray(List<int> imageData, int imageOffset, int imageLength) {
        return Image.createImageFromByteArray(imageData, imageOffset, imageLength);
    }
    

    Image createImageFromInputStream(InputStream inputStream) {
        return Image.createImageFromInputStream(inputStream);
    }
    

    Player createPlayerFromInputStream(InputStream inputStream, String type) {
        return Manager.createPlayerFromInputStream(inputStream, type);
    }
    

    int appendItem(Form form, Item item) {
        return form.appendItem(item);
    }
}

