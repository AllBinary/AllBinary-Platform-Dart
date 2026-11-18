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
// package org.allbinary.game.layer.identification

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/identification/Group.dart';
import 'package:allbinary/org/allbinary/game/identification/GroupInterfaceCompositeInterface.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/layer/event/LayerManagerEvent.dart';
import 'package:allbinary/org/allbinary/layer/event/LayerManagerEventHandler.dart';
import 'package:allbinary/org/allbinary/layer/event/LayerManagerEventListener.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/ForcedLogUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/util/event/AllBinaryEventObject.dart';
import 'package:allbinary/org/allbinary/logic/util/event/EventStrings.dart';
import 'package:allbinary/org/allbinary/string/CommonLabels.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';

class GroupLayerManagerListener extends LayerManagerEventListener {
    static GroupLayerManagerListener SINGLETON = GroupLayerManagerListener();
    late LogUtil logUtil;
    late BasicArrayList list;

    // Java field initializers run after the base constructor
    void initFieldsGroupLayerManagerListener() {
    this.logUtil = LogUtil.getInstance();
    this.list = BasicArrayListD();
    }
    

    static GroupLayerManagerListener getInstance() {
        return GroupLayerManagerListener.SINGLETON;
    }
    

    GroupLayerManagerListener() {
        this.initFieldsGroupLayerManagerListener();
        LayerManagerEventHandler.getInstance().addListener(this);
    }
    

    void clear() {
        late BasicArrayList groupList;
        int size = this.list.size();
        for (int index = size - 1; index >= 0; index--) {
            groupList = (this.list.objectArray[index]! as BasicArrayList);
            groupList.clear();
        }
    }
    

    int getGroupSizeFromInterface(GroupInterfaceCompositeInterface groupInterfaceCompositeInterface) {
        final List<Group?> groupInterfaceArray = groupInterfaceCompositeInterface.getGroupInterface();
        return this.getGroupSize(groupInterfaceArray[0]!);
    }
    

    int getGroupSize(Group groupInterface) {
        final int id = groupInterface.getGroupId();
        return this.getGroupSizeById(id);
    }
    

    BasicArrayList getList(Group groupInterface) {
        final int id = groupInterface.getGroupId();
        return this.getListById(id);
    }
    

    BasicArrayList getListById(int groupId) {
        final BasicArrayList groupList = (this.list.objectArray[groupId]! as BasicArrayList);
        return groupList;
    }
    

    int getGroupSizeById(int groupId) {
        final BasicArrayList groupList = (this.list.objectArray[groupId]! as BasicArrayList);
        final int size = groupList.size();
        return size;
    }
    

    bool areAllOtherGroupsEmpty(Group groupInterface) {
        final int id = groupInterface.getGroupId();
        final int size = this.list.size();
        for (int index = size - 1; index >= 0; index--) {
            if (id != index) {
                int groupSize = this.getGroupSizeById(index);
                if (groupSize != 0) {
                    this.logUtil.putF(StringMaker().append("Group Size: ").appendint(groupSize).toString(), this, "areAllOtherGroupsEmpty");
                    return false;
                }
            }
        }
        return true;
    }
    

    bool isIdInList(int id, BasicArrayList excludeGroupList) {
        final int size = excludeGroupList.size();
        late List<Group?> groupInterfaceArray;
        late Group groupInterface;
        int groupId = 0;
        for (int index = size - 1; index >= 0; index--) {
            groupInterfaceArray = (excludeGroupList.objectArray[index]! as List<Group?>);
            final int size2 = groupInterfaceArray.length;
            for (int index2 = 0; index2 < size2; index2++) {
                groupInterface = groupInterfaceArray[index2]!;
                groupId = groupInterface.getGroupId();
                if (groupId == id) {
                    return true;
                }
            }
        }
        return false;
    }
    

    bool areAllOtherGroupsLessThan(BasicArrayList excludeGroupList, int maxSize) {
        final int size = this.list.size();
        for (int index = size - 1; index >= 0; index--) {
            if (!this.isIdInList(index, excludeGroupList)) {
                int groupSize = this.getGroupSizeById(index);
                if (groupSize >= maxSize) {
                    return false;
                }
            }
        }
        return true;
    }
    

    void init(int total) {
        while (this.list.size() <= total + 1) {
            this.list.add(BasicArrayListD());
        }
    }
    

    @override
    void onEvent(AllBinaryEventObject eventObject) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    @override
    void onCreateLayerManagerEvent(LayerManagerEvent layerManagerEvent) {
        final AllBinaryLayer layerInterface = layerManagerEvent.getLayerInterface();
        final List<Group?> groupInterfaceArray = layerInterface.getGroupInterface();
        final int size = groupInterfaceArray.length;
        int id = 0;
        late BasicArrayList groupList;
        for (int index = 0; index < size; index++) {
            id = groupInterfaceArray[index]!.getGroupId();
            groupList = (this.list.objectArray[id]! as BasicArrayList);
            if (groupList == null) {
                this.logUtil.putF(StringMaker().append("id: ").appendint(id).toString(), this, "onCreateLayerManagerEvent");
            }
            if (!groupList.contains(layerInterface)) {
                groupList.add(layerInterface);
            } else {
            }
        }
    }
    

    @override
    void onDeleteLayerManagerEvent(LayerManagerEvent layerManagerEvent) {
        final AllBinaryLayer layerInterface = layerManagerEvent.getLayerInterface();
        final List<Group?> groupInterfaceArray = layerInterface.getGroupInterface();
        final int size = groupInterfaceArray.length;
        int id = 0;
        late BasicArrayList groupList;
        for (int index = 0; index < size; index++) {
            id = groupInterfaceArray[index]!.getGroupId();
            groupList = (this.list.objectArray[id]! as BasicArrayList);
            groupList.remove(layerInterface);
        }
    }
    

    void log() {
        final StringMaker stringBuffer = StringMaker();
        final String GROUP = "Group: ";
        final String SPACE = CommonSeps.getInstance().SPACE;
        final String TOTAL_LABEL = CommonLabels.getInstance().TOTAL_LABEL;
        int size = this.list.size();
        for (int index = size - 1; index >= 0; index--) {
            final BasicArrayList groupList = (this.list.objectArray[index]! as BasicArrayList);
            stringBuffer.append(GROUP);
            stringBuffer.appendint(index);
            stringBuffer.append(SPACE);
            stringBuffer.append(TOTAL_LABEL);
            stringBuffer.appendint(groupList.size());
            stringBuffer.append(SPACE);
        }
        this.logUtil.putF(stringBuffer.toString(), this, "log");
    }
}

