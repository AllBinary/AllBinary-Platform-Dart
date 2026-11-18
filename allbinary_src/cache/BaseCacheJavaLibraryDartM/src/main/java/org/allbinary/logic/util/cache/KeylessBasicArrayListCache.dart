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
// package org.allbinary.logic.util.cache

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListUtil.dart';
import 'package:allbinary/org/allbinary/logic/util/cache/IndexedBasicArrayListCache.dart';

class KeylessBasicArrayListCache extends IndexedBasicArrayListCache {
    late LogUtil logUtil;
    late BasicArrayListUtil basicArrayListUtil;

    // Java field initializers run after the base constructor
    void initFieldsKeylessBasicArrayListCache() {
    this.logUtil = LogUtil.getInstance();
    this.basicArrayListUtil = BasicArrayListUtil.getInstance();
    }
    

    KeylessBasicArrayListCache() {
        this.initFieldsKeylessBasicArrayListCache();
    }
    

    BasicArrayList get() {
        try {
            if (this.index >= this.list.size()) {
                this.addDefault();
            }
            final BasicArrayList list = (this.getAt(this.index++) as BasicArrayList);
            return list;
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.GET, e);
            return this.basicArrayListUtil.getImmutableInstance();
            }
        }
    }
    

    @override
    void clear() {
        super.clear();
        late BasicArrayList basicArrayList;
        for (int index = this.list.size() - 1; index >= 0; index--) {
            basicArrayList = ((this.list.objectArray[index]! as BasicArrayList));
            basicArrayList.clear();
        }
    }
    

    @override
    String log() {
        final StringMaker stringBuffer = StringMaker();
        stringBuffer.append("S: ");
        stringBuffer.appendint(this.list.size());
        final String S_LABEL = " s: ";
        late BasicArrayList basicArrayList;
        for (int index = this.list.size() - 1; index >= 0; index--) {
            stringBuffer.append(S_LABEL);
            basicArrayList = ((this.list.objectArray[index]! as BasicArrayList));
            stringBuffer.appendint(basicArrayList.size());
        }
        return stringBuffer.toString();
    }
}

