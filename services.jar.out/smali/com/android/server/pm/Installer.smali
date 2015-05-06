.class public final Lcom/android/server/pm/Installer;
.super Ljava/lang/Object;
.source "Installer.java"


# static fields
.field private static final LOCAL_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "Installer"


# instance fields
.field buf:[B

.field buflen:I

.field id:I

.field mHandler:Landroid/os/Handler;

.field mIn:Ljava/io/InputStream;

.field mLastTransactionId:I

.field mOut:Ljava/io/OutputStream;

.field final mPendingRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mPollRunnable:Ljava/lang/Runnable;

.field mPollerThread:Ljava/lang/Thread;

.field final mResponses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSocket:Landroid/net/LocalSocket;

.field final mTransactionIdLock:Ljava/lang/Object;

.field needPolling:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/pm/Installer;->buf:[B

    iput v2, p0, Lcom/android/server/pm/Installer;->buflen:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Installer;->mResponses:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Installer;->mPendingRequests:Ljava/util/ArrayList;

    iput v2, p0, Lcom/android/server/pm/Installer;->mLastTransactionId:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Installer;->mTransactionIdLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/pm/Installer$1;

    invoke-direct {v1, p0}, Lcom/android/server/pm/Installer$1;-><init>(Lcom/android/server/pm/Installer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/pm/Installer;->mPollerThread:Ljava/lang/Thread;

    iput-boolean v2, p0, Lcom/android/server/pm/Installer;->needPolling:Z

    new-instance v0, Lcom/android/server/pm/Installer$2;

    invoke-direct {v0, p0}, Lcom/android/server/pm/Installer$2;-><init>(Lcom/android/server/pm/Installer;)V

    iput-object v0, p0, Lcom/android/server/pm/Installer;->mPollRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/server/pm/Installer;->mPollerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/Installer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/Installer;

    .prologue
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkPoller()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/Installer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/Installer;

    .prologue
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->readReply()Z

    move-result v0

    return v0
.end method

.method private checkPoller()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mPendingRequests:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/Installer;->mPendingRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/Installer;->needPolling:Z

    iget-object v0, p0, Lcom/android/server/pm/Installer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/pm/Installer;->mPollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/Installer;->needPolling:Z

    iget-object v0, p0, Lcom/android/server/pm/Installer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/pm/Installer;->mPollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private connect()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/pm/Installer;->mSocket:Landroid/net/LocalSocket;

    if-eqz v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const-string v3, "Installer"

    const-string v4, "connecting..."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v3, Landroid/net/LocalSocket;

    invoke-direct {v3}, Landroid/net/LocalSocket;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/Installer;->mSocket:Landroid/net/LocalSocket;

    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v3, "installd"

    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v3, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .local v0, "address":Landroid/net/LocalSocketAddress;
    iget-object v3, p0, Lcom/android/server/pm/Installer;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    iget-object v3, p0, Lcom/android/server/pm/Installer;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/Installer;->mIn:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/android/server/pm/Installer;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/Installer;->mOut:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->disconnect()V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private disconnect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "Installer"

    const-string v1, "disconnecting..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mSocket:Landroid/net/LocalSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/Installer;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mIn:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/Installer;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mOut:Ljava/io/OutputStream;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/pm/Installer;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_2
    iput-object v2, p0, Lcom/android/server/pm/Installer;->mSocket:Landroid/net/LocalSocket;

    iput-object v2, p0, Lcom/android/server/pm/Installer;->mIn:Ljava/io/InputStream;

    iput-object v2, p0, Lcom/android/server/pm/Installer;->mOut:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/android/server/pm/Installer;->mPendingRequests:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mPendingRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkPoller()V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v1, p0, Lcom/android/server/pm/Installer;->mResponses:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_4
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method private execute(Ljava/lang/String;)I
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/Installer;->transaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "res":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/NumberFormatException;
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private declared-synchronized readBytes([BI)Z
    .locals 8
    .param p1, "buffer"    # [B
    .param p2, "len"    # I

    .prologue
    const/4 v4, 0x0

    monitor-enter p0

    const/4 v3, 0x0

    .local v3, "off":I
    if-ltz p2, :cond_0

    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/Installer;->mIn:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-ge v5, p2, :cond_2

    :cond_0
    :goto_0
    monitor-exit p0

    return v4

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_0

    .end local v1    # "e":Ljava/io/IOException;
    .local v0, "count":I
    :cond_1
    add-int/2addr v3, v0

    .end local v0    # "count":I
    :cond_2
    if-eq v3, p2, :cond_3

    :try_start_1
    iget-object v5, p0, Lcom/android/server/pm/Installer;->mIn:Ljava/io/InputStream;

    sub-int v6, p2, v3

    invoke-virtual {v5, p1, v3, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .restart local v0    # "count":I
    if-gtz v0, :cond_1

    const-string v5, "Installer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "read error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "count":I
    :cond_3
    :goto_1
    if-ne v3, p2, :cond_4

    const/4 v4, 0x1

    goto :goto_0

    :catch_1
    move-exception v2

    .local v2, "ex":Ljava/io/IOException;
    :try_start_2
    const-string v5, "Installer"

    const-string v6, "read exception"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .end local v2    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_4
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->disconnect()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private readReply()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/pm/Installer;->buflen:I

    iget-object v3, p0, Lcom/android/server/pm/Installer;->buf:[B

    const/4 v4, 0x6

    invoke-direct {p0, v3, v4}, Lcom/android/server/pm/Installer;->readBytes([BI)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/Installer;->buf:[B

    aget-byte v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    iget-object v4, p0, Lcom/android/server/pm/Installer;->buf:[B

    aget-byte v4, v4, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/server/pm/Installer;->buf:[B

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/server/pm/Installer;->buf:[B

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/pm/Installer;->id:I

    iget-object v3, p0, Lcom/android/server/pm/Installer;->buf:[B

    const/4 v4, 0x4

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    iget-object v4, p0, Lcom/android/server/pm/Installer;->buf:[B

    const/4 v5, 0x5

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int v0, v3, v4

    .local v0, "len":I
    if-lt v0, v2, :cond_2

    const/16 v3, 0x400

    if-le v0, v3, :cond_3

    :cond_2
    const-string v2, "Installer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid reply length ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/pm/Installer;->disconnect()V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/server/pm/Installer;->buf:[B

    invoke-direct {p0, v3, v0}, Lcom/android/server/pm/Installer;->readBytes([BI)Z

    move-result v3

    if-eqz v3, :cond_0

    iput v0, p0, Lcom/android/server/pm/Installer;->buflen:I

    move v1, v2

    goto :goto_0
.end method

.method private transaction(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    iget-object v8, p0, Lcom/android/server/pm/Installer;->mTransactionIdLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget v6, p0, Lcom/android/server/pm/Installer;->mLastTransactionId:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/android/server/pm/Installer;->mLastTransactionId:I

    .local v6, "transactionId":I
    iget v7, p0, Lcom/android/server/pm/Installer;->mLastTransactionId:I

    if-gez v7, :cond_0

    const/4 v7, 0x0

    iput v7, p0, Lcom/android/server/pm/Installer;->mLastTransactionId:I

    :cond_0
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v8, p0, Lcom/android/server/pm/Installer;->mResponses:Landroid/util/SparseArray;

    monitor-enter v8
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .local v2, "startWaitTime":J
    :goto_0
    iget-object v7, p0, Lcom/android/server/pm/Installer;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_7

    iget-object v9, p0, Lcom/android/server/pm/Installer;->mPendingRequests:Ljava/util/ArrayList;

    monitor-enter v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v7, p0, Lcom/android/server/pm/Installer;->mPendingRequests:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-direct {p0}, Lcom/android/server/pm/Installer;->connect()Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "Installer"

    const-string v10, "connection failed"

    invoke-static {v7, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "-1"

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local v2    # "startWaitTime":J
    :cond_1
    :goto_1
    return-object v1

    .end local v6    # "transactionId":I
    :catchall_0
    move-exception v7

    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v7

    .restart local v2    # "startWaitTime":J
    .restart local v6    # "transactionId":I
    :cond_2
    :try_start_6
    invoke-direct {p0, p1, v6}, Lcom/android/server/pm/Installer;->writeCommand(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "Installer"

    const-string v10, "write command failed? reconnect!"

    invoke-static {v7, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/pm/Installer;->connect()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-direct {p0, p1, v6}, Lcom/android/server/pm/Installer;->writeCommand(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    const-string v1, "-1"

    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    monitor-exit v8

    goto :goto_1

    .end local v2    # "startWaitTime":J
    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v7
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "-1"

    goto :goto_1

    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v2    # "startWaitTime":J
    :cond_4
    :try_start_9
    iget-object v7, p0, Lcom/android/server/pm/Installer;->mPendingRequests:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkPoller()V

    :cond_5
    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sub-long v9, v2, v9

    const-wide v11, 0x174876e800L

    add-long v4, v9, v11

    .local v4, "timeToWait":J
    const-wide/16 v9, 0x0

    cmp-long v7, v4, v9

    if-lez v7, :cond_6

    iget-object v7, p0, Lcom/android/server/pm/Installer;->mResponses:Landroid/util/SparseArray;

    const-wide/32 v9, 0x186a0

    invoke-virtual {v7, v9, v10}, Ljava/lang/Object;->wait(J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_0

    .end local v4    # "timeToWait":J
    :catchall_2
    move-exception v7

    :try_start_b
    monitor-exit v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v7

    .restart local v4    # "timeToWait":J
    :cond_6
    const-string v7, "Installer"

    const-string v9, "timeout wating for response"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "timeToWait":J
    :cond_7
    monitor-exit v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    iget-object v8, p0, Lcom/android/server/pm/Installer;->mPendingRequests:Ljava/util/ArrayList;

    monitor-enter v8

    :try_start_d
    iget-object v7, p0, Lcom/android/server/pm/Installer;->mPendingRequests:Ljava/util/ArrayList;

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v8
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkPoller()V

    iget-object v8, p0, Lcom/android/server/pm/Installer;->mResponses:Landroid/util/SparseArray;

    monitor-enter v8

    :try_start_e
    iget-object v7, p0, Lcom/android/server/pm/Installer;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "s":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/pm/Installer;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v8
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    if-nez v1, :cond_1

    const-string v1, "-1"

    goto/16 :goto_1

    .end local v1    # "s":Ljava/lang/String;
    :catchall_3
    move-exception v7

    :try_start_f
    monitor-exit v8
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    throw v7

    :catchall_4
    move-exception v7

    :try_start_10
    monitor-exit v8
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    throw v7
.end method

.method private declared-synchronized writeCommand(Ljava/lang/String;I)Z
    .locals 10
    .param p1, "_cmd"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .local v0, "cmd":[B
    array-length v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v3, "len":I
    if-lt v3, v4, :cond_0

    const/16 v6, 0x400

    if-le v3, v6, :cond_1

    :cond_0
    move v4, v5

    :goto_0
    monitor-exit p0

    return v4

    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/android/server/pm/Installer;->buf:[B

    const/4 v7, 0x0

    and-int/lit16 v8, p2, 0xff

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    iget-object v6, p0, Lcom/android/server/pm/Installer;->buf:[B

    const/4 v7, 0x1

    shr-int/lit8 v8, p2, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    iget-object v6, p0, Lcom/android/server/pm/Installer;->buf:[B

    const/4 v7, 0x2

    shr-int/lit8 v8, p2, 0x10

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    iget-object v6, p0, Lcom/android/server/pm/Installer;->buf:[B

    const/4 v7, 0x3

    shr-int/lit8 v8, p2, 0x18

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v6, v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v6, p0, Lcom/android/server/pm/Installer;->mOut:Ljava/io/OutputStream;

    iget-object v7, p0, Lcom/android/server/pm/Installer;->buf:[B

    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v6, p0, Lcom/android/server/pm/Installer;->buf:[B

    const/4 v7, 0x0

    and-int/lit16 v8, v3, 0xff

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    iget-object v6, p0, Lcom/android/server/pm/Installer;->buf:[B

    const/4 v7, 0x1

    shr-int/lit8 v8, v3, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v6, v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v6, p0, Lcom/android/server/pm/Installer;->mOut:Ljava/io/OutputStream;

    iget-object v7, p0, Lcom/android/server/pm/Installer;->buf:[B

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/OutputStream;->write([BII)V

    iget-object v6, p0, Lcom/android/server/pm/Installer;->mOut:Ljava/io/OutputStream;

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/io/IOException;
    :try_start_5
    const-string v4, "Installer"

    const-string v6, "write error"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/pm/Installer;->disconnect()V

    move v4, v5

    goto :goto_0

    .end local v2    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    const-string v4, "Installer"

    const-string v6, "write error"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/pm/Installer;->disconnect()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v4, v5

    goto :goto_0

    .end local v0    # "cmd":[B
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "len":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method


# virtual methods
.method public aapt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)I
    .locals 3
    .param p1, "themeApkPath"    # Ljava/lang/String;
    .param p2, "internalPath"    # Ljava/lang/String;
    .param p3, "resTablePath"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "pkgId"    # I
    .param p6, "commonResourcesPath"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "aapt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1

    :cond_1
    const-string v1, "aapt_with_common"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public clearUserData(Ljava/lang/String;I)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/16 v2, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rmuserdata"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public createUserData(Ljava/lang/String;IILjava/lang/String;)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "userId"    # I
    .param p4, "seinfo"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mkuserdata"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    .end local p4    # "seinfo":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1

    .restart local p4    # "seinfo":Ljava/lang/String;
    :cond_0
    const-string p4, "!"

    goto :goto_0
.end method

.method public deleteCacheFiles(Ljava/lang/String;I)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/16 v2, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rmcache"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public dexopt(Ljava/lang/String;IZ)I
    .locals 3
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "isPublic"    # Z

    .prologue
    const/16 v2, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dexopt"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    const-string v1, " 1"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1

    :cond_0
    const-string v1, " 0"

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    iget-object v0, p0, Lcom/android/server/pm/Installer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method

.method public fixUid(Ljava/lang/String;II)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "gid"    # I

    .prologue
    const/16 v2, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fixuid"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public freeCache(J)I
    .locals 2
    .param p1, "freeStorageSize"    # J

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "freecache"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getSizeInfo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageStats;)I
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "persona"    # I
    .param p3, "apkPath"    # Ljava/lang/String;
    .param p4, "libDirPath"    # Ljava/lang/String;
    .param p5, "fwdLockApkPath"    # Ljava/lang/String;
    .param p6, "asecPath"    # Ljava/lang/String;
    .param p7, "pStats"    # Landroid/content/pm/PackageStats;

    .prologue
    const/4 v4, -0x1

    const/16 v6, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "getsize"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_1

    .end local p4    # "libDirPath":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_2

    .end local p5    # "fwdLockApkPath":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p6, :cond_3

    .end local p6    # "asecPath":Ljava/lang/String;
    :goto_2
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/pm/Installer;->transaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "s":Ljava/lang/String;
    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "res":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v5, v2

    const/4 v6, 0x5

    if-eq v5, v6, :cond_4

    :cond_0
    :goto_3
    return v4

    .end local v2    # "res":[Ljava/lang/String;
    .end local v3    # "s":Ljava/lang/String;
    .restart local p4    # "libDirPath":Ljava/lang/String;
    .restart local p5    # "fwdLockApkPath":Ljava/lang/String;
    .restart local p6    # "asecPath":Ljava/lang/String;
    :cond_1
    const-string p4, "!"

    goto :goto_0

    .end local p4    # "libDirPath":Ljava/lang/String;
    :cond_2
    const-string p5, "!"

    goto :goto_1

    .end local p5    # "fwdLockApkPath":Ljava/lang/String;
    :cond_3
    const-string p6, "!"

    goto :goto_2

    .end local p6    # "asecPath":Ljava/lang/String;
    .restart local v2    # "res":[Ljava/lang/String;
    .restart local v3    # "s":Ljava/lang/String;
    :cond_4
    const/4 v5, 0x1

    :try_start_0
    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p7, Landroid/content/pm/PackageStats;->codeSize:J

    const/4 v5, 0x2

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p7, Landroid/content/pm/PackageStats;->dataSize:J

    const/4 v5, 0x3

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p7, Landroid/content/pm/PackageStats;->cacheSize:J

    const/4 v5, 0x4

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p7, Landroid/content/pm/PackageStats;->externalCodeSize:J

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_3

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/NumberFormatException;
    goto :goto_3
.end method

.method public idmap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)I
    .locals 3
    .param p1, "targetApkPath"    # Ljava/lang/String;
    .param p2, "overlayApkPath"    # Ljava/lang/String;
    .param p3, "redirectionsPath"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "targetHash"    # I
    .param p6, "overlayHash"    # I

    .prologue
    const/16 v2, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "idmap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1

    :cond_1
    const-string v1, "idmap_with_redirs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public install(Ljava/lang/String;IILjava/lang/String;)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "gid"    # I
    .param p4, "seinfo"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "install"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    .end local p4    # "seinfo":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1

    .restart local p4    # "seinfo":Ljava/lang/String;
    :cond_0
    const-string p4, "!"

    goto :goto_0
.end method

.method public linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4
    .param p1, "dataPath"    # Ljava/lang/String;
    .param p2, "nativeLibPath"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/16 v2, 0x20

    const/4 v1, -0x1

    if-nez p1, :cond_0

    const-string v2, "Installer"

    const-string v3, "linkNativeLibraryDirectory dataPath is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    if-nez p2, :cond_1

    const-string v2, "Installer"

    const-string v3, "linkNativeLibraryDirectory nativeLibPath is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "linklib "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public moveFiles()I
    .locals 1

    .prologue
    const-string v0, "movefiles"

    invoke-direct {p0, v0}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public movedex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "srcPath"    # Ljava/lang/String;
    .param p2, "dstPath"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "movedex"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public ping()Z
    .locals 1

    .prologue
    const-string v0, "ping"

    invoke-direct {p0, v0}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;I)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/16 v2, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "remove"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public removeUserDataDirs(I)I
    .locals 2
    .param p1, "userId"    # I

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rmuser"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "oldname"    # Ljava/lang/String;
    .param p2, "newname"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rename"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public restoreconData()Z
    .locals 1

    .prologue
    const-string v0, "restorecondata"

    invoke-direct {p0, v0}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public rmdex(Ljava/lang/String;)I
    .locals 2
    .param p1, "codePath"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rmdex"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method
