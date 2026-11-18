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
// package org.allbinary.graphics.form

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/canvas/Processor.dart';
import 'package:allbinary/org/allbinary/graphics/form/ScrollCurrentSelectionForm.dart';

class VerticalFormProcessor extends Processor {
    late ScrollCurrentSelectionForm scrollCurrentSelectionForm;

    // Java field initializers run after the base constructor
    void initFieldsVerticalFormProcessor() {
    
    }
    

    VerticalFormProcessor(ScrollCurrentSelectionForm scrollCurrentSelectionForm) {
        this.initFieldsVerticalFormProcessor();
        this.scrollCurrentSelectionForm = scrollCurrentSelectionForm;
    }
    

    @override
    void process() {
        this.scrollCurrentSelectionForm.processVerticalForm();
        this.scrollCurrentSelectionForm.processor = Processor.getInstance();
    }
}

