.class public Landroid/media/MiniThumbFile;
.super Ljava/lang/Object;
.source "MiniThumbFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MiniThumbFile$Injector;
    }
.end annotation


# static fields
.field public static final BYTES_PER_MINTHUMB:I = 0x2710

.field private static final BYTES_PER_MINTHUMB_INDEX:I = 0x8

.field private static final HEADER_SIZE:I = 0xd

.field private static final MINI_THUMB_DATA_FILE_VERSION:I = 0x4

.field private static final TAG:Ljava/lang/String; = "MiniThumbFile"

.field private static final sThumbFiles:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MiniThumbFile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final debug:Z

.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mChannel:Ljava/nio/channels/FileChannel;

.field private mIndexChannel:Ljava/nio/channels/FileChannel;

.field private mMiniThumbFile:Ljava/io/RandomAccessFile;

.field private mMiniThumbIndexFile:Ljava/io/RandomAccessFile;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MiniThumbFile;->debug:Z

    iput-object p1, p0, Landroid/media/MiniThumbFile;->mUri:Landroid/net/Uri;

    const/16 v0, 0x2710

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private getIndex(JZ)J
    .locals 20
    .param p1, "id"    # J
    .param p3, "create"    # Z

    .prologue
    invoke-direct/range {p0 .. p0}, Landroid/media/MiniThumbFile;->miniThumbIndexFile()Ljava/io/RandomAccessFile;

    move-result-object v15

    .local v15, "r":Ljava/io/RandomAccessFile;
    const/16 v2, 0x8

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .local v8, "buf":Ljava/nio/ByteBuffer;
    if-eqz v15, :cond_8

    const-wide/16 v3, 0x0

    .local v3, "pos":J
    if-nez p3, :cond_0

    const-wide/16 v5, 0x1

    add-long v5, v5, p1

    const-wide/16 v18, 0x8

    mul-long v3, v5, v18

    :cond_0
    const/4 v10, 0x0

    .local v10, "lock":Ljava/nio/channels/FileLock;
    :try_start_0
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/16 v2, 0x8

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mIndexChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v5, 0x8

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mIndexChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2, v8, v3, v4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v16

    .local v16, "read":I
    const/16 v2, 0x8

    move/from16 v0, v16

    if-ne v0, v2, :cond_6

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    if-eqz p3, :cond_4

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v11

    .local v11, "now":J
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const-wide/16 v5, 0x1

    add-long/2addr v11, v5

    invoke-virtual {v8, v11, v12}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mIndexChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2, v8, v3, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    move-result v17

    .local v17, "write":I
    const/16 v2, 0x8

    move/from16 v0, v17

    if-ne v2, v0, :cond_2

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/nio/channels/FileLock;->release()V

    :cond_1
    const-wide/16 v5, 0x1

    add-long v5, v5, p1

    const-wide/16 v18, 0x8

    mul-long v3, v5, v18

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mIndexChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v5, 0x8

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v10

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mIndexChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2, v8, v3, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v17

    :cond_2
    if-eqz v10, :cond_3

    :try_start_1
    invoke-virtual {v10}, Ljava/nio/channels/FileLock;->release()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v3    # "pos":J
    .end local v10    # "lock":Ljava/nio/channels/FileLock;
    .end local v11    # "now":J
    .end local v16    # "read":I
    .end local v17    # "write":I
    :cond_3
    :goto_0
    return-wide v11

    .restart local v3    # "pos":J
    .restart local v10    # "lock":Ljava/nio/channels/FileLock;
    .restart local v11    # "now":J
    .restart local v16    # "read":I
    .restart local v17    # "write":I
    :catch_0
    move-exception v9

    .local v9, "ex":Ljava/io/IOException;
    const-string v2, "MiniThumbFile"

    const-string v5, "release lock: "

    invoke-static {v2, v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v9    # "ex":Ljava/io/IOException;
    .end local v11    # "now":J
    .end local v17    # "write":I
    :cond_4
    :try_start_2
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getLong()J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v13

    .local v13, "p":J
    if-eqz v10, :cond_5

    :try_start_3
    invoke-virtual {v10}, Ljava/nio/channels/FileLock;->release()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_5
    :goto_1
    move-wide v11, v13

    goto :goto_0

    :catch_1
    move-exception v9

    .restart local v9    # "ex":Ljava/io/IOException;
    const-string v2, "MiniThumbFile"

    const-string v5, "release lock: "

    invoke-static {v2, v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v9    # "ex":Ljava/io/IOException;
    .end local v13    # "p":J
    :cond_6
    const/4 v2, -0x1

    move/from16 v0, v16

    if-ne v2, v0, :cond_7

    const-wide/16 v5, 0x0

    :try_start_4
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v18

    cmp-long v2, v5, v18

    if-nez v2, :cond_7

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const-wide/16 v5, 0x0

    invoke-virtual {v8, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MiniThumbFile;->mIndexChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v8, v5, v6}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v17

    .restart local v17    # "write":I
    const/16 v2, 0x8

    move/from16 v0, v17

    if-ne v2, v0, :cond_7

    const-wide/16 v11, 0x0

    if-eqz v10, :cond_3

    :try_start_5
    invoke-virtual {v10}, Ljava/nio/channels/FileLock;->release()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_2
    move-exception v9

    .restart local v9    # "ex":Ljava/io/IOException;
    const-string v2, "MiniThumbFile"

    const-string v5, "release lock: "

    invoke-static {v2, v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v9    # "ex":Ljava/io/IOException;
    .end local v17    # "write":I
    :cond_7
    if-eqz v10, :cond_8

    :try_start_6
    invoke-virtual {v10}, Ljava/nio/channels/FileLock;->release()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .end local v3    # "pos":J
    .end local v10    # "lock":Ljava/nio/channels/FileLock;
    .end local v16    # "read":I
    :cond_8
    :goto_2
    const-wide/16 v11, 0x0

    goto :goto_0

    .restart local v3    # "pos":J
    .restart local v10    # "lock":Ljava/nio/channels/FileLock;
    .restart local v16    # "read":I
    :catch_3
    move-exception v9

    .restart local v9    # "ex":Ljava/io/IOException;
    const-string v2, "MiniThumbFile"

    const-string v5, "release lock: "

    invoke-static {v2, v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .end local v9    # "ex":Ljava/io/IOException;
    .end local v16    # "read":I
    :catch_4
    move-exception v9

    .restart local v9    # "ex":Ljava/io/IOException;
    :try_start_7
    const-string v2, "MiniThumbFile"

    const-string v5, "Got exception checking file index: "

    invoke-static {v2, v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v10, :cond_8

    :try_start_8
    invoke-virtual {v10}, Ljava/nio/channels/FileLock;->release()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_2

    :catch_5
    move-exception v9

    const-string v2, "MiniThumbFile"

    const-string v5, "release lock: "

    invoke-static {v2, v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .end local v9    # "ex":Ljava/io/IOException;
    :catch_6
    move-exception v9

    .local v9, "ex":Ljava/lang/RuntimeException;
    :try_start_9
    const-string v2, "MiniThumbFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got exception when reading index, id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", disk full or mount read-only? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v10, :cond_8

    :try_start_a
    invoke-virtual {v10}, Ljava/nio/channels/FileLock;->release()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_2

    :catch_7
    move-exception v9

    .local v9, "ex":Ljava/io/IOException;
    const-string v2, "MiniThumbFile"

    const-string v5, "release lock: "

    invoke-static {v2, v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .end local v9    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_9

    :try_start_b
    invoke-virtual {v10}, Ljava/nio/channels/FileLock;->release()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    :cond_9
    :goto_3
    throw v2

    :catch_8
    move-exception v9

    .restart local v9    # "ex":Ljava/io/IOException;
    const-string v5, "MiniThumbFile"

    const-string v6, "release lock: "

    invoke-static {v5, v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public static declared-synchronized instance(Landroid/net/Uri;)Landroid/media/MiniThumbFile;
    .locals 5
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const-class v3, Landroid/media/MiniThumbFile;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "type":Ljava/lang/String;
    sget-object v2, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MiniThumbFile;

    .local v0, "file":Landroid/media/MiniThumbFile;
    if-nez v0, :cond_0

    new-instance v0, Landroid/media/MiniThumbFile;

    .end local v0    # "file":Landroid/media/MiniThumbFile;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://media/external/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/media"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/media/MiniThumbFile;-><init>(Landroid/net/Uri;)V

    .restart local v0    # "file":Landroid/media/MiniThumbFile;
    sget-object v2, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    return-object v0

    .end local v0    # "file":Landroid/media/MiniThumbFile;
    .end local v1    # "type":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private miniThumbDataFile()Ljava/io/RandomAccessFile;
    .locals 7

    .prologue
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    if-nez v4, :cond_1

    invoke-direct {p0}, Landroid/media/MiniThumbFile;->removeOldFile()V

    const/4 v4, 0x4

    invoke-direct {p0, v4}, Landroid/media/MiniThumbFile;->randomAccessFilePath(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "path":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "MiniThumbFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to create .thumbnails directory "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v2, "f":Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v4, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    .end local v0    # "directory":Ljava/io/File;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "path":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    return-object v4

    .restart local v0    # "directory":Ljava/io/File;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v3    # "path":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/io/IOException;
    :try_start_1
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v4, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private miniThumbIndexFile()Ljava/io/RandomAccessFile;
    .locals 8

    .prologue
    iget-object v5, p0, Landroid/media/MiniThumbFile;->mMiniThumbIndexFile:Ljava/io/RandomAccessFile;

    if-nez v5, :cond_1

    invoke-direct {p0}, Landroid/media/MiniThumbFile;->removeOldIndexFile()V

    const/4 v5, 0x4

    invoke-direct {p0, v5}, Landroid/media/MiniThumbFile;->randomAccessIndexFilePath(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "path":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "MiniThumbFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create .thumbnails directory "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v3, "f":Ljava/io/File;
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v6, "rw"

    invoke-direct {v5, v3, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, Landroid/media/MiniThumbFile;->mMiniThumbIndexFile:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v5, p0, Landroid/media/MiniThumbFile;->mMiniThumbIndexFile:Ljava/io/RandomAccessFile;

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/media/MiniThumbFile;->mMiniThumbIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    iput-object v5, p0, Landroid/media/MiniThumbFile;->mIndexChannel:Ljava/nio/channels/FileChannel;

    .end local v0    # "directory":Ljava/io/File;
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "path":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Landroid/media/MiniThumbFile;->mMiniThumbIndexFile:Ljava/io/RandomAccessFile;

    return-object v5

    .restart local v0    # "directory":Ljava/io/File;
    .restart local v3    # "f":Ljava/io/File;
    .restart local v4    # "path":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/io/IOException;
    :try_start_1
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v6, "r"

    invoke-direct {v5, v3, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, Landroid/media/MiniThumbFile;->mMiniThumbIndexFile:Ljava/io/RandomAccessFile;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    .local v2, "ex2":Ljava/io/IOException;
    const-string v5, "MiniThumbFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "miniThumbIndexFile open r exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private randomAccessFilePath(I)Ljava/lang/String;
    .locals 3
    .param p1, "version"    # I

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/.thumbnails"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "directoryName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.thumbdata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MiniThumbFile;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private randomAccessIndexFilePath(I)Ljava/lang/String;
    .locals 3
    .param p1, "version"    # I

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/.thumbnails"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "directoryName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.thumbindex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MiniThumbFile;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private removeOldFile()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Landroid/media/MiniThumbFile;->randomAccessFilePath(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "oldPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "oldFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private removeOldIndexFile()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Landroid/media/MiniThumbFile;->randomAccessIndexFilePath(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "oldPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "oldFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static declared-synchronized reset()V
    .locals 4

    .prologue
    const-class v3, Landroid/media/MiniThumbFile;

    monitor-enter v3

    :try_start_0
    sget-object v2, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MiniThumbFile;

    .local v0, "file":Landroid/media/MiniThumbFile;
    invoke-virtual {v0}, Landroid/media/MiniThumbFile;->deactivate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "file":Landroid/media/MiniThumbFile;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    :try_start_1
    sget-object v2, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-void
.end method


# virtual methods
.method public declared-synchronized deactivate()V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized getMagic(J)J
    .locals 13
    .param p1, "id"    # J

    .prologue
    const/16 v12, 0x9

    const/4 v11, 0x1

    const-wide/16 v9, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/media/MiniThumbFile;->miniThumbDataFile()Ljava/io/RandomAccessFile;

    move-result-object v8

    .local v8, "r":Ljava/io/RandomAccessFile;
    if-eqz v8, :cond_3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/MiniThumbFile;->getIndex(JZ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v1

    invoke-static {p1, p2}, Landroid/media/MiniThumbFile$Injector;->getPosition(J)J

    move-result-wide v1

    .local v1, "pos":J
    cmp-long v0, v1, v9

    if-gez v0, :cond_1

    move-wide v3, v9

    .end local v1    # "pos":J
    :cond_0
    :goto_0
    monitor-exit p0

    return-wide v3

    .restart local v1    # "pos":J
    :cond_1
    const-wide/16 v3, 0x2710

    mul-long/2addr v1, v3

    const/4 v7, 0x0

    .local v7, "lock":Ljava/nio/channels/FileLock;
    :try_start_1
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v3, 0x11

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v7

    iget-object v0, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    iget-object v3, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3, v1, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v0

    if-ne v0, v12, :cond_2

    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0, p1, p2}, Landroid/media/MiniThumbFile$Injector;->isMatch(Ljava/nio/ByteBuffer;J)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v3

    if-eqz v7, :cond_0

    :try_start_2
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    if-eqz v7, :cond_3

    :try_start_3
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v1    # "pos":J
    .end local v7    # "lock":Ljava/nio/channels/FileLock;
    :cond_3
    :goto_1
    move-wide v3, v9

    goto :goto_0

    .restart local v1    # "pos":J
    .restart local v7    # "lock":Ljava/nio/channels/FileLock;
    :catch_1
    move-exception v6

    .local v6, "ex":Ljava/io/IOException;
    :try_start_4
    const-string v0, "MiniThumbFile"

    const-string v3, "Got exception checking file magic: "

    invoke-static {v0, v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v7, :cond_3

    :try_start_5
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    .end local v6    # "ex":Ljava/io/IOException;
    :catch_3
    move-exception v6

    .local v6, "ex":Ljava/lang/RuntimeException;
    :try_start_6
    const-string v0, "MiniThumbFile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got exception when reading magic, id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", disk full or mount read-only? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v7, :cond_3

    :try_start_7
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1

    .end local v6    # "ex":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    :try_start_8
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_4
    :goto_2
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .end local v1    # "pos":J
    .end local v7    # "lock":Ljava/nio/channels/FileLock;
    .end local v8    # "r":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .restart local v1    # "pos":J
    .restart local v7    # "lock":Ljava/nio/channels/FileLock;
    .restart local v8    # "r":Ljava/io/RandomAccessFile;
    :catch_5
    move-exception v0

    goto :goto_1

    :catch_6
    move-exception v3

    goto :goto_2
.end method

.method public declared-synchronized getMiniThumbFromFile(J[B)[B
    .locals 17
    .param p1, "id"    # J
    .param p3, "data"    # [B

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/media/MiniThumbFile;->miniThumbDataFile()Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v15

    .local v15, "r":Ljava/io/RandomAccessFile;
    if-nez v15, :cond_1

    const/16 p3, 0x0

    .end local p3    # "data":[B
    :cond_0
    :goto_0
    monitor-exit p0

    return-object p3

    .restart local p3    # "data":[B
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Landroid/media/MiniThumbFile;->getIndex(JZ)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v4

    invoke-static/range {p1 .. p2}, Landroid/media/MiniThumbFile$Injector;->getPosition(J)J

    move-result-wide v4

    .local v4, "pos":J
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_2

    const/16 p3, 0x0

    goto :goto_0

    :cond_2
    const-wide/16 v6, 0x2710

    mul-long/2addr v4, v6

    const/4 v12, 0x0

    .local v12, "lock":Ljava/nio/channels/FileLock;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v6, 0x2710

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v6, v4, v5}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v16

    .local v16, "size":I
    const/16 v3, 0x15

    move/from16 v0, v16

    if-le v0, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    .local v10, "flag":B
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getLong()J

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v13

    .local v13, "magic":J
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    .local v11, "length":I
    add-int/lit8 v3, v11, 0x15

    move/from16 v0, v16

    if-lt v0, v3, :cond_3

    move-object/from16 v0, p3

    array-length v3, v0

    if-lt v3, v11, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v3, v0, v6, v11}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v12, :cond_0

    :try_start_3
    invoke-virtual {v12}, Ljava/nio/channels/FileLock;->release()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0

    .end local v10    # "flag":B
    .end local v11    # "length":I
    .end local v13    # "magic":J
    :cond_3
    if-eqz v12, :cond_4

    :try_start_4
    invoke-virtual {v12}, Ljava/nio/channels/FileLock;->release()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local v16    # "size":I
    :cond_4
    :goto_1
    const/16 p3, 0x0

    goto :goto_0

    :catch_1
    move-exception v9

    .local v9, "ex":Ljava/io/IOException;
    :try_start_5
    const-string v3, "MiniThumbFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "got exception when reading thumbnail id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p1

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v12, :cond_4

    :try_start_6
    invoke-virtual {v12}, Ljava/nio/channels/FileLock;->release()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catch_2
    move-exception v3

    goto :goto_1

    .end local v9    # "ex":Ljava/io/IOException;
    :catch_3
    move-exception v9

    .local v9, "ex":Ljava/lang/RuntimeException;
    :try_start_7
    const-string v3, "MiniThumbFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got exception when reading thumbnail, id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p1

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", disk full or mount read-only? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v12, :cond_4

    :try_start_8
    invoke-virtual {v12}, Ljava/nio/channels/FileLock;->release()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    :catch_4
    move-exception v3

    goto :goto_1

    .end local v9    # "ex":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    if-eqz v12, :cond_5

    :try_start_9
    invoke-virtual {v12}, Ljava/nio/channels/FileLock;->release()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_5
    :goto_2
    :try_start_a
    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .end local v4    # "pos":J
    .end local v12    # "lock":Ljava/nio/channels/FileLock;
    .end local v15    # "r":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v4    # "pos":J
    .restart local v12    # "lock":Ljava/nio/channels/FileLock;
    .restart local v15    # "r":Ljava/io/RandomAccessFile;
    .restart local v16    # "size":I
    :catch_5
    move-exception v3

    goto :goto_1

    .end local v16    # "size":I
    :catch_6
    move-exception v6

    goto :goto_2
.end method

.method public declared-synchronized saveMiniThumbToFile([BJJ)V
    .locals 9
    .param p1, "data"    # [B
    .param p2, "id"    # J
    .param p4, "magic"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/media/MiniThumbFile;->miniThumbDataFile()Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    .local v8, "r":Ljava/io/RandomAccessFile;
    if-nez v8, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, p2, p3, v0}, Landroid/media/MiniThumbFile;->getIndex(JZ)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v1

    invoke-static {p2, p3}, Landroid/media/MiniThumbFile$Injector;->getPosition(J)J
    
    move-result-wide v1

    .local v1, "pos":J
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-ltz v0, :cond_0

    const-wide/16 v3, 0x2710

    mul-long/2addr v1, v3

    const/4 v7, 0x0

    .local v7, "lock":Ljava/nio/channels/FileLock;
    if-eqz p1, :cond_3

    :try_start_2
    array-length v0, p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v3, 0x2703

    if-le v0, v3, :cond_2

    if-eqz v7, :cond_0

    :try_start_3
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    :try_start_4
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2, p3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p4, p5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    array-length v3, p1

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v3, 0x2710

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v7

    iget-object v0, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    iget-object v3, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3, v1, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    if-eqz v7, :cond_0

    :try_start_5
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v6

    .local v6, "ex":Ljava/io/IOException;
    :try_start_6
    const-string v0, "MiniThumbFile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t save mini thumbnail data for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v6    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    :try_start_7
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_4
    :goto_1
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .end local v1    # "pos":J
    .end local v7    # "lock":Ljava/nio/channels/FileLock;
    .end local v8    # "r":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .restart local v1    # "pos":J
    .restart local v7    # "lock":Ljava/nio/channels/FileLock;
    .restart local v8    # "r":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v6

    .local v6, "ex":Ljava/lang/RuntimeException;
    :try_start_9
    const-string v0, "MiniThumbFile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t save mini thumbnail data for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; disk full or mount read-only? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v7, :cond_0

    :try_start_a
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_0

    :catch_4
    move-exception v0

    goto/16 :goto_0

    .end local v6    # "ex":Ljava/lang/RuntimeException;
    :catch_5
    move-exception v3

    goto :goto_1
.end method
