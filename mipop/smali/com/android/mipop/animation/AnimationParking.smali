.class public Lcom/android/mipop/animation/AnimationParking;
.super Ljava/lang/Object;
.source "AnimationParking.java"


# static fields
.field public static final LEFT:Z = true

.field public static final RIGHT:Z

.field private static TAG:Ljava/lang/String;

.field public static baseX:I

.field public static baseY:I

.field private static handler4Parking:Landroid/os/Handler;

.field private static handler4PosCheck:Landroid/os/Handler;

.field private static handler4Shrink:Landroid/os/Handler;

.field private static handler4Turning:Landroid/os/Handler;

.field private static homeX:I

.field private static homeY:I

.field public static mAreaChanged:Z

.field private static mAutoUpdatePeriod:J

.field public static mOriginSide:Z

.field private static mParking2Shrink:J

.field private static mStep:I

.field private static mTimeOut:Z

.field private static mVelocityTime:J

.field private static menuX:I

.field private static menuY:I

.field private static recentX:I

.field private static recentY:I

.field private static runnable4Parking:Ljava/lang/Runnable;

.field private static runnable4PosCheck:Ljava/lang/Runnable;

.field private static runnable4Shrink:Ljava/lang/Runnable;

.field private static runnable4Turning:Ljava/lang/Runnable;

.field private static velocityCheck:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 16
    const-string v0, "Parking"

    sput-object v0, Lcom/android/mipop/animation/AnimationParking;->TAG:Ljava/lang/String;

    .line 18
    sget v0, Lcom/android/mipop/widget/MeterBase;->baseX:I

    sput v0, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    .line 19
    sget v0, Lcom/android/mipop/widget/MeterBase;->baseY:I

    sput v0, Lcom/android/mipop/animation/AnimationParking;->baseY:I

    .line 22
    const-wide/16 v0, 0xa

    sput-wide v0, Lcom/android/mipop/animation/AnimationParking;->mAutoUpdatePeriod:J

    .line 23
    sput-boolean v2, Lcom/android/mipop/animation/AnimationParking;->mAreaChanged:Z

    .line 24
    sput v2, Lcom/android/mipop/animation/AnimationParking;->recentX:I

    .line 25
    sput v2, Lcom/android/mipop/animation/AnimationParking;->recentY:I

    .line 26
    sput v2, Lcom/android/mipop/animation/AnimationParking;->homeX:I

    .line 27
    sput v2, Lcom/android/mipop/animation/AnimationParking;->homeY:I

    .line 28
    sput v2, Lcom/android/mipop/animation/AnimationParking;->menuX:I

    .line 29
    sput v2, Lcom/android/mipop/animation/AnimationParking;->menuY:I

    .line 32
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mipop/animation/AnimationParking;->mOriginSide:Z

    .line 33
    const/16 v0, 0xa

    sput v0, Lcom/android/mipop/animation/AnimationParking;->mStep:I

    .line 40
    sput-boolean v2, Lcom/android/mipop/animation/AnimationParking;->mTimeOut:Z

    .line 41
    sput-boolean v2, Lcom/android/mipop/animation/AnimationParking;->velocityCheck:Z

    .line 42
    const-wide/16 v0, 0x12c

    sput-wide v0, Lcom/android/mipop/animation/AnimationParking;->mVelocityTime:J

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/mipop/animation/AnimationParking;->handler4PosCheck:Landroid/os/Handler;

    .line 44
    new-instance v0, Lcom/android/mipop/animation/AnimationParking$1;

    invoke-direct {v0}, Lcom/android/mipop/animation/AnimationParking$1;-><init>()V

    sput-object v0, Lcom/android/mipop/animation/AnimationParking;->runnable4PosCheck:Ljava/lang/Runnable;

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/mipop/animation/AnimationParking;->handler4Parking:Landroid/os/Handler;

    .line 57
    new-instance v0, Lcom/android/mipop/animation/AnimationParking$2;

    invoke-direct {v0}, Lcom/android/mipop/animation/AnimationParking$2;-><init>()V

    sput-object v0, Lcom/android/mipop/animation/AnimationParking;->runnable4Parking:Ljava/lang/Runnable;

    .line 63
    const-wide/16 v0, 0x7d0

    sput-wide v0, Lcom/android/mipop/animation/AnimationParking;->mParking2Shrink:J

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/mipop/animation/AnimationParking;->handler4Turning:Landroid/os/Handler;

    .line 65
    new-instance v0, Lcom/android/mipop/animation/AnimationParking$3;

    invoke-direct {v0}, Lcom/android/mipop/animation/AnimationParking$3;-><init>()V

    sput-object v0, Lcom/android/mipop/animation/AnimationParking;->runnable4Turning:Ljava/lang/Runnable;

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/mipop/animation/AnimationParking;->handler4Shrink:Landroid/os/Handler;

    .line 72
    new-instance v0, Lcom/android/mipop/animation/AnimationParking$4;

    invoke-direct {v0}, Lcom/android/mipop/animation/AnimationParking$4;-><init>()V

    sput-object v0, Lcom/android/mipop/animation/AnimationParking;->runnable4Shrink:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 14
    sput-boolean p0, Lcom/android/mipop/animation/AnimationParking;->velocityCheck:Z

    return p0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 14
    sput-boolean p0, Lcom/android/mipop/animation/AnimationParking;->mTimeOut:Z

    return p0
.end method

.method static synthetic access$200()V
    .locals 0

    .prologue
    .line 14
    invoke-static {}, Lcom/android/mipop/animation/AnimationParking;->parking()V

    return-void
.end method

.method static synthetic access$300()V
    .locals 0

    .prologue
    .line 14
    invoke-static {}, Lcom/android/mipop/animation/AnimationParking;->turning()V

    return-void
.end method

.method static synthetic access$400()V
    .locals 0

    .prologue
    .line 14
    invoke-static {}, Lcom/android/mipop/animation/AnimationParking;->shrinking()V

    return-void
.end method

.method private static hideSub()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 512
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterRecent;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    invoke-virtual {v0, v2}, Lcom/android/mipop/widget/MeterBase;->setVisibility(I)V

    .line 513
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterHome;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    invoke-virtual {v0, v2}, Lcom/android/mipop/widget/MeterBase;->setVisibility(I)V

    .line 514
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterMenu;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    invoke-virtual {v0, v2}, Lcom/android/mipop/widget/MeterBase;->setVisibility(I)V

    .line 515
    return-void
.end method

.method private static initial()V
    .locals 2

    .prologue
    .line 80
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterBack;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    sget v0, Lcom/android/mipop/widget/MeterBase;->baseX:I

    sput v0, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    .line 81
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterBack;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    sget v0, Lcom/android/mipop/widget/MeterBase;->baseY:I

    sput v0, Lcom/android/mipop/animation/AnimationParking;->baseY:I

    .line 86
    return-void
.end method

.method public static land()V
    .locals 2

    .prologue
    .line 579
    sget-boolean v0, Lcom/android/mipop/animation/AnimationParking;->mOriginSide:Z

    if-nez v0, :cond_0

    .line 581
    invoke-static {}, Lcom/android/mipop/animation/AnimationParking;->stop()V

    .line 582
    sget v0, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    sget v1, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v0, v1

    sput v0, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    .line 583
    sget v0, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    sget v1, Lcom/android/mipop/animation/AnimationParking;->baseY:I

    invoke-static {v0, v1}, Lcom/android/mipop/animation/AnimationParking;->updateAll(II)V

    .line 587
    :cond_0
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterBack;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    sget v0, Lcom/android/mipop/widget/MeterBase;->baseY:I

    sget v1, Lcom/android/mipop/widget/Until;->SCREEM_HEIGHT:I

    if-le v0, v1, :cond_1

    .line 590
    sget v0, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    sget v1, Lcom/android/mipop/animation/AnimationParking;->baseY:I

    invoke-static {v0, v1}, Lcom/android/mipop/animation/AnimationParking;->updateBottom(II)V

    .line 592
    :cond_1
    return-void
.end method

.method private static parking()V
    .locals 3

    .prologue
    .line 192
    const-string v0, "Suhao"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parking baseX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    sget v0, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    sget v1, Lcom/android/mipop/widget/Until;->MID_LINE:I

    if-ge v0, v1, :cond_0

    .line 195
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/mipop/animation/AnimationParking;->parking2Margin(Z)V

    .line 202
    :goto_0
    const-string v0, "MBack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "baseX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-void

    .line 199
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/mipop/animation/AnimationParking;->parking2Margin(Z)V

    goto :goto_0
.end method

.method private static parking2Margin(Z)V
    .locals 6
    .param p0, "side"    # Z

    .prologue
    .line 208
    sget v0, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    .line 209
    .local v0, "margin":I
    if-nez p0, :cond_0

    .line 211
    sget v2, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    sget v3, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v2, v3

    sget v3, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    sub-int v0, v2, v3

    .line 214
    :cond_0
    sget v1, Lcom/android/mipop/animation/AnimationParking;->mStep:I

    .line 215
    .local v1, "step":I
    sget v2, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    if-le v2, v0, :cond_1

    .line 217
    sget v2, Lcom/android/mipop/animation/AnimationParking;->mStep:I

    neg-int v1, v2

    .line 220
    :cond_1
    sget v2, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    add-int/2addr v2, v1

    sput v2, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    .line 222
    sget v2, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    sget v3, Lcom/android/mipop/animation/AnimationParking;->baseY:I

    invoke-static {v2, v3}, Lcom/android/mipop/animation/AnimationParking;->updateAll(II)V

    .line 224
    sget v2, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0xa

    if-gt v2, v3, :cond_2

    .line 226
    sput v0, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    .line 227
    sget v2, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    sget v3, Lcom/android/mipop/animation/AnimationParking;->baseY:I

    invoke-static {v2, v3}, Lcom/android/mipop/animation/AnimationParking;->updateAll(II)V

    .line 229
    sget-object v2, Lcom/android/mipop/animation/AnimationParking;->handler4Parking:Landroid/os/Handler;

    sget-object v3, Lcom/android/mipop/animation/AnimationParking;->runnable4Parking:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 230
    sget-object v2, Lcom/android/mipop/animation/AnimationParking;->handler4Turning:Landroid/os/Handler;

    sget-object v3, Lcom/android/mipop/animation/AnimationParking;->runnable4Turning:Ljava/lang/Runnable;

    sget-wide v4, Lcom/android/mipop/animation/AnimationParking;->mParking2Shrink:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 239
    :goto_0
    return-void

    .line 235
    :cond_2
    sget-object v2, Lcom/android/mipop/animation/AnimationParking;->handler4Shrink:Landroid/os/Handler;

    sget-object v3, Lcom/android/mipop/animation/AnimationParking;->runnable4Shrink:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 236
    sget-object v2, Lcom/android/mipop/animation/AnimationParking;->handler4Parking:Landroid/os/Handler;

    sget-object v3, Lcom/android/mipop/animation/AnimationParking;->runnable4Parking:Ljava/lang/Runnable;

    sget-wide v4, Lcom/android/mipop/animation/AnimationParking;->mAutoUpdatePeriod:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private static posCalculateLeftX(II)V
    .locals 3
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    const/4 v2, 0x1

    .line 440
    sget v0, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    if-ge p0, v0, :cond_1

    .line 443
    sget v0, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    sub-int v0, p0, v0

    sput v0, Lcom/android/mipop/animation/AnimationParking;->recentX:I

    .line 444
    sput p1, Lcom/android/mipop/animation/AnimationParking;->recentY:I

    .line 446
    div-int/lit8 v0, p0, 0x2

    sput v0, Lcom/android/mipop/animation/AnimationParking;->homeX:I

    .line 447
    div-int/lit8 v0, p0, 0x2

    sub-int v0, p1, v0

    sput v0, Lcom/android/mipop/animation/AnimationParking;->homeY:I

    .line 449
    div-int/lit8 v0, p0, 0x2

    sput v0, Lcom/android/mipop/animation/AnimationParking;->menuX:I

    .line 450
    div-int/lit8 v0, p0, 0x2

    add-int/2addr v0, p1

    sput v0, Lcom/android/mipop/animation/AnimationParking;->menuY:I

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    sget v0, Lcom/android/mipop/widget/Until;->MID_LINE:I

    if-ge p0, v0, :cond_2

    .line 455
    sget v0, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    sub-int v0, p0, v0

    sput v0, Lcom/android/mipop/animation/AnimationParking;->recentX:I

    .line 456
    sput p1, Lcom/android/mipop/animation/AnimationParking;->recentY:I

    .line 458
    sget v0, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p0, v0

    sput v0, Lcom/android/mipop/animation/AnimationParking;->homeX:I

    .line 459
    sget v0, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    sput v0, Lcom/android/mipop/animation/AnimationParking;->homeY:I

    .line 461
    sget v0, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p0, v0

    sput v0, Lcom/android/mipop/animation/AnimationParking;->menuX:I

    .line 462
    sget v0, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    sput v0, Lcom/android/mipop/animation/AnimationParking;->menuY:I

    goto :goto_0

    .line 464
    :cond_2
    sget v0, Lcom/android/mipop/widget/Until;->MID_LINE:I

    sget v1, Lcom/android/mipop/widget/Until;->SHRINK_LINE:I

    add-int/2addr v0, v1

    if-ge p0, v0, :cond_3

    .line 466
    const-string v0, "Park"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Left shrink x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    sget v0, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    sub-int v0, p0, v0

    sget v1, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    sget v2, Lcom/android/mipop/widget/Until;->SHRINK_LINE:I

    div-int/2addr v1, v2

    sget v2, Lcom/android/mipop/widget/Until;->MID_LINE:I

    sub-int v2, p0, v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    sput v0, Lcom/android/mipop/animation/AnimationParking;->recentX:I

    .line 470
    sput p1, Lcom/android/mipop/animation/AnimationParking;->recentY:I

    .line 472
    sget v0, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p0, v0

    sget v1, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    sget v2, Lcom/android/mipop/widget/Until;->SHRINK_LINE:I

    div-int/2addr v1, v2

    sget v2, Lcom/android/mipop/widget/Until;->MID_LINE:I

    sub-int v2, p0, v2

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sput v0, Lcom/android/mipop/animation/AnimationParking;->homeX:I

    .line 473
    sget v0, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    sget v1, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    sget v2, Lcom/android/mipop/widget/Until;->SHRINK_LINE:I

    div-int/2addr v1, v2

    sget v2, Lcom/android/mipop/widget/Until;->MID_LINE:I

    sub-int v2, p0, v2

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sput v0, Lcom/android/mipop/animation/AnimationParking;->homeY:I

    .line 475
    sget v0, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p0, v0

    sget v1, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    sget v2, Lcom/android/mipop/widget/Until;->SHRINK_LINE:I

    div-int/2addr v1, v2

    sget v2, Lcom/android/mipop/widget/Until;->MID_LINE:I

    sub-int v2, p0, v2

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sput v0, Lcom/android/mipop/animation/AnimationParking;->menuX:I

    .line 476
    sget v0, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    sget v1, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    sget v2, Lcom/android/mipop/widget/Until;->SHRINK_LINE:I

    div-int/2addr v1, v2

    sget v2, Lcom/android/mipop/widget/Until;->MID_LINE:I

    sub-int v2, p0, v2

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/android/mipop/animation/AnimationParking;->menuY:I

    goto/16 :goto_0

    .line 478
    :cond_3
    sget-boolean v0, Lcom/android/mipop/animation/AnimationParking;->mOriginSide:Z

    if-ne v2, v0, :cond_0

    .line 481
    sput-boolean v2, Lcom/android/mipop/animation/AnimationParking;->mAreaChanged:Z

    .line 482
    sput p0, Lcom/android/mipop/animation/AnimationParking;->recentX:I

    .line 483
    sput p1, Lcom/android/mipop/animation/AnimationParking;->recentY:I

    .line 485
    sput p0, Lcom/android/mipop/animation/AnimationParking;->homeX:I

    .line 486
    sput p1, Lcom/android/mipop/animation/AnimationParking;->homeY:I

    .line 488
    sput p0, Lcom/android/mipop/animation/AnimationParking;->menuX:I

    .line 489
    sput p1, Lcom/android/mipop/animation/AnimationParking;->menuY:I

    .line 490
    invoke-static {}, Lcom/android/mipop/animation/AnimationParking;->hideSub()V

    goto/16 :goto_0
.end method

.method private static quickSlide()V
    .locals 2

    .prologue
    .line 90
    sget-object v0, Lcom/android/mipop/animation/AnimationParking;->handler4PosCheck:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/animation/AnimationParking;->runnable4PosCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 91
    sget-boolean v0, Lcom/android/mipop/animation/AnimationParking;->mTimeOut:Z

    if-nez v0, :cond_0

    .line 93
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mipop/animation/AnimationParking;->velocityCheck:Z

    .line 95
    :cond_0
    sget-boolean v0, Lcom/android/mipop/animation/AnimationParking;->mAreaChanged:Z

    if-eqz v0, :cond_1

    .line 97
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mipop/animation/AnimationParking;->velocityCheck:Z

    .line 99
    :cond_1
    return-void
.end method

.method private static showOrHide(I)V
    .locals 2
    .param p0, "x"    # I

    .prologue
    .line 283
    sget-boolean v0, Lcom/android/mipop/animation/AnimationParking;->velocityCheck:Z

    if-nez v0, :cond_3

    .line 285
    invoke-static {}, Lcom/android/mipop/animation/AnimationParking;->hideSub()V

    .line 292
    :goto_0
    sget-boolean v0, Lcom/android/mipop/animation/AnimationParking;->mAreaChanged:Z

    if-eqz v0, :cond_0

    .line 294
    invoke-static {}, Lcom/android/mipop/animation/AnimationParking;->hideSub()V

    .line 297
    :cond_0
    sget v0, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    sget v1, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v0, v1

    if-gt p0, v0, :cond_1

    if-gez p0, :cond_2

    .line 299
    :cond_1
    invoke-static {}, Lcom/android/mipop/animation/AnimationParking;->hideSub()V

    .line 301
    :cond_2
    return-void

    .line 289
    :cond_3
    invoke-static {}, Lcom/android/mipop/animation/AnimationParking;->showSub()V

    goto :goto_0
.end method

.method private static showSub()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 518
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterRecent;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    invoke-virtual {v0, v2}, Lcom/android/mipop/widget/MeterBase;->setVisibility(I)V

    .line 519
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterHome;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    invoke-virtual {v0, v2}, Lcom/android/mipop/widget/MeterBase;->setVisibility(I)V

    .line 520
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterMenu;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    invoke-virtual {v0, v2}, Lcom/android/mipop/widget/MeterBase;->setVisibility(I)V

    .line 521
    return-void
.end method

.method public static shrinkStart()V
    .locals 5

    .prologue
    .line 169
    const-wide/16 v0, 0xb4

    .line 170
    .local v0, "delay":J
    sget-object v2, Lcom/android/mipop/animation/AnimationParking;->handler4Parking:Landroid/os/Handler;

    sget-object v3, Lcom/android/mipop/animation/AnimationParking;->runnable4Parking:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 171
    sget-object v2, Lcom/android/mipop/animation/AnimationParking;->handler4Shrink:Landroid/os/Handler;

    sget-object v3, Lcom/android/mipop/animation/AnimationParking;->runnable4Shrink:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 173
    const-string v2, "Suhao.Shrink"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shrinkStart() delay = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void
.end method

.method private static shrinking()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 531
    const/16 v0, 0xa

    .line 532
    .local v0, "step":I
    sget v1, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    sget v2, Lcom/android/mipop/widget/Until;->MID_LINE:I

    if-ge v1, v2, :cond_0

    .line 534
    neg-int v0, v0

    .line 537
    :cond_0
    sget v1, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    add-int/2addr v1, v0

    sput v1, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    .line 538
    const-string v1, "Suhao"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shrinking x= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    sget v1, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    sget v2, Lcom/android/mipop/animation/AnimationParking;->baseY:I

    invoke-static {v1, v2}, Lcom/android/mipop/animation/AnimationParking;->updateAll(II)V

    .line 541
    sget v1, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    sget v2, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    sget v3, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_1

    .line 543
    sget v1, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    sget v2, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v1, v2

    sput v1, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    .line 544
    sget v1, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    sget v2, Lcom/android/mipop/animation/AnimationParking;->baseY:I

    invoke-static {v1, v2}, Lcom/android/mipop/animation/AnimationParking;->updateAll(II)V

    .line 545
    sput-boolean v4, Lcom/android/mipop/animation/AnimationParking;->velocityCheck:Z

    .line 546
    sput-boolean v4, Lcom/android/mipop/animation/AnimationParking;->mOriginSide:Z

    .line 547
    sput-boolean v4, Lcom/android/mipop/animation/AnimationParking;->mAreaChanged:Z

    .line 549
    sget-object v1, Lcom/android/mipop/animation/AnimationParking;->handler4Shrink:Landroid/os/Handler;

    sget-object v2, Lcom/android/mipop/animation/AnimationParking;->runnable4Shrink:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 551
    const-string v1, "Suhao.TransParent"

    const-string v2, "AnimationParking.shrinking(), baseX>SCREEN_WIDTH-IMAGE_WIDTH"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-static {}, Lcom/android/mipop/animation/AnimationTransparent;->start()V

    .line 573
    :goto_0
    return-void

    .line 554
    :cond_1
    sget v1, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    if-gt v1, v5, :cond_2

    .line 557
    sput v4, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    .line 558
    sget v1, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    sget v2, Lcom/android/mipop/animation/AnimationParking;->baseY:I

    invoke-static {v1, v2}, Lcom/android/mipop/animation/AnimationParking;->updateAll(II)V

    .line 560
    sput-boolean v4, Lcom/android/mipop/animation/AnimationParking;->velocityCheck:Z

    .line 561
    sput-boolean v5, Lcom/android/mipop/animation/AnimationParking;->mOriginSide:Z

    .line 562
    sput-boolean v4, Lcom/android/mipop/animation/AnimationParking;->mAreaChanged:Z

    .line 563
    sget-object v1, Lcom/android/mipop/animation/AnimationParking;->handler4Shrink:Landroid/os/Handler;

    sget-object v2, Lcom/android/mipop/animation/AnimationParking;->runnable4Shrink:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 565
    const-string v1, "Suhao.TransParent"

    const-string v2, "AnimationParking.shrinking(), baseX<1"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-static {}, Lcom/android/mipop/animation/AnimationTransparent;->start()V

    goto :goto_0

    .line 570
    :cond_2
    sget-object v1, Lcom/android/mipop/animation/AnimationParking;->handler4Shrink:Landroid/os/Handler;

    sget-object v2, Lcom/android/mipop/animation/AnimationParking;->runnable4Shrink:Ljava/lang/Runnable;

    sget-wide v3, Lcom/android/mipop/animation/AnimationParking;->mAutoUpdatePeriod:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static start()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 103
    const-string v0, "Suhao"

    const-string v1, "AnimationParking start()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-static {}, Lcom/android/mipop/animation/AnimationParking;->quickSlide()V

    .line 106
    invoke-static {}, Lcom/android/mipop/animation/AnimationParking;->initial()V

    .line 108
    sget v0, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    if-gtz v0, :cond_0

    .line 110
    const-string v0, "Suhao.TransParent"

    const-string v1, "AnimationParking.start(), baseX<0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    sput-boolean v4, Lcom/android/mipop/animation/AnimationParking;->mOriginSide:Z

    .line 112
    sput-boolean v3, Lcom/android/mipop/animation/AnimationParking;->mAreaChanged:Z

    .line 113
    sput-boolean v3, Lcom/android/mipop/animation/AnimationParking;->velocityCheck:Z

    .line 114
    sput v3, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    .line 115
    invoke-static {}, Lcom/android/mipop/animation/AnimationTransparent;->start()V

    .line 165
    :goto_0
    return-void

    .line 118
    :cond_0
    sget v0, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    sget v1, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    sget v2, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_1

    .line 120
    const-string v0, "Suhao.TransParent"

    const-string v1, "AnimationParking.start(), baseX>SCREEN_WIDTH-IMAGE_WIDTH"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    sput-boolean v3, Lcom/android/mipop/animation/AnimationParking;->mOriginSide:Z

    .line 122
    sput-boolean v3, Lcom/android/mipop/animation/AnimationParking;->mAreaChanged:Z

    .line 123
    sput-boolean v3, Lcom/android/mipop/animation/AnimationParking;->velocityCheck:Z

    .line 124
    sget v0, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    sget v1, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v0, v1

    sput v0, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    .line 125
    invoke-static {}, Lcom/android/mipop/animation/AnimationTransparent;->start()V

    goto :goto_0

    .line 129
    :cond_1
    sget v0, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    sget v1, Lcom/android/mipop/animation/AnimationParking;->baseY:I

    invoke-static {v0, v1}, Lcom/android/mipop/animation/AnimationParking;->updateTop(II)V

    .line 130
    sget v0, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    sget v1, Lcom/android/mipop/animation/AnimationParking;->baseY:I

    invoke-static {v0, v1}, Lcom/android/mipop/animation/AnimationParking;->updateBottom(II)V

    .line 132
    sget-boolean v0, Lcom/android/mipop/animation/AnimationParking;->mAreaChanged:Z

    if-nez v0, :cond_6

    .line 135
    sget v0, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    sget v1, Lcom/android/mipop/widget/Until;->PARKING_LINE:I

    if-lt v0, v1, :cond_2

    sget v0, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    sget v1, Lcom/android/mipop/widget/Until;->PARKING_LINE_RIGHT:I

    if-le v0, v1, :cond_3

    .line 137
    :cond_2
    const-string v0, "Suhao"

    const-string v1, "LEFT && > MID_LINE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    sget-object v0, Lcom/android/mipop/animation/AnimationParking;->handler4Parking:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/animation/AnimationParking;->runnable4Parking:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 139
    sget-object v0, Lcom/android/mipop/animation/AnimationParking;->handler4Shrink:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/animation/AnimationParking;->runnable4Shrink:Ljava/lang/Runnable;

    sget-wide v2, Lcom/android/mipop/animation/AnimationParking;->mAutoUpdatePeriod:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 141
    :cond_3
    sget-boolean v0, Lcom/android/mipop/animation/AnimationParking;->mOriginSide:Z

    if-ne v4, v0, :cond_4

    sget v0, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    sget v1, Lcom/android/mipop/widget/Until;->MID_LINE:I

    if-le v0, v1, :cond_4

    .line 143
    const-string v0, "Suhao"

    const-string v1, "LEFT && > MID_LINE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    sget-object v0, Lcom/android/mipop/animation/AnimationParking;->handler4Parking:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/animation/AnimationParking;->runnable4Parking:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 145
    sget-object v0, Lcom/android/mipop/animation/AnimationParking;->handler4Shrink:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/animation/AnimationParking;->runnable4Shrink:Ljava/lang/Runnable;

    sget-wide v2, Lcom/android/mipop/animation/AnimationParking;->mAutoUpdatePeriod:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 147
    :cond_4
    sget-boolean v0, Lcom/android/mipop/animation/AnimationParking;->mOriginSide:Z

    if-nez v0, :cond_5

    sget v0, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    sget v1, Lcom/android/mipop/widget/Until;->MID_LINE:I

    if-ge v0, v1, :cond_5

    .line 149
    const-string v0, "Suhao"

    const-string v1, "LEFT && > MID_LINE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    sget-object v0, Lcom/android/mipop/animation/AnimationParking;->handler4Parking:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/animation/AnimationParking;->runnable4Parking:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 151
    sget-object v0, Lcom/android/mipop/animation/AnimationParking;->handler4Shrink:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/animation/AnimationParking;->runnable4Shrink:Ljava/lang/Runnable;

    sget-wide v2, Lcom/android/mipop/animation/AnimationParking;->mAutoUpdatePeriod:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 155
    :cond_5
    sget-object v0, Lcom/android/mipop/animation/AnimationParking;->handler4Shrink:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/animation/AnimationParking;->runnable4Shrink:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 156
    sget-object v0, Lcom/android/mipop/animation/AnimationParking;->handler4Parking:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/animation/AnimationParking;->runnable4Parking:Ljava/lang/Runnable;

    sget-wide v2, Lcom/android/mipop/animation/AnimationParking;->mAutoUpdatePeriod:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 161
    :cond_6
    const-string v0, "Suhao"

    const-string v1, "else"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    sget-object v0, Lcom/android/mipop/animation/AnimationParking;->handler4Parking:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/animation/AnimationParking;->runnable4Parking:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 163
    sget-object v0, Lcom/android/mipop/animation/AnimationParking;->handler4Shrink:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/animation/AnimationParking;->runnable4Shrink:Ljava/lang/Runnable;

    sget-wide v2, Lcom/android/mipop/animation/AnimationParking;->mAutoUpdatePeriod:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method public static stop()V
    .locals 4

    .prologue
    .line 179
    const-string v0, "Suhao.TransParent"

    const-string v1, "AnimationParking.stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-static {}, Lcom/android/mipop/animation/AnimationTransparent;->stop()V

    .line 182
    sget-object v0, Lcom/android/mipop/animation/AnimationParking;->handler4Parking:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/animation/AnimationParking;->runnable4Parking:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 183
    sget-object v0, Lcom/android/mipop/animation/AnimationParking;->handler4Shrink:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/animation/AnimationParking;->runnable4Shrink:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 184
    sget-object v0, Lcom/android/mipop/animation/AnimationParking;->handler4Turning:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/animation/AnimationParking;->runnable4Turning:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 186
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mipop/animation/AnimationParking;->mTimeOut:Z

    .line 187
    sget-object v0, Lcom/android/mipop/animation/AnimationParking;->handler4PosCheck:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/animation/AnimationParking;->runnable4PosCheck:Ljava/lang/Runnable;

    sget-wide v2, Lcom/android/mipop/animation/AnimationParking;->mVelocityTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 188
    return-void
.end method

.method private static turning()V
    .locals 4

    .prologue
    .line 525
    sget-object v0, Lcom/android/mipop/animation/AnimationParking;->handler4Shrink:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/animation/AnimationParking;->runnable4Shrink:Ljava/lang/Runnable;

    sget-wide v2, Lcom/android/mipop/animation/AnimationParking;->mAutoUpdatePeriod:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 526
    sget-object v0, Lcom/android/mipop/animation/AnimationParking;->handler4Turning:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/animation/AnimationParking;->runnable4Turning:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 527
    return-void
.end method

.method public static updateAll(II)V
    .locals 3
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, "outside":Z
    if-gez p0, :cond_0

    .line 246
    const/4 p0, 0x0

    .line 247
    const/4 v0, 0x1

    .line 249
    :cond_0
    sget v1, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    sget v2, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v1, v2

    if-le p0, v1, :cond_1

    .line 251
    sget v1, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    sget v2, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    sub-int p0, v1, v2

    .line 252
    const/4 v0, 0x1

    .line 254
    :cond_1
    if-gez p1, :cond_2

    .line 256
    const/4 p1, 0x0

    .line 257
    const/4 v0, 0x1

    .line 265
    :cond_2
    sget-object v1, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v2, Lcom/android/mipop/widget/MeterBack;->NAME:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mipop/widget/MeterBase;

    invoke-virtual {v1, p0, p1}, Lcom/android/mipop/widget/MeterBase;->update(II)V

    .line 266
    sget-object v1, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v2, Lcom/android/mipop/widget/MeterBack;->NAME:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mipop/widget/MeterBase;

    sput p0, Lcom/android/mipop/widget/MeterBase;->baseX:I

    .line 267
    sget-object v1, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v2, Lcom/android/mipop/widget/MeterBack;->NAME:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mipop/widget/MeterBase;

    sput p1, Lcom/android/mipop/widget/MeterBase;->baseY:I

    .line 271
    const/4 v1, 0x1

    sget-boolean v2, Lcom/android/mipop/animation/AnimationParking;->mOriginSide:Z

    if-ne v1, v2, :cond_3

    .line 273
    invoke-static {p0, p1}, Lcom/android/mipop/animation/AnimationParking;->updateAllLeft(II)V

    .line 279
    :goto_0
    return-void

    .line 277
    :cond_3
    invoke-static {p0, p1}, Lcom/android/mipop/animation/AnimationParking;->updateAllRight(II)V

    goto :goto_0
.end method

.method private static updateAllLeft(II)V
    .locals 3
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 501
    invoke-static {p0}, Lcom/android/mipop/animation/AnimationParking;->showOrHide(I)V

    .line 502
    invoke-static {p0, p1}, Lcom/android/mipop/animation/AnimationParking;->posCalculateLeftX(II)V

    .line 504
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterRecent;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    sget v1, Lcom/android/mipop/animation/AnimationParking;->recentX:I

    sget v2, Lcom/android/mipop/animation/AnimationParking;->recentY:I

    invoke-virtual {v0, v1, v2}, Lcom/android/mipop/widget/MeterBase;->update(II)V

    .line 505
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterHome;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    sget v1, Lcom/android/mipop/animation/AnimationParking;->homeX:I

    sget v2, Lcom/android/mipop/animation/AnimationParking;->homeY:I

    invoke-virtual {v0, v1, v2}, Lcom/android/mipop/widget/MeterBase;->update(II)V

    .line 506
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterMenu;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    sget v1, Lcom/android/mipop/animation/AnimationParking;->menuX:I

    sget v2, Lcom/android/mipop/animation/AnimationParking;->menuY:I

    invoke-virtual {v0, v1, v2}, Lcom/android/mipop/widget/MeterBase;->update(II)V

    .line 508
    return-void
.end method

.method private static updateAllRight(II)V
    .locals 4
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 372
    sget v1, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    div-int/lit8 v0, v1, 0x28

    .line 374
    .local v0, "offset":I
    invoke-static {p0}, Lcom/android/mipop/animation/AnimationParking;->showOrHide(I)V

    .line 376
    sget v1, Lcom/android/mipop/widget/Until;->EXPEND_LINE_RIGHT:I

    if-le p0, v1, :cond_1

    .line 379
    sget v1, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    add-int/2addr v1, p0

    sput v1, Lcom/android/mipop/animation/AnimationParking;->recentX:I

    .line 380
    sput p1, Lcom/android/mipop/animation/AnimationParking;->recentY:I

    .line 382
    sget v1, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    add-int/2addr v1, p0

    sget v2, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sput v1, Lcom/android/mipop/animation/AnimationParking;->homeX:I

    .line 383
    sget v1, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    sget v2, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, p0

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p1, v1

    sput v1, Lcom/android/mipop/animation/AnimationParking;->homeY:I

    .line 385
    sget v1, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    add-int/2addr v1, p0

    sget v2, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sput v1, Lcom/android/mipop/animation/AnimationParking;->menuX:I

    .line 386
    sget v1, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    sget v2, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, p0

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    sput v1, Lcom/android/mipop/animation/AnimationParking;->menuY:I

    .line 431
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v2, Lcom/android/mipop/widget/MeterRecent;->NAME:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mipop/widget/MeterBase;

    sget v2, Lcom/android/mipop/animation/AnimationParking;->recentX:I

    sget v3, Lcom/android/mipop/animation/AnimationParking;->recentY:I

    invoke-virtual {v1, v2, v3}, Lcom/android/mipop/widget/MeterBase;->update(II)V

    .line 432
    sget-object v1, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v2, Lcom/android/mipop/widget/MeterHome;->NAME:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mipop/widget/MeterBase;

    sget v2, Lcom/android/mipop/animation/AnimationParking;->homeX:I

    sget v3, Lcom/android/mipop/animation/AnimationParking;->homeY:I

    invoke-virtual {v1, v2, v3}, Lcom/android/mipop/widget/MeterBase;->update(II)V

    .line 433
    sget-object v1, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v2, Lcom/android/mipop/widget/MeterMenu;->NAME:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mipop/widget/MeterBase;

    sget v2, Lcom/android/mipop/animation/AnimationParking;->menuX:I

    sget v3, Lcom/android/mipop/animation/AnimationParking;->menuY:I

    invoke-virtual {v1, v2, v3}, Lcom/android/mipop/widget/MeterBase;->update(II)V

    .line 436
    return-void

    .line 389
    :cond_1
    sget v1, Lcom/android/mipop/widget/Until;->MID_LINE:I

    if-le p0, v1, :cond_2

    .line 392
    sget v1, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    add-int/2addr v1, p0

    sput v1, Lcom/android/mipop/animation/AnimationParking;->recentX:I

    .line 393
    sput p1, Lcom/android/mipop/animation/AnimationParking;->recentY:I

    .line 395
    sget v1, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p0

    sput v1, Lcom/android/mipop/animation/AnimationParking;->homeX:I

    .line 396
    sget v1, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p1, v1

    sput v1, Lcom/android/mipop/animation/AnimationParking;->homeY:I

    .line 398
    sget v1, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p0

    sput v1, Lcom/android/mipop/animation/AnimationParking;->menuX:I

    .line 399
    sget v1, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    sput v1, Lcom/android/mipop/animation/AnimationParking;->menuY:I

    goto :goto_0

    .line 401
    :cond_2
    sget v1, Lcom/android/mipop/widget/Until;->MID_LINE:I

    sget v2, Lcom/android/mipop/widget/Until;->SHRINK_LINE:I

    sub-int/2addr v1, v2

    if-le p0, v1, :cond_3

    .line 407
    sget v1, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    add-int/2addr v1, p0

    sget v2, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    sget v3, Lcom/android/mipop/widget/Until;->SHRINK_LINE:I

    div-int/2addr v2, v3

    sget v3, Lcom/android/mipop/widget/Until;->MID_LINE:I

    sub-int v3, p0, v3

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    sput v1, Lcom/android/mipop/animation/AnimationParking;->recentX:I

    .line 408
    sput p1, Lcom/android/mipop/animation/AnimationParking;->recentY:I

    .line 410
    sget v1, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p0

    sget v2, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    sget v3, Lcom/android/mipop/widget/Until;->SHRINK_LINE:I

    div-int/2addr v2, v3

    sget v3, Lcom/android/mipop/widget/Until;->MID_LINE:I

    sub-int v3, p0, v3

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sput v1, Lcom/android/mipop/animation/AnimationParking;->homeX:I

    .line 411
    sget v1, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p1, v1

    sget v2, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    sget v3, Lcom/android/mipop/widget/Until;->SHRINK_LINE:I

    div-int/2addr v2, v3

    sget v3, Lcom/android/mipop/widget/Until;->MID_LINE:I

    sub-int v3, p0, v3

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sput v1, Lcom/android/mipop/animation/AnimationParking;->homeY:I

    .line 413
    sget v1, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p0

    sget v2, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    sget v3, Lcom/android/mipop/widget/Until;->SHRINK_LINE:I

    div-int/2addr v2, v3

    sget v3, Lcom/android/mipop/widget/Until;->MID_LINE:I

    sub-int v3, p0, v3

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sput v1, Lcom/android/mipop/animation/AnimationParking;->menuX:I

    .line 414
    sget v1, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    sget v2, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    sget v3, Lcom/android/mipop/widget/Until;->SHRINK_LINE:I

    div-int/2addr v2, v3

    sget v3, Lcom/android/mipop/widget/Until;->MID_LINE:I

    sub-int v3, p0, v3

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sput v1, Lcom/android/mipop/animation/AnimationParking;->menuY:I

    goto/16 :goto_0

    .line 416
    :cond_3
    sget-boolean v1, Lcom/android/mipop/animation/AnimationParking;->mOriginSide:Z

    if-nez v1, :cond_0

    .line 419
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/mipop/animation/AnimationParking;->mAreaChanged:Z

    .line 420
    sput p0, Lcom/android/mipop/animation/AnimationParking;->recentX:I

    .line 421
    sput p1, Lcom/android/mipop/animation/AnimationParking;->recentY:I

    .line 423
    sput p0, Lcom/android/mipop/animation/AnimationParking;->homeX:I

    .line 424
    sput p1, Lcom/android/mipop/animation/AnimationParking;->homeY:I

    .line 426
    sput p0, Lcom/android/mipop/animation/AnimationParking;->menuX:I

    .line 427
    sput p1, Lcom/android/mipop/animation/AnimationParking;->menuY:I

    .line 428
    invoke-static {}, Lcom/android/mipop/animation/AnimationParking;->hideSub()V

    goto/16 :goto_0
.end method

.method private static updateBottom(II)V
    .locals 3
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 337
    sget v0, Lcom/android/mipop/widget/Until;->BOTTOM_LINE:I

    if-gt p1, v0, :cond_1

    .line 339
    const-string v0, "Bottom"

    const-string v1, "return"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    const/4 v0, 0x1

    sget-boolean v1, Lcom/android/mipop/animation/AnimationParking;->mOriginSide:Z

    if-ne v0, v1, :cond_2

    .line 346
    sget v0, Lcom/android/mipop/widget/Until;->PARKING_LINE:I

    if-lt p0, v0, :cond_0

    sget v0, Lcom/android/mipop/widget/Until;->MID_LINE:I

    if-ge p0, v0, :cond_0

    .line 348
    const-string v0, "Bottom"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LEFT bar = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mipop/widget/Until;->STATUS_HEIGHT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    sget p1, Lcom/android/mipop/widget/Until;->BOTTOM_LINE:I

    .line 350
    sput p0, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    .line 351
    sput p1, Lcom/android/mipop/animation/AnimationParking;->baseY:I

    .line 352
    invoke-static {p0, p1}, Lcom/android/mipop/animation/AnimationParking;->updateAll(II)V

    goto :goto_0

    .line 357
    :cond_2
    sget v0, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    sget v1, Lcom/android/mipop/widget/Until;->PARKING_LINE:I

    sub-int/2addr v0, v1

    if-gt p0, v0, :cond_0

    sget v0, Lcom/android/mipop/widget/Until;->MID_LINE:I

    if-le p0, v0, :cond_0

    .line 359
    const-string v0, "Bottom"

    const-string v1, "RIGHT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    sget p1, Lcom/android/mipop/widget/Until;->BOTTOM_LINE:I

    .line 361
    sput p0, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    .line 362
    sput p1, Lcom/android/mipop/animation/AnimationParking;->baseY:I

    .line 363
    invoke-static {p0, p1}, Lcom/android/mipop/animation/AnimationParking;->updateAll(II)V

    goto :goto_0
.end method

.method private static updateTop(II)V
    .locals 4
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 305
    const-wide v0, 0x3fe69fbe76c8b439L    # 0.707

    sget v2, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    if-lt p1, v0, :cond_1

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    const/4 v0, 0x1

    sget-boolean v1, Lcom/android/mipop/animation/AnimationParking;->mOriginSide:Z

    if-ne v0, v1, :cond_2

    .line 313
    sget v0, Lcom/android/mipop/widget/Until;->PARKING_LINE:I

    if-lt p0, v0, :cond_0

    sget v0, Lcom/android/mipop/widget/Until;->MID_LINE:I

    if-ge p0, v0, :cond_0

    .line 315
    sget v0, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    div-int/lit8 p1, v0, 0x2

    .line 316
    sput p0, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    .line 317
    sput p1, Lcom/android/mipop/animation/AnimationParking;->baseY:I

    .line 318
    invoke-static {p0, p1}, Lcom/android/mipop/animation/AnimationParking;->updateAll(II)V

    goto :goto_0

    .line 323
    :cond_2
    sget v0, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    sget v1, Lcom/android/mipop/widget/Until;->PARKING_LINE:I

    sub-int/2addr v0, v1

    if-gt p0, v0, :cond_0

    sget v0, Lcom/android/mipop/widget/Until;->MID_LINE:I

    if-le p0, v0, :cond_0

    .line 325
    sget v0, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    div-int/lit8 p1, v0, 0x2

    .line 326
    sput p0, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    .line 327
    sput p1, Lcom/android/mipop/animation/AnimationParking;->baseY:I

    .line 328
    invoke-static {p0, p1}, Lcom/android/mipop/animation/AnimationParking;->updateAll(II)V

    goto :goto_0
.end method
