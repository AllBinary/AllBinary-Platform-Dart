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
// package org.allbinary.game.configuration.persistance

import 'package:allbinary/allbinary_java.dart';

class PersistanceStrings {
    static final PersistanceStrings instance = PersistanceStrings();
    late String SAVING;
    late String NUMBER_OF_RECORDS;
    late String LOADING_ID;
    late String LOAD_ALL;
    late String DELETING_WITH_ID;
    late String CLOSING_RECORDSTORE;
    late String NOT_SAVING;
    late String ERROR_LOADING;
    late String ERROR_LOADING_ID;
    late String ID;
    late String GAME_ACTION_INPUT;

    // Java field initializers run after the base constructor
    void initFieldsPersistanceStrings() {
    this.SAVING = "Saving: ";
    this.NUMBER_OF_RECORDS = "Number of records: ";
    this.LOADING_ID = "Loading data with id: ";
    this.LOAD_ALL = "loadAll";
    this.DELETING_WITH_ID = "Deleting data with id: ";
    this.CLOSING_RECORDSTORE = "Closing RecordStore";
    this.NOT_SAVING = "Not Saving: ";
    this.ERROR_LOADING = "Error Loading gameActionInput: ";
    this.ERROR_LOADING_ID = "Error Loading id: ";
    this.ID = " id: ";
    this.GAME_ACTION_INPUT = " GameActionInput: ";
    }

    PersistanceStrings() {
        this.initFieldsPersistanceStrings();
    }
    

    static PersistanceStrings getInstance() {
        return PersistanceStrings.instance;
    }
}

