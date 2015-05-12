.class Lcom/android/mipop/MIPopActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MIPopActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mipop/MIPopActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mipop/MIPopActivity;


# direct methods
.method constructor <init>(Lcom/android/mipop/MIPopActivity;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/mipop/MIPopActivity$1;->this$0:Lcom/android/mipop/MIPopActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 44
    const-string v0, "MyAppWidget"

    const-string v1, "app: intent recved."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v0, p0, Lcom/android/mipop/MIPopActivity$1;->this$0:Lcom/android/mipop/MIPopActivity;

    # invokes: Lcom/android/mipop/MIPopActivity;->taskAsigned(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/android/mipop/MIPopActivity;->access$000(Lcom/android/mipop/MIPopActivity;Landroid/content/Intent;)V

    .line 46
    return-void
.end method
