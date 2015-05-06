.class final Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;
.super Landroid/view/IInputFilterHost$Stub;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ChainedInputFilterHost"
.end annotation


# instance fields
.field private mDisconnected:Z

.field private final mInputFilter:Landroid/view/IInputFilter;

.field private mNext:Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/input/InputManagerService;Landroid/view/IInputFilter;Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;)V
    .locals 1
    .param p2, "filter"    # Landroid/view/IInputFilter;
    .param p3, "next"    # Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    .prologue
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Landroid/view/IInputFilterHost$Stub;-><init>()V

    iput-object p2, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->mInputFilter:Landroid/view/IInputFilter;

    iput-object p3, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->mNext:Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->mDisconnected:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/input/InputManagerService;Landroid/view/IInputFilter;Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;Lcom/android/server/input/InputManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p2, "x1"    # Landroid/view/IInputFilter;
    .param p3, "x2"    # Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;
    .param p4, "x3"    # Lcom/android/server/input/InputManagerService$1;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;-><init>(Lcom/android/server/input/InputManagerService;Landroid/view/IInputFilter;Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;)Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    .prologue
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->mNext:Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;)Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;
    .param p1, "x1"    # Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    .prologue
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->mNext:Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;)Landroid/view/IInputFilter;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    .prologue
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->mInputFilter:Landroid/view/IInputFilter;

    return-object v0
.end method


# virtual methods
.method public connectLocked()V
    .locals 1

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->mInputFilter:Landroid/view/IInputFilter;

    invoke-interface {v0, p0}, Landroid/view/IInputFilter;->install(Landroid/view/IInputFilterHost;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public disconnectLocked()V
    .locals 1

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->mInputFilter:Landroid/view/IInputFilter;

    invoke-interface {v0}, Landroid/view/IInputFilter;->uninstall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->mDisconnected:Z

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendInputEvent(Landroid/view/InputEvent;I)V
    .locals 8
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object v7, v0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->mDisconnected:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->mNext:Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mPtr:I
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$800(Lcom/android/server/input/InputManagerService;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v1, 0x4000000

    or-int v6, p2, v1

    move-object v1, p1

    # invokes: Lcom/android/server/input/InputManagerService;->nativeInjectInputEvent(ILandroid/view/InputEvent;IIIII)I
    invoke-static/range {v0 .. v6}, Lcom/android/server/input/InputManagerService;->access$900(ILandroid/view/InputEvent;IIIII)I

    :cond_1
    :goto_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->mNext:Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    iget-object v0, v0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->mInputFilter:Landroid/view/IInputFilter;

    invoke-virtual {p1}, Landroid/view/InputEvent;->copy()Landroid/view/InputEvent;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/view/IInputFilter;->filterInputEvent(Landroid/view/InputEvent;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
