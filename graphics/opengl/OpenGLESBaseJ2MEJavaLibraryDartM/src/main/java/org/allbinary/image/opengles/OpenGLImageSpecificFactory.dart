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
// package org.allbinary.image.opengles

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/PreLogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/image/opengles/OpenGLImageFactory.dart';

class OpenGLImageSpecificFactory {
    static final OpenGLImageSpecificFactory instance = OpenGLImageSpecificFactory();
    late OpenGLImageFactory imageFactory;
    bool updating = false;

    // Java field initializers run after the base constructor
    void initFieldsOpenGLImageSpecificFactory() {
    this.imageFactory = OpenGLImageFactory.NULL_OPENGL_IMAGE_FACTORY;
    this.updating = false;
    }

    OpenGLImageSpecificFactory() {
        this.initFieldsOpenGLImageSpecificFactory();
    }
    

    static OpenGLImageSpecificFactory getInstance() {
        return OpenGLImageSpecificFactory.instance;
    }
    

    void setImageFactory(OpenGLImageFactory imageFactory) {
        this.imageFactory = imageFactory;
        PreLogUtil.put(StringMaker().append("Selected Image Factory: ").append(StringUtil.getInstance().toString1(this.imageFactory)).toString(), this, "setImageFactory");
    }
    

    OpenGLImageFactory getImageFactory() {
        return this.imageFactory;
    }
}

