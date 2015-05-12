.class public Lcom/android/mipop/widget/Until;
.super Ljava/lang/Object;
.source "Until.java"


# static fields
.field public static BOTTOM_LINE:I

.field public static EXPEND_LINE:I

.field public static EXPEND_LINE_RIGHT:I

.field public static EXPEND_OFFSET:I

.field public static IMAGE_WIDTH:I

.field public static MID_LINE:I

.field public static MOVE_MAX_SIZE:I

.field public static PARKING_LINE:I

.field public static PARKING_LINE_RIGHT:I

.field public static SCREEM_HEIGHT:I

.field public static SCREEM_WIDTH:I

.field public static SHRINK_LINE:I

.field public static STATUS_HEIGHT:I

.field private static expend_offset_factor:I

.field private static image_height_factor:I

.field private static mid_line_factor:I

.field private static move_max_factor:I

.field private static parking_factor:F

.field private static shrink_factor:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v2, 0xa

    const/4 v1, 0x2

    .line 17
    const/4 v0, 0x6

    sput v0, Lcom/android/mipop/widget/Until;->image_height_factor:I

    .line 18
    const/4 v0, 0x5

    sput v0, Lcom/android/mipop/widget/Until;->move_max_factor:I

    .line 19
    sput v1, Lcom/android/mipop/widget/Until;->mid_line_factor:I

    .line 20
    sput v2, Lcom/android/mipop/widget/Until;->expend_offset_factor:I

    .line 21
    sput v1, Lcom/android/mipop/widget/Until;->shrink_factor:I

    .line 22
    const v0, 0x3f34fdf4    # 0.707f

    sput v0, Lcom/android/mipop/widget/Until;->parking_factor:F

    .line 24
    const/16 v0, 0x1e0

    sput v0, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    .line 25
    const/16 v0, 0x348

    sput v0, Lcom/android/mipop/widget/Until;->SCREEM_HEIGHT:I

    .line 26
    sput v2, Lcom/android/mipop/widget/Until;->STATUS_HEIGHT:I

    .line 28
    sget v0, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    sget v1, Lcom/android/mipop/widget/Until;->image_height_factor:I

    div-int/2addr v0, v1

    sput v0, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    .line 29
    sget v0, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    sget v1, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/mipop/widget/Until;->mid_line_factor:I

    div-int/2addr v0, v1

    sput v0, Lcom/android/mipop/widget/Until;->MID_LINE:I

    .line 30
    sget v0, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    sget v1, Lcom/android/mipop/widget/Until;->move_max_factor:I

    div-int/2addr v0, v1

    sput v0, Lcom/android/mipop/widget/Until;->MOVE_MAX_SIZE:I

    .line 31
    sget v0, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    sget v1, Lcom/android/mipop/widget/Until;->expend_offset_factor:I

    div-int/2addr v0, v1

    sput v0, Lcom/android/mipop/widget/Until;->EXPEND_OFFSET:I

    .line 33
    const-wide v0, 0x3ff69fbe76c8b439L    # 1.414

    sget v2, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sget v1, Lcom/android/mipop/widget/Until;->EXPEND_OFFSET:I

    add-int/2addr v0, v1

    sput v0, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    .line 34
    sget v0, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    sget v1, Lcom/android/mipop/widget/Until;->shrink_factor:I

    div-int/2addr v0, v1

    sput v0, Lcom/android/mipop/widget/Until;->SHRINK_LINE:I

    .line 35
    sget v0, Lcom/android/mipop/widget/Until;->parking_factor:F

    sget v1, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/mipop/widget/Until;->PARKING_LINE:I

    .line 37
    sget v0, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    sget v1, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    sub-int/2addr v0, v1

    sput v0, Lcom/android/mipop/widget/Until;->EXPEND_LINE_RIGHT:I

    .line 38
    sget v0, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    sget v1, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/mipop/widget/Until;->PARKING_LINE:I

    sub-int/2addr v0, v1

    sput v0, Lcom/android/mipop/widget/Until;->PARKING_LINE_RIGHT:I

    .line 41
    sget v0, Lcom/android/mipop/widget/Until;->SCREEM_HEIGHT:I

    sget v1, Lcom/android/mipop/widget/Until;->STATUS_HEIGHT:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sget v1, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/android/mipop/widget/Until;->BOTTOM_LINE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 4
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 45
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 46
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 47
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v2, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    .line 48
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v2, Lcom/android/mipop/widget/Until;->SCREEM_HEIGHT:I

    .line 50
    sget v2, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    sget v3, Lcom/android/mipop/widget/Until;->SCREEM_HEIGHT:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 51
    .local v1, "x":I
    mul-int/lit8 v2, v1, 0x7d

    div-int/lit16 v2, v2, 0x2d0

    sput v2, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    .line 53
    return-void
.end method

.method public static initialPop(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 58
    .local v0, "dm":Landroid/util/DisplayMetrics;
    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 59
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 60
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v3, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    .line 61
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v3, Lcom/android/mipop/widget/Until;->SCREEM_HEIGHT:I

    .line 63
    invoke-static {p0}, Lcom/android/mipop/widget/Until;->setStatusBarHeight(Landroid/content/Context;)V

    .line 65
    sget v3, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    sget v4, Lcom/android/mipop/widget/Until;->SCREEM_HEIGHT:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 66
    .local v2, "x":I
    sget v3, Lcom/android/mipop/widget/Until;->image_height_factor:I

    div-int v3, v2, v3

    sput v3, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    .line 67
    sget v3, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    sget v4, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v3, v4

    sget v4, Lcom/android/mipop/widget/Until;->mid_line_factor:I

    div-int/2addr v3, v4

    sput v3, Lcom/android/mipop/widget/Until;->MID_LINE:I

    .line 68
    sget v3, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    sget v4, Lcom/android/mipop/widget/Until;->move_max_factor:I

    div-int/2addr v3, v4

    sput v3, Lcom/android/mipop/widget/Until;->MOVE_MAX_SIZE:I

    .line 69
    sget v3, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    sget v4, Lcom/android/mipop/widget/Until;->expend_offset_factor:I

    div-int/2addr v3, v4

    sput v3, Lcom/android/mipop/widget/Until;->EXPEND_OFFSET:I

    .line 70
    const-wide v3, 0x3ff69fbe76c8b439L    # 1.414

    sget v5, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    int-to-double v5, v5

    mul-double/2addr v3, v5

    double-to-int v3, v3

    sget v4, Lcom/android/mipop/widget/Until;->EXPEND_OFFSET:I

    add-int/2addr v3, v4

    sput v3, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    .line 71
    sget v3, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    sget v4, Lcom/android/mipop/widget/Until;->shrink_factor:I

    div-int/2addr v3, v4

    sput v3, Lcom/android/mipop/widget/Until;->SHRINK_LINE:I

    .line 72
    sget v3, Lcom/android/mipop/widget/Until;->parking_factor:F

    sget v4, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcom/android/mipop/widget/Until;->PARKING_LINE:I

    .line 73
    sget v3, Lcom/android/mipop/widget/Until;->SCREEM_HEIGHT:I

    sget v4, Lcom/android/mipop/widget/Until;->STATUS_HEIGHT:I

    sub-int/2addr v3, v4

    sget v4, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v3, v4

    sget v4, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    sput v3, Lcom/android/mipop/widget/Until;->BOTTOM_LINE:I

    .line 75
    sget v3, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    sget v4, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v3, v4

    sget v4, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    sub-int/2addr v3, v4

    sput v3, Lcom/android/mipop/widget/Until;->EXPEND_LINE_RIGHT:I

    .line 76
    sget v3, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    sget v4, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v3, v4

    sget v4, Lcom/android/mipop/widget/Until;->PARKING_LINE:I

    sub-int/2addr v3, v4

    sput v3, Lcom/android/mipop/widget/Until;->PARKING_LINE_RIGHT:I

    .line 78
    return-void
.end method

.method private static setStatusBarHeight(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 83
    .local v3, "obj":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 84
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v4, 0x0

    .line 86
    .local v4, "x":I
    :try_start_0
    const-string v5, "com.android.internal.R$dimen"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 88
    const-string v5, "status_bar_height"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sput v5, Lcom/android/mipop/widget/Until;->STATUS_HEIGHT:I

    .line 91
    const-string v5, "BAR"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sbar = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/mipop/widget/Until;->STATUS_HEIGHT:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v3    # "obj":Ljava/lang/Object;
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e1":Ljava/lang/Exception;
    const-string v5, "BAR"

    const-string v6, "get status bar height fail"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
