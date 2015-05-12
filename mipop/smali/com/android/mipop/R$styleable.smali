.class public final Lcom/android/mipop/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mipop/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final EditTextExt:[I

.field public static final EditTextExt_Oriental:I = 0x1

.field public static final EditTextExt_Text:I = 0x0

.field public static final MySeekBar:[I

.field public static final MySeekBar_decr:I = 0x2

.field public static final MySeekBar_incr:I = 0x1

.field public static final MySeekBar_max:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mipop/R$styleable;->EditTextExt:[I

    .line 290
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/mipop/R$styleable;->MySeekBar:[I

    return-void

    .line 245
    nop

    :array_0
    .array-data 4
        0x7f010000
        0x7f010001
    .end array-data

    .line 290
    :array_1
    .array-data 4
        0x7f010002
        0x7f010003
        0x7f010004
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
