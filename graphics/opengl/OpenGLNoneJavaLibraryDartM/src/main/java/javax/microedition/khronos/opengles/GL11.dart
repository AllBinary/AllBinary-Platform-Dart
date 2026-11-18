// Generated Code Do Not Modify
// ignore_for_file: unused_import, unnecessary_import, unused_local_variable, unnecessary_null_comparison, unnecessary_cast
// package javax.microedition.khronos.opengles

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/java/nio/Buffer.dart';
import 'package:allbinary/java/nio/FloatBuffer.dart';
import 'package:allbinary/java/nio/IntBuffer.dart';
import 'package:allbinary/javax/microedition/khronos/opengles/GL10.dart';

abstract interface class GL11 implements GL10 {
    static const int GL_ACTIVE_TEXTURE = 34016;
    static const int GL_ADD_SIGNED = 34164;
    static const int GL_ALPHA_SCALE = 3356;
    static const int GL_ALPHA_TEST_FUNC = 3009;
    static const int GL_ALPHA_TEST_REF = 3010;
    static const int GL_ARRAY_BUFFER = 34962;
    static const int GL_ARRAY_BUFFER_BINDING = 34964;
    static const int GL_BLEND_DST = 3040;
    static const int GL_BLEND_SRC = 3041;
    static const int GL_BUFFER_ACCESS = 35003;
    static const int GL_BUFFER_SIZE = 34660;
    static const int GL_BUFFER_USAGE = 34661;
    static const int GL_CLIENT_ACTIVE_TEXTURE = 34017;
    static const int GL_CLIP_PLANE0 = 12288;
    static const int GL_CLIP_PLANE1 = 12289;
    static const int GL_CLIP_PLANE2 = 12290;
    static const int GL_CLIP_PLANE3 = 12291;
    static const int GL_CLIP_PLANE4 = 12292;
    static const int GL_CLIP_PLANE5 = 12293;
    static const int GL_COLOR_ARRAY_BUFFER_BINDING = 34968;
    static const int GL_COLOR_ARRAY_POINTER = 32912;
    static const int GL_COLOR_ARRAY_SIZE = 32897;
    static const int GL_COLOR_ARRAY_STRIDE = 32899;
    static const int GL_COLOR_ARRAY_TYPE = 32898;
    static const int GL_COLOR_CLEAR_VALUE = 3106;
    static const int GL_COLOR_WRITEMASK = 3107;
    static const int GL_COMBINE = 34160;
    static const int GL_COMBINE_ALPHA = 34162;
    static const int GL_COMBINE_RGB = 34161;
    static const int GL_CONSTANT = 34166;
    static const int GL_COORD_REPLACE_OES = 34914;
    static const int GL_CULL_FACE_MODE = 2885;
    static const int GL_CURRENT_COLOR = 2816;
    static const int GL_CURRENT_NORMAL = 2818;
    static const int GL_CURRENT_TEXTURE_COORDS = 2819;
    static const int GL_DEPTH_CLEAR_VALUE = 2931;
    static const int GL_DEPTH_FUNC = 2932;
    static const int GL_DEPTH_RANGE = 2928;
    static const int GL_DEPTH_WRITEMASK = 2930;
    static const int GL_DOT3_RGB = 34478;
    static const int GL_DOT3_RGBA = 34479;
    static const int GL_DYNAMIC_DRAW = 35048;
    static const int GL_ELEMENT_ARRAY_BUFFER = 34963;
    static const int GL_ELEMENT_ARRAY_BUFFER_BINDING = 34965;
    static const int GL_FRONT_FACE = 2886;
    static const int GL_GENERATE_MIPMAP = 33169;
    static const int GL_GENERATE_MIPMAP_HINT = 33170;
    static const int GL_INTERPOLATE = 34165;
    static const int GL_LINE_WIDTH = 2849;
    static const int GL_LOGIC_OP_MODE = 3056;
    static const int GL_MATRIX_MODE = 2976;
    static const int GL_MAX_CLIP_PLANES = 3378;
    static const int GL_MODELVIEW_MATRIX = 2982;
    static const int GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES = 35213;
    static const int GL_MODELVIEW_STACK_DEPTH = 2979;
    static const int GL_NORMAL_ARRAY_BUFFER_BINDING = 34967;
    static const int GL_NORMAL_ARRAY_POINTER = 32911;
    static const int GL_NORMAL_ARRAY_STRIDE = 32895;
    static const int GL_NORMAL_ARRAY_TYPE = 32894;
    static const int GL_OPERAND0_ALPHA = 34200;
    static const int GL_OPERAND0_RGB = 34192;
    static const int GL_OPERAND1_ALPHA = 34201;
    static const int GL_OPERAND1_RGB = 34193;
    static const int GL_OPERAND2_ALPHA = 34202;
    static const int GL_OPERAND2_RGB = 34194;
    static const int GL_POINT_DISTANCE_ATTENUATION = 33065;
    static const int GL_POINT_FADE_THRESHOLD_SIZE = 33064;
    static const int GL_POINT_SIZE = 2833;
    static const int GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OES = 35743;
    static const int GL_POINT_SIZE_ARRAY_OES = 35740;
    static const int GL_POINT_SIZE_ARRAY_POINTER_OES = 35212;
    static const int GL_POINT_SIZE_ARRAY_STRIDE_OES = 35211;
    static const int GL_POINT_SIZE_ARRAY_TYPE_OES = 35210;
    static const int GL_POINT_SIZE_MAX = 33063;
    static const int GL_POINT_SIZE_MIN = 33062;
    static const int GL_POINT_SPRITE_OES = 34913;
    static const int GL_POLYGON_OFFSET_FACTOR = 32824;
    static const int GL_POLYGON_OFFSET_UNITS = 10752;
    static const int GL_PREVIOUS = 34168;
    static const int GL_PRIMARY_COLOR = 34167;
    static const int GL_PROJECTION_MATRIX = 2983;
    static const int GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES = 35214;
    static const int GL_PROJECTION_STACK_DEPTH = 2980;
    static const int GL_RGB_SCALE = 34163;
    static const int GL_SAMPLE_BUFFERS = 32936;
    static const int GL_SAMPLE_COVERAGE_INVERT = 32939;
    static const int GL_SAMPLE_COVERAGE_VALUE = 32938;
    static const int GL_SAMPLES = 32937;
    static const int GL_SCISSOR_BOX = 3088;
    static const int GL_SHADE_MODEL = 2900;
    static const int GL_SRC0_ALPHA = 34184;
    static const int GL_SRC0_RGB = 34176;
    static const int GL_SRC1_ALPHA = 34185;
    static const int GL_SRC1_RGB = 34177;
    static const int GL_SRC2_ALPHA = 34186;
    static const int GL_SRC2_RGB = 34178;
    static const int GL_STATIC_DRAW = 35044;
    static const int GL_STENCIL_CLEAR_VALUE = 2961;
    static const int GL_STENCIL_FAIL = 2964;
    static const int GL_STENCIL_FUNC = 2962;
    static const int GL_STENCIL_PASS_DEPTH_FAIL = 2965;
    static const int GL_STENCIL_PASS_DEPTH_PASS = 2966;
    static const int GL_STENCIL_REF = 2967;
    static const int GL_STENCIL_VALUE_MASK = 2963;
    static const int GL_STENCIL_WRITEMASK = 2968;
    static const int GL_SUBTRACT = 34023;
    static const int GL_TEXTURE_BINDING_2D = 32873;
    static const int GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING = 34970;
    static const int GL_TEXTURE_COORD_ARRAY_POINTER = 32914;
    static const int GL_TEXTURE_COORD_ARRAY_SIZE = 32904;
    static const int GL_TEXTURE_COORD_ARRAY_STRIDE = 32906;
    static const int GL_TEXTURE_COORD_ARRAY_TYPE = 32905;
    static const int GL_TEXTURE_MATRIX = 2984;
    static const int GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES = 35215;
    static const int GL_TEXTURE_STACK_DEPTH = 2981;
    static const int GL_VERTEX_ARRAY_BUFFER_BINDING = 34966;
    static const int GL_VERTEX_ARRAY_POINTER = 32910;
    static const int GL_VERTEX_ARRAY_SIZE = 32890;
    static const int GL_VERTEX_ARRAY_STRIDE = 32892;
    static const int GL_VERTEX_ARRAY_TYPE = 32891;
    static const int GL_VIEWPORT = 2978;
    static const int GL_WRITE_ONLY = 35001;
    

    void glBindBuffer(int target, int buffer);
    

    void glBufferData(int target, int size, Buffer data, int usage);
    

    void glBufferSubData(int target, int offset, int size, Buffer data);
    

    void glClipPlanef([dynamic p0 = jnone, dynamic p1 = jnone, dynamic p2 = jnone]) {
        if (!identical(p2, jnone) && p0 is int && jIsList(p1) && p2 is int) {
            this.glClipPlanef$3(p0, p1, p2);
            return;
        }
        if (!identical(p1, jnone) && identical(p2, jnone) && p0 is int && p1 is FloatBuffer) {
            this.glClipPlanef$2(p0, p1);
            return;
        }
        throw JException('NoSuchMethodError', 'glClipPlanef');
    }

    void glClipPlanef$3(int plane, List<double> equation, int offset);
    

    void glClipPlanef$2(int plane, FloatBuffer equation);
    

    void glColor4ub(int red, int green, int blue, int alpha);
    

    @override
    void glColorPointer([dynamic p0 = jnone, dynamic p1 = jnone, dynamic p2 = jnone, dynamic p3 = jnone]) {
        if (!identical(p3, jnone) && p0 is int && p1 is int && p2 is int && p3 is int) {
            this.glColorPointer$4$I_I_I_I(p0, p1, p2, p3);
            return;
        }
        if (!identical(p3, jnone) && p0 is int && p1 is int && p2 is int && p3 is Buffer) {
            this.glColorPointer$4$I_I_I_Buffer(p0, p1, p2, p3);
            return;
        }
        throw JException('NoSuchMethodError', 'glColorPointer');
    }

    dynamic glColorPointer$4$I_I_I_Buffer(dynamic p0, dynamic p1, dynamic p2, dynamic p3);

    void glColorPointer$4$I_I_I_I(int size, int type, int stride, int offset);
    

    void glDeleteBuffers([dynamic p0 = jnone, dynamic p1 = jnone, dynamic p2 = jnone]) {
        if (!identical(p2, jnone) && p0 is int && jIsList(p1) && p2 is int) {
            this.glDeleteBuffers$3(p0, p1, p2);
            return;
        }
        if (!identical(p1, jnone) && identical(p2, jnone) && p0 is int && p1 is IntBuffer) {
            this.glDeleteBuffers$2(p0, p1);
            return;
        }
        throw JException('NoSuchMethodError', 'glDeleteBuffers');
    }

    void glDeleteBuffers$3(int n, List<int> buffers, int offset);
    

    void glDeleteBuffers$2(int n, IntBuffer buffers);
    

    @override
    void glDrawElements([dynamic p0 = jnone, dynamic p1 = jnone, dynamic p2 = jnone, dynamic p3 = jnone]) {
        if (!identical(p3, jnone) && p0 is int && p1 is int && p2 is int && p3 is int) {
            this.glDrawElements$4$I_I_I_I(p0, p1, p2, p3);
            return;
        }
        if (!identical(p3, jnone) && p0 is int && p1 is int && p2 is int && p3 is Buffer) {
            this.glDrawElements$4$I_I_I_Buffer(p0, p1, p2, p3);
            return;
        }
        throw JException('NoSuchMethodError', 'glDrawElements');
    }

    dynamic glDrawElements$4$I_I_I_Buffer(dynamic p0, dynamic p1, dynamic p2, dynamic p3);

    void glDrawElements$4$I_I_I_I(int mode, int count, int type, int offset);
    

    void glGenBuffers([dynamic p0 = jnone, dynamic p1 = jnone, dynamic p2 = jnone]) {
        if (!identical(p2, jnone) && p0 is int && jIsList(p1) && p2 is int) {
            this.glGenBuffers$3(p0, p1, p2);
            return;
        }
        if (!identical(p1, jnone) && identical(p2, jnone) && p0 is int && p1 is IntBuffer) {
            this.glGenBuffers$2(p0, p1);
            return;
        }
        throw JException('NoSuchMethodError', 'glGenBuffers');
    }

    void glGenBuffers$3(int n, List<int> buffers, int offset);
    

    void glGenBuffers$2(int n, IntBuffer buffers);
    

    void glGetBufferParameteriv([dynamic p0 = jnone, dynamic p1 = jnone, dynamic p2 = jnone, dynamic p3 = jnone]) {
        if (!identical(p3, jnone) && p0 is int && p1 is int && jIsList(p2) && p3 is int) {
            this.glGetBufferParameteriv$4(p0, p1, p2, p3);
            return;
        }
        if (!identical(p2, jnone) && identical(p3, jnone) && p0 is int && p1 is int && p2 is IntBuffer) {
            this.glGetBufferParameteriv$3(p0, p1, p2);
            return;
        }
        throw JException('NoSuchMethodError', 'glGetBufferParameteriv');
    }

    void glGetBufferParameteriv$4(int target, int pname, List<int> params, int offset);
    

    void glGetBufferParameteriv$3(int target, int pname, IntBuffer params);
    

    void glGetClipPlanef([dynamic p0 = jnone, dynamic p1 = jnone, dynamic p2 = jnone]) {
        if (!identical(p2, jnone) && p0 is int && jIsList(p1) && p2 is int) {
            this.glGetClipPlanef$3(p0, p1, p2);
            return;
        }
        if (!identical(p1, jnone) && identical(p2, jnone) && p0 is int && p1 is FloatBuffer) {
            this.glGetClipPlanef$2(p0, p1);
            return;
        }
        throw JException('NoSuchMethodError', 'glGetClipPlanef');
    }

    void glGetClipPlanef$3(int pname, List<double> eqn, int offset);
    

    void glGetClipPlanef$2(int pname, FloatBuffer eqn);
    

    void glGetFloatv([dynamic p0 = jnone, dynamic p1 = jnone, dynamic p2 = jnone]) {
        if (!identical(p2, jnone) && p0 is int && jIsList(p1) && p2 is int) {
            this.glGetFloatv$3(p0, p1, p2);
            return;
        }
        if (!identical(p1, jnone) && identical(p2, jnone) && p0 is int && p1 is FloatBuffer) {
            this.glGetFloatv$2(p0, p1);
            return;
        }
        throw JException('NoSuchMethodError', 'glGetFloatv');
    }

    void glGetFloatv$3(int pname, List<double> params, int offset);
    

    void glGetFloatv$2(int pname, FloatBuffer params);
    

    void glGetLightfv([dynamic p0 = jnone, dynamic p1 = jnone, dynamic p2 = jnone, dynamic p3 = jnone]) {
        if (!identical(p3, jnone) && p0 is int && p1 is int && jIsList(p2) && p3 is int) {
            this.glGetLightfv$4(p0, p1, p2, p3);
            return;
        }
        if (!identical(p2, jnone) && identical(p3, jnone) && p0 is int && p1 is int && p2 is FloatBuffer) {
            this.glGetLightfv$3(p0, p1, p2);
            return;
        }
        throw JException('NoSuchMethodError', 'glGetLightfv');
    }

    void glGetLightfv$4(int light, int pname, List<double> params, int offset);
    

    void glGetLightfv$3(int light, int pname, FloatBuffer params);
    

    void glGetMaterialfv([dynamic p0 = jnone, dynamic p1 = jnone, dynamic p2 = jnone, dynamic p3 = jnone]) {
        if (!identical(p3, jnone) && p0 is int && p1 is int && jIsList(p2) && p3 is int) {
            this.glGetMaterialfv$4(p0, p1, p2, p3);
            return;
        }
        if (!identical(p2, jnone) && identical(p3, jnone) && p0 is int && p1 is int && p2 is FloatBuffer) {
            this.glGetMaterialfv$3(p0, p1, p2);
            return;
        }
        throw JException('NoSuchMethodError', 'glGetMaterialfv');
    }

    void glGetMaterialfv$4(int face, int pname, List<double> params, int offset);
    

    void glGetMaterialfv$3(int face, int pname, FloatBuffer params);
    

    void glGetTexEnviv([dynamic p0 = jnone, dynamic p1 = jnone, dynamic p2 = jnone, dynamic p3 = jnone]) {
        if (!identical(p3, jnone) && p0 is int && p1 is int && jIsList(p2) && p3 is int) {
            this.glGetTexEnviv$4(p0, p1, p2, p3);
            return;
        }
        if (!identical(p2, jnone) && identical(p3, jnone) && p0 is int && p1 is int && p2 is IntBuffer) {
            this.glGetTexEnviv$3(p0, p1, p2);
            return;
        }
        throw JException('NoSuchMethodError', 'glGetTexEnviv');
    }

    void glGetTexEnviv$4(int env, int pname, List<int> params, int offset);
    

    void glGetTexEnviv$3(int env, int pname, IntBuffer params);
    

    void glGetTexParameterfv([dynamic p0 = jnone, dynamic p1 = jnone, dynamic p2 = jnone, dynamic p3 = jnone]) {
        if (!identical(p3, jnone) && p0 is int && p1 is int && jIsList(p2) && p3 is int) {
            this.glGetTexParameterfv$4(p0, p1, p2, p3);
            return;
        }
        if (!identical(p2, jnone) && identical(p3, jnone) && p0 is int && p1 is int && p2 is FloatBuffer) {
            this.glGetTexParameterfv$3(p0, p1, p2);
            return;
        }
        throw JException('NoSuchMethodError', 'glGetTexParameterfv');
    }

    void glGetTexParameterfv$4(int target, int pname, List<double> params, int offset);
    

    void glGetTexParameterfv$3(int target, int pname, FloatBuffer params);
    

    void glGetTexParameteriv([dynamic p0 = jnone, dynamic p1 = jnone, dynamic p2 = jnone, dynamic p3 = jnone]) {
        if (!identical(p3, jnone) && p0 is int && p1 is int && jIsList(p2) && p3 is int) {
            this.glGetTexParameteriv$4(p0, p1, p2, p3);
            return;
        }
        if (!identical(p2, jnone) && identical(p3, jnone) && p0 is int && p1 is int && p2 is IntBuffer) {
            this.glGetTexParameteriv$3(p0, p1, p2);
            return;
        }
        throw JException('NoSuchMethodError', 'glGetTexParameteriv');
    }

    void glGetTexParameteriv$4(int target, int pname, List<int> params, int offset);
    

    void glGetTexParameteriv$3(int target, int pname, IntBuffer params);
    

    bool glIsBuffer(int buffer);
    

    bool glIsEnabled(int cap);
    

    bool glIsTexture(int texture);
    

    @override
    void glNormalPointer([dynamic p0 = jnone, dynamic p1 = jnone, dynamic p2 = jnone]) {
        if (!identical(p2, jnone) && p0 is int && p1 is int && p2 is int) {
            this.glNormalPointer$3$I_I_I(p0, p1, p2);
            return;
        }
        if (!identical(p2, jnone) && p0 is int && p1 is int && p2 is Buffer) {
            this.glNormalPointer$3$I_I_Buffer(p0, p1, p2);
            return;
        }
        throw JException('NoSuchMethodError', 'glNormalPointer');
    }

    dynamic glNormalPointer$3$I_I_Buffer(dynamic p0, dynamic p1, dynamic p2);

    void glNormalPointer$3$I_I_I(int type, int stride, int offset);
    

    void glPointParameterf(int pname, double param);
    

    void glPointParameterfv([dynamic p0 = jnone, dynamic p1 = jnone, dynamic p2 = jnone]) {
        if (!identical(p2, jnone) && p0 is int && jIsList(p1) && p2 is int) {
            this.glPointParameterfv$3(p0, p1, p2);
            return;
        }
        if (!identical(p1, jnone) && identical(p2, jnone) && p0 is int && p1 is FloatBuffer) {
            this.glPointParameterfv$2(p0, p1);
            return;
        }
        throw JException('NoSuchMethodError', 'glPointParameterfv');
    }

    void glPointParameterfv$3(int pname, List<double> params, int offset);
    

    void glPointParameterfv$2(int pname, FloatBuffer params);
    

    @override
    void glTexCoordPointer([dynamic p0 = jnone, dynamic p1 = jnone, dynamic p2 = jnone, dynamic p3 = jnone]) {
        if (!identical(p3, jnone) && p0 is int && p1 is int && p2 is int && p3 is int) {
            this.glTexCoordPointer$4$I_I_I_I(p0, p1, p2, p3);
            return;
        }
        if (!identical(p3, jnone) && p0 is int && p1 is int && p2 is int && p3 is Buffer) {
            this.glTexCoordPointer$4$I_I_I_Buffer(p0, p1, p2, p3);
            return;
        }
        throw JException('NoSuchMethodError', 'glTexCoordPointer');
    }

    dynamic glTexCoordPointer$4$I_I_I_Buffer(dynamic p0, dynamic p1, dynamic p2, dynamic p3);

    void glTexCoordPointer$4$I_I_I_I(int size, int type, int stride, int offset);
    

    void glTexEnvi(int target, int pname, int param);
    

    void glTexEnviv([dynamic p0 = jnone, dynamic p1 = jnone, dynamic p2 = jnone, dynamic p3 = jnone]) {
        if (!identical(p3, jnone) && p0 is int && p1 is int && jIsList(p2) && p3 is int) {
            this.glTexEnviv$4(p0, p1, p2, p3);
            return;
        }
        if (!identical(p2, jnone) && identical(p3, jnone) && p0 is int && p1 is int && p2 is IntBuffer) {
            this.glTexEnviv$3(p0, p1, p2);
            return;
        }
        throw JException('NoSuchMethodError', 'glTexEnviv');
    }

    void glTexEnviv$4(int target, int pname, List<int> params, int offset);
    

    void glTexEnviv$3(int target, int pname, IntBuffer params);
    

    void glTexParameterfv([dynamic p0 = jnone, dynamic p1 = jnone, dynamic p2 = jnone, dynamic p3 = jnone]) {
        if (!identical(p3, jnone) && p0 is int && p1 is int && jIsList(p2) && p3 is int) {
            this.glTexParameterfv$4(p0, p1, p2, p3);
            return;
        }
        if (!identical(p2, jnone) && identical(p3, jnone) && p0 is int && p1 is int && p2 is FloatBuffer) {
            this.glTexParameterfv$3(p0, p1, p2);
            return;
        }
        throw JException('NoSuchMethodError', 'glTexParameterfv');
    }

    void glTexParameterfv$4(int target, int pname, List<double> params, int offset);
    

    void glTexParameterfv$3(int target, int pname, FloatBuffer params);
    

    void glTexParameteriv([dynamic p0 = jnone, dynamic p1 = jnone, dynamic p2 = jnone, dynamic p3 = jnone]) {
        if (!identical(p3, jnone) && p0 is int && p1 is int && jIsList(p2) && p3 is int) {
            this.glTexParameteriv$4(p0, p1, p2, p3);
            return;
        }
        if (!identical(p2, jnone) && identical(p3, jnone) && p0 is int && p1 is int && p2 is IntBuffer) {
            this.glTexParameteriv$3(p0, p1, p2);
            return;
        }
        throw JException('NoSuchMethodError', 'glTexParameteriv');
    }

    void glTexParameteriv$4(int target, int pname, List<int> params, int offset);
    

    void glTexParameteriv$3(int target, int pname, IntBuffer params);
    

    @override
    void glVertexPointer([dynamic p0 = jnone, dynamic p1 = jnone, dynamic p2 = jnone, dynamic p3 = jnone]) {
        if (!identical(p3, jnone) && p0 is int && p1 is int && p2 is int && p3 is int) {
            this.glVertexPointer$4$I_I_I_I(p0, p1, p2, p3);
            return;
        }
        if (!identical(p3, jnone) && p0 is int && p1 is int && p2 is int && p3 is Buffer) {
            this.glVertexPointer$4$I_I_I_Buffer(p0, p1, p2, p3);
            return;
        }
        throw JException('NoSuchMethodError', 'glVertexPointer');
    }

    dynamic glVertexPointer$4$I_I_I_Buffer(dynamic p0, dynamic p1, dynamic p2, dynamic p3);

    void glVertexPointer$4$I_I_I_I(int size, int type, int stride, int offset);
}

