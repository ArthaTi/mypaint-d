// D import file generated from 'source/mypaint.c'
extern (C)
{
	// alias __uint16_t = ushort;
	// alias __uint32_t = uint;
	// alias __uint64_t = ulong;
	void mypaint_init();
	alias gpointer = void*;
	alias gchar = char;
	alias gint = int;
	alias gboolean = int;
	alias guint16 = ushort;
	struct MyPaintRectangle
	{
		int x = void;
		int y = void;
		int width = void;
		int height = void;
	}
	struct MyPaintRectangles
	{
		int num_rectangles = void;
		MyPaintRectangle* rectangles = void;
	}
	void mypaint_rectangle_expand_to_include_point(MyPaintRectangle* r, int x, int y);
	void mypaint_rectangle_expand_to_include_rect(MyPaintRectangle* r, MyPaintRectangle* other);
	MyPaintRectangle* mypaint_rectangle_copy(MyPaintRectangle* self);
	// struct MyPaintSurface;
	alias MyPaintSurfaceGetColorFunction = void function(MyPaintSurface* self, float x, float y, float radius, float* color_r, float* color_g, float* color_b, float* color_a, float paint);
	alias MyPaintSurfaceDrawDabFunction = int function(MyPaintSurface* self, float x, float y, float radius, float color_r, float color_g, float color_b, float opaque, float hardness, float softness, float alpha_eraser, float aspect_ratio, float angle, float lock_alpha, float colorize, float posterize, float posterize_num, float paint);
	alias MyPaintSurfaceDestroyFunction = void function(MyPaintSurface* self);
	alias MyPaintSurfaceSavePngFunction = void function(MyPaintSurface* self, const(char)* path, int x, int y, int width, int height);
	alias MyPaintSurfaceBeginAtomicFunction = void function(MyPaintSurface* self);
	alias MyPaintSurfaceEndAtomicFunction = void function(MyPaintSurface* self, MyPaintRectangles* roi);
	struct MyPaintSurface
	{
		int function(MyPaintSurface* self, float x, float y, float radius, float color_r, float color_g, float color_b, float opaque, float hardness, float softness, float alpha_eraser, float aspect_ratio, float angle, float lock_alpha, float colorize, float posterize, float posterize_num, float paint) draw_dab = void;
		void function(MyPaintSurface* self, float x, float y, float radius, float* color_r, float* color_g, float* color_b, float* color_a, float paint) get_color = void;
		void function(MyPaintSurface* self) begin_atomic = void;
		void function(MyPaintSurface* self, MyPaintRectangles* roi) end_atomic = void;
		void function(MyPaintSurface* self) destroy = void;
		void function(MyPaintSurface* self, const(char)* path, int x, int y, int width, int height) save_png = void;
		int refcount = void;
	}
	int mypaint_surface_draw_dab(MyPaintSurface* self, float x, float y, float radius, float color_r, float color_g, float color_b, float opaque, float hardness, float softness, float alpha_eraser, float aspect_ratio, float angle, float lock_alpha, float colorize, float posterize, float posterize_num, float paint);
	void mypaint_surface_get_color(MyPaintSurface* self, float x, float y, float radius, float* color_r, float* color_g, float* color_b, float* color_a, float paint);
	float mypaint_surface_get_alpha(MyPaintSurface* self, float x, float y, float radius);
	void mypaint_surface_save_png(MyPaintSurface* self, const(char)* path, int x, int y, int width, int height);
	void mypaint_surface_begin_atomic(MyPaintSurface* self);
	void mypaint_surface_end_atomic(MyPaintSurface* self, MyPaintRectangles* roi);
	void mypaint_surface_init(MyPaintSurface* self);
	void mypaint_surface_ref(MyPaintSurface* self);
	void mypaint_surface_unref(MyPaintSurface* self);
	enum MyPaintBrushInput
	{
		MYPAINT_BRUSH_INPUT_PRESSURE,
		MYPAINT_BRUSH_INPUT_RANDOM,
		MYPAINT_BRUSH_INPUT_STROKE,
		MYPAINT_BRUSH_INPUT_DIRECTION,
		MYPAINT_BRUSH_INPUT_TILT_DECLINATION,
		MYPAINT_BRUSH_INPUT_TILT_ASCENSION,
		MYPAINT_BRUSH_INPUT_SPEED1,
		MYPAINT_BRUSH_INPUT_SPEED2,
		MYPAINT_BRUSH_INPUT_CUSTOM,
		MYPAINT_BRUSH_INPUT_DIRECTION_ANGLE,
		MYPAINT_BRUSH_INPUT_ATTACK_ANGLE,
		MYPAINT_BRUSH_INPUT_TILT_DECLINATIONX,
		MYPAINT_BRUSH_INPUT_TILT_DECLINATIONY,
		MYPAINT_BRUSH_INPUT_GRIDMAP_X,
		MYPAINT_BRUSH_INPUT_GRIDMAP_Y,
		MYPAINT_BRUSH_INPUT_VIEWZOOM,
		MYPAINT_BRUSH_INPUT_BRUSH_RADIUS,
		MYPAINT_BRUSH_INPUT_BARREL_ROTATION,
		MYPAINT_BRUSH_INPUTS_COUNT,
	}
	alias MYPAINT_BRUSH_INPUT_PRESSURE = MyPaintBrushInput.MYPAINT_BRUSH_INPUT_PRESSURE;
	alias MYPAINT_BRUSH_INPUT_RANDOM = MyPaintBrushInput.MYPAINT_BRUSH_INPUT_RANDOM;
	alias MYPAINT_BRUSH_INPUT_STROKE = MyPaintBrushInput.MYPAINT_BRUSH_INPUT_STROKE;
	alias MYPAINT_BRUSH_INPUT_DIRECTION = MyPaintBrushInput.MYPAINT_BRUSH_INPUT_DIRECTION;
	alias MYPAINT_BRUSH_INPUT_TILT_DECLINATION = MyPaintBrushInput.MYPAINT_BRUSH_INPUT_TILT_DECLINATION;
	alias MYPAINT_BRUSH_INPUT_TILT_ASCENSION = MyPaintBrushInput.MYPAINT_BRUSH_INPUT_TILT_ASCENSION;
	alias MYPAINT_BRUSH_INPUT_SPEED1 = MyPaintBrushInput.MYPAINT_BRUSH_INPUT_SPEED1;
	alias MYPAINT_BRUSH_INPUT_SPEED2 = MyPaintBrushInput.MYPAINT_BRUSH_INPUT_SPEED2;
	alias MYPAINT_BRUSH_INPUT_CUSTOM = MyPaintBrushInput.MYPAINT_BRUSH_INPUT_CUSTOM;
	alias MYPAINT_BRUSH_INPUT_DIRECTION_ANGLE = MyPaintBrushInput.MYPAINT_BRUSH_INPUT_DIRECTION_ANGLE;
	alias MYPAINT_BRUSH_INPUT_ATTACK_ANGLE = MyPaintBrushInput.MYPAINT_BRUSH_INPUT_ATTACK_ANGLE;
	alias MYPAINT_BRUSH_INPUT_TILT_DECLINATIONX = MyPaintBrushInput.MYPAINT_BRUSH_INPUT_TILT_DECLINATIONX;
	alias MYPAINT_BRUSH_INPUT_TILT_DECLINATIONY = MyPaintBrushInput.MYPAINT_BRUSH_INPUT_TILT_DECLINATIONY;
	alias MYPAINT_BRUSH_INPUT_GRIDMAP_X = MyPaintBrushInput.MYPAINT_BRUSH_INPUT_GRIDMAP_X;
	alias MYPAINT_BRUSH_INPUT_GRIDMAP_Y = MyPaintBrushInput.MYPAINT_BRUSH_INPUT_GRIDMAP_Y;
	alias MYPAINT_BRUSH_INPUT_VIEWZOOM = MyPaintBrushInput.MYPAINT_BRUSH_INPUT_VIEWZOOM;
	alias MYPAINT_BRUSH_INPUT_BRUSH_RADIUS = MyPaintBrushInput.MYPAINT_BRUSH_INPUT_BRUSH_RADIUS;
	alias MYPAINT_BRUSH_INPUT_BARREL_ROTATION = MyPaintBrushInput.MYPAINT_BRUSH_INPUT_BARREL_ROTATION;
	alias MYPAINT_BRUSH_INPUTS_COUNT = MyPaintBrushInput.MYPAINT_BRUSH_INPUTS_COUNT;
	enum MyPaintBrushSetting
	{
		MYPAINT_BRUSH_SETTING_OPAQUE,
		MYPAINT_BRUSH_SETTING_OPAQUE_MULTIPLY,
		MYPAINT_BRUSH_SETTING_OPAQUE_LINEARIZE,
		MYPAINT_BRUSH_SETTING_RADIUS_LOGARITHMIC,
		MYPAINT_BRUSH_SETTING_HARDNESS,
		MYPAINT_BRUSH_SETTING_SOFTNESS,
		MYPAINT_BRUSH_SETTING_ANTI_ALIASING,
		MYPAINT_BRUSH_SETTING_DABS_PER_BASIC_RADIUS,
		MYPAINT_BRUSH_SETTING_DABS_PER_ACTUAL_RADIUS,
		MYPAINT_BRUSH_SETTING_DABS_PER_SECOND,
		MYPAINT_BRUSH_SETTING_GRIDMAP_SCALE,
		MYPAINT_BRUSH_SETTING_GRIDMAP_SCALE_X,
		MYPAINT_BRUSH_SETTING_GRIDMAP_SCALE_Y,
		MYPAINT_BRUSH_SETTING_RADIUS_BY_RANDOM,
		MYPAINT_BRUSH_SETTING_SPEED1_SLOWNESS,
		MYPAINT_BRUSH_SETTING_SPEED2_SLOWNESS,
		MYPAINT_BRUSH_SETTING_SPEED1_GAMMA,
		MYPAINT_BRUSH_SETTING_SPEED2_GAMMA,
		MYPAINT_BRUSH_SETTING_OFFSET_BY_RANDOM,
		MYPAINT_BRUSH_SETTING_OFFSET_Y,
		MYPAINT_BRUSH_SETTING_OFFSET_X,
		MYPAINT_BRUSH_SETTING_OFFSET_ANGLE,
		MYPAINT_BRUSH_SETTING_OFFSET_ANGLE_ASC,
		MYPAINT_BRUSH_SETTING_OFFSET_ANGLE_VIEW,
		MYPAINT_BRUSH_SETTING_OFFSET_ANGLE_2,
		MYPAINT_BRUSH_SETTING_OFFSET_ANGLE_2_ASC,
		MYPAINT_BRUSH_SETTING_OFFSET_ANGLE_2_VIEW,
		MYPAINT_BRUSH_SETTING_OFFSET_ANGLE_ADJ,
		MYPAINT_BRUSH_SETTING_OFFSET_MULTIPLIER,
		MYPAINT_BRUSH_SETTING_OFFSET_BY_SPEED,
		MYPAINT_BRUSH_SETTING_OFFSET_BY_SPEED_SLOWNESS,
		MYPAINT_BRUSH_SETTING_SLOW_TRACKING,
		MYPAINT_BRUSH_SETTING_SLOW_TRACKING_PER_DAB,
		MYPAINT_BRUSH_SETTING_TRACKING_NOISE,
		MYPAINT_BRUSH_SETTING_COLOR_H,
		MYPAINT_BRUSH_SETTING_COLOR_S,
		MYPAINT_BRUSH_SETTING_COLOR_V,
		MYPAINT_BRUSH_SETTING_RESTORE_COLOR,
		MYPAINT_BRUSH_SETTING_CHANGE_COLOR_H,
		MYPAINT_BRUSH_SETTING_CHANGE_COLOR_L,
		MYPAINT_BRUSH_SETTING_CHANGE_COLOR_HSL_S,
		MYPAINT_BRUSH_SETTING_CHANGE_COLOR_V,
		MYPAINT_BRUSH_SETTING_CHANGE_COLOR_HSV_S,
		MYPAINT_BRUSH_SETTING_SMUDGE,
		MYPAINT_BRUSH_SETTING_PAINT_MODE,
		MYPAINT_BRUSH_SETTING_SMUDGE_TRANSPARENCY,
		MYPAINT_BRUSH_SETTING_SMUDGE_LENGTH,
		MYPAINT_BRUSH_SETTING_SMUDGE_LENGTH_LOG,
		MYPAINT_BRUSH_SETTING_SMUDGE_BUCKET,
		MYPAINT_BRUSH_SETTING_SMUDGE_RADIUS_LOG,
		MYPAINT_BRUSH_SETTING_ERASER,
		MYPAINT_BRUSH_SETTING_STROKE_THRESHOLD,
		MYPAINT_BRUSH_SETTING_STROKE_DURATION_LOGARITHMIC,
		MYPAINT_BRUSH_SETTING_STROKE_HOLDTIME,
		MYPAINT_BRUSH_SETTING_CUSTOM_INPUT,
		MYPAINT_BRUSH_SETTING_CUSTOM_INPUT_SLOWNESS,
		MYPAINT_BRUSH_SETTING_ELLIPTICAL_DAB_RATIO,
		MYPAINT_BRUSH_SETTING_ELLIPTICAL_DAB_ANGLE,
		MYPAINT_BRUSH_SETTING_DIRECTION_FILTER,
		MYPAINT_BRUSH_SETTING_LOCK_ALPHA,
		MYPAINT_BRUSH_SETTING_COLORIZE,
		MYPAINT_BRUSH_SETTING_POSTERIZE,
		MYPAINT_BRUSH_SETTING_POSTERIZE_NUM,
		MYPAINT_BRUSH_SETTING_SNAP_TO_PIXEL,
		MYPAINT_BRUSH_SETTING_PRESSURE_GAIN_LOG,
		MYPAINT_BRUSH_SETTINGS_COUNT,
	}
	alias MYPAINT_BRUSH_SETTING_OPAQUE = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_OPAQUE;
	alias MYPAINT_BRUSH_SETTING_OPAQUE_MULTIPLY = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_OPAQUE_MULTIPLY;
	alias MYPAINT_BRUSH_SETTING_OPAQUE_LINEARIZE = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_OPAQUE_LINEARIZE;
	alias MYPAINT_BRUSH_SETTING_RADIUS_LOGARITHMIC = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_RADIUS_LOGARITHMIC;
	alias MYPAINT_BRUSH_SETTING_HARDNESS = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_HARDNESS;
	alias MYPAINT_BRUSH_SETTING_SOFTNESS = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_SOFTNESS;
	alias MYPAINT_BRUSH_SETTING_ANTI_ALIASING = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_ANTI_ALIASING;
	alias MYPAINT_BRUSH_SETTING_DABS_PER_BASIC_RADIUS = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_DABS_PER_BASIC_RADIUS;
	alias MYPAINT_BRUSH_SETTING_DABS_PER_ACTUAL_RADIUS = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_DABS_PER_ACTUAL_RADIUS;
	alias MYPAINT_BRUSH_SETTING_DABS_PER_SECOND = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_DABS_PER_SECOND;
	alias MYPAINT_BRUSH_SETTING_GRIDMAP_SCALE = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_GRIDMAP_SCALE;
	alias MYPAINT_BRUSH_SETTING_GRIDMAP_SCALE_X = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_GRIDMAP_SCALE_X;
	alias MYPAINT_BRUSH_SETTING_GRIDMAP_SCALE_Y = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_GRIDMAP_SCALE_Y;
	alias MYPAINT_BRUSH_SETTING_RADIUS_BY_RANDOM = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_RADIUS_BY_RANDOM;
	alias MYPAINT_BRUSH_SETTING_SPEED1_SLOWNESS = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_SPEED1_SLOWNESS;
	alias MYPAINT_BRUSH_SETTING_SPEED2_SLOWNESS = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_SPEED2_SLOWNESS;
	alias MYPAINT_BRUSH_SETTING_SPEED1_GAMMA = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_SPEED1_GAMMA;
	alias MYPAINT_BRUSH_SETTING_SPEED2_GAMMA = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_SPEED2_GAMMA;
	alias MYPAINT_BRUSH_SETTING_OFFSET_BY_RANDOM = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_OFFSET_BY_RANDOM;
	alias MYPAINT_BRUSH_SETTING_OFFSET_Y = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_OFFSET_Y;
	alias MYPAINT_BRUSH_SETTING_OFFSET_X = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_OFFSET_X;
	alias MYPAINT_BRUSH_SETTING_OFFSET_ANGLE = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_OFFSET_ANGLE;
	alias MYPAINT_BRUSH_SETTING_OFFSET_ANGLE_ASC = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_OFFSET_ANGLE_ASC;
	alias MYPAINT_BRUSH_SETTING_OFFSET_ANGLE_VIEW = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_OFFSET_ANGLE_VIEW;
	alias MYPAINT_BRUSH_SETTING_OFFSET_ANGLE_2 = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_OFFSET_ANGLE_2;
	alias MYPAINT_BRUSH_SETTING_OFFSET_ANGLE_2_ASC = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_OFFSET_ANGLE_2_ASC;
	alias MYPAINT_BRUSH_SETTING_OFFSET_ANGLE_2_VIEW = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_OFFSET_ANGLE_2_VIEW;
	alias MYPAINT_BRUSH_SETTING_OFFSET_ANGLE_ADJ = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_OFFSET_ANGLE_ADJ;
	alias MYPAINT_BRUSH_SETTING_OFFSET_MULTIPLIER = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_OFFSET_MULTIPLIER;
	alias MYPAINT_BRUSH_SETTING_OFFSET_BY_SPEED = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_OFFSET_BY_SPEED;
	alias MYPAINT_BRUSH_SETTING_OFFSET_BY_SPEED_SLOWNESS = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_OFFSET_BY_SPEED_SLOWNESS;
	alias MYPAINT_BRUSH_SETTING_SLOW_TRACKING = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_SLOW_TRACKING;
	alias MYPAINT_BRUSH_SETTING_SLOW_TRACKING_PER_DAB = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_SLOW_TRACKING_PER_DAB;
	alias MYPAINT_BRUSH_SETTING_TRACKING_NOISE = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_TRACKING_NOISE;
	alias MYPAINT_BRUSH_SETTING_COLOR_H = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_COLOR_H;
	alias MYPAINT_BRUSH_SETTING_COLOR_S = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_COLOR_S;
	alias MYPAINT_BRUSH_SETTING_COLOR_V = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_COLOR_V;
	alias MYPAINT_BRUSH_SETTING_RESTORE_COLOR = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_RESTORE_COLOR;
	alias MYPAINT_BRUSH_SETTING_CHANGE_COLOR_H = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_CHANGE_COLOR_H;
	alias MYPAINT_BRUSH_SETTING_CHANGE_COLOR_L = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_CHANGE_COLOR_L;
	alias MYPAINT_BRUSH_SETTING_CHANGE_COLOR_HSL_S = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_CHANGE_COLOR_HSL_S;
	alias MYPAINT_BRUSH_SETTING_CHANGE_COLOR_V = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_CHANGE_COLOR_V;
	alias MYPAINT_BRUSH_SETTING_CHANGE_COLOR_HSV_S = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_CHANGE_COLOR_HSV_S;
	alias MYPAINT_BRUSH_SETTING_SMUDGE = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_SMUDGE;
	alias MYPAINT_BRUSH_SETTING_PAINT_MODE = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_PAINT_MODE;
	alias MYPAINT_BRUSH_SETTING_SMUDGE_TRANSPARENCY = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_SMUDGE_TRANSPARENCY;
	alias MYPAINT_BRUSH_SETTING_SMUDGE_LENGTH = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_SMUDGE_LENGTH;
	alias MYPAINT_BRUSH_SETTING_SMUDGE_LENGTH_LOG = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_SMUDGE_LENGTH_LOG;
	alias MYPAINT_BRUSH_SETTING_SMUDGE_BUCKET = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_SMUDGE_BUCKET;
	alias MYPAINT_BRUSH_SETTING_SMUDGE_RADIUS_LOG = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_SMUDGE_RADIUS_LOG;
	alias MYPAINT_BRUSH_SETTING_ERASER = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_ERASER;
	alias MYPAINT_BRUSH_SETTING_STROKE_THRESHOLD = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_STROKE_THRESHOLD;
	alias MYPAINT_BRUSH_SETTING_STROKE_DURATION_LOGARITHMIC = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_STROKE_DURATION_LOGARITHMIC;
	alias MYPAINT_BRUSH_SETTING_STROKE_HOLDTIME = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_STROKE_HOLDTIME;
	alias MYPAINT_BRUSH_SETTING_CUSTOM_INPUT = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_CUSTOM_INPUT;
	alias MYPAINT_BRUSH_SETTING_CUSTOM_INPUT_SLOWNESS = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_CUSTOM_INPUT_SLOWNESS;
	alias MYPAINT_BRUSH_SETTING_ELLIPTICAL_DAB_RATIO = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_ELLIPTICAL_DAB_RATIO;
	alias MYPAINT_BRUSH_SETTING_ELLIPTICAL_DAB_ANGLE = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_ELLIPTICAL_DAB_ANGLE;
	alias MYPAINT_BRUSH_SETTING_DIRECTION_FILTER = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_DIRECTION_FILTER;
	alias MYPAINT_BRUSH_SETTING_LOCK_ALPHA = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_LOCK_ALPHA;
	alias MYPAINT_BRUSH_SETTING_COLORIZE = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_COLORIZE;
	alias MYPAINT_BRUSH_SETTING_POSTERIZE = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_POSTERIZE;
	alias MYPAINT_BRUSH_SETTING_POSTERIZE_NUM = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_POSTERIZE_NUM;
	alias MYPAINT_BRUSH_SETTING_SNAP_TO_PIXEL = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_SNAP_TO_PIXEL;
	alias MYPAINT_BRUSH_SETTING_PRESSURE_GAIN_LOG = MyPaintBrushSetting.MYPAINT_BRUSH_SETTING_PRESSURE_GAIN_LOG;
	alias MYPAINT_BRUSH_SETTINGS_COUNT = MyPaintBrushSetting.MYPAINT_BRUSH_SETTINGS_COUNT;
	enum MyPaintBrushState
	{
		MYPAINT_BRUSH_STATE_X,
		MYPAINT_BRUSH_STATE_Y,
		MYPAINT_BRUSH_STATE_PRESSURE,
		MYPAINT_BRUSH_STATE_PARTIAL_DABS,
		MYPAINT_BRUSH_STATE_ACTUAL_RADIUS,
		MYPAINT_BRUSH_STATE_SMUDGE_RA,
		MYPAINT_BRUSH_STATE_SMUDGE_GA,
		MYPAINT_BRUSH_STATE_SMUDGE_BA,
		MYPAINT_BRUSH_STATE_SMUDGE_A,
		MYPAINT_BRUSH_STATE_LAST_GETCOLOR_R,
		MYPAINT_BRUSH_STATE_LAST_GETCOLOR_G,
		MYPAINT_BRUSH_STATE_LAST_GETCOLOR_B,
		MYPAINT_BRUSH_STATE_LAST_GETCOLOR_A,
		MYPAINT_BRUSH_STATE_LAST_GETCOLOR_RECENTNESS,
		MYPAINT_BRUSH_STATE_ACTUAL_X,
		MYPAINT_BRUSH_STATE_ACTUAL_Y,
		MYPAINT_BRUSH_STATE_NORM_DX_SLOW,
		MYPAINT_BRUSH_STATE_NORM_DY_SLOW,
		MYPAINT_BRUSH_STATE_NORM_SPEED1_SLOW,
		MYPAINT_BRUSH_STATE_NORM_SPEED2_SLOW,
		MYPAINT_BRUSH_STATE_STROKE,
		MYPAINT_BRUSH_STATE_STROKE_STARTED,
		MYPAINT_BRUSH_STATE_CUSTOM_INPUT,
		MYPAINT_BRUSH_STATE_RNG_SEED,
		MYPAINT_BRUSH_STATE_ACTUAL_ELLIPTICAL_DAB_RATIO,
		MYPAINT_BRUSH_STATE_ACTUAL_ELLIPTICAL_DAB_ANGLE,
		MYPAINT_BRUSH_STATE_DIRECTION_DX,
		MYPAINT_BRUSH_STATE_DIRECTION_DY,
		MYPAINT_BRUSH_STATE_DECLINATION,
		MYPAINT_BRUSH_STATE_ASCENSION,
		MYPAINT_BRUSH_STATE_VIEWZOOM,
		MYPAINT_BRUSH_STATE_VIEWROTATION,
		MYPAINT_BRUSH_STATE_DIRECTION_ANGLE_DX,
		MYPAINT_BRUSH_STATE_DIRECTION_ANGLE_DY,
		MYPAINT_BRUSH_STATE_ATTACK_ANGLE,
		MYPAINT_BRUSH_STATE_FLIP,
		MYPAINT_BRUSH_STATE_GRIDMAP_X,
		MYPAINT_BRUSH_STATE_GRIDMAP_Y,
		MYPAINT_BRUSH_STATE_DECLINATIONX,
		MYPAINT_BRUSH_STATE_DECLINATIONY,
		MYPAINT_BRUSH_STATE_DABS_PER_BASIC_RADIUS,
		MYPAINT_BRUSH_STATE_DABS_PER_ACTUAL_RADIUS,
		MYPAINT_BRUSH_STATE_DABS_PER_SECOND,
		MYPAINT_BRUSH_STATE_BARREL_ROTATION,
		MYPAINT_BRUSH_STATES_COUNT,
	}
	alias MYPAINT_BRUSH_STATE_X = MyPaintBrushState.MYPAINT_BRUSH_STATE_X;
	alias MYPAINT_BRUSH_STATE_Y = MyPaintBrushState.MYPAINT_BRUSH_STATE_Y;
	alias MYPAINT_BRUSH_STATE_PRESSURE = MyPaintBrushState.MYPAINT_BRUSH_STATE_PRESSURE;
	alias MYPAINT_BRUSH_STATE_PARTIAL_DABS = MyPaintBrushState.MYPAINT_BRUSH_STATE_PARTIAL_DABS;
	alias MYPAINT_BRUSH_STATE_ACTUAL_RADIUS = MyPaintBrushState.MYPAINT_BRUSH_STATE_ACTUAL_RADIUS;
	alias MYPAINT_BRUSH_STATE_SMUDGE_RA = MyPaintBrushState.MYPAINT_BRUSH_STATE_SMUDGE_RA;
	alias MYPAINT_BRUSH_STATE_SMUDGE_GA = MyPaintBrushState.MYPAINT_BRUSH_STATE_SMUDGE_GA;
	alias MYPAINT_BRUSH_STATE_SMUDGE_BA = MyPaintBrushState.MYPAINT_BRUSH_STATE_SMUDGE_BA;
	alias MYPAINT_BRUSH_STATE_SMUDGE_A = MyPaintBrushState.MYPAINT_BRUSH_STATE_SMUDGE_A;
	alias MYPAINT_BRUSH_STATE_LAST_GETCOLOR_R = MyPaintBrushState.MYPAINT_BRUSH_STATE_LAST_GETCOLOR_R;
	alias MYPAINT_BRUSH_STATE_LAST_GETCOLOR_G = MyPaintBrushState.MYPAINT_BRUSH_STATE_LAST_GETCOLOR_G;
	alias MYPAINT_BRUSH_STATE_LAST_GETCOLOR_B = MyPaintBrushState.MYPAINT_BRUSH_STATE_LAST_GETCOLOR_B;
	alias MYPAINT_BRUSH_STATE_LAST_GETCOLOR_A = MyPaintBrushState.MYPAINT_BRUSH_STATE_LAST_GETCOLOR_A;
	alias MYPAINT_BRUSH_STATE_LAST_GETCOLOR_RECENTNESS = MyPaintBrushState.MYPAINT_BRUSH_STATE_LAST_GETCOLOR_RECENTNESS;
	alias MYPAINT_BRUSH_STATE_ACTUAL_X = MyPaintBrushState.MYPAINT_BRUSH_STATE_ACTUAL_X;
	alias MYPAINT_BRUSH_STATE_ACTUAL_Y = MyPaintBrushState.MYPAINT_BRUSH_STATE_ACTUAL_Y;
	alias MYPAINT_BRUSH_STATE_NORM_DX_SLOW = MyPaintBrushState.MYPAINT_BRUSH_STATE_NORM_DX_SLOW;
	alias MYPAINT_BRUSH_STATE_NORM_DY_SLOW = MyPaintBrushState.MYPAINT_BRUSH_STATE_NORM_DY_SLOW;
	alias MYPAINT_BRUSH_STATE_NORM_SPEED1_SLOW = MyPaintBrushState.MYPAINT_BRUSH_STATE_NORM_SPEED1_SLOW;
	alias MYPAINT_BRUSH_STATE_NORM_SPEED2_SLOW = MyPaintBrushState.MYPAINT_BRUSH_STATE_NORM_SPEED2_SLOW;
	alias MYPAINT_BRUSH_STATE_STROKE = MyPaintBrushState.MYPAINT_BRUSH_STATE_STROKE;
	alias MYPAINT_BRUSH_STATE_STROKE_STARTED = MyPaintBrushState.MYPAINT_BRUSH_STATE_STROKE_STARTED;
	alias MYPAINT_BRUSH_STATE_CUSTOM_INPUT = MyPaintBrushState.MYPAINT_BRUSH_STATE_CUSTOM_INPUT;
	alias MYPAINT_BRUSH_STATE_RNG_SEED = MyPaintBrushState.MYPAINT_BRUSH_STATE_RNG_SEED;
	alias MYPAINT_BRUSH_STATE_ACTUAL_ELLIPTICAL_DAB_RATIO = MyPaintBrushState.MYPAINT_BRUSH_STATE_ACTUAL_ELLIPTICAL_DAB_RATIO;
	alias MYPAINT_BRUSH_STATE_ACTUAL_ELLIPTICAL_DAB_ANGLE = MyPaintBrushState.MYPAINT_BRUSH_STATE_ACTUAL_ELLIPTICAL_DAB_ANGLE;
	alias MYPAINT_BRUSH_STATE_DIRECTION_DX = MyPaintBrushState.MYPAINT_BRUSH_STATE_DIRECTION_DX;
	alias MYPAINT_BRUSH_STATE_DIRECTION_DY = MyPaintBrushState.MYPAINT_BRUSH_STATE_DIRECTION_DY;
	alias MYPAINT_BRUSH_STATE_DECLINATION = MyPaintBrushState.MYPAINT_BRUSH_STATE_DECLINATION;
	alias MYPAINT_BRUSH_STATE_ASCENSION = MyPaintBrushState.MYPAINT_BRUSH_STATE_ASCENSION;
	alias MYPAINT_BRUSH_STATE_VIEWZOOM = MyPaintBrushState.MYPAINT_BRUSH_STATE_VIEWZOOM;
	alias MYPAINT_BRUSH_STATE_VIEWROTATION = MyPaintBrushState.MYPAINT_BRUSH_STATE_VIEWROTATION;
	alias MYPAINT_BRUSH_STATE_DIRECTION_ANGLE_DX = MyPaintBrushState.MYPAINT_BRUSH_STATE_DIRECTION_ANGLE_DX;
	alias MYPAINT_BRUSH_STATE_DIRECTION_ANGLE_DY = MyPaintBrushState.MYPAINT_BRUSH_STATE_DIRECTION_ANGLE_DY;
	alias MYPAINT_BRUSH_STATE_ATTACK_ANGLE = MyPaintBrushState.MYPAINT_BRUSH_STATE_ATTACK_ANGLE;
	alias MYPAINT_BRUSH_STATE_FLIP = MyPaintBrushState.MYPAINT_BRUSH_STATE_FLIP;
	alias MYPAINT_BRUSH_STATE_GRIDMAP_X = MyPaintBrushState.MYPAINT_BRUSH_STATE_GRIDMAP_X;
	alias MYPAINT_BRUSH_STATE_GRIDMAP_Y = MyPaintBrushState.MYPAINT_BRUSH_STATE_GRIDMAP_Y;
	alias MYPAINT_BRUSH_STATE_DECLINATIONX = MyPaintBrushState.MYPAINT_BRUSH_STATE_DECLINATIONX;
	alias MYPAINT_BRUSH_STATE_DECLINATIONY = MyPaintBrushState.MYPAINT_BRUSH_STATE_DECLINATIONY;
	alias MYPAINT_BRUSH_STATE_DABS_PER_BASIC_RADIUS = MyPaintBrushState.MYPAINT_BRUSH_STATE_DABS_PER_BASIC_RADIUS;
	alias MYPAINT_BRUSH_STATE_DABS_PER_ACTUAL_RADIUS = MyPaintBrushState.MYPAINT_BRUSH_STATE_DABS_PER_ACTUAL_RADIUS;
	alias MYPAINT_BRUSH_STATE_DABS_PER_SECOND = MyPaintBrushState.MYPAINT_BRUSH_STATE_DABS_PER_SECOND;
	alias MYPAINT_BRUSH_STATE_BARREL_ROTATION = MyPaintBrushState.MYPAINT_BRUSH_STATE_BARREL_ROTATION;
	alias MYPAINT_BRUSH_STATES_COUNT = MyPaintBrushState.MYPAINT_BRUSH_STATES_COUNT;
	struct MyPaintBrushSettingInfo
	{
		const(char)* cname = void;
		const(char)* name = void;
		int constant = void;
		float min = void;
		float def = void;
		float max = void;
		const(char)* tooltip = void;
	}
	const(MyPaintBrushSettingInfo)* mypaint_brush_setting_info(MyPaintBrushSetting id);
	const(char)* mypaint_brush_setting_info_get_name(const MyPaintBrushSettingInfo* self);
	const(char)* mypaint_brush_setting_info_get_tooltip(const MyPaintBrushSettingInfo* self);
	MyPaintBrushSetting mypaint_brush_setting_from_cname(const(char)* cname);
	struct MyPaintBrushInputInfo
	{
		const(char)* cname = void;
		float hard_min = void;
		float soft_min = void;
		float normal = void;
		float soft_max = void;
		float hard_max = void;
		const(char)* name = void;
		const(char)* tooltip = void;
	}
	const(MyPaintBrushInputInfo)* mypaint_brush_input_info(MyPaintBrushInput id);
	const(char)* mypaint_brush_input_info_get_name(const MyPaintBrushInputInfo* self);
	const(char)* mypaint_brush_input_info_get_tooltip(const MyPaintBrushInputInfo* self);
	MyPaintBrushInput mypaint_brush_input_from_cname(const(char)* cname);
	struct MyPaintBrush;
	MyPaintBrush* mypaint_brush_new();
	MyPaintBrush* mypaint_brush_new_with_buckets(int num_smudge_buckets);
	void mypaint_brush_unref(const MyPaintBrush* self);
	void mypaint_brush_ref(const MyPaintBrush* self);
	void mypaint_brush_reset(const MyPaintBrush* self);
	void mypaint_brush_new_stroke(const MyPaintBrush* self);
	int mypaint_brush_stroke_to(const MyPaintBrush* self, MyPaintSurface* surface, float x, float y, float pressure, float xtilt, float ytilt, double dtime, float viewzoom, float viewrotation, float barrel_rotation, int linear);
	void mypaint_brush_set_base_value(const MyPaintBrush* self, MyPaintBrushSetting id, float value);
	float mypaint_brush_get_base_value(const MyPaintBrush* self, MyPaintBrushSetting id);
	int mypaint_brush_is_constant(const MyPaintBrush* self, MyPaintBrushSetting id);
	int mypaint_brush_get_inputs_used_n(const MyPaintBrush* self, MyPaintBrushSetting id);
	void mypaint_brush_set_mapping_n(const MyPaintBrush* self, MyPaintBrushSetting id, MyPaintBrushInput input, int n);
	int mypaint_brush_get_mapping_n(const MyPaintBrush* self, MyPaintBrushSetting id, MyPaintBrushInput input);
	void mypaint_brush_set_mapping_point(const MyPaintBrush* self, MyPaintBrushSetting id, MyPaintBrushInput input, int index, float x, float y);
	void mypaint_brush_get_mapping_point(const MyPaintBrush* self, MyPaintBrushSetting id, MyPaintBrushInput input, int index, float* x, float* y);
	float mypaint_brush_get_state(const MyPaintBrush* self, MyPaintBrushState i);
	void mypaint_brush_set_state(const MyPaintBrush* self, MyPaintBrushState i, float value);
	int mypaint_brush_set_smudge_bucket_state(const MyPaintBrush* self, int bucket_index, float r, float g, float b, float a, float prev_r, float prev_g, float prev_b, float prev_a, float prev_color_recentness);
	int mypaint_brush_get_smudge_bucket_state(const MyPaintBrush* self, int bucket_index, float* r, float* g, float* b, float* a, float* prev_r, float* prev_g, float* prev_b, float* prev_a, float* prev_color_recentness);
	int mypaint_brush_get_min_smudge_bucket_used(const MyPaintBrush* self);
	int mypaint_brush_get_max_smudge_bucket_used(const MyPaintBrush* self);
	double mypaint_brush_get_total_stroke_painting_time(const MyPaintBrush* self);
	void mypaint_brush_set_print_inputs(const MyPaintBrush* self, int enabled);
	void mypaint_brush_from_defaults(const MyPaintBrush* self);
	int mypaint_brush_from_string(const MyPaintBrush* self, const(char)* string);
	alias __u_char = ubyte;
	alias __u_short = ushort;
	alias __u_int = uint;
	alias __u_long = ulong;
	alias __int8_t = byte;
	alias __uint8_t = ubyte;
	alias __int16_t = short;
	alias __uint16_t = ushort;
	alias __int32_t = int;
	alias __uint32_t = uint;
	alias __int64_t = long;
	alias __uint64_t = ulong;
	alias __int_least8_t = byte;
	alias __uint_least8_t = ubyte;
	alias __int_least16_t = short;
	alias __uint_least16_t = ushort;
	alias __int_least32_t = int;
	alias __uint_least32_t = uint;
	alias __int_least64_t = long;
	alias __uint_least64_t = ulong;
	alias __quad_t = long;
	alias __u_quad_t = ulong;
	alias __intmax_t = long;
	alias __uintmax_t = ulong;
	alias __dev_t = ulong;
	alias __uid_t = uint;
	alias __gid_t = uint;
	alias __ino_t = ulong;
	alias __ino64_t = ulong;
	alias __mode_t = uint;
	alias __nlink_t = ulong;
	alias __off_t = long;
	alias __off64_t = long;
	alias __pid_t = int;
	struct __fsid_t
	{
		int[2] __val = void;
	}
	alias __clock_t = long;
	alias __rlim_t = ulong;
	alias __rlim64_t = ulong;
	alias __id_t = uint;
	alias __time_t = long;
	alias __useconds_t = uint;
	alias __suseconds_t = long;
	alias __suseconds64_t = long;
	alias __daddr_t = int;
	alias __key_t = int;
	alias __clockid_t = int;
	alias __timer_t = void*;
	alias __blksize_t = long;
	alias __blkcnt_t = long;
	alias __blkcnt64_t = long;
	alias __fsblkcnt_t = ulong;
	alias __fsblkcnt64_t = ulong;
	alias __fsfilcnt_t = ulong;
	alias __fsfilcnt64_t = ulong;
	alias __fsword_t = long;
	alias __ssize_t = long;
	alias __syscall_slong_t = long;
	alias __syscall_ulong_t = ulong;
	alias __loff_t = long;
	alias __caddr_t = char*;
	alias __intptr_t = long;
	alias __socklen_t = uint;
	alias __sig_atomic_t = int;
	alias int8_t = byte;
	alias int16_t = short;
	alias int32_t = int;
	alias int64_t = long;
	alias uint8_t = ubyte;
	alias uint16_t = ushort;
	alias uint32_t = uint;
	alias uint64_t = ulong;
	alias int_least8_t = byte;
	alias int_least16_t = short;
	alias int_least32_t = int;
	alias int_least64_t = long;
	alias uint_least8_t = ubyte;
	alias uint_least16_t = ushort;
	alias uint_least32_t = uint;
	alias uint_least64_t = ulong;
	alias int_fast8_t = byte;
	alias int_fast16_t = long;
	alias int_fast32_t = long;
	alias int_fast64_t = long;
	alias uint_fast8_t = ubyte;
	alias uint_fast16_t = ulong;
	alias uint_fast32_t = ulong;
	alias uint_fast64_t = ulong;
	alias intptr_t = long;
	alias uintptr_t = ulong;
	alias intmax_t = long;
	alias uintmax_t = ulong;
	struct MyPaintTransform
	{
		float[3][3] rows = void;
	}
	MyPaintTransform mypaint_transform_unit();
	MyPaintTransform mypaint_transform_rotate_cw(const MyPaintTransform transform, const(float) angle_radians);
	MyPaintTransform mypaint_transform_rotate_ccw(const MyPaintTransform transform, const(float) angle_radians);
	MyPaintTransform mypaint_transform_reflect(const MyPaintTransform transform, const(float) angle_radians);
	MyPaintTransform mypaint_transform_translate(const MyPaintTransform transform, const(float) x, const(float) y);
	void mypaint_transform_point(const MyPaintTransform* t, float x, float y, float* x_out, float* y_out);
	enum MyPaintSymmetryType
	{
		MYPAINT_SYMMETRY_TYPE_VERTICAL,
		MYPAINT_SYMMETRY_TYPE_HORIZONTAL,
		MYPAINT_SYMMETRY_TYPE_VERTHORZ,
		MYPAINT_SYMMETRY_TYPE_ROTATIONAL,
		MYPAINT_SYMMETRY_TYPE_SNOWFLAKE,
		MYPAINT_SYMMETRY_TYPES_COUNT,
	}
	alias MYPAINT_SYMMETRY_TYPE_VERTICAL = MyPaintSymmetryType.MYPAINT_SYMMETRY_TYPE_VERTICAL;
	alias MYPAINT_SYMMETRY_TYPE_HORIZONTAL = MyPaintSymmetryType.MYPAINT_SYMMETRY_TYPE_HORIZONTAL;
	alias MYPAINT_SYMMETRY_TYPE_VERTHORZ = MyPaintSymmetryType.MYPAINT_SYMMETRY_TYPE_VERTHORZ;
	alias MYPAINT_SYMMETRY_TYPE_ROTATIONAL = MyPaintSymmetryType.MYPAINT_SYMMETRY_TYPE_ROTATIONAL;
	alias MYPAINT_SYMMETRY_TYPE_SNOWFLAKE = MyPaintSymmetryType.MYPAINT_SYMMETRY_TYPE_SNOWFLAKE;
	alias MYPAINT_SYMMETRY_TYPES_COUNT = MyPaintSymmetryType.MYPAINT_SYMMETRY_TYPES_COUNT;
	struct MyPaintSymmetryState
	{
		MyPaintSymmetryType type = void;
		float center_x = void;
		float center_y = void;
		float angle = void;
		float num_lines = void;
	}
	struct MyPaintSymmetryData
	{
		MyPaintSymmetryState state_current = void;
		MyPaintSymmetryState state_pending = void;
		int pending_changes = void;
		int active = void;
		int num_symmetry_matrices = void;
		const MyPaintTransform* symmetry_matrices = void;
	}
	void mypaint_update_symmetry_state(MyPaintSymmetryData* symmetry_data);
	MyPaintSymmetryData mypaint_default_symmetry_data();
	void mypaint_symmetry_data_destroy(MyPaintSymmetryData*);
	void mypaint_symmetry_set_pending(MyPaintSymmetryData* data, int active, float center_x, float center_y, float symmetry_angle, MyPaintSymmetryType symmetry_type, int rot_symmetry_lines);
	// struct MyPaintTiledSurface;
	struct MyPaintTileRequest
	{
		int tx = void;
		int ty = void;
		int readonly = void;
		ushort* buffer = void;
		void* context = void;
		int thread_id = void;
		int mipmap_level = void;
	}
	void mypaint_tile_request_init(MyPaintTileRequest* data, int level, int tx, int ty, int readonly);
	alias MyPaintTileRequestStartFunction = void function(MyPaintTiledSurface* self, MyPaintTileRequest* request);
	alias MyPaintTileRequestEndFunction = void function(MyPaintTiledSurface* self, MyPaintTileRequest* request);
	alias MyPaintTiledSurfaceAreaChanged = void function(MyPaintTiledSurface* self, int bb_x, int bb_y, int bb_w, int bb_h);
	struct MyPaintTiledSurface
	{
		MyPaintSurface parent = void;
		void function(MyPaintTiledSurface* self, MyPaintTileRequest* request) tile_request_start = void;
		void function(MyPaintTiledSurface* self, MyPaintTileRequest* request) tile_request_end = void;
		MyPaintSymmetryData symmetry_data = void;
		void* operation_queue = void;
		int num_bboxes = void;
		int num_bboxes_dirtied = void;
		MyPaintRectangle* bboxes = void;
		MyPaintRectangle[32] default_bboxes = void;
		int threadsafe_tile_requests = void;
		int tile_size = void;
	}
	void mypaint_tiled_surface_init(MyPaintTiledSurface* self, void function(MyPaintTiledSurface* self, MyPaintTileRequest* request) tile_request_start, void function(MyPaintTiledSurface* self, MyPaintTileRequest* request) tile_request_end);
	void mypaint_tiled_surface_destroy(MyPaintTiledSurface* self);
	void mypaint_tiled_surface_set_symmetry_state(MyPaintTiledSurface* self, int active, float center_x, float center_y, float symmetry_angle, MyPaintSymmetryType symmetry_type, int rot_symmetry_lines);
	float mypaint_tiled_surface_get_alpha(MyPaintTiledSurface* self, float x, float y, float radius);
	void mypaint_tiled_surface_tile_request_start(MyPaintTiledSurface* self, MyPaintTileRequest* request);
	void mypaint_tiled_surface_tile_request_end(MyPaintTiledSurface* self, MyPaintTileRequest* request);
	void mypaint_tiled_surface_begin_atomic(MyPaintTiledSurface* self);
	void mypaint_tiled_surface_end_atomic(MyPaintTiledSurface* self, MyPaintRectangles* roi);
	struct MyPaintFixedTiledSurface;
	MyPaintFixedTiledSurface* mypaint_fixed_tiled_surface_new(int width, int height);
	int mypaint_fixed_tiled_surface_get_width(MyPaintFixedTiledSurface* self);
	int mypaint_fixed_tiled_surface_get_height(MyPaintFixedTiledSurface* self);
	MyPaintSurface* mypaint_fixed_tiled_surface_interface(MyPaintFixedTiledSurface* self);
	struct MyPaintMapping;
	MyPaintMapping* mypaint_mapping_new(int inputs_);
	void mypaint_mapping_free(MyPaintMapping* self);
	float mypaint_mapping_get_base_value(MyPaintMapping* self);
	void mypaint_mapping_set_base_value(MyPaintMapping* self, float value);
	void mypaint_mapping_set_n(MyPaintMapping* self, int input, int n);
	int mypaint_mapping_get_n(MyPaintMapping* self, int input);
	void mypaint_mapping_set_point(MyPaintMapping* self, int input, int index, float x, float y);
	void mypaint_mapping_get_point(MyPaintMapping* self, int input, int index, float* x, float* y);
	int mypaint_mapping_is_constant(MyPaintMapping* self);
	int mypaint_mapping_get_inputs_used_n(MyPaintMapping* self);
	float mypaint_mapping_calculate(MyPaintMapping* self, float* data);
	float mypaint_mapping_calculate_single_input(MyPaintMapping* self, float input);
	enum int __STDC__ = 1;
	enum long __STDC_VERSION__ = 201710L;
	enum int __STDC_UTF_16__ = 1;
	enum int __STDC_UTF_32__ = 1;
	enum int __STDC_HOSTED__ = 1;
	enum int __GNUC__ = 14;
	enum int __GNUC_MINOR__ = 2;
	enum int __GNUC_PATCHLEVEL__ = 1;
	/+enum __VERSION__ = "14.2.1 20250128"+/;
	enum int __ATOMIC_RELAXED = 0;
	enum int __ATOMIC_SEQ_CST = 5;
	enum int __ATOMIC_ACQUIRE = 2;
	enum int __ATOMIC_RELEASE = 3;
	enum int __ATOMIC_ACQ_REL = 4;
	enum int __ATOMIC_CONSUME = 1;
	enum int __pic__ = 2;
	enum int __PIC__ = 2;
	enum int __pie__ = 2;
	enum int __PIE__ = 2;
	enum int __FINITE_MATH_ONLY__ = 0;
	enum int _LP64 = 1;
	enum int __LP64__ = 1;
	enum int __SIZEOF_INT__ = 4;
	enum int __SIZEOF_LONG__ = 8;
	enum int __SIZEOF_LONG_LONG__ = 8;
	enum int __SIZEOF_SHORT__ = 2;
	enum int __SIZEOF_FLOAT__ = 4;
	enum int __SIZEOF_DOUBLE__ = 8;
	enum int __SIZEOF_LONG_DOUBLE__ = 16;
	enum int __SIZEOF_SIZE_T__ = 8;
	enum int __CHAR_BIT__ = 8;
	enum int __BIGGEST_ALIGNMENT__ = 16;
	enum int __ORDER_LITTLE_ENDIAN__ = 1234;
	enum int __ORDER_BIG_ENDIAN__ = 4321;
	enum int __ORDER_PDP_ENDIAN__ = 3412;
	enum int __SIZEOF_POINTER__ = 8;
	enum __GNUC_EXECUTION_CHARSET_NAME = "UTF-8";
	enum __GNUC_WIDE_EXECUTION_CHARSET_NAME = "UTF-32LE";
	enum int __GXX_ABI_VERSION = 1019;
	enum int __SCHAR_MAX__ = 127;
	enum int __SHRT_MAX__ = 32767;
	enum int __INT_MAX__ = 2147483647;
	enum long __LONG_MAX__ = 9223372036854775807L;
	enum long __LONG_LONG_MAX__ = 9223372036854775807L;
	enum int __WCHAR_MAX__ = 2147483647;
	auto __WCHAR_MIN__()()
	{
		return -__WCHAR_MAX__ - 1;
	}
	enum uint __WINT_MAX__ = 4294967295u;
	enum uint __WINT_MIN__ = 0u;
	enum long __PTRDIFF_MAX__ = 9223372036854775807L;
	enum ulong __SIZE_MAX__ = 18446744073709551615LU;
	enum int __SCHAR_WIDTH__ = 8;
	enum int __SHRT_WIDTH__ = 16;
	enum int __INT_WIDTH__ = 32;
	enum int __LONG_WIDTH__ = 64;
	enum int __LONG_LONG_WIDTH__ = 64;
	enum int __WCHAR_WIDTH__ = 32;
	enum int __WINT_WIDTH__ = 32;
	enum int __PTRDIFF_WIDTH__ = 64;
	enum int __SIZE_WIDTH__ = 64;
	enum int __BITINT_MAXWIDTH__ = 65535;
	enum long __INTMAX_MAX__ = 9223372036854775807L;
	enum ulong __UINTMAX_MAX__ = 18446744073709551615LU;
	enum int __INTMAX_WIDTH__ = 64;
	enum int __SIG_ATOMIC_MAX__ = 2147483647;
	auto __SIG_ATOMIC_MIN__()()
	{
		return -__SIG_ATOMIC_MAX__ - 1;
	}
	enum int __SIG_ATOMIC_WIDTH__ = 32;
	enum int __INT8_MAX__ = 127;
	enum int __INT16_MAX__ = 32767;
	enum int __INT32_MAX__ = 2147483647;
	enum long __INT64_MAX__ = 9223372036854775807L;
	enum int __UINT8_MAX__ = 255;
	enum int __UINT16_MAX__ = 65535;
	enum uint __UINT32_MAX__ = 4294967295u;
	enum ulong __UINT64_MAX__ = 18446744073709551615LU;
	enum int __INT_LEAST8_MAX__ = 127;
	auto __INT8_C(__MP3)(__MP3 c)
	{
		return c;
	}
	enum int __INT_LEAST8_WIDTH__ = 8;
	enum int __INT_LEAST16_MAX__ = 32767;
	auto __INT16_C(__MP4)(__MP4 c)
	{
		return c;
	}
	enum int __INT_LEAST16_WIDTH__ = 16;
	enum int __INT_LEAST32_MAX__ = 2147483647;
	auto __INT32_C(__MP5)(__MP5 c)
	{
		return c;
	}
	enum int __INT_LEAST32_WIDTH__ = 32;
	enum long __INT_LEAST64_MAX__ = 9223372036854775807L;
	enum int __INT_LEAST64_WIDTH__ = 64;
	enum int __UINT_LEAST8_MAX__ = 255;
	auto __UINT8_C(__MP7)(__MP7 c)
	{
		return c;
	}
	enum int __UINT_LEAST16_MAX__ = 65535;
	auto __UINT16_C(__MP8)(__MP8 c)
	{
		return c;
	}
	enum uint __UINT_LEAST32_MAX__ = 4294967295u;
	enum ulong __UINT_LEAST64_MAX__ = 18446744073709551615LU;
	enum int __INT_FAST8_MAX__ = 127;
	enum int __INT_FAST8_WIDTH__ = 8;
	enum long __INT_FAST16_MAX__ = 9223372036854775807L;
	enum int __INT_FAST16_WIDTH__ = 64;
	enum long __INT_FAST32_MAX__ = 9223372036854775807L;
	enum int __INT_FAST32_WIDTH__ = 64;
	enum long __INT_FAST64_MAX__ = 9223372036854775807L;
	enum int __INT_FAST64_WIDTH__ = 64;
	enum int __UINT_FAST8_MAX__ = 255;
	enum ulong __UINT_FAST16_MAX__ = 18446744073709551615LU;
	enum ulong __UINT_FAST32_MAX__ = 18446744073709551615LU;
	enum ulong __UINT_FAST64_MAX__ = 18446744073709551615LU;
	enum long __INTPTR_MAX__ = 9223372036854775807L;
	enum int __INTPTR_WIDTH__ = 64;
	enum ulong __UINTPTR_MAX__ = 18446744073709551615LU;
	enum int __GCC_IEC_559 = 2;
	enum int __GCC_IEC_559_COMPLEX = 2;
	enum int __FLT_EVAL_METHOD__ = 0;
	enum int __FLT_EVAL_METHOD_TS_18661_3__ = 0;
	enum int __DEC_EVAL_METHOD__ = 2;
	enum int __FLT_RADIX__ = 2;
	enum int __FLT_MANT_DIG__ = 24;
	enum int __FLT_DIG__ = 6;
	auto __FLT_MIN_EXP__()()
	{
		return -125;
	}
	auto __FLT_MIN_10_EXP__()()
	{
		return -37;
	}
	enum int __FLT_MAX_EXP__ = 128;
	enum int __FLT_MAX_10_EXP__ = 38;
	enum int __FLT_DECIMAL_DIG__ = 9;
	enum float __FLT_MAX__ = 0xf.fffffp+124F;
	enum float __FLT_NORM_MAX__ = 0xf.fffffp+124F;
	enum float __FLT_MIN__ = 0x8p-129F;
	enum float __FLT_EPSILON__ = 0x8p-26F;
	enum float __FLT_DENORM_MIN__ = 0x8p-152F;
	enum int __FLT_HAS_DENORM__ = 1;
	enum int __FLT_HAS_INFINITY__ = 1;
	enum int __FLT_HAS_QUIET_NAN__ = 1;
	enum int __FLT_IS_IEC_60559__ = 1;
	enum int __DBL_MANT_DIG__ = 53;
	enum int __DBL_DIG__ = 15;
	auto __DBL_MIN_EXP__()()
	{
		return -1021;
	}
	auto __DBL_MIN_10_EXP__()()
	{
		return -307;
	}
	enum int __DBL_MAX_EXP__ = 1024;
	enum int __DBL_MAX_10_EXP__ = 308;
	enum int __DBL_DECIMAL_DIG__ = 17;
	auto __DBL_MAX__()()
	{
		return cast(double)0xf.ffffffffffff8p+1020L;
	}
	auto __DBL_NORM_MAX__()()
	{
		return cast(double)0xf.ffffffffffff8p+1020L;
	}
	auto __DBL_MIN__()()
	{
		return cast(double)0x8p-1025L;
	}
	auto __DBL_EPSILON__()()
	{
		return cast(double)0x8p-55L;
	}
	auto __DBL_DENORM_MIN__()()
	{
		return cast(double)0x8p-1077L;
	}
	enum int __DBL_HAS_DENORM__ = 1;
	enum int __DBL_HAS_INFINITY__ = 1;
	enum int __DBL_HAS_QUIET_NAN__ = 1;
	enum int __DBL_IS_IEC_60559__ = 1;
	enum int __LDBL_MANT_DIG__ = 64;
	enum int __LDBL_DIG__ = 18;
	auto __LDBL_MIN_EXP__()()
	{
		return -16381;
	}
	auto __LDBL_MIN_10_EXP__()()
	{
		return -4931;
	}
	enum int __LDBL_MAX_EXP__ = 16384;
	enum int __LDBL_MAX_10_EXP__ = 4932;
	enum int __DECIMAL_DIG__ = 21;
	enum int __LDBL_DECIMAL_DIG__ = 21;
	enum real __LDBL_MAX__ = 0xf.fffffffffffffffp+16380L;
	enum real __LDBL_NORM_MAX__ = 0xf.fffffffffffffffp+16380L;
	enum real __LDBL_MIN__ = 0x8p-16385L;
	enum real __LDBL_EPSILON__ = 0x8p-66L;
	enum real __LDBL_DENORM_MIN__ = 3.6452e-4951L;
	enum int __LDBL_HAS_DENORM__ = 1;
	enum int __LDBL_HAS_INFINITY__ = 1;
	enum int __LDBL_HAS_QUIET_NAN__ = 1;
	enum int __LDBL_IS_IEC_60559__ = 1;
	enum int __FLT16_MANT_DIG__ = 11;
	enum int __FLT16_DIG__ = 3;
	auto __FLT16_MIN_EXP__()()
	{
		return -13;
	}
	auto __FLT16_MIN_10_EXP__()()
	{
		return -4;
	}
	enum int __FLT16_MAX_EXP__ = 16;
	enum int __FLT16_MAX_10_EXP__ = 4;
	enum int __FLT16_DECIMAL_DIG__ = 5;
	enum int __FLT16_HAS_DENORM__ = 1;
	enum int __FLT16_HAS_INFINITY__ = 1;
	enum int __FLT16_HAS_QUIET_NAN__ = 1;
	enum int __FLT16_IS_IEC_60559__ = 1;
	enum int __FLT32_MANT_DIG__ = 24;
	enum int __FLT32_DIG__ = 6;
	auto __FLT32_MIN_EXP__()()
	{
		return -125;
	}
	auto __FLT32_MIN_10_EXP__()()
	{
		return -37;
	}
	enum int __FLT32_MAX_EXP__ = 128;
	enum int __FLT32_MAX_10_EXP__ = 38;
	enum int __FLT32_DECIMAL_DIG__ = 9;
	enum int __FLT32_HAS_DENORM__ = 1;
	enum int __FLT32_HAS_INFINITY__ = 1;
	enum int __FLT32_HAS_QUIET_NAN__ = 1;
	enum int __FLT32_IS_IEC_60559__ = 1;
	enum int __FLT64_MANT_DIG__ = 53;
	enum int __FLT64_DIG__ = 15;
	auto __FLT64_MIN_EXP__()()
	{
		return -1021;
	}
	auto __FLT64_MIN_10_EXP__()()
	{
		return -307;
	}
	enum int __FLT64_MAX_EXP__ = 1024;
	enum int __FLT64_MAX_10_EXP__ = 308;
	enum int __FLT64_DECIMAL_DIG__ = 17;
	enum int __FLT64_HAS_DENORM__ = 1;
	enum int __FLT64_HAS_INFINITY__ = 1;
	enum int __FLT64_HAS_QUIET_NAN__ = 1;
	enum int __FLT64_IS_IEC_60559__ = 1;
	enum int __FLT128_MANT_DIG__ = 113;
	enum int __FLT128_DIG__ = 33;
	auto __FLT128_MIN_EXP__()()
	{
		return -16381;
	}
	auto __FLT128_MIN_10_EXP__()()
	{
		return -4931;
	}
	enum int __FLT128_MAX_EXP__ = 16384;
	enum int __FLT128_MAX_10_EXP__ = 4932;
	enum int __FLT128_DECIMAL_DIG__ = 36;
	enum int __FLT128_HAS_DENORM__ = 1;
	enum int __FLT128_HAS_INFINITY__ = 1;
	enum int __FLT128_HAS_QUIET_NAN__ = 1;
	enum int __FLT128_IS_IEC_60559__ = 1;
	enum int __FLT32X_MANT_DIG__ = 53;
	enum int __FLT32X_DIG__ = 15;
	auto __FLT32X_MIN_EXP__()()
	{
		return -1021;
	}
	auto __FLT32X_MIN_10_EXP__()()
	{
		return -307;
	}
	enum int __FLT32X_MAX_EXP__ = 1024;
	enum int __FLT32X_MAX_10_EXP__ = 308;
	enum int __FLT32X_DECIMAL_DIG__ = 17;
	enum int __FLT32X_HAS_DENORM__ = 1;
	enum int __FLT32X_HAS_INFINITY__ = 1;
	enum int __FLT32X_HAS_QUIET_NAN__ = 1;
	enum int __FLT32X_IS_IEC_60559__ = 1;
	enum int __FLT64X_MANT_DIG__ = 64;
	enum int __FLT64X_DIG__ = 18;
	auto __FLT64X_MIN_EXP__()()
	{
		return -16381;
	}
	auto __FLT64X_MIN_10_EXP__()()
	{
		return -4931;
	}
	enum int __FLT64X_MAX_EXP__ = 16384;
	enum int __FLT64X_MAX_10_EXP__ = 4932;
	enum int __FLT64X_DECIMAL_DIG__ = 21;
	enum int __FLT64X_HAS_DENORM__ = 1;
	enum int __FLT64X_HAS_INFINITY__ = 1;
	enum int __FLT64X_HAS_QUIET_NAN__ = 1;
	enum int __FLT64X_IS_IEC_60559__ = 1;
	enum int __BFLT16_MANT_DIG__ = 8;
	enum int __BFLT16_DIG__ = 2;
	auto __BFLT16_MIN_EXP__()()
	{
		return -125;
	}
	auto __BFLT16_MIN_10_EXP__()()
	{
		return -37;
	}
	enum int __BFLT16_MAX_EXP__ = 128;
	enum int __BFLT16_MAX_10_EXP__ = 38;
	enum int __BFLT16_DECIMAL_DIG__ = 4;
	enum int __BFLT16_HAS_DENORM__ = 1;
	enum int __BFLT16_HAS_INFINITY__ = 1;
	enum int __BFLT16_HAS_QUIET_NAN__ = 1;
	enum int __BFLT16_IS_IEC_60559__ = 0;
	enum int __DEC32_MANT_DIG__ = 7;
	auto __DEC32_MIN_EXP__()()
	{
		return -94;
	}
	enum int __DEC32_MAX_EXP__ = 97;
	enum int __DEC64_MANT_DIG__ = 16;
	auto __DEC64_MIN_EXP__()()
	{
		return -382;
	}
	enum int __DEC64_MAX_EXP__ = 385;
	enum int __DEC128_MANT_DIG__ = 34;
	auto __DEC128_MIN_EXP__()()
	{
		return -6142;
	}
	enum int __DEC128_MAX_EXP__ = 6145;
	enum int __GNUC_STDC_INLINE__ = 1;
	enum int __NO_INLINE__ = 1;
	enum int __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = 1;
	enum int __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = 1;
	enum int __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = 1;
	enum int __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = 1;
	enum int __GCC_ATOMIC_BOOL_LOCK_FREE = 2;
	enum int __GCC_ATOMIC_CHAR_LOCK_FREE = 2;
	enum int __GCC_ATOMIC_CHAR16_T_LOCK_FREE = 2;
	enum int __GCC_ATOMIC_CHAR32_T_LOCK_FREE = 2;
	enum int __GCC_ATOMIC_WCHAR_T_LOCK_FREE = 2;
	enum int __GCC_ATOMIC_SHORT_LOCK_FREE = 2;
	enum int __GCC_ATOMIC_INT_LOCK_FREE = 2;
	enum int __GCC_ATOMIC_LONG_LOCK_FREE = 2;
	enum int __GCC_ATOMIC_LLONG_LOCK_FREE = 2;
	enum int __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = 1;
	enum int __GCC_DESTRUCTIVE_SIZE = 64;
	enum int __GCC_CONSTRUCTIVE_SIZE = 64;
	enum int __GCC_ATOMIC_POINTER_LOCK_FREE = 2;
	enum int __HAVE_SPECULATION_SAFE_VALUE = 1;
	enum int __GCC_HAVE_DWARF2_CFI_ASM = 1;
	enum int __PRAGMA_REDEFINE_EXTNAME = 1;
	enum int __SSP_STRONG__ = 3;
	enum int __SIZEOF_INT128__ = 16;
	enum int __SIZEOF_WCHAR_T__ = 4;
	enum int __SIZEOF_WINT_T__ = 4;
	enum int __SIZEOF_PTRDIFF_T__ = 8;
	enum int __amd64 = 1;
	enum int __amd64__ = 1;
	enum int __x86_64 = 1;
	enum int __x86_64__ = 1;
	enum int __SIZEOF_FLOAT80__ = 16;
	enum int __SIZEOF_FLOAT128__ = 16;
	enum int __ATOMIC_HLE_ACQUIRE = 65536;
	enum int __ATOMIC_HLE_RELEASE = 131072;
	enum int __GCC_ASM_FLAG_OUTPUTS__ = 1;
	enum int __k8 = 1;
	enum int __k8__ = 1;
	enum int __code_model_small__ = 1;
	enum int __MMX__ = 1;
	enum int __SSE__ = 1;
	enum int __SSE2__ = 1;
	enum int __FXSR__ = 1;
	enum int __SSE_MATH__ = 1;
	enum int __SSE2_MATH__ = 1;
	enum int __MMX_WITH_SSE__ = 1;
	enum int __SEG_FS = 1;
	enum int __SEG_GS = 1;
	enum int __gnu_linux__ = 1;
	enum int __linux = 1;
	enum int __linux__ = 1;
	enum int linux = 1;
	enum int __unix = 1;
	enum int __unix__ = 1;
	enum int unix = 1;
	enum int __ELF__ = 1;
	enum int __DECIMAL_BID_FORMAT__ = 1;
	enum int _STDC_PREDEF_H = 1;
	enum int __STDC_IEC_559__ = 1;
	enum long __STDC_IEC_60559_BFP__ = 201404L;
	enum int __STDC_IEC_559_COMPLEX__ = 1;
	enum long __STDC_IEC_60559_COMPLEX__ = 201404L;
	enum long __STDC_ISO_10646__ = 201706L;
	enum int __IMPORTC__ = 1;
	auto __builtin_isnan(__MP11)(__MP11 x)
	{
		return isnan(x);
	}
	auto __builtin_isfinite(__MP12)(__MP12 x)
	{
		return finite(x);
	}
	auto __builtin_alloca(__MP13)(__MP13 x)
	{
		return alloca(x);
	}
	auto __has_feature(__MP14)(__MP14 x)
	{
		return 0;
	}
	auto __has_extension(__MP15)(__MP15 x)
	{
		return 0;
	}
	enum int __STDC_NO_VLA__ = 1;
	enum int MYPAINT_TILE_SIZE = 64;
	enum int MYPAINT_MAX_THREADS = 16;
	enum int MYPAINT_MAX_MIPMAP_LEVEL = 4;
	auto FALSE()()
	{
		return 0;
	}
	auto TRUE()()
	{
		return !FALSE;
	}
	enum int _STDINT_H = 1;
	enum int _FEATURES_H = 1;
	auto __GNUC_PREREQ(__MP20, __MP21)(__MP20 maj, __MP21 min)
	{
		return (__GNUC__ << 16) + __GNUC_MINOR__ >= (maj << 16) + min;
	}
	auto __glibc_clang_prereq(__MP22, __MP23)(__MP22 maj, __MP23 min)
	{
		return 0;
	}
	enum int _DEFAULT_SOURCE = 1;
	enum int __GLIBC_USE_ISOC2Y = 0;
	enum int __GLIBC_USE_ISOC23 = 0;
	enum int __USE_ISOC11 = 1;
	enum int __USE_ISOC99 = 1;
	enum int __USE_ISOC95 = 1;
	enum int __USE_POSIX_IMPLICITLY = 1;
	enum int _POSIX_SOURCE = 1;
	enum long _POSIX_C_SOURCE = 200809L;
	enum int __USE_POSIX = 1;
	enum int __USE_POSIX2 = 1;
	enum int __USE_POSIX199309 = 1;
	enum int __USE_POSIX199506 = 1;
	enum int __USE_XOPEN2K = 1;
	enum int __USE_XOPEN2K8 = 1;
	enum int _ATFILE_SOURCE = 1;
	enum int __WORDSIZE = 64;
	enum int __WORDSIZE_TIME64_COMPAT32 = 1;
	enum int __SYSCALL_WORDSIZE = 64;
	enum int __USE_TIME_BITS64 = 1;
	enum int __USE_MISC = 1;
	enum int __USE_ATFILE = 1;
	enum int __USE_FORTIFY_LEVEL = 0;
	enum int __GLIBC_USE_DEPRECATED_GETS = 0;
	enum int __GLIBC_USE_DEPRECATED_SCANF = 0;
	enum int __GLIBC_USE_C23_STRTOL = 0;
	enum int __GNU_LIBRARY__ = 6;
	enum int __GLIBC__ = 2;
	enum int __GLIBC_MINOR__ = 41;
	auto __GLIBC_PREREQ(__MP25, __MP26)(__MP25 maj, __MP26 min)
	{
		return (__GLIBC__ << 16) + __GLIBC_MINOR__ >= (maj << 16) + min;
	}
	enum int _SYS_CDEFS_H = 1;
	auto __glibc_has_attribute(__MP27)(__MP27 attr)
	{
		return __has_attribute(attr);
	}
	auto __glibc_has_builtin(__MP28)(__MP28 name)
	{
		return __has_builtin(name);
	}
	auto __glibc_has_extension(__MP29)(__MP29 ext)
	{
		return __has_extension(ext);
	}
	auto __P(__MP32)(__MP32 args)
	{
		return args;
	}
	auto __PMT(__MP33)(__MP33 args)
	{
		return args;
	}
	auto __bos(__MP37)(__MP37 ptr)
	{
		return __builtin_object_size(ptr, __USE_FORTIFY_LEVEL > 1);
	}
	auto __bos0(__MP38)(__MP38 ptr)
	{
		return __builtin_object_size(ptr, 0);
	}
	auto __glibc_objsize0(__MP39)(__MP39 __o)
	{
		return __bos0(__o);
	}
	auto __glibc_objsize(__MP40)(__MP40 __o)
	{
		return __bos(__o);
	}
	enum int __glibc_c99_flexarr_available = 1;
	auto __ASMNAME(__MP53)(__MP53 cname)
	{
		return __ASMNAME2(__USER_LABEL_PREFIX__, cname);
	}
	auto __nonnull(__MP63)(__MP63 params)
	{
		return __attribute_nonnull__(params);
	}
	auto __va_arg_pack()()
	{
		return __builtin_va_arg_pack();
	}
	auto __va_arg_pack_len()()
	{
		return __builtin_va_arg_pack_len();
	}
	auto __glibc_unlikely(__MP64)(__MP64 cond)
	{
		return __builtin_expect(cond, 0);
	}
	auto __glibc_likely(__MP65)(__MP65 cond)
	{
		return __builtin_expect(cond, 1);
	}
	enum int __LDOUBLE_REDIRECTS_TO_FLOAT128_ABI = 0;
	auto __REDIRECT_LDBL(__MP79, __MP80, __MP81)(__MP79 name, __MP80 proto, __MP81 _alias)
	{
		return __REDIRECT(name, proto, _alias);
	}
	auto __REDIRECT_NTH_LDBL(__MP82, __MP83, __MP84)(__MP82 name, __MP83 proto, __MP84 _alias)
	{
		return __REDIRECT_NTH(name, proto, _alias);
	}
	enum int __HAVE_GENERIC_SELECTION = 1;
	auto __fortified_attr_access(__MP88, __MP89, __MP90)(__MP88 a, __MP89 o, __MP90 s)
	{
		return __attr_access((a , o , s));
	}
	enum int __GLIBC_USE_LIB_EXT2 = 0;
	enum int __GLIBC_USE_IEC_60559_BFP_EXT = 0;
	enum int __GLIBC_USE_IEC_60559_BFP_EXT_C23 = 0;
	enum int __GLIBC_USE_IEC_60559_EXT = 0;
	enum int __GLIBC_USE_IEC_60559_FUNCS_EXT = 0;
	enum int __GLIBC_USE_IEC_60559_FUNCS_EXT_C23 = 0;
	enum int __GLIBC_USE_IEC_60559_TYPES_EXT = 0;
	enum int _BITS_TYPES_H = 1;
	enum int _BITS_TYPESIZES_H = 1;
	enum int __OFF_T_MATCHES_OFF64_T = 1;
	enum int __INO_T_MATCHES_INO64_T = 1;
	enum int __RLIM_T_MATCHES_RLIM64_T = 1;
	enum int __STATFS_MATCHES_STATFS64 = 1;
	enum int __KERNEL_OLD_TIMEVAL_MATCHES_TIMEVAL64 = 1;
	enum int __FD_SETSIZE = 1024;
	enum int _BITS_TIME64_H = 1;
	enum int _BITS_WCHAR_H = 1;
	enum int _BITS_STDINT_INTN_H = 1;
	enum int _BITS_STDINT_UINTN_H = 1;
	enum int _BITS_STDINT_LEAST_H = 1;
	auto INT8_MIN()()
	{
		return -128;
	}
	auto INT16_MIN()()
	{
		return -32767 - 1;
	}
	auto INT32_MIN()()
	{
		return -2147483647 - 1;
	}
	auto INT64_MIN()()
	{
		return -__INT64_C(9223372036854775807L) - 1;
	}
	auto INT8_MAX()()
	{
		return 127;
	}
	auto INT16_MAX()()
	{
		return 32767;
	}
	auto INT32_MAX()()
	{
		return 2147483647;
	}
	auto INT64_MAX()()
	{
		return __INT64_C(9223372036854775807L);
	}
	auto UINT8_MAX()()
	{
		return 255;
	}
	auto UINT16_MAX()()
	{
		return 65535;
	}
	auto UINT32_MAX()()
	{
		return 4294967295u;
	}
	auto UINT64_MAX()()
	{
		return __UINT64_C(18446744073709551615LU);
	}
	auto INT_LEAST8_MIN()()
	{
		return -128;
	}
	auto INT_LEAST16_MIN()()
	{
		return -32767 - 1;
	}
	auto INT_LEAST32_MIN()()
	{
		return -2147483647 - 1;
	}
	auto INT_LEAST64_MIN()()
	{
		return -__INT64_C(9223372036854775807L) - 1;
	}
	auto INT_LEAST8_MAX()()
	{
		return 127;
	}
	auto INT_LEAST16_MAX()()
	{
		return 32767;
	}
	auto INT_LEAST32_MAX()()
	{
		return 2147483647;
	}
	auto INT_LEAST64_MAX()()
	{
		return __INT64_C(9223372036854775807L);
	}
	auto UINT_LEAST8_MAX()()
	{
		return 255;
	}
	auto UINT_LEAST16_MAX()()
	{
		return 65535;
	}
	auto UINT_LEAST32_MAX()()
	{
		return 4294967295u;
	}
	auto UINT_LEAST64_MAX()()
	{
		return __UINT64_C(18446744073709551615LU);
	}
	auto INT_FAST8_MIN()()
	{
		return -128;
	}
	auto INT_FAST16_MIN()()
	{
		return -9223372036854775807L - 1;
	}
	auto INT_FAST32_MIN()()
	{
		return -9223372036854775807L - 1;
	}
	auto INT_FAST64_MIN()()
	{
		return -__INT64_C(9223372036854775807L) - 1;
	}
	auto INT_FAST8_MAX()()
	{
		return 127;
	}
	auto INT_FAST16_MAX()()
	{
		return 9223372036854775807L;
	}
	auto INT_FAST32_MAX()()
	{
		return 9223372036854775807L;
	}
	auto INT_FAST64_MAX()()
	{
		return __INT64_C(9223372036854775807L);
	}
	auto UINT_FAST8_MAX()()
	{
		return 255;
	}
	auto UINT_FAST16_MAX()()
	{
		return 18446744073709551615LU;
	}
	auto UINT_FAST32_MAX()()
	{
		return 18446744073709551615LU;
	}
	auto UINT_FAST64_MAX()()
	{
		return __UINT64_C(18446744073709551615LU);
	}
	auto INTPTR_MIN()()
	{
		return -9223372036854775807L - 1;
	}
	auto INTPTR_MAX()()
	{
		return 9223372036854775807L;
	}
	auto UINTPTR_MAX()()
	{
		return 18446744073709551615LU;
	}
	auto INTMAX_MIN()()
	{
		return -__INT64_C(9223372036854775807L) - 1;
	}
	auto INTMAX_MAX()()
	{
		return __INT64_C(9223372036854775807L);
	}
	auto UINTMAX_MAX()()
	{
		return __UINT64_C(18446744073709551615LU);
	}
	auto PTRDIFF_MIN()()
	{
		return -9223372036854775807L - 1;
	}
	auto PTRDIFF_MAX()()
	{
		return 9223372036854775807L;
	}
	auto SIG_ATOMIC_MIN()()
	{
		return -2147483647 - 1;
	}
	auto SIG_ATOMIC_MAX()()
	{
		return 2147483647;
	}
	auto SIZE_MAX()()
	{
		return 18446744073709551615LU;
	}
	auto WINT_MIN()()
	{
		return 0u;
	}
	auto WINT_MAX()()
	{
		return 4294967295u;
	}
	auto INT8_C(__MP96)(__MP96 c)
	{
		return c;
	}
	auto INT16_C(__MP97)(__MP97 c)
	{
		return c;
	}
	auto INT32_C(__MP98)(__MP98 c)
	{
		return c;
	}
	auto UINT8_C(__MP100)(__MP100 c)
	{
		return c;
	}
	auto UINT16_C(__MP101)(__MP101 c)
	{
		return c;
	}
	enum int NUM_BBOXES_DEFAULT = 32;
}
import __importc_builtins;
