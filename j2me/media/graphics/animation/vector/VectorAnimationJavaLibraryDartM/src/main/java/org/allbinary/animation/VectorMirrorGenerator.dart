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
import 'package:allbinary/org/allbinary/graphics/PointFactory.dart';
import 'package:allbinary/org/allbinary/graphics/pipeline/BasicGraphicsPipeline.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListS.dart';
import 'package:allbinary/org/allbinary/animation/VectorAnimationUtil.dart';

class VectorMirrorGenerator {
    static final VectorMirrorGenerator instance = VectorMirrorGenerator();
    late LogUtil logUtil;
    late VectorAnimationUtil vectorAnimationUtil;

    // Java field initializers run after the base constructor
    void initFieldsVectorMirrorGenerator() {
    this.logUtil = LogUtil.getInstance();
    this.vectorAnimationUtil = VectorAnimationUtil.getInstance();
    }
    

    static VectorMirrorGenerator getInstance() {
        return VectorMirrorGenerator.instance;
    }
    

    VectorMirrorGenerator() {
        this.initFieldsVectorMirrorGenerator();
    }
    

    dynamic getInstance2(dynamic p0, dynamic p1) {
        if (!identical(p1, jnone) && jIsList(p0) && p1 is int) {
            return this.getInstance2$2$L_I(p0, p1);
        }
        if (!identical(p1, jnone) && p0 is BasicArrayList && p1 is int) {
            return this.getInstance2$2$BasicArrayList_I(p0, p1);
        }
        throw JException('NoSuchMethodError', 'getInstance');
    }

    List<List<List<int>?>?> getInstance2$2$L_I(List<List<List<int>?>?> points, int width) {
        try {
            final PointFactory pointFactory = PointFactory.getInstance();
            late BasicArrayList pointBasicArrayList;
            late List<List<int>?> nextPoints;
            int size2 = 0;
            final int size = points.length;
            final BasicArrayList pointsBasicArrayList = BasicArrayListS(size);
            for (int frame = 0; frame < size; frame++) {
                nextPoints = points[frame]!;
                size2 = nextPoints.length;
                pointBasicArrayList = BasicArrayListS(size2);
                for (int index = 0; index < size2; index++) {
                    pointBasicArrayList.add(pointFactory.createXY(nextPoints[index]![0], nextPoints[index]![1]));
                }
                pointsBasicArrayList.add(pointBasicArrayList);
            }
            for (int index = 0; index < points.length; index++) {
                pointsBasicArrayList.add(this.getInstance2((pointsBasicArrayList.objectArray[index]! as BasicArrayList), width));
            }
            List<List<List<int>?>?> newPoints = this.vectorAnimationUtil.toAnimationArrayFromListOfPointList(pointsBasicArrayList);
            return newPoints;
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            final CommonStrings commonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.GET_INSTANCE, e);
            return NullUtil.getInstance().NULL_INT_ARRAY_ARRAY_ARRAY;
            }
        }
    }
    

    BasicArrayList getInstance2$2$BasicArrayList_I(BasicArrayList pointBasicArrayList, int width) {
        BasicGraphicsPipeline graphicsPipe = BasicGraphicsPipeline(pointBasicArrayList);
        graphicsPipe.createMatrix();
        graphicsPipe.mirror(width);
        return graphicsPipe.getMatrix();
    }
}

