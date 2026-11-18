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
// package org.allbinary.game.layer.pickup

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/health/HealthInterfaceCompositeInterface.dart';
import 'package:allbinary/org/allbinary/game/layer/CollidableCompositeLayer.dart';
import 'package:allbinary/org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer.dart';
import 'package:allbinary/org/allbinary/game/part/CountedLayerInterfaceFactoryPart.dart';
import 'package:allbinary/org/allbinary/game/part/PartInterface.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/PreLogUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/game/layer/pickup/PickupBehaviorInterface.dart';
import 'package:allbinary/org/allbinary/game/layer/pickup/PickupProcessorInterface.dart';
import 'package:allbinary/org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface.dart';
import 'package:allbinary/org/allbinary/game/layer/pickup/PickedUpLayerType.dart';
import 'package:allbinary/org/allbinary/game/layer/pickup/PickedUpLayerTypeFactory.dart';
import 'package:allbinary/org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactoryInterface.dart';
import 'package:allbinary/org/allbinary/game/layer/pickup/PickedUpLayerInterface.dart';
import 'package:allbinary/org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory.dart';

class PickupBehavior implements PickupBehaviorInterface {
    static Object NULL_PICKUP_BEHAVIOR = NullUtil.getInstance().NULL_OBJECT;
    late LogUtil logUtil;
    int countedIndex = 0;
    late CollidableCompositeLayer ownerLayerInterface;

    // Java field initializers run after the base constructor
    void initFieldsPickupBehavior() {
    this.logUtil = LogUtil.getInstance();
    
    
    }
    

    static PickupBehavior getNullInstance() {
        if (PickupBehavior.NULL_PICKUP_BEHAVIOR == NullUtil.getInstance().NULL_OBJECT) {
            PickupBehavior.NULL_PICKUP_BEHAVIOR = PickupBehavior(CollidableCompositeLayer.getNullInstance(), 0);
        }
        return (PickupBehavior.NULL_PICKUP_BEHAVIOR as PickupBehavior);
    }
    

    PickupBehavior(CollidableCompositeLayer ownerLayerInterface, int countedIndex) {
        this.initFieldsPickupBehavior();
        this.ownerLayerInterface = ownerLayerInterface;
        this.countedIndex = countedIndex;
    }
    

    @override
    void doPickup(PickupProcessorInterface pickupProcessorInterface) {
        try {
            final HealthInterfaceCompositeInterface healthInterfaceCompositeInterface = (this.ownerLayerInterface as HealthInterfaceCompositeInterface);
            if (healthInterfaceCompositeInterface.getHealthInterface().isAlive()) {
                pickupProcessorInterface.process(this.ownerLayerInterface);
            }
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            final CommonStrings commonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, "doPickup", e);
            }
        }
    }
    

    @override
    void doPickupLayer(PickedUpLayerInterface pickupLayerInterface) {
        try {
            final PickedUpLayerInterfaceFactoryInterface pickedUpLayerInterfaceFactoryInterface = pickupLayerInterface.getPickedUpLayerInterfaceFactoryInterface();
            final PickedUpLayerType pickedUpLayerType = pickedUpLayerInterfaceFactoryInterface.getPickedUpLayerType();
            final PickedUpLayerTypeFactory pickedUpLayerTypeFactory = PickedUpLayerTypeFactory.getInstance();
            if (pickedUpLayerType == pickedUpLayerTypeFactory.BEAM || pickedUpLayerType == pickedUpLayerTypeFactory.MINE || pickedUpLayerType == pickedUpLayerTypeFactory.PROJECTILE || pickedUpLayerType == pickedUpLayerTypeFactory.ENHANCEMENT) {
                this.add((pickedUpLayerInterfaceFactoryInterface as CountedPickedUpLayerInterfaceFactoryInterface));
            } else if (pickedUpLayerInterfaceFactoryInterface.getPickedUpLayerType() == pickedUpLayerTypeFactory.PART) {
                final CollidableDestroyableDamageableLayer collidableDestroyableDamageableLayer = (this.ownerLayerInterface as CollidableDestroyableDamageableLayer);
                collidableDestroyableDamageableLayer.addPart(pickedUpLayerInterfaceFactoryInterface);
            } else if (pickedUpLayerType == pickedUpLayerTypeFactory.NONE) {
            } else {
                final PickupProcessorInterface pickupProcessorInterface = (pickedUpLayerInterfaceFactoryInterface as PickupProcessorInterface);
                this.doPickup(pickupProcessorInterface);
            }
            pickupLayerInterface.setPickedUp();
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            final CommonStrings commonStrings = CommonStrings.getInstance();
            PreLogUtil.putOE(commonStrings.EXCEPTION, this, "doPickup", e);
            }
        }
    }
    

    void add(CountedPickedUpLayerInterfaceFactoryInterface countedPickedUpLayerInterfaceFactoryInterface) {
        final int partIndex = countedPickedUpLayerInterfaceFactoryInterface.getId() + this.countedIndex;
        this.addAt(countedPickedUpLayerInterfaceFactoryInterface, partIndex);
    }
    

    void addAt(CountedPickedUpLayerInterfaceFactoryInterface countedPickedUpLayerInterfaceFactoryInterface, int partIndex) {
        final CollidableDestroyableDamageableLayer collidableDestroyableDamageableLayer = (this.ownerLayerInterface as CollidableDestroyableDamageableLayer);
        final CountedLayerInterfaceFactoryPart countedLayerInterfaceFactory = (collidableDestroyableDamageableLayer.getPartInterfaceArray()[partIndex]! as CountedLayerInterfaceFactoryPart);
        countedLayerInterfaceFactory.setTotal(countedLayerInterfaceFactory.getTotal() + countedPickedUpLayerInterfaceFactoryInterface.getTotal());
    }
    

    CountedLayerInterfaceFactoryPart getFirstAvailableCountedLayerInterfaceFactory(List<PickedUpLayerType?> pickedUpLayerTypeArray) {
        final CollidableDestroyableDamageableLayer collidableDestroyableDamageableLayer = (this.ownerLayerInterface as CollidableDestroyableDamageableLayer);
        final List<PartInterface?> partInterfaceArray = collidableDestroyableDamageableLayer.getPartInterfaceArray();
        final int size = partInterfaceArray.length;
        late CountedLayerInterfaceFactoryPart nextCountedLayerInterfaceFactory;
        late CountedPickedUpLayerInterfaceFactory countedPickedUpLayerInterfaceFactory;
        for (int index = this.countedIndex; index < size; index++) {
            nextCountedLayerInterfaceFactory = (collidableDestroyableDamageableLayer.getPartInterfaceArray()[index]! as CountedLayerInterfaceFactoryPart);
            countedPickedUpLayerInterfaceFactory = nextCountedLayerInterfaceFactory.getCountedPickedUpLayerInterfaceFactory();
            for (int index2 = pickedUpLayerTypeArray.length; --index2 >= 0; ) {
                if (countedPickedUpLayerInterfaceFactory.getPickedUpLayerType() == pickedUpLayerTypeArray[index2]!) {
                    if (nextCountedLayerInterfaceFactory.getTotal() > 0) {
                        return nextCountedLayerInterfaceFactory;
                    }
                }
            }
        }
        return CountedLayerInterfaceFactoryPart.NULL_COUNTED_LAYER_INTERFACE_FACTORY;
    }
    

    CountedLayerInterfaceFactoryPart getCountedLayerInterfaceFactoryForSlot(int slotIndex) {
        int currentSlot = 0;
        final CollidableDestroyableDamageableLayer collidableDestroyableDamageableLayer = (this.ownerLayerInterface as CollidableDestroyableDamageableLayer);
        final List<PartInterface?> partInterfaceArray = collidableDestroyableDamageableLayer.getPartInterfaceArray();
        final int size = partInterfaceArray.length;
        late CountedLayerInterfaceFactoryPart nextCountedLayerInterfaceFactory;
        for (int index = this.countedIndex; index < size; index++) {
            nextCountedLayerInterfaceFactory = (collidableDestroyableDamageableLayer.getPartInterfaceArray()[index]! as CountedLayerInterfaceFactoryPart);
            if (nextCountedLayerInterfaceFactory.getTotal() > 0) {
                if (currentSlot == slotIndex) {
                    return nextCountedLayerInterfaceFactory;
                } else {
                    currentSlot++;
                }
            }
        }
        return CountedLayerInterfaceFactoryPart.NULL_COUNTED_LAYER_INTERFACE_FACTORY;
    }
    

    int getCountedIndex() {
        return this.countedIndex;
    }
}

