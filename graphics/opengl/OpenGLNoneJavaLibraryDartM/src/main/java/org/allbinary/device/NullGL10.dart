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
// package org.allbinary.device

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/khronos/opengles/GL10.dart';
import 'package:allbinary/java/nio/Buffer.dart';
import 'package:allbinary/java/nio/FloatBuffer.dart';
import 'package:allbinary/java/nio/IntBuffer.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';

class NullGL10 implements GL10 {
    static final NullGL10 NULL_GL10 = NullGL10();
    

    @override
    void glActiveTexture(int texture) {
        return;
    }
    

    @override
    void glAlphaFunc(int func, double ref) {
        return;
    }
    

    @override
    void glBindTexture(int target, int texture) {
        return;
    }
    

    @override
    void glBlendFunc(int sfactor, int dfactor) {
        return;
    }
    

    @override
    void glClear(int mask) {
        return;
    }
    

    @override
    void glClearColor(double red, double green, double blue, double alpha) {
        return;
    }
    

    @override
    void glClearDepthf(double depth) {
        return;
    }
    

    @override
    void glClearStencil(int s) {
        return;
    }
    

    @override
    void glClientActiveTexture(int texture) {
        return;
    }
    

    @override
    void glColor4f(double red, double green, double blue, double alpha) {
        return;
    }
    

    @override
    void glColorMask(bool red, bool green, bool blue, bool alpha) {
        return;
    }
    

    @override
    void glColorPointer(int size, int type, int stride, Buffer pointer) {
        return;
    }
    

    @override
    void glCompressedTexImage2D(int target, int level, int internalformat, int width, int height, int border, int imageSize, Buffer data) {
        return;
    }
    

    @override
    void glCompressedTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int imageSize, Buffer data) {
        return;
    }
    

    @override
    void glCopyTexImage2D(int target, int level, int internalformat, int x, int y, int width, int height, int border) {
        return;
    }
    

    @override
    void glCopyTexSubImage2D(int target, int level, int xoffset, int yoffset, int x, int y, int width, int height) {
        return;
    }
    

    @override
    void glCullFace(int mode) {
        return;
    }
    

    @override
    void glDeleteTextures([dynamic p0 = jnone, dynamic p1 = jnone, dynamic p2 = jnone]) {
        if (!identical(p2, jnone) && p0 is int && jIsList(p1) && p2 is int) {
            this.glDeleteTextures$3(p0, p1, p2);
            return;
        }
        if (!identical(p1, jnone) && identical(p2, jnone) && p0 is int && p1 is IntBuffer) {
            this.glDeleteTextures$2(p0, p1);
            return;
        }
        throw JException('NoSuchMethodError', 'glDeleteTextures');
    }

    @override
    void glDeleteTextures$3(int n, List<int> textures, int offset) {
        return;
    }
    

    @override
    void glDeleteTextures$2(int n, IntBuffer textures) {
        return;
    }
    

    @override
    void glDepthFunc(int func) {
        return;
    }
    

    @override
    void glDepthMask(bool flag) {
        return;
    }
    

    @override
    void glDepthRangef(double zNear, double zFar) {
        return;
    }
    

    @override
    void glDisable(int cap) {
        return;
    }
    

    @override
    void glDisableClientState(int array) {
        return;
    }
    

    @override
    void glDrawArrays(int mode, int first, int count) {
        return;
    }
    

    @override
    void glDrawElements(int mode, int count, int type, Buffer indices) {
        return;
    }
    

    @override
    void glEnable(int cap) {
        return;
    }
    

    @override
    void glEnableClientState(int array) {
        return;
    }
    

    @override
    void glFinish() {
        return;
    }
    

    @override
    void glFlush() {
        return;
    }
    

    @override
    void glFogf(int pname, double param) {
        return;
    }
    

    @override
    void glFogfv([dynamic p0 = jnone, dynamic p1 = jnone, dynamic p2 = jnone]) {
        if (!identical(p2, jnone) && p0 is int && jIsList(p1) && p2 is int) {
            this.glFogfv$3(p0, p1, p2);
            return;
        }
        if (!identical(p1, jnone) && identical(p2, jnone) && p0 is int && p1 is FloatBuffer) {
            this.glFogfv$2(p0, p1);
            return;
        }
        throw JException('NoSuchMethodError', 'glFogfv');
    }

    @override
    void glFogfv$3(int pname, List<double> params, int offset) {
        return;
    }
    

    @override
    void glFogfv$2(int pname, FloatBuffer params) {
        return;
    }
    

    @override
    void glFrontFace(int mode) {
        return;
    }
    

    @override
    void glFrustumf(double left, double right, double bottom, double top, double zNear, double zFar) {
        return;
    }
    

    @override
    void glGenTextures([dynamic p0 = jnone, dynamic p1 = jnone, dynamic p2 = jnone]) {
        if (!identical(p2, jnone) && p0 is int && jIsList(p1) && p2 is int) {
            this.glGenTextures$3(p0, p1, p2);
            return;
        }
        if (!identical(p1, jnone) && identical(p2, jnone) && p0 is int && p1 is IntBuffer) {
            this.glGenTextures$2(p0, p1);
            return;
        }
        throw JException('NoSuchMethodError', 'glGenTextures');
    }

    @override
    void glGenTextures$3(int n, List<int> textures, int offset) {
        return;
    }
    

    @override
    void glGenTextures$2(int n, IntBuffer textures) {
        return;
    }
    

    @override
    int glGetError() {
        return 0;
    }
    

    @override
    void glGetIntegerv([dynamic p0 = jnone, dynamic p1 = jnone, dynamic p2 = jnone]) {
        if (!identical(p2, jnone) && p0 is int && jIsList(p1) && p2 is int) {
            this.glGetIntegerv$3(p0, p1, p2);
            return;
        }
        if (!identical(p1, jnone) && identical(p2, jnone) && p0 is int && p1 is IntBuffer) {
            this.glGetIntegerv$2(p0, p1);
            return;
        }
        throw JException('NoSuchMethodError', 'glGetIntegerv');
    }

    @override
    void glGetIntegerv$3(int pname, List<int> params, int offset) {
        return;
    }
    

    @override
    void glGetIntegerv$2(int pname, IntBuffer params) {
        return;
    }
    

    @override
    String glGetString(int name) {
        return StringUtil.getInstance().EMPTY_STRING;
    }
    

    @override
    void glHint(int target, int mode) {
        return;
    }
    

    @override
    void glLightModelf(int pname, double param) {
        return;
    }
    

    @override
    void glLightModelfv([dynamic p0 = jnone, dynamic p1 = jnone, dynamic p2 = jnone]) {
        if (!identical(p2, jnone) && p0 is int && jIsList(p1) && p2 is int) {
            this.glLightModelfv$3(p0, p1, p2);
            return;
        }
        if (!identical(p1, jnone) && identical(p2, jnone) && p0 is int && p1 is FloatBuffer) {
            this.glLightModelfv$2(p0, p1);
            return;
        }
        throw JException('NoSuchMethodError', 'glLightModelfv');
    }

    @override
    void glLightModelfv$3(int pname, List<double> params, int offset) {
        return;
    }
    

    @override
    void glLightModelfv$2(int pname, FloatBuffer params) {
        return;
    }
    

    @override
    void glLightf(int light, int pname, double param) {
        return;
    }
    

    @override
    void glLightfv([dynamic p0 = jnone, dynamic p1 = jnone, dynamic p2 = jnone, dynamic p3 = jnone]) {
        if (!identical(p3, jnone) && p0 is int && p1 is int && jIsList(p2) && p3 is int) {
            this.glLightfv$4(p0, p1, p2, p3);
            return;
        }
        if (!identical(p2, jnone) && identical(p3, jnone) && p0 is int && p1 is int && p2 is FloatBuffer) {
            this.glLightfv$3(p0, p1, p2);
            return;
        }
        throw JException('NoSuchMethodError', 'glLightfv');
    }

    @override
    void glLightfv$4(int light, int pname, List<double> params, int offset) {
        return;
    }
    

    @override
    void glLightfv$3(int light, int pname, FloatBuffer params) {
        return;
    }
    

    @override
    void glLineWidth(double width) {
        return;
    }
    

    @override
    void glLoadIdentity() {
        return;
    }
    

    @override
    void glLoadMatrixf([dynamic p0 = jnone, dynamic p1 = jnone]) {
        if (!identical(p1, jnone) && jIsList(p0) && p1 is int) {
            this.glLoadMatrixf$2(p0, p1);
            return;
        }
        if (!identical(p0, jnone) && identical(p1, jnone) && p0 is FloatBuffer) {
            this.glLoadMatrixf$1(p0);
            return;
        }
        throw JException('NoSuchMethodError', 'glLoadMatrixf');
    }

    @override
    void glLoadMatrixf$2(List<double> m, int offset) {
        return;
    }
    

    @override
    void glLoadMatrixf$1(FloatBuffer m) {
        return;
    }
    

    @override
    void glLogicOp(int opcode) {
        return;
    }
    

    @override
    void glMaterialf(int face, int pname, double param) {
        return;
    }
    

    @override
    void glMaterialfv([dynamic p0 = jnone, dynamic p1 = jnone, dynamic p2 = jnone, dynamic p3 = jnone]) {
        if (!identical(p3, jnone) && p0 is int && p1 is int && jIsList(p2) && p3 is int) {
            this.glMaterialfv$4(p0, p1, p2, p3);
            return;
        }
        if (!identical(p2, jnone) && identical(p3, jnone) && p0 is int && p1 is int && p2 is FloatBuffer) {
            this.glMaterialfv$3(p0, p1, p2);
            return;
        }
        throw JException('NoSuchMethodError', 'glMaterialfv');
    }

    @override
    void glMaterialfv$4(int face, int pname, List<double> params, int offset) {
        return;
    }
    

    @override
    void glMaterialfv$3(int face, int pname, FloatBuffer params) {
        return;
    }
    

    @override
    void glMatrixMode(int mode) {
        return;
    }
    

    @override
    void glMultMatrixf([dynamic p0 = jnone, dynamic p1 = jnone]) {
        if (!identical(p1, jnone) && jIsList(p0) && p1 is int) {
            this.glMultMatrixf$2(p0, p1);
            return;
        }
        if (!identical(p0, jnone) && identical(p1, jnone) && p0 is FloatBuffer) {
            this.glMultMatrixf$1(p0);
            return;
        }
        throw JException('NoSuchMethodError', 'glMultMatrixf');
    }

    @override
    void glMultMatrixf$2(List<double> m, int offset) {
        return;
    }
    

    @override
    void glMultMatrixf$1(FloatBuffer m) {
        return;
    }
    

    @override
    void glMultiTexCoord4f(int target, double s, double t, double r, double q) {
        return;
    }
    

    @override
    void glNormal3f(double nx, double ny, double nz) {
        return;
    }
    

    @override
    void glNormalPointer(int type, int stride, Buffer pointer) {
        return;
    }
    

    @override
    void glOrthof(double left, double right, double bottom, double top, double zNear, double zFar) {
        return;
    }
    

    @override
    void glPixelStorei(int pname, int param) {
        return;
    }
    

    @override
    void glPointSize(double size) {
        return;
    }
    

    @override
    void glPolygonOffset(double factor, double units) {
        return;
    }
    

    @override
    void glPopMatrix() {
        return;
    }
    

    @override
    void glPushMatrix() {
        return;
    }
    

    @override
    void glReadPixels(int x, int y, int width, int height, int format, int type, Buffer pixels) {
        return;
    }
    

    @override
    void glRotatef(double angle, double x, double y, double z) {
        return;
    }
    

    @override
    void glRotatex(int angle, int x, int y, int z) {
        return;
    }
    

    @override
    void glSampleCoverage(double value, bool invert) {
        return;
    }
    

    @override
    void glScalef(double x, double y, double z) {
        return;
    }
    

    @override
    void glScalex(int x, int y, int z) {
        return;
    }
    

    @override
    void glScissor(int x, int y, int width, int height) {
        return;
    }
    

    @override
    void glShadeModel(int mode) {
        return;
    }
    

    @override
    void glStencilFunc(int func, int ref, int mask) {
        return;
    }
    

    @override
    void glStencilMask(int mask) {
        return;
    }
    

    @override
    void glStencilOp(int fail, int zfail, int zpass) {
        return;
    }
    

    @override
    void glTexCoordPointer(int size, int type, int stride, Buffer pointer) {
        return;
    }
    

    @override
    void glTexEnvf(int target, int pname, double param) {
        return;
    }
    

    @override
    void glTexEnvfv([dynamic p0 = jnone, dynamic p1 = jnone, dynamic p2 = jnone, dynamic p3 = jnone]) {
        if (!identical(p3, jnone) && p0 is int && p1 is int && jIsList(p2) && p3 is int) {
            this.glTexEnvfv$4(p0, p1, p2, p3);
            return;
        }
        if (!identical(p2, jnone) && identical(p3, jnone) && p0 is int && p1 is int && p2 is FloatBuffer) {
            this.glTexEnvfv$3(p0, p1, p2);
            return;
        }
        throw JException('NoSuchMethodError', 'glTexEnvfv');
    }

    @override
    void glTexEnvfv$4(int target, int pname, List<double> params, int offset) {
        return;
    }
    

    @override
    void glTexEnvfv$3(int target, int pname, FloatBuffer params) {
        return;
    }
    

    @override
    void glTexImage2D(int target, int level, int internalformat, int width, int height, int border, int format, int type, Buffer pixels) {
        return;
    }
    

    @override
    void glTexParameterf(int target, int pname, double param) {
        return;
    }
    

    @override
    void glTexParameteri(int target, int pname, int param) {
        return;
    }
    

    @override
    void glTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, Buffer pixels) {
        return;
    }
    

    @override
    void glTranslatef(double x, double y, double z) {
        return;
    }
    

    @override
    void glVertexPointer(int size, int type, int stride, Buffer pointer) {
        return;
    }
    

    @override
    void glViewport(int x, int y, int width, int height) {
        return;
    }
    

    @override
    void glBegin(int i) {
        return;
    }
    

    @override
    void glEnd() {
        return;
    }
    

    @override
    void glVertex3f(double f, double f2, double f3) {
        return;
    }
    

    @override
    void glPolygonMode(int i, int i1) {
        return;
    }
}

