// Generated Code Do Not Modify
// ignore_for_file: unused_import, unnecessary_import, unused_local_variable, unnecessary_null_comparison, unnecessary_cast
// package org.allbinary.graphics.form

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/form/item/ABCustomItem.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/graphics/form/CustomScreen.dart';

class ABCustomForm extends CustomScreen {
    late LogUtil logUtil;
    late CommonStrings commonStrings;

    // Java field initializers run after the base constructor
    void initFieldsABCustomForm() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    }
    

    ABCustomForm(String title, List<ABCustomItem?> items, BasicColor backgroundBasicColor, BasicColor foregroundBasicColor) {
        this.initFieldsABCustomForm();
    }
    

    List<ABCustomItem?> getAllitems() {
        return List<ABCustomItem?>.filled(0, null);
    }
    

    int size() {
        return 0;
    }
    

    void setSelectedIndex(int index) {
    }
    

    int getSelectedIndex() {
        return 0;
    }
    

    void deleteAll() {
    }
    

    void delete(int itemNum) {
    }
    

    int append(ABCustomItem item) {
        return -1;
    }
    

    void insert(int itemNum, ABCustomItem item) {
    }
    

    void set(int itemNum, ABCustomItem item) {
    }
    

    ABCustomItem get(int itemNum) {
        return ABCustomItem.getNullInstance();
    }
    

    int getWidth() {
        throw JException('RuntimeException', '');
    }
    

    void paint(Graphics graphics) {
    }
    

    String getTitle() {
        return StringUtil.getInstance().EMPTY_STRING;
    }
}

