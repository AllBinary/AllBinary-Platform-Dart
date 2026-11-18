// Generated Code Do Not Modify
// ignore_for_file: unused_import, unnecessary_import, unused_local_variable, unnecessary_null_comparison, unnecessary_cast
// package org.allbinary.business.advertisement

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/GameAdState.dart';
import 'package:allbinary/org/allbinary/logic/system/SoftwareInformation.dart';
import 'package:allbinary/org/allbinary/business/advertisement/GameAdStateFactoryInterface.dart';
import 'package:allbinary/org/allbinary/business/advertisement/AppNameLicensingAdConfiguration.dart';
import 'package:allbinary/org/allbinary/business/advertisement/GameAdStateBase.dart';

class GameAdStateFactory implements GameAdStateFactoryInterface {
    static final GameAdStateFactory instance = GameAdStateFactory();
    late List<GameAdState?> gameAdStateArray;
    late GameAdState gameAdState;

    // Java field initializers run after the base constructor
    void initFieldsGameAdStateFactory() {
    this.gameAdStateArray = <GameAdState?>[GameAdState(AppNameLicensingAdConfiguration())];
    this.gameAdState = this.gameAdStateArray[0]!;
    }

    GameAdStateFactory() {
        this.initFieldsGameAdStateFactory();
    }
    

    static GameAdStateFactory getInstance() {
        return GameAdStateFactory.instance;
    }
    

    GameAdState getCurrentInstance() {
        return this.gameAdState;
    }
    

    @override
    GameAdStateBase getInstanceForApp(SoftwareInformation softwareInformation) {
        this.gameAdState = this.gameAdStateArray[0]!;
        return this.gameAdStateArray[0]!;
    }
    

    bool isEnabled() {
        return false;
    }
}

