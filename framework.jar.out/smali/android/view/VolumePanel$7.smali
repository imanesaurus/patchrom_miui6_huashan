.class Landroid/view/VolumePanel$7;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/VolumePanel;->startRemoveTranslucentAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/VolumePanel;


# direct methods
.method constructor <init>(Landroid/view/VolumePanel;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/view/VolumePanel$7;->this$0:Landroid/view/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Landroid/view/VolumePanel$7;->this$0:Landroid/view/VolumePanel;

    # setter for: Landroid/view/VolumePanel;->mRunningDropTranslucentAnimation:Z
    invoke-static {v0, v1}, Landroid/view/VolumePanel;->access$902(Landroid/view/VolumePanel;Z)Z

    iget-object v0, p0, Landroid/view/VolumePanel$7;->this$0:Landroid/view/VolumePanel;

    # setter for: Landroid/view/VolumePanel;->mShouldRunDropTranslucentAnimation:Z
    invoke-static {v0, v1}, Landroid/view/VolumePanel;->access$1002(Landroid/view/VolumePanel;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    return-void
.end method
