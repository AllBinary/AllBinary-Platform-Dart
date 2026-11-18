/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
import 'package:allbinary/org/allbinary/game/GameType.dart';
import 'package:allbinary/org/allbinary/game/state/GameState.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/ForcedLogUtil.dart';
import 'package:allbinary/org/allbinary/logic/util/event/AllBinaryEventObject.dart';
import 'package:allbinary/org/allbinary/logic/util/event/EventStrings.dart';
import 'package:allbinary/org/allbinary/business/advertisement/AdConfiguration.dart';
import 'package:allbinary/org/allbinary/business/advertisement/Advertisements.dart';

class GameAdStateBase {
    late AdConfiguration adConfigurationP;
    late Advertisements advertisementsP;
    bool okayToShowAdsP = false;

    // Java field initializers run after the base constructor
    void initFieldsGameAdStateBase() {
    
    this.advertisementsP = Advertisements();
    this.okayToShowAdsP = false;
    }
    

    GameAdStateBase(AdConfiguration adConfiguration) {
        this.initFieldsGameAdStateBase();
        this.adConfigurationP = adConfiguration;
    }
    

    void initViewArray(List<Object?> viewArray) {
    }
    

    void onStart(Object anyType) {
        this.init();
    }
    

    void init() {
    }
    

    bool isShowingAtLocation(int location) {
        return false;
    }
    

    bool isShowingAt() {
        return false;
    }
    

    void show() {
    }
    

    void hide() {
    }
    

    void onEvent(AllBinaryEventObject eventObject) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    void processAdState(GameState gameState, GameType gameType) {
    }
    

    void processPageAdState() {
    }
    

    void playingAdState() {
    }
    

    void playingAdStateWH(int width, int height) {
    }
    

    void notPlayingAdState() {
    }
    

    void setGameIsReady(bool gameIsReady) {
    }
    

    bool isGameIsReady() {
        return false;
    }
    

    Advertisements getAdvertisements() {
        return this.advertisementsP;
    }
    

    AdConfiguration getAdConfiguration() {
        return this.adConfigurationP;
    }
    

    bool isOkayToShowPageAd() {
        return false;
    }
    

    void setOkayToShowAds(bool okayToShowAds) {
        this.okayToShowAdsP = okayToShowAds;
    }
    

    bool isOkayToShowAds() {
        return this.okayToShowAdsP;
    }
    

    bool isEnabled() {
        return false;
    }
}

