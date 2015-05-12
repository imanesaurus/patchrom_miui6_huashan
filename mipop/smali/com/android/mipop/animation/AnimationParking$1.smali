.class final Lcom/android/mipop/animation/AnimationParking$1;
.super Ljava/lang/Object;
.source "AnimationParking.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mipop/animation/AnimationParking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 46
    # setter for: Lcom/android/mipop/animation/AnimationParking;->velocityCheck:Z
    invoke-static {v0}, Lcom/android/mipop/animation/AnimationParking;->access$002(Z)Z

    .line 47
    # setter for: Lcom/android/mipop/animation/AnimationParking;->mTimeOut:Z
    invoke-static {v0}, Lcom/android/mipop/animation/AnimationParking;->access$102(Z)Z

    .line 49
    sget-boolean v0, Lcom/android/mipop/animation/AnimationParking;->mAreaChanged:Z

    if-eqz v0, :cond_0

    .line 51
    const/4 v0, 0x0

    # setter for: Lcom/android/mipop/animation/AnimationParking;->velocityCheck:Z
    invoke-static {v0}, Lcom/android/mipop/animation/AnimationParking;->access$002(Z)Z

    .line 53
    :cond_0
    return-void
.end method
