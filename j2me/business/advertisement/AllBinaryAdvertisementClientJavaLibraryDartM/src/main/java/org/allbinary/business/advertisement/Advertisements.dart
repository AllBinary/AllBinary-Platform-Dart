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
// package org.allbinary.business.advertisement

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/rand/MyRandomFactory.dart';
import 'package:allbinary/org/allbinary/logic/system/security/licensing/LockedUtil.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/business/advertisement/AdvertisementProcessorInterface.dart';

class Advertisements {
    late BasicArrayList bannerList;
    late BasicArrayList pageList;
    late MyRandomFactory myRandomFactory;

    // Java field initializers run after the base constructor
    void initFieldsAdvertisements() {
    this.bannerList = BasicArrayListD();
    this.pageList = BasicArrayListD();
    this.myRandomFactory = MyRandomFactory.getInstance();
    }

    Advertisements() {
        this.initFieldsAdvertisements();
    }
    

    void addPage(AdvertisementProcessorInterface advertisementProcessorInterface) {
        if (!this.pageList.contains(advertisementProcessorInterface)) {
            this.pageList.add(advertisementProcessorInterface);
        }
    }
    

    void startRandomPage() {
        int size = this.pageList.size();
        if (size > 0) {
            int random = this.myRandomFactory.getAbsoluteNextInt(size);
            AdvertisementProcessorInterface advertisementProcessorInterface = (this.pageList.objectArray[random]! as AdvertisementProcessorInterface);
            advertisementProcessorInterface.start();
        }
    }
    

    void processRandomPage() {
        if (LockedUtil.getInstance().isLocked()) {
            int size = this.pageList.size();
            if (size > 0) {
                int random = this.myRandomFactory.getAbsoluteNextInt(size);
                AdvertisementProcessorInterface advertisementProcessorInterface = (this.pageList.objectArray[random]! as AdvertisementProcessorInterface);
                advertisementProcessorInterface.process();
            }
        }
    }
    

    void stopAllPage() {
        for (int index = this.pageList.size(); --index >= 0; ) {
            AdvertisementProcessorInterface advertisementProcessorInterface = (this.pageList.objectArray[index]! as AdvertisementProcessorInterface);
            advertisementProcessorInterface.stop();
        }
    }
    

    void addBanner(AdvertisementProcessorInterface advertisementProcessorInterface) {
        if (!this.bannerList.contains(advertisementProcessorInterface)) {
            this.bannerList.add(advertisementProcessorInterface);
        }
    }
    

    void startAll() {
        for (int index = this.bannerList.size(); --index >= 0; ) {
            AdvertisementProcessorInterface advertisementProcessorInterface = (this.bannerList.objectArray[index]! as AdvertisementProcessorInterface);
            advertisementProcessorInterface.start();
        }
    }
    

    void stopAllBanner() {
        for (int index = this.bannerList.size(); --index >= 0; ) {
            AdvertisementProcessorInterface advertisementProcessorInterface = (this.bannerList.objectArray[index]! as AdvertisementProcessorInterface);
            advertisementProcessorInterface.stop();
        }
    }
    

    AdvertisementProcessorInterface getBanner(int index) {
        AdvertisementProcessorInterface advertisementProcessorInterface = (this.bannerList.objectArray[index]! as AdvertisementProcessorInterface);
        return advertisementProcessorInterface;
    }
    

    void stopAll() {
        this.stopAllBanner();
        this.stopAllPage();
    }
}

