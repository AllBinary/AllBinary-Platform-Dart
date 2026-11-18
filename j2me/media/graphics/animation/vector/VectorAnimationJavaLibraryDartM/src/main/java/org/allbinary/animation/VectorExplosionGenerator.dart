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
import 'package:allbinary/org/allbinary/graphics/PointFactory.dart';
import 'package:allbinary/org/allbinary/graphics/pipeline/RandomRotationFactory.dart';
import 'package:allbinary/org/allbinary/graphics/pipeline/RandomTranslation.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListS.dart';
import 'package:allbinary/org/allbinary/animation/VectorExplosionType.dart';
import 'package:allbinary/org/allbinary/animation/VectorAnimationUtil.dart';

class VectorExplosionGenerator {
    static final VectorExplosionGenerator instance = VectorExplosionGenerator();
    late VectorExplosionType RANDOM;
    late VectorExplosionType ROTATION;
    late VectorAnimationUtil vectorAnimationUtil;
    late RandomRotationFactory randomRotationFactory;

    // Java field initializers run after the base constructor
    void initFieldsVectorExplosionGenerator() {
    this.RANDOM = VectorExplosionType();
    this.ROTATION = VectorExplosionType();
    this.vectorAnimationUtil = VectorAnimationUtil.getInstance();
    this.randomRotationFactory = RandomRotationFactory.getInstance();
    }
    

    static VectorExplosionGenerator getInstance() {
        return VectorExplosionGenerator.instance;
    }
    

    VectorExplosionGenerator() {
        this.initFieldsVectorExplosionGenerator();
    }
    

    BasicArrayList createList(BasicArrayList list, int howMuch, VectorExplosionType type) {
        late GPoint point;
        final int size = list.size();
        final List<List<int>?> points = List<List<int>>.generate(size, (_) => List<int>.filled(2, 0));
        for (int index = 0; index < size; index++) {
            point = (list.objectArray[index]! as GPoint);
            points[index]![0] = point.getX();
            points[index]![1] = point.getY();
        }
        return this.createListFromPoints(list, points, howMuch, type);
    }
    

    List<List<List<int>?>?> getInstance3(List<List<int>?> points, int howMuch, VectorExplosionType type) {
        final BasicArrayList pointsBasicArrayList = this.getInstanceStartFrame(points, howMuch, type, true);
        final BasicArrayList tempBasicArrayList = (pointsBasicArrayList.objectArray[0]! as BasicArrayList);
        final List<List<List<int>?>?> newPoints = this.vectorAnimationUtil.toAnimationArrayFromListOfPointListWithPointsPerFrame(pointsBasicArrayList, tempBasicArrayList.size());
        return newPoints;
    }
    

    BasicArrayList getInstanceStartFrame(List<List<int>?> points, int howMuch, VectorExplosionType type, bool startFrame) {
        try {
            final BasicArrayList pointsBasicArrayList = BasicArrayListS(howMuch);
            pointsBasicArrayList.add(this.createPointsBasicArrayList(points));
            int frameIndex = 0;
            late BasicArrayList tempBasicArrayList;
            late BasicArrayList pointBasicArrayList;
            while (frameIndex < howMuch) {
                tempBasicArrayList = (pointsBasicArrayList.objectArray[frameIndex]! as BasicArrayList);
                pointBasicArrayList = this.createListFromPoints(tempBasicArrayList, points, howMuch, type);
                pointsBasicArrayList.add(pointBasicArrayList);
                frameIndex++;
            }
            if (!startFrame) {
                pointsBasicArrayList.removeAt(0);
            }
            return pointsBasicArrayList;
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            throw e;
            }
        }
    }
    

    BasicArrayList createListFromPoints(BasicArrayList tempBasicArrayList, List<List<int>?> points, int howMuch, VectorExplosionType type) {
        int index = 0;
        final BasicArrayList pointBasicArrayList = BasicArrayListD();
        late BasicArrayList sectionBasicArrayList;
        while (index < points.length) {
            sectionBasicArrayList = BasicArrayListD();
            while (points[index]![0] != 1000) {
                sectionBasicArrayList.add(tempBasicArrayList.objectArray[index]!);
                index++;
                if (index >= points.length) {
                    break;
                }
            }
            sectionBasicArrayList = RandomTranslation.getInstance2(sectionBasicArrayList, howMuch);
            if (identical(type, this.ROTATION)) {
                sectionBasicArrayList = this.randomRotationFactory.getInstanceList(sectionBasicArrayList, howMuch);
            }
            int size = sectionBasicArrayList.size();
            for (int index2 = 0; index2 < size; index2++) {
                pointBasicArrayList.add(sectionBasicArrayList.objectArray[index2]!);
            }
            if (index >= points.length) {
                break;
            } else if (points[index]![0] == 1000) {
                pointBasicArrayList.add(tempBasicArrayList.objectArray[index]!);
                index++;
            }
        }
        return pointBasicArrayList;
    }
    

    BasicArrayList createPointsBasicArrayList(List<List<int>?> points) {
        if (points.length == 0) {
            throw JException('Exception', "Not Points Provided");
        }
        final BasicArrayList firstPointBasicArrayList = BasicArrayListS(points.length);
        final PointFactory pointFactory = PointFactory.getInstance();
        for (int index = 0; index < points.length; index++) {
            firstPointBasicArrayList.add(pointFactory.createXY(points[index]![0], points[index]![1]));
        }
        return firstPointBasicArrayList;
    }
}

