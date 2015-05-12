.class Lcom/android/mipop/widget/MeterRecent$1;
.super Ljava/lang/Thread;
.source "MeterRecent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mipop/widget/MeterRecent;->Click()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mipop/widget/MeterRecent;


# direct methods
.method constructor <init>(Lcom/android/mipop/widget/MeterRecent;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/mipop/widget/MeterRecent$1;->this$0:Lcom/android/mipop/widget/MeterRecent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 42
    const-string v2, "statusbar"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 43
    .local v1, "mStatusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 46
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1, v2}, Lcom/android/internal/statusbar/IStatusBarService;->topAppWindowChanged(Z)V

    .line 47
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Input"

    const-string v3, "DeadOjbectException"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
