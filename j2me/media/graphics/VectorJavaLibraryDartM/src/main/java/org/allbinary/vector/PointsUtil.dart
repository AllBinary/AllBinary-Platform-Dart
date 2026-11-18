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

class PointsUtil {
    static final PointsUtil instance = PointsUtil();
    

    static PointsUtil getInstance() {
        return PointsUtil.instance;
    }
    

    List<List<List<int>?>?> adjustXY(List<List<List<int>?>?> points, int x, int y) {
        final int size = points.length;
        final List<List<List<int>?>?> newPoints = List<List<List<int>>>.generate(size, (_) => List<List<int>>.generate(0, (_) => List<int>.filled(0, 0)));
        for (int index = 0; index < size; index++) {
            final int size2 = points[index]!.length;
            newPoints[index] = List<List<int>>.generate(size2, (_) => List<int>.filled(2, 0));
            for (int index2 = 0; index2 < size2; index2++) {
                if (points[index]![index2]![0] != 1000) {
                    newPoints[index]![index2]![0] = points[index]![index2]![0] + x;
                    newPoints[index]![index2]![1] = points[index]![index2]![1] + y;
                } else {
                    newPoints[index]![index2]![0] = 1000;
                    newPoints[index]![index2]![1] = 1000;
                }
            }
        }
        return newPoints;
    }
    

    List<List<int>?> adjust([dynamic p0 = jnone, dynamic p1 = jnone, dynamic p2 = jnone]) {
        if (!identical(p1, jnone) && identical(p2, jnone) && jIsList(p0) && p1 is int) {
            return this.adjust$2(p0, p1);
        }
        if (!identical(p2, jnone) && jIsList(p0) && p1 is int && p2 is int) {
            return this.adjust$3(p0, p1, p2);
        }
        throw JException('NoSuchMethodError', 'adjust');
    }

    List<List<int>?> adjust$2(List<List<int>?> points, int both) {
        return this.adjust(points, both, both);
    }
    

    List<List<int>?> adjust$3(List<List<int>?> points, int x, int y) {
        List<List<int>?> newPoints = List<List<int>>.generate(points.length, (_) => List<int>.filled(2, 0));
        for (int index2 = 0; index2 < points.length; index2++) {
            if (points[index2]![0] != 1000) {
                newPoints[index2]![0] = points[index2]![0] + x;
                newPoints[index2]![1] = points[index2]![1] + y;
            } else {
                newPoints[index2]![0] = 1000;
                newPoints[index2]![1] = 1000;
            }
        }
        return newPoints;
    }
}

