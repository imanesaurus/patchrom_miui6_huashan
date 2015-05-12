.class Lcom/android/mipop/api/MyApplication$1;
.super Landroid/content/BroadcastReceiver;
.source "MyApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mipop/api/MyApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mipop/api/MyApplication;


# direct methods
.method constructor <init>(Lcom/android/mipop/api/MyApplication;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/mipop/api/MyApplication$1;->this$0:Lcom/android/mipop/api/MyApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 104
    const-string v0, "MyAppWidget"

    const-string v1, "app: intent recved."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/android/mipop/api/MyApplication$1;->this$0:Lcom/android/mipop/api/MyApplication;

    # invokes: Lcom/android/mipop/api/MyApplication;->taskAsigned(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/android/mipop/api/MyApplication;->access$000(Lcom/android/mipop/api/MyApplication;Landroid/content/Intent;)V

    .line 106
    return-void
.end method
