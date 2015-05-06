.class public Landroid/media/EncoderCapabilities$VideoEncoderCap;
.super Ljava/lang/Object;
.source "EncoderCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/EncoderCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoEncoderCap"
.end annotation


# instance fields
.field public final mCodec:I

.field public final mMaxBitRate:I

.field public final mMaxFrameHeight:I

.field public final mMaxFrameRate:I

.field public final mMaxFrameWidth:I

.field public final mMaxHFRFrameHeight:I

.field public final mMaxHFRFrameWidth:I

.field public final mMaxHFRMode:I

.field public final mMinBitRate:I

.field public final mMinFrameHeight:I

.field public final mMinFrameRate:I

.field public final mMinFrameWidth:I


# direct methods
.method private constructor <init>(IIIIIIIIIIII)V
    .locals 0
    .param p1, "codec"    # I
    .param p2, "minBitRate"    # I
    .param p3, "maxBitRate"    # I
    .param p4, "minFrameRate"    # I
    .param p5, "maxFrameRate"    # I
    .param p6, "minFrameWidth"    # I
    .param p7, "maxFrameWidth"    # I
    .param p8, "minFrameHeight"    # I
    .param p9, "maxFrameHeight"    # I
    .param p10, "maxHFRFrameWidth"    # I
    .param p11, "maxHFRFrameHeight"    # I
    .param p12, "maxHFRMode"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mCodec:I

    iput p2, p0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMinBitRate:I

    iput p3, p0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxBitRate:I

    iput p4, p0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMinFrameRate:I

    iput p5, p0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameRate:I

    iput p6, p0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMinFrameWidth:I

    iput p7, p0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameWidth:I

    iput p8, p0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMinFrameHeight:I

    iput p9, p0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameHeight:I

    iput p10, p0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxHFRFrameWidth:I

    iput p11, p0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxHFRFrameHeight:I

    iput p12, p0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxHFRMode:I

    return-void
.end method
