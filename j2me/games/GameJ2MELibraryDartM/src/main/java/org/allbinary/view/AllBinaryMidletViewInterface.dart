// Generated Code Do Not Modify
// ignore_for_file: unused_import, unnecessary_import, unused_local_variable, unnecessary_null_comparison, unnecessary_cast
// package org.allbinary.view

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/configuration/event/GameInitializedListenerInterface.dart';
import 'package:allbinary/org/allbinary/game/midlet/DemoGameMidletEventListener.dart';
import 'package:allbinary/org/allbinary/midlet/MidletCompositeInterface.dart';
import 'package:allbinary/org/allbinary/view/EmulatorViewInterface.dart';

abstract interface class AllBinaryMidletViewInterface implements MidletCompositeInterface, EmulatorViewInterface, DemoGameMidletEventListener, GameInitializedListenerInterface {
    

    void onResume();
    

    void onPause();
    

    void onDestroy();
}

