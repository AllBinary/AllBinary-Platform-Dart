// Generated Code Do Not Modify
// ignore_for_file: unused_import, unnecessary_import, unused_local_variable, unnecessary_null_comparison, unnecessary_cast
// package org.allbinary.graphics.form.item

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorFactory.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/graphics/form/item/ABCustomItem.dart';

class ABCustomGaugeItem extends ABCustomItem {
    static final ABCustomGaugeItem NULL_GAUGE_ITEM = ABCustomGaugeItem(StringUtil.getInstance().EMPTY_STRING, 1, 0, BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE);
    

    ABCustomGaugeItem(String label, int maxValue, int initialValue, BasicColor backgroundBasicColor, BasicColor foregroundBasicColor) : super(label, backgroundBasicColor, foregroundBasicColor) {
        
    }
}

