.class public Lcom/android/server/gesture/EdgeGestureService;
.super Landroid/service/gesture/IEdgeGestureService$Stub;
.source "EdgeGestureService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/gesture/EdgeGestureService$DisplayObserver;,
        Lcom/android/server/gesture/EdgeGestureService$H;,
        Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final DEBUG_INPUT:Z = false

.field public static final MSG_EDGE_GESTURE_ACTIVATION:I = 0x7d17

.field public static final MSG_UPDATE_SERVICE:I = 0x7d19

.field public static final TAG:Ljava/lang/String; = "EdgeGestureService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDisplayObserver:Lcom/android/server/gesture/EdgeGestureService$DisplayObserver;

.field private final mEdgeGestureActivationListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mGlobalPositions:I

.field private mGlobalSensitivity:I

.field private mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mInputFilter:Lcom/android/server/gesture/EdgeGestureInputFilter;

.field private final mInputManager:Lcom/android/server/input/InputManagerService;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputManager"    # Lcom/android/server/input/InputManagerService;

    .prologue
    invoke-direct {p0}, Landroid/service/gesture/IEdgeGestureService$Stub;-><init>()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EdgeGestureHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mHandlerThread:Landroid/os/HandlerThread;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mGlobalPositions:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mGlobalSensitivity:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mEdgeGestureActivationListener:Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/gesture/EdgeGestureService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/gesture/EdgeGestureService;->mInputManager:Lcom/android/server/input/InputManagerService;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/gesture/EdgeGestureService;Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/gesture/EdgeGestureService;
    .param p1, "x1"    # Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/gesture/EdgeGestureService;->removeListenerRecord(Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/gesture/EdgeGestureService;)Lcom/android/server/gesture/EdgeGestureInputFilter;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/gesture/EdgeGestureService;

    .prologue
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mInputFilter:Lcom/android/server/gesture/EdgeGestureInputFilter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/gesture/EdgeGestureService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/gesture/EdgeGestureService;

    .prologue
    iget v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mGlobalSensitivity:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/gesture/EdgeGestureService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/gesture/EdgeGestureService;

    .prologue
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/gesture/EdgeGestureService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/gesture/EdgeGestureService;

    .prologue
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/gesture/EdgeGestureService;IILcom/android/internal/util/gesture/EdgeGesturePosition;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/gesture/EdgeGestureService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/android/internal/util/gesture/EdgeGesturePosition;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/gesture/EdgeGestureService;->propagateActivation(IILcom/android/internal/util/gesture/EdgeGesturePosition;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/gesture/EdgeGestureService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/gesture/EdgeGestureService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/gesture/EdgeGestureService;->updateMonitoring()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/gesture/EdgeGestureService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/gesture/EdgeGestureService;

    .prologue
    iget v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mGlobalPositions:I

    return v0
.end method

.method private enforceMonitoringLocked()V
    .locals 3

    .prologue
    new-instance v0, Lcom/android/server/gesture/EdgeGestureInputFilter;

    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/gesture/EdgeGestureService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/server/gesture/EdgeGestureInputFilter;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mInputFilter:Lcom/android/server/gesture/EdgeGestureInputFilter;

    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureService;->mInputFilter:Lcom/android/server/gesture/EdgeGestureInputFilter;

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->registerSecondaryInputFilter(Landroid/view/IInputFilter;)V

    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mDisplayObserver:Lcom/android/server/gesture/EdgeGestureService$DisplayObserver;

    invoke-virtual {v0}, Lcom/android/server/gesture/EdgeGestureService$DisplayObserver;->observe()V

    return-void
.end method

.method private findListenerRecordLocked(Landroid/os/IBinder;)Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    .locals 3
    .param p1, "listener"    # Landroid/os/IBinder;

    .prologue
    iget-object v2, p0, Lcom/android/server/gesture/EdgeGestureService;->mEdgeGestureActivationListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;

    .local v1, "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    iget-object v2, v1, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->listener:Landroid/service/gesture/IEdgeGestureActivationListener;

    invoke-interface {v2}, Landroid/service/gesture/IEdgeGestureActivationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .end local v1    # "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private propagateActivation(IILcom/android/internal/util/gesture/EdgeGesturePosition;)Z
    .locals 5
    .param p1, "touchX"    # I
    .param p2, "touchY"    # I
    .param p3, "position"    # Lcom/android/internal/util/gesture/EdgeGesturePosition;

    .prologue
    iget-object v4, p0, Lcom/android/server/gesture/EdgeGestureService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v2, 0x0

    .local v2, "target":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/gesture/EdgeGestureService;->mEdgeGestureActivationListener:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;

    .local v1, "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    iget v3, p3, Lcom/android/internal/util/gesture/EdgeGesturePosition;->FLAG:I

    # invokes: Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->eligibleForActivation(I)Z
    invoke-static {v1, v3}, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->access$500(Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;I)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v2, v1

    .end local v1    # "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    :cond_1
    if-eqz v2, :cond_2

    # invokes: Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->notifyEdgeGestureActivation(IILcom/android/internal/util/gesture/EdgeGesturePosition;)Z
    invoke-static {v2, p1, p2, p3}, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->access$600(Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;IILcom/android/internal/util/gesture/EdgeGesturePosition;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v2, 0x0

    :cond_2
    if-eqz v2, :cond_3

    const/4 v3, 0x1

    :goto_0
    monitor-exit v4

    return v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private removeListenerRecord(Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;)V
    .locals 3
    .param p1, "record"    # Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;

    .prologue
    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mEdgeGestureActivationListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7d19

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private shutdownMonitoringLocked()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mDisplayObserver:Lcom/android/server/gesture/EdgeGestureService$DisplayObserver;

    invoke-virtual {v0}, Lcom/android/server/gesture/EdgeGestureService$DisplayObserver;->unobserve()V

    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureService;->mInputFilter:Lcom/android/server/gesture/EdgeGestureInputFilter;

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->unregisterSecondaryInputFilter(Landroid/view/IInputFilter;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mInputFilter:Lcom/android/server/gesture/EdgeGestureInputFilter;

    return-void
.end method

.method private updateMonitoring()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    iget-object v6, p0, Lcom/android/server/gesture/EdgeGestureService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    const/4 v5, 0x0

    :try_start_0
    iput v5, p0, Lcom/android/server/gesture/EdgeGestureService;->mGlobalPositions:I

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/gesture/EdgeGestureService;->mGlobalSensitivity:I

    const/4 v3, 0x0

    .local v3, "someLongLiving":Z
    const/4 v0, 0x0

    .local v0, "activePositions":I
    iget-object v5, p0, Lcom/android/server/gesture/EdgeGestureService;->mEdgeGestureActivationListener:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;

    .local v4, "temp":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    iget v5, p0, Lcom/android/server/gesture/EdgeGestureService;->mGlobalPositions:I

    iget v7, v4, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->positions:I

    or-int/2addr v5, v7

    iput v5, p0, Lcom/android/server/gesture/EdgeGestureService;->mGlobalPositions:I

    invoke-virtual {v4}, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->isActive()Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, v4, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->positions:I

    or-int/2addr v0, v5

    :cond_0
    iget v5, v4, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->sensitivity:I

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/android/server/gesture/EdgeGestureService;->mGlobalSensitivity:I

    iget v7, v4, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->sensitivity:I

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/android/server/gesture/EdgeGestureService;->mGlobalSensitivity:I

    :cond_1
    iget-boolean v5, v4, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->longLiving:Z

    or-int/2addr v3, v5

    goto :goto_0

    .end local v4    # "temp":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    :cond_2
    iget v5, p0, Lcom/android/server/gesture/EdgeGestureService;->mGlobalPositions:I

    if-eqz v5, :cond_3

    const/4 v1, 0x1

    .local v1, "havePositions":Z
    :cond_3
    iget v5, p0, Lcom/android/server/gesture/EdgeGestureService;->mGlobalPositions:I

    xor-int/lit8 v7, v0, -0x1

    and-int/2addr v5, v7

    iput v5, p0, Lcom/android/server/gesture/EdgeGestureService;->mGlobalPositions:I

    iget v5, p0, Lcom/android/server/gesture/EdgeGestureService;->mGlobalSensitivity:I

    if-nez v5, :cond_4

    const/4 v5, 0x2

    iput v5, p0, Lcom/android/server/gesture/EdgeGestureService;->mGlobalSensitivity:I

    :cond_4
    iget-object v5, p0, Lcom/android/server/gesture/EdgeGestureService;->mInputFilter:Lcom/android/server/gesture/EdgeGestureInputFilter;

    if-nez v5, :cond_6

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/android/server/gesture/EdgeGestureService;->enforceMonitoringLocked()V

    :cond_5
    :goto_1
    monitor-exit v6

    return-void

    :cond_6
    iget-object v5, p0, Lcom/android/server/gesture/EdgeGestureService;->mInputFilter:Lcom/android/server/gesture/EdgeGestureInputFilter;

    if-eqz v5, :cond_5

    if-nez v1, :cond_5

    if-nez v3, :cond_5

    invoke-direct {p0}, Lcom/android/server/gesture/EdgeGestureService;->shutdownMonitoringLocked()V

    goto :goto_1

    .end local v0    # "activePositions":I
    .end local v1    # "havePositions":Z
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "someLongLiving":Z
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    iget-object v3, p0, Lcom/android/server/gesture/EdgeGestureService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: can\'t dump EdgeGestureService from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v3, "EDGE GESTURE SERVICE (dumpsys edgegestureservice)\n"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/gesture/EdgeGestureService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mInputFilter="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/gesture/EdgeGestureService;->mInputFilter:Lcom/android/server/gesture/EdgeGestureInputFilter;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/gesture/EdgeGestureService;->mInputFilter:Lcom/android/server/gesture/EdgeGestureInputFilter;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/gesture/EdgeGestureService;->mInputFilter:Lcom/android/server/gesture/EdgeGestureInputFilter;

    const-string v5, "    "

    invoke-virtual {v3, p2, v5}, Lcom/android/server/gesture/EdgeGestureInputFilter;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mGlobalPositions=0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/gesture/EdgeGestureService;->mGlobalPositions:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mGlobalSensitivity="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/gesture/EdgeGestureService;->mGlobalSensitivity:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/android/server/gesture/EdgeGestureService;->mEdgeGestureActivationListener:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;

    .local v2, "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    invoke-virtual {v2}, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->isActive()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Active record: #"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "i":I
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    const/4 v0, 0x0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/gesture/EdgeGestureService;->mEdgeGestureActivationListener:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;

    .restart local v2    # "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Listener #"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    "

    invoke-virtual {v2, p2, v3}, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v2    # "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    :cond_4
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/gesture/IEdgeGestureService$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/IllegalArgumentException;

    if-nez v1, :cond_0

    instance-of v1, v0, Ljava/lang/IllegalStateException;

    if-nez v1, :cond_0

    const-string v1, "EdgeGestureService"

    const-string v2, "EdgeGestureService crashed: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    throw v0
.end method

.method public registerEdgeGestureActivationListener(Landroid/service/gesture/IEdgeGestureActivationListener;)Landroid/service/gesture/IEdgeGestureHostCallback;
    .locals 8
    .param p1, "listener"    # Landroid/service/gesture/IEdgeGestureActivationListener;

    .prologue
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/gesture/EdgeGestureService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.INJECT_EVENTS"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "EdgeGestureService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission Denial: can\'t register from from pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    :goto_0
    return-object v1

    :cond_0
    if-nez p1, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "listener must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    const/4 v1, 0x0

    .local v1, "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    iget-object v4, p0, Lcom/android/server/gesture/EdgeGestureService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-interface {p1}, Landroid/service/gesture/IEdgeGestureActivationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/gesture/EdgeGestureService;->findListenerRecordLocked(Landroid/os/IBinder;)Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v2, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;

    invoke-direct {v2, p0, p1}, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;-><init>(Lcom/android/server/gesture/EdgeGestureService;Landroid/service/gesture/IEdgeGestureActivationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    .local v2, "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    :try_start_1
    invoke-interface {p1}, Landroid/service/gesture/IEdgeGestureActivationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v2, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v3, p0, Lcom/android/server/gesture/EdgeGestureService;->mEdgeGestureActivationListener:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v1, v2

    .end local v2    # "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    .restart local v1    # "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    :cond_2
    :try_start_3
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    :goto_1
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .end local v1    # "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    .restart local v2    # "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v5, "EdgeGestureService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Recipient died during registration pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v1, v3

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    .restart local v1    # "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    goto :goto_1
.end method

.method public systemReady()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/gesture/EdgeGestureService$H;

    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/gesture/EdgeGestureService$H;-><init>(Lcom/android/server/gesture/EdgeGestureService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/gesture/EdgeGestureService$1;

    invoke-direct {v1, p0}, Lcom/android/server/gesture/EdgeGestureService$1;-><init>(Lcom/android/server/gesture/EdgeGestureService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Lcom/android/server/gesture/EdgeGestureService$DisplayObserver;

    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/gesture/EdgeGestureService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/gesture/EdgeGestureService$DisplayObserver;-><init>(Lcom/android/server/gesture/EdgeGestureService;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mDisplayObserver:Lcom/android/server/gesture/EdgeGestureService$DisplayObserver;

    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7d19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public updateEdgeGestureActivationListener(Landroid/os/IBinder;I)V
    .locals 4
    .param p1, "listener"    # Landroid/os/IBinder;
    .param p2, "positionFlags"    # I

    .prologue
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "listener must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/gesture/EdgeGestureService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/gesture/EdgeGestureService;->findListenerRecordLocked(Landroid/os/IBinder;)Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;

    move-result-object v0

    .local v0, "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    if-nez v0, :cond_1

    const-string v1, "EdgeGestureService"

    const-string v3, "Unknown listener on update listener. Register first?"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "listener not registered"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0    # "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    :cond_1
    :try_start_1
    # invokes: Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->updateFlags(I)V
    invoke-static {v0, p2}, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->access$400(Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;I)V

    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureService;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x7d19

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
