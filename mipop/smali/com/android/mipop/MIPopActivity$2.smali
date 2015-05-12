.class Lcom/android/mipop/MIPopActivity$2;
.super Landroid/os/Handler;
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
    .line 59
    iput-object p1, p0, Lcom/android/mipop/MIPopActivity$2;->this$0:Lcom/android/mipop/MIPopActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 62
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 68
    const-string v0, "mq"

    const-string v1, "unknow message!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :goto_0
    return-void

    .line 64
    :pswitch_0
    const-string v0, "mq"

    const-string v1, "SET_CAN_SWITCH_WAVE!!!!! "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/4 v0, 0x1

    # setter for: Lcom/android/mipop/MIPopActivity;->canSwitchWave:Z
    invoke-static {v0}, Lcom/android/mipop/MIPopActivity;->access$102(Z)Z

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method
