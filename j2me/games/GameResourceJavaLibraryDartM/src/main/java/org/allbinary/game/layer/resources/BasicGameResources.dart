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
// package org.allbinary.game.layer.resources

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/configuration/GameConfigurationCentral.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/game/layer/resources/GameGraphicsResourceUtil.dart';

class BasicGameResources {
    static final StringMaker stringBuffer = StringMaker();
    late LogUtil logUtil;
    late String RESOURCE;
    late String RESOURCE_DESTROY;

    // Java field initializers run after the base constructor
    void initFieldsBasicGameResources() {
    this.logUtil = LogUtil.getInstance();
    this.RESOURCE = StringUtil.getInstance().EMPTY_STRING;
    this.RESOURCE_DESTROY = StringUtil.getInstance().EMPTY_STRING;
    }
    

    BasicGameResources() {
        this.initFieldsBasicGameResources();
    }
    

    void init(String ROOT, List<String?> SIZE) {
        try {
            int scale = (GameConfigurationCentral.getInstance().SCALE.getValue()).toInt();
            if (scale > 1 && scale - 1 < SIZE.length) {
                this.append(ROOT, SIZE[scale - 1]!);
            } else {
                throw JException('Exception', StringMaker().append("Invalid Value: ").appendint(scale).toString());
            }
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            final CommonStrings commonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.INIT, e);
            }
        }
    }
    

    void append(String ROOT, String sizeString) {
        final String DESTROY = "_destroy";
        final String string = this.getString();
        BasicGameResources.stringBuffer.delete(0, BasicGameResources.stringBuffer.length());
        BasicGameResources.stringBuffer.append(ROOT);
        BasicGameResources.stringBuffer.append(string);
        BasicGameResources.stringBuffer.append(sizeString);
        this.RESOURCE = BasicGameResources.stringBuffer.toString();
        BasicGameResources.stringBuffer.delete(0, BasicGameResources.stringBuffer.length());
        BasicGameResources.stringBuffer.append(ROOT);
        BasicGameResources.stringBuffer.append(DESTROY);
        BasicGameResources.stringBuffer.append(string);
        BasicGameResources.stringBuffer.append(sizeString);
        this.RESOURCE_DESTROY = BasicGameResources.stringBuffer.toString();
    }
    

    String getString() {
        return GameGraphicsResourceUtil.getInstance().getName();
    }
}

