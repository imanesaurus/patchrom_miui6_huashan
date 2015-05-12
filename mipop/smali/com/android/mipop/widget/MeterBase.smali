.class public abstract Lcom/android/mipop/widget/MeterBase;
.super Landroid/widget/ImageView;
.source "MeterBase.java"


# static fields
.field public static MeterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mipop/widget/MeterBase;",
            ">;"
        }
    .end annotation
.end field

.field public static baseX:I

.field public static baseY:I

.field public static mContext:Landroid/content/Context;

.field public static mLeftMargin:I

.field public static mTouchDown:Z

.field public static paint:Landroid/graphics/Paint;

.field private static pressX:I


# instance fields
.field private bmp:Landroid/graphics/Bitmap;

.field private bmpDown:Landroid/graphics/Bitmap;

.field private changeX:I

.field private changeY:I

.field private handler4LongClick:Landroid/os/Handler;

.field private hasMoved:Z

.field private isDown:Z

.field public isLongClick:Z

.field private final mTime4LongClick:J

.field private mTouchStartX:I

.field private mTouchStartY:I

.field public mWindowManager:Landroid/view/WindowManager;

.field private rectDst:Landroid/graphics/Rect;

.field private resId:I

.field private resIdPressed:I

.field private runnable4LongClick:Ljava/lang/Runnable;

.field public wmParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    sput v1, Lcom/android/mipop/widget/MeterBase;->mLeftMargin:I

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/mipop/widget/MeterBase;->paint:Landroid/graphics/Paint;

    .line 35
    sput-boolean v1, Lcom/android/mipop/widget/MeterBase;->mTouchDown:Z

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    .line 51
    sput v1, Lcom/android/mipop/widget/MeterBase;->baseX:I

    .line 53
    sget v0, Lcom/android/mipop/widget/Until;->SCREEM_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/mipop/widget/MeterBase;->baseY:I

    .line 59
    sput v1, Lcom/android/mipop/widget/MeterBase;->pressX:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 90
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 30
    iput v2, p0, Lcom/android/mipop/widget/MeterBase;->resId:I

    .line 31
    iput v2, p0, Lcom/android/mipop/widget/MeterBase;->resIdPressed:I

    .line 45
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/widget/MeterBase;->wmParams:Landroid/view/WindowManager$LayoutParams;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mipop/widget/MeterBase;->mWindowManager:Landroid/view/WindowManager;

    .line 55
    iput v1, p0, Lcom/android/mipop/widget/MeterBase;->changeX:I

    .line 57
    iput v1, p0, Lcom/android/mipop/widget/MeterBase;->changeY:I

    .line 67
    iput-boolean v2, p0, Lcom/android/mipop/widget/MeterBase;->isDown:Z

    .line 69
    iput-boolean v2, p0, Lcom/android/mipop/widget/MeterBase;->hasMoved:Z

    .line 71
    iput-boolean v2, p0, Lcom/android/mipop/widget/MeterBase;->isLongClick:Z

    .line 73
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/mipop/widget/MeterBase;->mTime4LongClick:J

    .line 75
    iput v2, p0, Lcom/android/mipop/widget/MeterBase;->mTouchStartX:I

    .line 77
    iput v2, p0, Lcom/android/mipop/widget/MeterBase;->mTouchStartY:I

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/widget/MeterBase;->handler4LongClick:Landroid/os/Handler;

    .line 81
    new-instance v0, Lcom/android/mipop/widget/MeterBase$1;

    invoke-direct {v0, p0}, Lcom/android/mipop/widget/MeterBase$1;-><init>(Lcom/android/mipop/widget/MeterBase;)V

    iput-object v0, p0, Lcom/android/mipop/widget/MeterBase;->runnable4LongClick:Ljava/lang/Runnable;

    .line 92
    sput-object p1, Lcom/android/mipop/widget/MeterBase;->mContext:Landroid/content/Context;

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/mipop/widget/MeterBase;->mWindowManager:Landroid/view/WindowManager;

    .line 94
    iget-object v0, p0, Lcom/android/mipop/widget/MeterBase;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 95
    iget-object v0, p0, Lcom/android/mipop/widget/MeterBase;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 96
    iget-object v0, p0, Lcom/android/mipop/widget/MeterBase;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 97
    iget-object v0, p0, Lcom/android/mipop/widget/MeterBase;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x40000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 98
    iget-object v0, p0, Lcom/android/mipop/widget/MeterBase;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 99
    iget-object v0, p0, Lcom/android/mipop/widget/MeterBase;->wmParams:Landroid/view/WindowManager$LayoutParams;

    sget v1, Lcom/android/mipop/widget/MeterBase;->baseX:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 100
    iget-object v0, p0, Lcom/android/mipop/widget/MeterBase;->wmParams:Landroid/view/WindowManager$LayoutParams;

    sget v1, Lcom/android/mipop/widget/MeterBase;->baseY:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 101
    iget-object v0, p0, Lcom/android/mipop/widget/MeterBase;->wmParams:Landroid/view/WindowManager$LayoutParams;

    sget v1, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 102
    iget-object v0, p0, Lcom/android/mipop/widget/MeterBase;->wmParams:Landroid/view/WindowManager$LayoutParams;

    sget v1, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 104
    iget-object v0, p0, Lcom/android/mipop/widget/MeterBase;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/mipop/widget/MeterBase;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    sget v0, Lcom/android/mipop/widget/MeterBase;->baseX:I

    iput v0, p0, Lcom/android/mipop/widget/MeterBase;->changeX:I

    .line 106
    sget v0, Lcom/android/mipop/widget/MeterBase;->baseY:I

    iput v0, p0, Lcom/android/mipop/widget/MeterBase;->changeY:I

    .line 109
    return-void
.end method

.method public static getMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mipop/widget/MeterBase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method protected abstract Click()V
.end method

.method protected abstract LongClick()V
.end method

.method public Register(Ljava/lang/String;Lcom/android/mipop/widget/MeterBase;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/android/mipop/widget/MeterBase;

    .prologue
    .line 121
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    return-void
.end method

.method public moved()V
    .locals 2

    .prologue
    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mipop/widget/MeterBase;->hasMoved:Z

    .line 204
    iget-object v0, p0, Lcom/android/mipop/widget/MeterBase;->handler4LongClick:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mipop/widget/MeterBase;->runnable4LongClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 205
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    .line 137
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v0, v2

    .line 138
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    add-int/lit8 v1, v2, -0x19

    .line 141
    .local v1, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 182
    :goto_0
    :pswitch_0
    const/4 v2, 0x1

    return v2

    .line 144
    :pswitch_1
    const-string v2, "OUT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "base DOWN"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/mipop/widget/MeterBase;->hasMoved:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget v2, p0, Lcom/android/mipop/widget/MeterBase;->resIdPressed:I

    invoke-virtual {p0, v2}, Lcom/android/mipop/widget/MeterBase;->setImageResource(I)V

    .line 146
    iget-object v2, p0, Lcom/android/mipop/widget/MeterBase;->handler4LongClick:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/mipop/widget/MeterBase;->runnable4LongClick:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 147
    invoke-static {}, Lcom/android/mipop/animation/AnimationParking;->stop()V

    goto :goto_0

    .line 152
    :pswitch_2
    const-string v2, "OUT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "base UP"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/mipop/widget/MeterBase;->hasMoved:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget v2, p0, Lcom/android/mipop/widget/MeterBase;->resId:I

    invoke-virtual {p0, v2}, Lcom/android/mipop/widget/MeterBase;->setImageResource(I)V

    .line 154
    iget-object v2, p0, Lcom/android/mipop/widget/MeterBase;->handler4LongClick:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/mipop/widget/MeterBase;->runnable4LongClick:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 155
    iget-boolean v2, p0, Lcom/android/mipop/widget/MeterBase;->hasMoved:Z

    if-nez v2, :cond_1

    .line 157
    iget-boolean v2, p0, Lcom/android/mipop/widget/MeterBase;->isLongClick:Z

    if-nez v2, :cond_0

    .line 158
    const-string v2, "Suhao.Click"

    const-string v3, "MeterBase.UP, Click"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {p0}, Lcom/android/mipop/widget/MeterBase;->Click()V

    .line 169
    :goto_1
    iput-boolean v5, p0, Lcom/android/mipop/widget/MeterBase;->hasMoved:Z

    .line 170
    iput-boolean v5, p0, Lcom/android/mipop/widget/MeterBase;->isLongClick:Z

    .line 171
    invoke-static {}, Lcom/android/mipop/animation/AnimationParking;->start()V

    goto :goto_0

    .line 161
    :cond_0
    const-string v2, "Suhao.Click"

    const-string v3, "MeterBase.UP, Long click"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 164
    :cond_1
    const-string v2, "Suhao.Click"

    const-string v3, "MeterBase.UP, has moved"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 175
    :pswitch_3
    const-string v2, "OUT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "base ACTION_OUTSIDE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/mipop/widget/MeterBase;->hasMoved:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-static {}, Lcom/android/mipop/animation/AnimationParking;->shrinkStart()V

    goto/16 :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public resetAlpha()V
    .locals 2

    .prologue
    .line 197
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->paint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 198
    invoke-virtual {p0}, Lcom/android/mipop/widget/MeterBase;->invalidate()V

    .line 199
    return-void
.end method

.method public setBitmap(II)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "idDown"    # I

    .prologue
    const/4 v3, 0x0

    .line 131
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mipop/widget/MeterBase;->bmp:Landroid/graphics/Bitmap;

    .line 132
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mipop/widget/MeterBase;->bmpDown:Landroid/graphics/Bitmap;

    .line 133
    new-instance v0, Landroid/graphics/Rect;

    sget v1, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    sget v2, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/mipop/widget/MeterBase;->rectDst:Landroid/graphics/Rect;

    .line 134
    return-void
.end method

.method public setResId(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "idDown"    # I

    .prologue
    .line 126
    iput p1, p0, Lcom/android/mipop/widget/MeterBase;->resId:I

    .line 127
    iput p2, p0, Lcom/android/mipop/widget/MeterBase;->resIdPressed:I

    .line 128
    return-void
.end method

.method public test()V
    .locals 1

    .prologue
    .line 209
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 210
    .local v0, "outRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/android/mipop/widget/MeterBase;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 213
    return-void
.end method

.method public update(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/mipop/widget/MeterBase;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 187
    iget-object v0, p0, Lcom/android/mipop/widget/MeterBase;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 188
    iget-object v0, p0, Lcom/android/mipop/widget/MeterBase;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/mipop/widget/MeterBase;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    return-void
.end method
