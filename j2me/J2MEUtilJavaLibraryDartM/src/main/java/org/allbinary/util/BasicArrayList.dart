// Generated Code Do Not Modify
// ignore_for_file: unused_import, unnecessary_import, unused_local_variable, unnecessary_null_comparison, unnecessary_cast
// package org.allbinary.util

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/string/CommonLabels.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';
import 'package:allbinary/org/allbinary/util/ArrayUtil.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListS.dart';

//This is a very fast and simple resizable list.
class BasicArrayList {
    static const String SIZE = ", Size: ";
    late ArrayUtil arrayUtil;
    late List<Object?> objectArray;
    int currentIndex = 0;

    // Java field initializers run after the base constructor
    void initFieldsBasicArrayList() {
    this.arrayUtil = ArrayUtil.getInstance();
    
    this.currentIndex = 0;
    }
    

    BasicArrayList(List<Object?> objectArray) {
        this.initFieldsBasicArrayList();
        this.objectArray = objectArray;
    }
    

    void addAt(int index, Object element) {
        if (index > this.currentIndex || index < 0) {
            final StringMaker stringBuffer = StringMaker();
            stringBuffer.append(CommonLabels.getInstance().INDEX_LABEL);
            stringBuffer.appendint(index);
            stringBuffer.append(BasicArrayList.SIZE);
            stringBuffer.appendint(this.currentIndex);
            throw JException('IndexOutOfBoundsException', stringBuffer.toString());
        }
        this.ensureCapacity(this.currentIndex + 1);
        JSystem.arraycopy(this.objectArray, index, this.objectArray, index + 1, this.currentIndex - index);
        this.objectArray[index] = element;
        this.currentIndex++;
    }
    

    bool add(Object anyType) {
        this.ensureCapacity(this.currentIndex + 1);
        this.objectArray[this.currentIndex++] = anyType;
        return true;
    }
    

    Object removeAt(int index) {
        if (index >= this.currentIndex) {
            final StringMaker stringBuffer = StringMaker();
            stringBuffer.append(CommonLabels.getInstance().INDEX_LABEL);
            stringBuffer.appendint(index);
            stringBuffer.append(BasicArrayList.SIZE);
            stringBuffer.appendint(this.currentIndex);
            throw JException('IndexOutOfBoundsException', stringBuffer.toString());
        }
        Object oldValue = this.objectArray[index]!;
        final int numMoved = this.currentIndex - index - 1;
        if (numMoved > 0) {
            JSystem.arraycopy(this.objectArray, index + 1, this.objectArray, index, numMoved);
        }
        this.objectArray[--this.currentIndex] = null;
        return oldValue;
    }
    

    bool remove(Object anyType) {
        if (anyType == null) {
            for (int index = 0; index < this.currentIndex; index++) {
                if (this.objectArray[index] == null) {
                    final int numMoved = this.currentIndex - index - 1;
                    if (numMoved > 0) {
                        JSystem.arraycopy(this.objectArray, index + 1, this.objectArray, index, numMoved);
                    }
                    this.objectArray[--this.currentIndex] = null;
                    return true;
                }
            }
        } else {
            for (int index = 0; index < this.currentIndex; index++) {
                if (identical(anyType, this.objectArray[index]!) || anyType.equals(this.objectArray[index]!)) {
                    final int numMoved = this.currentIndex - index - 1;
                    if (numMoved > 0) {
                        JSystem.arraycopy(this.objectArray, index + 1, this.objectArray, index, numMoved);
                    }
                    this.objectArray[--this.currentIndex] = null;
                    return true;
                }
            }
        }
        return false;
    }
    

    bool removeAll2(BasicArrayList list) {
        bool result = true;
        final int size = list.size();
        for (int index = 0; index < size; index++) {
            if (this.remove(list.get(index))) {
            } else {
                result = false;
            }
        }
        return result;
    }
    

    bool addAll2(BasicArrayList list) {
        this.ensureCapacity(this.currentIndex + list.currentIndex);
        int listSize = list.currentIndex;
        for (int index = 0; index < listSize; index++) {
            this.objectArray[this.currentIndex++] = list.objectArray[index]!;
        }
        return true;
    }
    

    bool addAllList(BasicArrayList list) {
        final List<Object?> newObjectArray = list.toArray();
        return this.addAll(newObjectArray);
    }
    

    bool addAll(List<Object?> newObjectArray) {
        final int numSize = newObjectArray.length;
        this.ensureCapacity(this.currentIndex + numSize);
        JSystem.arraycopy(newObjectArray, 0, this.objectArray, this.currentIndex, numSize);
        this.currentIndex += numSize;
        return numSize != 0;
    }
    

    void ensureCapacity(int minSize) {
        final int oldCapacity = this.objectArray.length;
        if (minSize > oldCapacity) {
            int newCapacity = ((oldCapacity * 3) >> 1) + 1;
            if (newCapacity < minSize) {
                newCapacity = minSize;
            }
            this.objectArray = this.arrayUtil.copyOf(this.objectArray, newCapacity);
        }
    }
    

    void trimToSize() {
        final int oldCapacity = this.objectArray.length;
        if (this.currentIndex < oldCapacity) {
            this.objectArray = this.arrayUtil.copyOf(this.objectArray, this.currentIndex);
        }
    }
    

    int indexOf(Object anyType) {
        if (anyType == null) {
            for (int i = 0; i < this.currentIndex; i++) {
                if (this.objectArray[i] == null) {
                    return i;
                }
            }
        } else {
            for (int i = 0; i < this.currentIndex; i++) {
                if (anyType.equals(this.objectArray[i]!)) {
                    return i;
                }
            }
        }
        return -1;
    }
    

    int lastIndexOf(Object anyType) {
        if (anyType == null) {
            for (int i = this.currentIndex - 1; i >= 0; i--) {
                if (this.objectArray[i] == null) {
                    return i;
                }
            }
        } else {
            for (int i = this.currentIndex - 1; i >= 0; i--) {
                if (anyType.equals(this.objectArray[i]!)) {
                    return i;
                }
            }
        }
        return -1;
    }
    

    Object get(int index) {
        if (index >= this.currentIndex) {
            final StringMaker stringBuffer = StringMaker();
            stringBuffer.append(CommonLabels.getInstance().INDEX_LABEL);
            stringBuffer.appendint(index);
            stringBuffer.append(BasicArrayList.SIZE);
            stringBuffer.appendint(this.currentIndex);
            throw JException('IndexOutOfBoundsException', stringBuffer.toString());
        }
        return this.objectArray[index]!;
    }
    

    Object set(int index, Object element) {
        if (index >= this.currentIndex) {
            final StringMaker stringBuffer = StringMaker();
            stringBuffer.append(CommonLabels.getInstance().INDEX_LABEL);
            stringBuffer.appendint(index);
            stringBuffer.append(BasicArrayList.SIZE);
            stringBuffer.appendint(this.currentIndex);
            throw JException('IndexOutOfBoundsException', stringBuffer.toString());
        }
        final Object oldValue = this.objectArray[index]!;
        this.objectArray[index] = element;
        return oldValue;
    }
    

    void clear() {
        for (int i = 0; i < this.currentIndex; i++) {
            this.objectArray[i] = null;
        }
        this.currentIndex = 0;
    }
    

    int size() {
        return this.currentIndex;
    }
    

    bool isEmpty() {
        return this.currentIndex == 0;
    }
    

    bool contains(Object anyType) {
        return this.indexOf(anyType) >= 0;
    }
    

    List<Object?> toArray() {
        return this.arrayUtil.copyOf(this.objectArray, this.currentIndex);
    }
    

    List<Object?> toArrayType(List<Object?> objectArray) {
        if (objectArray.length < this.currentIndex) {
            return this.arrayUtil.copyOfType(this.objectArray, this.currentIndex, jClassName(objectArray));
        }
        JSystem.arraycopy(this.objectArray, 0, objectArray, 0, this.currentIndex);
        if (objectArray.length > this.currentIndex) {
            objectArray[this.currentIndex] = null;
        }
        return objectArray;
    }
    

    Object clone() {
        final int size = this.size();
        final BasicArrayList list = BasicArrayListS(size);
        late Object anyType;
        for (int index = 0; index < size; index++) {
            anyType = this.objectArray[index]!;
            list.add(anyType);
        }
        return list;
    }
    

    @override
    String toString() {
        final String COMMA_SEP = CommonSeps.getInstance().COMMA_SEP;
        final StringMaker stringBuffer = StringMaker();
        for (int index = 0; index < this.currentIndex; index++) {
            stringBuffer.append(this.objectArray[index]!.toString());
            stringBuffer.append(COMMA_SEP);
        }
        return stringBuffer.toString();
    }
}

