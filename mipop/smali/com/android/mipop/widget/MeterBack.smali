.class public Lcom/android/mipop/widget/MeterBack;
.super Lcom/android/mipop/widget/MeterBase;
.source "MeterBack.java"


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private final LEFT:Z

.field private final RIGHT:Z

.field private changeX:I

.field private changeY:I

.field private hasMoved:Z

.field private isDown:Z

.field private mBackX:I

.field private mBackY:I

.field private mTouchStartX:I

.field private mTouchStartY:I

.field private pressX:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/android/mipop/widget/MeterBack;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mipop/widget/MeterBack;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v2, 0x7f020001

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1}, Lcom/android/mipop/widget/MeterBase;-><init>(Landroid/content/Context;)V

    .line 22
    iput-boolean v0, p0, Lcom/android/mipop/widget/MeterBack;->hasMoved:Z

    .line 23
    iput-boolean v0, p0, Lcom/android/mipop/widget/MeterBack;->isDown:Z

    .line 24
    iput v0, p0, Lcom/android/mipop/widget/MeterBack;->changeX:I

    .line 25
    iput v0, p0, Lcom/android/mipop/widget/MeterBack;->changeY:I

    .line 26
    iput v0, p0, Lcom/android/mipop/widget/MeterBack;->mTouchStartX:I

    .line 27
    iput v0, p0, Lcom/android/mipop/widget/MeterBack;->mTouchStartY:I

    .line 28
    iput v0, p0, Lcom/android/mipop/widget/MeterBack;->pressX:I

    .line 29
    iput v0, p0, Lcom/android/mipop/widget/MeterBack;->mBackX:I

    .line 30
    iput v0, p0, Lcom/android/mipop/widget/MeterBack;->mBackY:I

    .line 32
    iput-boolean v1, p0, Lcom/android/mipop/widget/MeterBack;->LEFT:Z

    .line 33
    iput-boolean v0, p0, Lcom/android/mipop/widget/MeterBack;->RIGHT:Z

    .line 39
    sget-object v0, Lcom/android/mipop/widget/MeterBack;->NAME:Ljava/lang/String;

    invoke-virtual {p0, v0, p0}, Lcom/android/mipop/widget/MeterBack;->Register(Ljava/lang/String;Lcom/android/mipop/widget/MeterBase;)V

    .line 40
    invoke-virtual {p0, v1}, Lcom/android/mipop/widget/MeterBack;->setSoundEffectsEnabled(Z)V

    .line 42
    invoke-virtual {p0, v2}, Lcom/android/mipop/widget/MeterBack;->setImageResource(I)V

    .line 43
    const v0, 0x7f020002

    invoke-virtual {p0, v2, v0}, Lcom/android/mipop/widget/MeterBack;->setResId(II)V

    .line 44
    return-void
.end method


# virtual methods
.method public Click()V
    .locals 2

    .prologue
    .line 50
    const-string v0, "Suhao.Click"

    const-string v1, "back click"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mipop/widget/MeterBack;->playSoundEffect(I)V

    .line 52
    new-instance v0, Lcom/android/mipop/widget/MeterBack$1;

    invoke-direct {v0, p0}, Lcom/android/mipop/widget/MeterBack$1;-><init>(Lcom/android/mipop/widget/MeterBack;)V

    invoke-virtual {v0}, Lcom/android/mipop/widget/MeterBack$1;->start()V

    .line 65
    return-void
.end method

.method public LongClick()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/android/mipop/widget/MeterBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 78
    sget-object v0, Lcom/android/mipop/widget/MeterBack;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mipop/widget/Until;->initialPop(Landroid/content/Context;)V

    .line 80
    invoke-static {}, Lcom/android/mipop/animation/AnimationParking;->land()V

    .line 81
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 85
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v3, v6

    .line 86
    .local v3, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    add-int/lit8 v4, v6, -0x19

    .line 89
    .local v4, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 141
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/mipop/widget/MeterBase;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :cond_0
    :goto_1
    return v5

    .line 91
    :pswitch_1
    const-string v6, "OUT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "back ACTION_DOWN"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/mipop/widget/MeterBack;->hasMoved:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    sput-boolean v5, Lcom/android/mipop/widget/MeterBack;->mTouchDown:Z

    .line 94
    iput v3, p0, Lcom/android/mipop/widget/MeterBack;->changeX:I

    .line 95
    iput v4, p0, Lcom/android/mipop/widget/MeterBack;->changeY:I

    .line 96
    iput v3, p0, Lcom/android/mipop/widget/MeterBack;->mTouchStartX:I

    .line 97
    iput v4, p0, Lcom/android/mipop/widget/MeterBack;->mTouchStartY:I

    .line 98
    iput-boolean v5, p0, Lcom/android/mipop/widget/MeterBack;->isDown:Z

    goto :goto_0

    .line 103
    :pswitch_2
    const-string v5, "OUT"

    const-string v6, "back ACTION_OUTSIDE"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 108
    :pswitch_3
    iget v6, p0, Lcom/android/mipop/widget/MeterBack;->changeX:I

    sub-int v1, v3, v6

    .line 109
    .local v1, "offsetX":I
    iget v6, p0, Lcom/android/mipop/widget/MeterBack;->changeY:I

    sub-int v2, v4, v6

    .line 110
    .local v2, "offsetY":I
    const/4 v0, 0x3

    .line 111
    .local v0, "MAX_SIZE":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-gt v6, v0, :cond_1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v6, v0, :cond_2

    .line 113
    :cond_1
    const-string v6, "MBack"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "baseX/offsetX = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/android/mipop/widget/MeterBack;->baseX:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    sget v6, Lcom/android/mipop/widget/MeterBack;->baseX:I

    add-int/2addr v6, v1

    sput v6, Lcom/android/mipop/widget/MeterBack;->baseX:I

    .line 115
    sget v6, Lcom/android/mipop/widget/MeterBack;->baseY:I

    add-int/2addr v6, v2

    sput v6, Lcom/android/mipop/widget/MeterBack;->baseY:I

    .line 117
    sget v6, Lcom/android/mipop/widget/MeterBack;->baseX:I

    sget v7, Lcom/android/mipop/widget/MeterBack;->baseY:I

    invoke-static {v6, v7}, Lcom/android/mipop/animation/AnimationParking;->updateAll(II)V

    .line 119
    iput v3, p0, Lcom/android/mipop/widget/MeterBack;->changeX:I

    .line 120
    iput v4, p0, Lcom/android/mipop/widget/MeterBack;->changeY:I

    .line 122
    :cond_2
    iget v6, p0, Lcom/android/mipop/widget/MeterBack;->mTouchStartX:I

    sub-int v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    sget v7, Lcom/android/mipop/widget/Until;->MOVE_MAX_SIZE:I

    if-gt v6, v7, :cond_3

    iget v6, p0, Lcom/android/mipop/widget/MeterBack;->mTouchStartY:I

    sub-int v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    sget v7, Lcom/android/mipop/widget/Until;->MOVE_MAX_SIZE:I

    if-le v6, v7, :cond_0

    .line 124
    :cond_3
    invoke-virtual {p0}, Lcom/android/mipop/widget/MeterBack;->moved()V

    goto/16 :goto_1

    .line 130
    .end local v0    # "MAX_SIZE":I
    .end local v1    # "offsetX":I
    .end local v2    # "offsetY":I
    :pswitch_4
    const-string v5, "Suhao.Click"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MeterBacd.UP, MOVE_MAX_SIZE/baseX= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/mipop/widget/Until;->MOVE_MAX_SIZE:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/mipop/widget/MeterBack;->baseX:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-boolean v5, p0, Lcom/android/mipop/widget/MeterBack;->hasMoved:Z

    if-nez v5, :cond_4

    .line 134
    :cond_4
    sput-boolean v8, Lcom/android/mipop/widget/MeterBack;->mTouchDown:Z

    .line 135
    iput-boolean v8, p0, Lcom/android/mipop/widget/MeterBack;->hasMoved:Z

    .line 136
    iput-boolean v8, p0, Lcom/android/mipop/widget/MeterBack;->isDown:Z

    goto/16 :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
