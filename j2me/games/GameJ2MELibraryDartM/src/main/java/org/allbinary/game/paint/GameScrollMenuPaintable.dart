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
// package org.allbinary.game.paint

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/color/ColorChangeEventHandler.dart';
import 'package:allbinary/org/allbinary/graphics/color/ColorChangeListener.dart';
import 'package:allbinary/org/allbinary/graphics/form/FormPaintable.dart';
import 'package:allbinary/org/allbinary/graphics/form/ScrollSelectionForm.dart';
import 'package:allbinary/org/allbinary/graphics/form/item/ABStringComponent.dart';
import 'package:allbinary/org/allbinary/graphics/form/item/ABTextItem.dart';
import 'package:allbinary/org/allbinary/graphics/paint/Paintable.dart';
import 'package:allbinary/org/allbinary/logic/util/event/AllBinaryEventObject.dart';
import 'package:allbinary/org/allbinary/game/paint/BasicGameDemoPaintable.dart';
import 'package:allbinary/org/allbinary/game/paint/MainGameDemoStatePaintable.dart';

class GameScrollMenuPaintable extends BasicGameDemoPaintable implements ColorChangeListener {
    

    GameScrollMenuPaintable(Paintable mainDemoStatePaintable, Paintable ownershipPaintable, Paintable helpPaintableInterface, BasicColor basicColor) : super(mainDemoStatePaintable, ownershipPaintable, helpPaintableInterface) {
        
        this.setColor(basicColor);
        ColorChangeEventHandler.getInstance().addListenerInterface(this);
    }
    

    @override
    void setState(int state) {
        this.setCurrentStatePaintable(this.getMainDemoStatePaintable());
    }
    

    @override
    void onEvent(AllBinaryEventObject eventObject) {
    }
    

    void setColor(BasicColor basicColor) {
        final MainGameDemoStatePaintable mainGameDemoStatePaintable = (this.getMainDemoStatePaintable() as MainGameDemoStatePaintable);
        final FormPaintable formPaintable = (mainGameDemoStatePaintable.getMenuPaintableInterface() as FormPaintable);
        final ScrollSelectionForm scrollSelectionForm = (formPaintable.getForm() as ScrollSelectionForm);
        mainGameDemoStatePaintable.getOwnershipPaintableInterface().setBasicColorP(basicColor);
        scrollSelectionForm.setButtonBasicColor(basicColor);
        late ABTextItem item;
        late ABStringComponent stringComponent;
        for (int index = scrollSelectionForm.size() - 1; index >= 0; index--) {
            item = (scrollSelectionForm.get(index) as ABTextItem);
            stringComponent = item.getLabelStringComponent();
            if (stringComponent != null) {
                stringComponent.setForegroundBasicColor(basicColor);
            }
        }
    }
}

