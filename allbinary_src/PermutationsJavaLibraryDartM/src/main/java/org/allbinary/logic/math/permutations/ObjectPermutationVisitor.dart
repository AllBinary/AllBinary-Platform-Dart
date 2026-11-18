// Generated Code Do Not Modify
// ignore_for_file: unused_import, unnecessary_import, unused_local_variable, unnecessary_null_comparison, unnecessary_cast
// package org.allbinary.logic.math.permutations

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/TsUtil.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/util/visitor/Visitor.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';

class ObjectPermutationVisitor extends Visitor {
    late List<Object?> data;
    late StringMaker stringBuilder;

    // Java field initializers run after the base constructor
    void initFieldsObjectPermutationVisitor() {
    
    this.stringBuilder = StringMaker();
    }
    

    ObjectPermutationVisitor(List<Object?> data) {
        this.initFieldsObjectPermutationVisitor();
        this.data = data;
    }
    

    @override
    Object visit(Object anyType) {
        this.stringBuilder.delete(0, this.stringBuilder.length());
        this.print(this.data, this.stringBuilder);
        return NullUtil.getInstance().NULL_OBJECT;
    }
    

    void print([dynamic p0 = jnone, dynamic p1 = jnone]) {
        if (!identical(p0, jnone) && identical(p1, jnone) && jIsList(p0)) {
            this.print$1(p0);
            return;
        }
        if (!identical(p1, jnone) && jIsList(p0) && p1 is StringMaker) {
            this.print$2(p0, p1);
            return;
        }
        throw JException('NoSuchMethodError', 'print');
    }

    void print$1(List<Object?> data) {
        final StringMaker stringBuilder = StringMaker();
        this.print(data, stringBuilder);
    }
    

    void print$2(List<Object?> data, StringMaker stringBuilder) {
        final TsUtil tsUtil = TsUtil.getInstance();
        final int size = data.length;
        for (int i = 0; i < size; i++) {
            stringBuilder.appendint(tsUtil.hashCode1(data[i]!));
            stringBuilder.append(CommonSeps.getInstance().SPACE);
        }
        JSystem.println(jstr(stringBuilder.toString()));
    }
}

