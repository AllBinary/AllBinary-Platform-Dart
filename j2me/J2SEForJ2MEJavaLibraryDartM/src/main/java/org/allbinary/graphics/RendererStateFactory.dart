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
// package org.allbinary.graphics

import 'package:allbinary/allbinary_java.dart';

class RendererStateFactory {
    static final RendererStateFactory instance = RendererStateFactory();
    bool loaded = false;
    bool surfaceChanged = false;

    // Java field initializers run after the base constructor
    void initFieldsRendererStateFactory() {
    this.loaded = false;
    this.surfaceChanged = false;
    }

    RendererStateFactory() {
        this.initFieldsRendererStateFactory();
    }
    

    static RendererStateFactory getInstance() {
        return RendererStateFactory.instance;
    }
    

    void setLoaded(bool loaded) {
        this.loaded = loaded;
    }
    

    bool isLoaded() {
        return this.loaded;
    }
    

    void setSurfaceChanged(bool initialized) {
        this.surfaceChanged = initialized;
    }
    

    bool isSurfaceChanged() {
        return this.surfaceChanged;
    }
}

