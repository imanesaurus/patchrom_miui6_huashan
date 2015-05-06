.class public Landroid/content/res/ThemeManager;
.super Ljava/lang/Object;
.source "ThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/ThemeManager$ThemeProcessingListener;,
        Landroid/content/res/ThemeManager$ThemeChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mChangeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/res/ThemeManager$ThemeChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mProcessingListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/res/ThemeManager$ThemeProcessingListener;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Landroid/content/res/IThemeService;

.field private final mThemeChangeListener:Landroid/content/res/IThemeChangeListener;

.field private final mThemeProcessingListener:Landroid/content/res/IThemeProcessingListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Landroid/content/res/ThemeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/res/ThemeManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/IThemeService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/content/res/IThemeService;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/content/res/ThemeManager;->mChangeListeners:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/content/res/ThemeManager;->mProcessingListeners:Ljava/util/Set;

    new-instance v0, Landroid/content/res/ThemeManager$1;

    invoke-direct {v0, p0}, Landroid/content/res/ThemeManager$1;-><init>(Landroid/content/res/ThemeManager;)V

    iput-object v0, p0, Landroid/content/res/ThemeManager;->mThemeChangeListener:Landroid/content/res/IThemeChangeListener;

    new-instance v0, Landroid/content/res/ThemeManager$2;

    invoke-direct {v0, p0}, Landroid/content/res/ThemeManager$2;-><init>(Landroid/content/res/ThemeManager;)V

    iput-object v0, p0, Landroid/content/res/ThemeManager;->mThemeProcessingListener:Landroid/content/res/IThemeProcessingListener;

    iput-object p1, p0, Landroid/content/res/ThemeManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/content/res/ThemeManager;->mService:Landroid/content/res/IThemeService;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/content/res/ThemeManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Landroid/content/res/ThemeManager;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Landroid/content/res/ThemeManager;

    .prologue
    iget-object v0, p0, Landroid/content/res/ThemeManager;->mChangeListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Landroid/content/res/ThemeManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/res/ThemeManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/content/res/ThemeManager;

    .prologue
    iget-object v0, p0, Landroid/content/res/ThemeManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/res/ThemeManager;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Landroid/content/res/ThemeManager;

    .prologue
    iget-object v0, p0, Landroid/content/res/ThemeManager;->mProcessingListeners:Ljava/util/Set;

    return-object v0
.end method

.method private logThemeServiceException(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    sget-object v0, Landroid/content/res/ThemeManager;->TAG:Ljava/lang/String;

    const-string v1, "Unable to access ThemeService"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public addClient(Landroid/content/res/ThemeManager$ThemeChangeListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/content/res/ThemeManager$ThemeChangeListener;

    .prologue
    iget-object v2, p0, Landroid/content/res/ThemeManager;->mChangeListeners:Ljava/util/Set;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mChangeListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Client was already added "

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mChangeListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    :try_start_2
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mService:Landroid/content/res/IThemeService;

    iget-object v3, p0, Landroid/content/res/ThemeManager;->mThemeChangeListener:Landroid/content/res/IThemeChangeListener;

    invoke-interface {v1, v3}, Landroid/content/res/IThemeService;->requestThemeChangeUpdates(Landroid/content/res/IThemeChangeListener;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_0
    :try_start_3
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mChangeListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/content/res/ThemeManager;->TAG:Ljava/lang/String;

    const-string v3, "Unable to register listener"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public applyDefaultTheme()V
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mService:Landroid/content/res/IThemeService;

    invoke-interface {v1}, Landroid/content/res/IThemeService;->applyDefaultTheme()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/content/res/ThemeManager;->logThemeServiceException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getProgress()I
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mService:Landroid/content/res/IThemeService;

    invoke-interface {v1}, Landroid/content/res/IThemeService;->getProgress()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/content/res/ThemeManager;->logThemeServiceException(Ljava/lang/Exception;)V

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public isThemeApplying()Z
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mService:Landroid/content/res/IThemeService;

    invoke-interface {v1}, Landroid/content/res/IThemeService;->isThemeApplying()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/content/res/ThemeManager;->logThemeServiceException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isThemeBeingProcessed(Ljava/lang/String;)Z
    .locals 2
    .param p1, "themePkgName"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mService:Landroid/content/res/IThemeService;

    invoke-interface {v1, p1}, Landroid/content/res/IThemeService;->isThemeBeingProcessed(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/content/res/ThemeManager;->logThemeServiceException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onClientDestroyed(Landroid/content/res/ThemeManager$ThemeChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/content/res/ThemeManager$ThemeChangeListener;

    .prologue
    invoke-virtual {p0, p1}, Landroid/content/res/ThemeManager;->removeClient(Landroid/content/res/ThemeManager$ThemeChangeListener;)V

    return-void
.end method

.method public onClientPaused(Landroid/content/res/ThemeManager$ThemeChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/content/res/ThemeManager$ThemeChangeListener;

    .prologue
    invoke-virtual {p0, p1}, Landroid/content/res/ThemeManager;->removeClient(Landroid/content/res/ThemeManager$ThemeChangeListener;)V

    return-void
.end method

.method public onClientResumed(Landroid/content/res/ThemeManager$ThemeChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/content/res/ThemeManager$ThemeChangeListener;

    .prologue
    invoke-virtual {p0, p1}, Landroid/content/res/ThemeManager;->addClient(Landroid/content/res/ThemeManager$ThemeChangeListener;)V

    return-void
.end method

.method public processThemeResources(Ljava/lang/String;)Z
    .locals 2
    .param p1, "themePkgName"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mService:Landroid/content/res/IThemeService;

    invoke-interface {v1, p1}, Landroid/content/res/IThemeService;->processThemeResources(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/content/res/ThemeManager;->logThemeServiceException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registerProcessingListener(Landroid/content/res/ThemeManager$ThemeProcessingListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/content/res/ThemeManager$ThemeProcessingListener;

    .prologue
    iget-object v2, p0, Landroid/content/res/ThemeManager;->mProcessingListeners:Ljava/util/Set;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mProcessingListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Listener was already added "

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mProcessingListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    :try_start_2
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mService:Landroid/content/res/IThemeService;

    iget-object v3, p0, Landroid/content/res/ThemeManager;->mThemeProcessingListener:Landroid/content/res/IThemeProcessingListener;

    invoke-interface {v1, v3}, Landroid/content/res/IThemeService;->registerThemeProcessingListener(Landroid/content/res/IThemeProcessingListener;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_0
    :try_start_3
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mProcessingListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/content/res/ThemeManager;->TAG:Ljava/lang/String;

    const-string v3, "Unable to register listener"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public removeClient(Landroid/content/res/ThemeManager$ThemeChangeListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/content/res/ThemeManager$ThemeChangeListener;

    .prologue
    iget-object v2, p0, Landroid/content/res/ThemeManager;->mChangeListeners:Ljava/util/Set;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mChangeListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/content/res/ThemeManager;->mChangeListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    :try_start_1
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mService:Landroid/content/res/IThemeService;

    iget-object v3, p0, Landroid/content/res/ThemeManager;->mThemeChangeListener:Landroid/content/res/IThemeChangeListener;

    invoke-interface {v1, v3}, Landroid/content/res/IThemeService;->removeUpdates(Landroid/content/res/IThemeChangeListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/content/res/ThemeManager;->TAG:Ljava/lang/String;

    const-string v3, "Unable to remove listener"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public requestThemeChange(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroid/content/pm/ThemeUtils;->getSupportedComponents(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .local v0, "components":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, v0}, Landroid/content/res/ThemeManager;->requestThemeChange(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public requestThemeChange(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "components":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    .local v1, "componentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "component":Ljava/lang/String;
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v0    # "component":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v1}, Landroid/content/res/ThemeManager;->requestThemeChange(Ljava/util/Map;)V

    return-void
.end method

.method public requestThemeChange(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "componentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mService:Landroid/content/res/IThemeService;

    invoke-interface {v1, p1}, Landroid/content/res/IThemeService;->requestThemeChange(Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/content/res/ThemeManager;->logThemeServiceException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public unregisterProcessingListener(Landroid/content/res/ThemeManager$ThemeChangeListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/content/res/ThemeManager$ThemeChangeListener;

    .prologue
    iget-object v2, p0, Landroid/content/res/ThemeManager;->mProcessingListeners:Ljava/util/Set;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mProcessingListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/content/res/ThemeManager;->mProcessingListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    :try_start_1
    iget-object v1, p0, Landroid/content/res/ThemeManager;->mService:Landroid/content/res/IThemeService;

    iget-object v3, p0, Landroid/content/res/ThemeManager;->mThemeProcessingListener:Landroid/content/res/IThemeProcessingListener;

    invoke-interface {v1, v3}, Landroid/content/res/IThemeService;->unregisterThemeProcessingListener(Landroid/content/res/IThemeProcessingListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/content/res/ThemeManager;->TAG:Ljava/lang/String;

    const-string v3, "Unable to remove listener"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
