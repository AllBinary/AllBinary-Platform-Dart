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
// package org.allbinary.logic.util.visitor

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/logic/util/visitor/VisitorInterface.dart';

class Visitor implements VisitorInterface {
    static final Visitor instance = Visitor();
    late NullUtil nullUtil;

    // Java field initializers run after the base constructor
    void initFieldsVisitor() {
    this.nullUtil = NullUtil.getInstance();
    }

    Visitor() {
        this.initFieldsVisitor();
    }
    

    @override
    Object visit(Object anyType) {
        return this.nullUtil.NULL_OBJECT;
    }
    

    static Visitor getInstance() {
        return Visitor.instance;
    }
}

