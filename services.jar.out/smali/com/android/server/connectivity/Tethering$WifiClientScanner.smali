.class Lcom/android/server/connectivity/Tethering$WifiClientScanner;
.super Landroid/os/Handler;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiClientScanner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/Tethering;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$WifiClientScanner;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    new-instance v0, Lcom/android/server/connectivity/Tethering$DoScan;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$WifiClientScanner;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/Tethering$DoScan;-><init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$1;)V

    .local v0, "doScan":Lcom/android/server/connectivity/Tethering$DoScan;
    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering$DoScan;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/connectivity/Tethering$WifiClientScanner;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
