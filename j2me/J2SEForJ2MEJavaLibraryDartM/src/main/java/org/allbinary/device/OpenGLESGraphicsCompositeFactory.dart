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
// package org.allbinary.device

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/device/OpenGLESGraphicsFactory.dart';

class OpenGLESGraphicsCompositeFactory {
    static final OpenGLESGraphicsCompositeFactory instance = OpenGLESGraphicsCompositeFactory();
    late OpenGLESGraphicsFactory openGLESGraphicsFactory;

    // Java field initializers run after the base constructor
    void initFieldsOpenGLESGraphicsCompositeFactory() {
    this.openGLESGraphicsFactory = OpenGLESGraphicsFactory();
    }

    OpenGLESGraphicsCompositeFactory() {
        this.initFieldsOpenGLESGraphicsCompositeFactory();
    }
    

    static OpenGLESGraphicsCompositeFactory getInstance() {
        return OpenGLESGraphicsCompositeFactory.instance;
    }
    

    void set(OpenGLESGraphicsFactory openGLESGraphicsFactory) {
        this.openGLESGraphicsFactory = openGLESGraphicsFactory;
    }
    

    OpenGLESGraphicsFactory get() {
        return this.openGLESGraphicsFactory;
    }
}

