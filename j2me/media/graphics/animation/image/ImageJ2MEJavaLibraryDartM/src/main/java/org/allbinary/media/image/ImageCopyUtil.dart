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
// package org.allbinary.media.image

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/javax/microedition/lcdui/Image.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/Features.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/GameFeatureFactory.dart';
import 'package:allbinary/org/allbinary/graphics/Anchor.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/media/image/ImageCreationUtil.dart';

class ImageCopyUtil {
    static final ImageCopyUtil instance = ImageCopyUtil();
    late LogUtil logUtil;
    late CommonStrings commonStrings;
    late ImageCreationUtil imageCreationUtil;
    int anchor = 0;
    late GameFeatureFactory gameFeatureFactory;
    late Features features;
    late String NO_COPY;

    // Java field initializers run after the base constructor
    void initFieldsImageCopyUtil() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.imageCreationUtil = ImageCreationUtil.getInstance();
    this.anchor = Anchor.TOP_LEFT;
    this.gameFeatureFactory = GameFeatureFactory.getInstance();
    this.features = Features.getInstance();
    this.NO_COPY = "J2ME does not need to copy images after initial loading";
    }
    

    static ImageCopyUtil getInstance() {
        return ImageCopyUtil.instance;
    }
    

    ImageCopyUtil() {
        this.initFieldsImageCopyUtil();
    }
    

    Image createImageForRotation(Image originalImage) {
        return this.createImage(originalImage);
    }
    

    Image createImage(Image originalImage) {
        if (!this.features.isFeature(this.gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION)) {
            this.logUtil.put(this.NO_COPY, this, this.commonStrings.CONSTRUCTOR, JException('Exception', ''));
            return originalImage;
        }
        final Image image = this.imageCreationUtil.createImageWH(originalImage.getWidth(), originalImage.getHeight());
        if (image.isMutable()) {
            image.getGraphics().drawImage(originalImage, 0, 0, this.anchor);
            return image;
        } else {
            throw JException('Exception', "Not Mutable");
        }
    }
    

    Image createImageScale(Image originalImage, double canvasScale, bool resize) {
        if (!this.features.isFeature(this.gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION)) {
            this.logUtil.put(this.NO_COPY, this, this.commonStrings.CONSTRUCTOR, JException('Exception', ''));
            return originalImage;
        }
        int newWidth = JMath.toInt32(((originalImage.getWidth()).toDouble() * canvasScale));
        int newHeight = JMath.toInt32(((originalImage.getHeight()).toDouble() * canvasScale));
        if (resize) {
            if (newWidth < newHeight) {
                newWidth = newHeight;
            }
            if (newHeight < newWidth) {
                newHeight = newWidth;
            }
        }
        final Image image = this.imageCreationUtil.createImageWH(newWidth, newHeight);
        if (image.isMutable()) {
            final int halfWidthDelta = (newWidth - originalImage.getWidth()) ~/ 2;
            final int halfHeightDelta = (newHeight - originalImage.getHeight()) ~/ 2;
            final Graphics graphics = image.getGraphics();
            graphics.drawImage(originalImage, halfWidthDelta, halfHeightDelta, this.anchor);
            return image;
        } else {
            throw JException('Exception', "Not Mutable");
        }
    }
}

