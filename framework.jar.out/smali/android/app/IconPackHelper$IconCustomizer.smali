.class public Landroid/app/IconPackHelper$IconCustomizer;
.super Ljava/lang/Object;
.source "IconPackHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IconPackHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IconCustomizer"
.end annotation


# static fields
.field private static final sRandom:Ljava/util/Random;

.field private static final sThemeService:Landroid/content/res/IThemeService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Landroid/app/IconPackHelper$IconCustomizer;->sRandom:Ljava/util/Random;

    const-string v0, "themes"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/res/IThemeService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/res/IThemeService;

    move-result-object v0

    sput-object v0, Landroid/app/IconPackHelper$IconCustomizer;->sThemeService:Landroid/content/res/IThemeService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cacheComposedIcon(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 3
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    :try_start_0
    sget-object v1, Landroid/app/IconPackHelper$IconCustomizer;->sThemeService:Landroid/content/res/IThemeService;

    invoke-interface {v1, p0, p1}, Landroid/content/res/IThemeService;->cacheComposedIcon(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    # getter for: Landroid/app/IconPackHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/IconPackHelper;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to cache icon."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;IIIFI[F)Landroid/graphics/Bitmap;
    .locals 16
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "iconBack"    # I
    .param p3, "iconMask"    # I
    .param p4, "iconUpon"    # I
    .param p5, "scale"    # F
    .param p6, "iconSize"    # I
    .param p7, "colorFilter"    # [F

    .prologue
    if-gtz p6, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5}, Landroid/graphics/Canvas;-><init>()V

    .local v5, "canvas":Landroid/graphics/Canvas;
    new-instance v13, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v14, 0x1

    const/4 v15, 0x2

    invoke-direct {v13, v14, v15}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v5, v13}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    const/4 v12, 0x0

    .local v12, "width":I
    const/4 v6, 0x0

    .local v6, "height":I
    move-object/from16 v0, p0

    instance-of v13, v0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v13, :cond_3

    move-object/from16 v10, p0

    check-cast v10, Landroid/graphics/drawable/PaintDrawable;

    .local v10, "painter":Landroid/graphics/drawable/PaintDrawable;
    move/from16 v0, p6

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    move/from16 v0, p6

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    move/from16 v12, p6

    move/from16 v6, p6

    .end local v10    # "painter":Landroid/graphics/drawable/PaintDrawable;
    :cond_1
    :goto_1
    if-lez v12, :cond_2

    if-gtz v6, :cond_6

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    instance-of v13, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v13, :cond_1

    move-object/from16 v4, p0

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .local v4, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .local v3, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v13

    if-nez v13, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    :cond_4
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v13

    invoke-virtual {v5, v13}, Landroid/graphics/Canvas;->setDensity(I)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    mul-int/lit8 v14, p6, 0x2

    if-ge v13, v14, :cond_5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    mul-int/lit8 v14, p6, 0x2

    if-ge v13, v14, :cond_5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    goto :goto_1

    :cond_5
    move/from16 v12, p6

    move/from16 v6, p6

    goto :goto_1

    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_6
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v6, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .restart local v3    # "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v5, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .local v8, "oldBounds":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v12, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    div-int/lit8 v13, v12, 0x2

    int-to-float v13, v13

    div-int/lit8 v14, v6, 0x2

    int-to-float v14, v14

    move/from16 v0, p5

    move/from16 v1, p5

    invoke-virtual {v5, v0, v1, v13, v14}, Landroid/graphics/Canvas;->scale(FFFF)V

    if-eqz p7, :cond_8

    const/4 v9, 0x0

    .local v9, "p":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    instance-of v13, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v13, :cond_c

    move-object/from16 v13, p0

    check-cast v13, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v9

    :cond_7
    :goto_2
    new-instance v13, Landroid/graphics/ColorMatrixColorFilter;

    move-object/from16 v0, p7

    invoke-direct {v13, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .end local v9    # "p":Landroid/graphics/Paint;
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    if-eqz p3, :cond_9

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .local v7, "mask":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object v13, v7

    check-cast v13, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v13

    new-instance v14, Landroid/graphics/PorterDuffXfermode;

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v14, v15}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v7, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .end local v7    # "mask":Landroid/graphics/drawable/Drawable;
    :cond_9
    if-eqz p2, :cond_a

    invoke-virtual/range {p1 .. p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .local v2, "back":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object v13, v2

    check-cast v13, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v13

    new-instance v14, Landroid/graphics/PorterDuffXfermode;

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v14, v15}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .end local v2    # "back":Landroid/graphics/drawable/Drawable;
    :cond_a
    if-eqz p4, :cond_b

    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .local v11, "upon":Landroid/graphics/drawable/Drawable;
    if-eqz v11, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v11, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .end local v11    # "upon":Landroid/graphics/drawable/Drawable;
    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v5}, Landroid/graphics/Canvas;->getDensity()I

    move-result v13

    invoke-virtual {v3, v13}, Landroid/graphics/Bitmap;->setDensity(I)V

    goto/16 :goto_0

    .restart local v9    # "p":Landroid/graphics/Paint;
    :cond_c
    move-object/from16 v0, p0

    instance-of v13, v0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v13, :cond_7

    move-object/from16 v13, p0

    check-cast v13, Landroid/graphics/drawable/PaintDrawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/PaintDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v9

    goto/16 :goto_2
.end method

.method private static getCachedIconName(Ljava/lang/String;II)Ljava/lang/String;
    .locals 4
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "resId"    # I
    .param p2, "density"    # I

    .prologue
    const-string v0, "%s_%08x_%d.png"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCachedIconPath(Ljava/lang/String;II)Ljava/lang/String;
    .locals 4
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "resId"    # I
    .param p2, "density"    # I

    .prologue
    const-string v0, "%s/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Landroid/content/pm/ThemeUtils;->SYSTEM_THEME_ICON_CACHE_DIR:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0, p1, p2}, Landroid/app/IconPackHelper$IconCustomizer;->getCachedIconName(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCachedIconPaths(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    new-instance v1, Ljava/io/File;

    sget-object v4, Landroid/content/pm/ThemeUtils;->SYSTEM_THEME_ICON_CACHE_DIR:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, "iconCache":Ljava/io/File;
    const-string v4, "%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "prefix":Ljava/lang/String;
    new-instance v0, Landroid/app/IconPackHelper$IconCustomizer$1;

    invoke-direct {v0, v2}, Landroid/app/IconPackHelper$IconCustomizer$1;-><init>(Ljava/lang/String;)V

    .local v0, "filter":Ljava/io/FilenameFilter;
    invoke-virtual {v1, v0}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v3

    .local v3, "validPaths":[Ljava/lang/String;
    if-eqz v3, :cond_0

    .end local v3    # "validPaths":[Ljava/lang/String;
    :goto_0
    return-object v3

    .restart local v3    # "validPaths":[Ljava/lang/String;
    :cond_0
    new-array v3, v6, [Ljava/lang/String;

    goto :goto_0
.end method

.method public static getComposedIconDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Landroid/app/ComposedIconInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iconInfo"    # Landroid/app/ComposedIconInfo;

    .prologue
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .local v0, "res":Landroid/content/res/Resources;
    invoke-static {p0, v0, p2}, Landroid/app/IconPackHelper$IconCustomizer;->getComposedIconDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Landroid/app/ComposedIconInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public static getComposedIconDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Landroid/app/ComposedIconInfo;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "iconInfo"    # Landroid/app/ComposedIconInfo;

    .prologue
    if-nez p2, :cond_0

    .end local p0    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object p0

    .restart local p0    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v2, 0x0

    .local v2, "back":I
    iget-object v0, p2, Landroid/app/ComposedIconInfo;->iconBacks:[I

    if-eqz v0, :cond_1

    iget-object v0, p2, Landroid/app/ComposedIconInfo;->iconBacks:[I

    array-length v0, v0

    if-lez v0, :cond_1

    iget-object v0, p2, Landroid/app/ComposedIconInfo;->iconBacks:[I

    sget-object v1, Landroid/app/IconPackHelper$IconCustomizer;->sRandom:Ljava/util/Random;

    iget-object v3, p2, Landroid/app/ComposedIconInfo;->iconBacks:[I

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget v2, v0, v1

    :cond_1
    iget v3, p2, Landroid/app/ComposedIconInfo;->iconMask:I

    iget v4, p2, Landroid/app/ComposedIconInfo;->iconUpon:I

    iget v5, p2, Landroid/app/ComposedIconInfo;->iconScale:F

    iget v6, p2, Landroid/app/ComposedIconInfo;->iconSize:I

    iget-object v7, p2, Landroid/app/ComposedIconInfo;->colorFilter:[F

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Landroid/app/IconPackHelper$IconCustomizer;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;IIIFI[F)Landroid/graphics/Bitmap;

    move-result-object v8

    .local v8, "bmp":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_2

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_1
    move-object p0, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getValue(Landroid/content/res/Resources;ILandroid/util/TypedValue;Landroid/graphics/drawable/Drawable;)V
    .locals 12
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "baseIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    instance-of v0, p3, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getAppName()Ljava/lang/String;

    move-result-object v10

    .local v10, "pkgName":Ljava/lang/String;
    new-instance v11, Landroid/util/TypedValue;

    invoke-direct {v11}, Landroid/util/TypedValue;-><init>()V

    .local v11, "tempValue":Landroid/util/TypedValue;
    invoke-virtual {v11, p2}, Landroid/util/TypedValue;->setTo(Landroid/util/TypedValue;)V

    const/16 v0, 0x80

    iput v0, p2, Landroid/util/TypedValue;->assetCookie:I

    const v0, -0x7f000001

    and-int/2addr v0, p1

    iput v0, p2, Landroid/util/TypedValue;->data:I

    iget v0, p2, Landroid/util/TypedValue;->density:I

    invoke-static {v10, p1, v0}, Landroid/app/IconPackHelper$IconCustomizer;->getCachedIconPath(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    new-instance v0, Ljava/io/File;

    iget-object v1, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getComposedIconInfo()Landroid/app/ComposedIconInfo;

    move-result-object v9

    .local v9, "iconInfo":Landroid/app/ComposedIconInfo;
    const/4 v2, 0x0

    .local v2, "back":I
    iget-object v0, v9, Landroid/app/ComposedIconInfo;->iconBacks:[I

    if-eqz v0, :cond_2

    iget-object v0, v9, Landroid/app/ComposedIconInfo;->iconBacks:[I

    array-length v0, v0

    if-lez v0, :cond_2

    iget-object v0, v9, Landroid/app/ComposedIconInfo;->iconBacks:[I

    iget-object v1, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const v3, 0x7fffffff

    and-int/2addr v1, v3

    iget-object v3, v9, Landroid/app/ComposedIconInfo;->iconBacks:[I

    array-length v3, v3

    rem-int/2addr v1, v3

    aget v2, v0, v1

    :cond_2
    iget v3, v9, Landroid/app/ComposedIconInfo;->iconMask:I

    iget v4, v9, Landroid/app/ComposedIconInfo;->iconUpon:I

    iget v5, v9, Landroid/app/ComposedIconInfo;->iconScale:F

    iget v6, v9, Landroid/app/ComposedIconInfo;->iconSize:I

    iget-object v7, v9, Landroid/app/ComposedIconInfo;->colorFilter:[F

    move-object v0, p3

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Landroid/app/IconPackHelper$IconCustomizer;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;IIIFI[F)Landroid/graphics/Bitmap;

    move-result-object v8

    .local v8, "bmp":Landroid/graphics/Bitmap;
    iget v0, p2, Landroid/util/TypedValue;->density:I

    invoke-static {v10, p1, v0}, Landroid/app/IconPackHelper$IconCustomizer;->getCachedIconName(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/app/IconPackHelper$IconCustomizer;->cacheComposedIcon(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    # getter for: Landroid/app/IconPackHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/IconPackHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to cache icon "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2, v11}, Landroid/util/TypedValue;->setTo(Landroid/util/TypedValue;)V

    goto/16 :goto_0
.end method
