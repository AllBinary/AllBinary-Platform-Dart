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
// package org.allbinary.game.displayable.canvas

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Canvas.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/javax/microedition/lcdui/Image.dart';
import 'package:allbinary/javax/microedition/lcdui/NullCanvas.dart';
import 'package:allbinary/javax/microedition/lcdui/NullImage.dart';
import 'package:allbinary/org/allbinary/graphics/Anchor.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/MyCanvas.dart';
import 'package:allbinary/org/allbinary/graphics/paint/ProcessPaintable.dart';
import 'package:allbinary/org/allbinary/util/CircularIndexUtil.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.dart';

class BufferedGameCanvasPaintHelper extends ProcessPaintable {
    static const int MAX_IMAGES = 4;
    late Canvas gameCanvas;
    late List<Image?> offScreenImage;
    late Image previousImage;
    late CircularIndexUtil circularIndexUtil;
    late CircularIndexUtil drawCircularIndexUtil;
    int anchor = 0;

    // Java field initializers run after the base constructor
    void initFieldsBufferedGameCanvasPaintHelper() {
    this.gameCanvas = NullCanvas.NULL_CANVAS;
    this.offScreenImage = List<Image?>.filled(BufferedGameCanvasPaintHelper.MAX_IMAGES, null);
    this.previousImage = NullImage.NULL_IMAGE;
    this.circularIndexUtil = CircularIndexUtil.createInstance(BufferedGameCanvasPaintHelper.MAX_IMAGES);
    this.drawCircularIndexUtil = CircularIndexUtil.createInstanceAt(BufferedGameCanvasPaintHelper.MAX_IMAGES - 1, BufferedGameCanvasPaintHelper.MAX_IMAGES);
    this.anchor = Anchor.TOP_LEFT;
    }
    

    BufferedGameCanvasPaintHelper(AllBinaryGameCanvas gameCanvas) {
        this.initFieldsBufferedGameCanvasPaintHelper();
        throw JException('Exception', "No Longer Used");
    }
    

    @override
    void process() {
        final MyCanvas myCanvas = ((this.gameCanvas as MyCanvas));
        myCanvas.draw(this.offScreenImage[this.circularIndexUtil.getIndex()]!.getGraphics());
        this.circularIndexUtil.next();
        this.drawCircularIndexUtil.next();
    }
    

    @override
    void paint(Graphics graphics) {
        this.previousImage = this.offScreenImage[this.drawCircularIndexUtil.getIndex()]!;
        graphics.drawImage(this.previousImage, 0, 0, this.anchor);
    }
}

