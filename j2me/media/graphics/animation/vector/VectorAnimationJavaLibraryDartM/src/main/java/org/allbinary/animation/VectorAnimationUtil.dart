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
// package org.allbinary.animation

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/graphics/GPoint.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';

class VectorAnimationUtil {
    static final VectorAnimationUtil instance = VectorAnimationUtil();
    

    static VectorAnimationUtil getInstance() {
        return VectorAnimationUtil.instance;
    }
    

    VectorAnimationUtil() {
    }
    

    List<List<List<int>?>?> toAnimationArrayFromListOfPointListWithPointsPerFrame(BasicArrayList vector, int pointsPerFrame) {
        final int size = vector.size();
        final List<List<List<int>?>?> points = List<List<List<int>>>.generate(size, (_) => List<List<int>>.generate(pointsPerFrame, (_) => List<int>.filled(2, 0)));
        late BasicArrayList nextBasicArrayList;
        late List<List<int>?> framePoints;
        for (int index = 0; index < size; index++) {
            nextBasicArrayList = (vector.objectArray[index]! as BasicArrayList);
            framePoints = this.toFrameArrayFromPointBasicArrayList(nextBasicArrayList);
            for (int pointIndex = 0; pointIndex < framePoints.length; pointIndex++) {
                points[index]![pointIndex]![0] = framePoints[pointIndex]![0];
                points[index]![pointIndex]![1] = framePoints[pointIndex]![1];
            }
        }
        return points;
    }
    

    List<List<List<int>?>?> toAnimationArrayFromListOfPointList(BasicArrayList vector) {
        final int size = vector.size();
        final List<List<List<int>?>?> points = List<List<List<int>>>.generate(size, (_) => List<List<int>>.generate(0, (_) => List<int>.filled(0, 0)));
        late BasicArrayList nextBasicArrayList;
        late List<List<int>?> framePoints;
        for (int index = 0; index < size; index++) {
            nextBasicArrayList = (vector.objectArray[index]! as BasicArrayList);
            framePoints = this.toFrameArrayFromPointBasicArrayList(nextBasicArrayList);
            points[index] = List<List<int>>.generate(framePoints.length, (_) => List<int>.filled(2, 0));
            for (int pointIndex = 0; pointIndex < framePoints.length; pointIndex++) {
                points[index]![pointIndex]![0] = framePoints[pointIndex]![0];
                points[index]![pointIndex]![1] = framePoints[pointIndex]![1];
            }
        }
        return points;
    }
    

    List<List<int>?> toFrameArrayFromPointBasicArrayList(BasicArrayList list) {
        List<List<int>?> points = List<List<int>>.generate(list.size(), (_) => List<int>.filled(2, 0));
        int size = list.size();
        for (int index = 0; index < size; index++) {
            GPoint nextPoint = (list.objectArray[index]! as GPoint);
            points[index]![0] = nextPoint.getX();
            points[index]![1] = nextPoint.getY();
        }
        return points;
    }
}

