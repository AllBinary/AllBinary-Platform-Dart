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
// package org.allbinary.vector

import 'package:allbinary/allbinary_java.dart';

class VectorInfo {
    int width = 0;
    int height = 0;
    late List<List<int>?> points;
    int totalFrames = 0;

    // Java field initializers run after the base constructor
    void initFieldsVectorInfo() {
    
    
    
    
    }
    

    VectorInfo(int width, int height, List<List<int>?> points, int totalFrames) {
        this.initFieldsVectorInfo();
        this.width = width;
        this.height = height;
        this.points = points;
        this.totalFrames = totalFrames;
    }
    

    int getWidth() {
        return this.width;
    }
    

    void setWidth(int width) {
        this.width = width;
    }
    

    int getHeight() {
        return this.height;
    }
    

    void setHeight(int height) {
        this.height = height;
    }
    

    List<List<int>?> getPoints() {
        return this.points;
    }
    

    void setPoints(List<List<int>?> points) {
        this.points = points;
    }
    

    int getTotalFrames() {
        return this.totalFrames;
    }
    

    void setTotalFrames(int totalFrames) {
        this.totalFrames = totalFrames;
    }
}

