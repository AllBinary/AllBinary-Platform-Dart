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
// package org.allbinary.graphics.form.item

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Command.dart';
import 'package:allbinary/javax/microedition/lcdui/ImageItem.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/DisplayInfoSingleton.dart';
import 'package:allbinary/org/allbinary/graphics/form/ScreenInfo.dart';
import 'package:allbinary/org/allbinary/logic/VectorUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/logic/util/visitor/Visitor.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/graphics/form/item/CommandTextItem.dart';
import 'package:allbinary/org/allbinary/graphics/form/item/ABCustomItem.dart';

class CommandTextItemArrayFactory {
    late BasicArrayList list;
    late Visitor visitorInterface;

    // Java field initializers run after the base constructor
    void initFieldsCommandTextItemArrayFactory() {
    this.list = BasicArrayListD();
    
    }
    

    CommandTextItemArrayFactory(Visitor visitorInterface) {
        this.initFieldsCommandTextItemArrayFactory();
        this.visitorInterface = visitorInterface;
    }
    

    List<ABCustomItem?> getInstance3(Object vector, BasicColor backgroundBasicColor, BasicColor foregroundBasicColor) {
        final VectorUtil vectorUtil = VectorUtil.getInstance();
        final int size = vectorUtil.getSize(vector);
        this.list.clear();
        late CommandTextItem textItem;
        int priorityLimit = 7;
        final DisplayInfoSingleton displayInfo = DisplayInfoSingleton.getInstance();
        final bool isLargeEnoughDisplayForBigMenu = (displayInfo.isPortrait() && displayInfo.getLastHeight() >= ScreenInfo.getInstance().MEDIUM_WIDTH) || (!displayInfo.isPortrait() && displayInfo.getLastWidth() >= ScreenInfo.getInstance().MEDIUM_WIDTH);
        if (!isLargeEnoughDisplayForBigMenu && size > 3) {
            priorityLimit = 3;
        }
        late Command command;
        for (int index = 0; index < size; index++) {
            command = (vectorUtil.elementAt(vector, index) as Command);
            if (command.getPriority() < priorityLimit) {
                bool aBoolean = (this.visitorInterface.visit(command) as bool);
                if (aBoolean) {
                    textItem = CommandTextItem(command, ImageItem.LAYOUT_DEFAULT, StringUtil.getInstance().EMPTY_STRING, backgroundBasicColor, foregroundBasicColor);
                    this.list.add(textItem);
                }
            }
        }
        final List<ABCustomItem?> textItemArray = List<ABCustomItem?>.filled(this.list.size(), null);
        final int size2 = textItemArray.length;
        for (int index = 0; index < size2; index++) {
            textItemArray[index] = (this.list.objectArray[index]! as ABCustomItem);
        }
        return textItemArray;
    }
}

