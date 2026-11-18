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
// package org.allbinary.input.motion.button

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListUtil.dart';

class TouchButtonFactory {
    static final TouchButtonFactory SINGLETON = TouchButtonFactory();
    late BasicArrayList LIST;
    late BasicArrayList list;
    late BasicArrayList savedList;
    bool saved = false;

    // Java field initializers run after the base constructor
    void initFieldsTouchButtonFactory() {
    this.LIST = BasicArrayListUtil.getInstance().getImmutableInstance();
    this.list = this.LIST;
    this.savedList = this.LIST;
    this.saved = false;
    }
    

    static TouchButtonFactory getInstance() {
        return TouchButtonFactory.SINGLETON;
    }
    

    TouchButtonFactory() {
        this.initFieldsTouchButtonFactory();
    }
    

    void defaultList() {
        this.list = this.LIST;
        this.toggle(false, this.LIST);
    }
    

    void toggle(bool save, BasicArrayList list) {
        if (list != BasicArrayListUtil.getInstance().getImmutableInstance()) {
            this.savedList = list;
            if (!this.saved) {
                this.list = this.savedList;
            }
        } else {
            if (save) {
                if (!this.saved) {
                    this.saved = true;
                    this.savedList = this.list;
                    this.list = this.LIST;
                } else {
                }
            } else {
                this.list = this.savedList;
                this.saved = false;
            }
        }
    }
    

    void setList(BasicArrayList list) {
        if (list == null) {
            throw JException('Exception', "Null List");
        }
        this.list = list;
    }
    

    BasicArrayList getList() {
        return this.list;
    }
}

