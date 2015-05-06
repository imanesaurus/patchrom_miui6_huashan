.class Lcom/android/server/TorchService$CameraUserRecord;
.super Ljava/lang/Object;
.source "TorchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TorchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CameraUserRecord"
.end annotation


# instance fields
.field pid:I

.field token:Landroid/os/IBinder;

.field uid:I


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/TorchService$CameraUserRecord;->token:Landroid/os/IBinder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/android/server/TorchService$CameraUserRecord;->pid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/TorchService$CameraUserRecord;->uid:I

    return-void
.end method
