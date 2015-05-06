.class final Lcom/android/server/power/ShutdownThread$4;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    # setter for: Lcom/android/server/power/ShutdownThread;->mReboot:Z
    invoke-static {v1}, Lcom/android/server/power/ShutdownThread;->access$002(Z)Z

    # setter for: Lcom/android/server/power/ShutdownThread;->mRebootSoft:Z
    invoke-static {v1}, Lcom/android/server/power/ShutdownThread;->access$102(Z)Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
