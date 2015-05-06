.class public abstract Landroid/app/backup/BackupAgent;
.super Landroid/content/ContextWrapper;
.source "BackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/BackupAgent$1;,
        Landroid/app/backup/BackupAgent$BackupServiceBinder;,
        Landroid/app/backup/BackupAgent$SharedPrefsSynchronizer;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final GENERIC_FILE_NAME:Ljava/lang/String; = "foo"

.field private static final TAG:Ljava/lang/String; = "BackupAgent"

.field public static final TYPE_DIRECTORY:I = 0x2

.field public static final TYPE_EOF:I = 0x0

.field public static final TYPE_FILE:I = 0x1

.field public static final TYPE_SYMLINK:I = 0x3


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/app/backup/BackupAgent;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/app/backup/BackupAgent$BackupServiceBinder;

    invoke-direct {v0, p0, v1}, Landroid/app/backup/BackupAgent$BackupServiceBinder;-><init>(Landroid/app/backup/BackupAgent;Landroid/app/backup/BackupAgent$1;)V

    invoke-virtual {v0}, Landroid/app/backup/BackupAgent$BackupServiceBinder;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/app/backup/BackupAgent;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$100(Landroid/app/backup/BackupAgent;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/backup/BackupAgent;

    .prologue
    invoke-direct {p0}, Landroid/app/backup/BackupAgent;->waitForSharedPrefs()V

    return-void
.end method

.method static synthetic access$200(Landroid/app/backup/BackupAgent;[Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/backup/BackupAgent;
    .param p1, "x1"    # [Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/app/backup/FullBackupDataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/app/backup/BackupAgent;->onBackupFiles([Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)V

    return-void
.end method

.method private onBackupFiles([Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)V
    .locals 34
    .param p1, "domainTokens"    # [Ljava/lang/String;
    .param p2, "excludeFilesRegex"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/app/backup/FullBackupDataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v27

    .local v27, "appInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    .local v5, "rootDir":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v11

    .local v11, "filesDir":Ljava/lang/String;
    const-string v2, "foo"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/backup/BackupAgent;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v15

    .local v15, "databaseDir":Ljava/lang/String;
    const-string v2, "foo"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/backup/BackupAgent;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v19

    .local v19, "sharedPrefsDir":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v29

    .local v29, "cacheDir":Ljava/lang/String;
    move-object/from16 v0, v27

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    if-eqz v2, :cond_7

    new-instance v2, Ljava/io/File;

    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v33

    .local v33, "libDir":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/backup/BackupAgent;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v23

    .local v23, "efLocationDir":Ljava/lang/String;
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .local v6, "filterSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .local v3, "packageName":Ljava/lang/String;
    if-eqz v33, :cond_0

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    .local v7, "excludeFiles":Ljava/util/regex/Pattern;
    if-eqz p2, :cond_1

    const/4 v2, 0x2

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v7

    :cond_1
    move-object/from16 v28, p1

    .local v28, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v32, v0

    .local v32, "len$":I
    const/16 v31, 0x0

    .local v31, "i$":I
    :goto_1
    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_8

    aget-object v30, v28, v31

    .local v30, "dToken":Ljava/lang/String;
    const-string v2, "r"

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v4, "r"

    move-object/from16 v2, p0

    move-object/from16 v8, p3

    invoke-virtual/range {v2 .. v8}, Landroid/app/backup/BackupAgent;->fullBackupFileTree(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashSet;Ljava/util/regex/Pattern;Landroid/app/backup/FullBackupDataOutput;)V

    :cond_2
    const-string v2, "f"

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v11}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const-string v10, "f"

    move-object/from16 v8, p0

    move-object v9, v3

    move-object v12, v6

    move-object v13, v7

    move-object/from16 v14, p3

    invoke-virtual/range {v8 .. v14}, Landroid/app/backup/BackupAgent;->fullBackupFileTree(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashSet;Ljava/util/regex/Pattern;Landroid/app/backup/FullBackupDataOutput;)V

    :cond_3
    const-string v2, "db"

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v6, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v15}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const-string v14, "db"

    move-object/from16 v12, p0

    move-object v13, v3

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v18, p3

    invoke-virtual/range {v12 .. v18}, Landroid/app/backup/BackupAgent;->fullBackupFileTree(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashSet;Ljava/util/regex/Pattern;Landroid/app/backup/FullBackupDataOutput;)V

    :cond_4
    const-string v2, "sp"

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v6, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const-string v18, "sp"

    move-object/from16 v16, p0

    move-object/from16 v17, v3

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, p3

    invoke-virtual/range {v16 .. v22}, Landroid/app/backup/BackupAgent;->fullBackupFileTree(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashSet;Ljava/util/regex/Pattern;Landroid/app/backup/FullBackupDataOutput;)V

    :cond_5
    const-string v2, "ef"

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/16 v4, 0x3e8

    if-eq v2, v4, :cond_6

    const-string v22, "ef"

    const/16 v24, 0x0

    move-object/from16 v20, p0

    move-object/from16 v21, v3

    move-object/from16 v25, v7

    move-object/from16 v26, p3

    invoke-virtual/range {v20 .. v26}, Landroid/app/backup/BackupAgent;->fullBackupFileTree(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashSet;Ljava/util/regex/Pattern;Landroid/app/backup/FullBackupDataOutput;)V

    :cond_6
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_1

    .end local v3    # "packageName":Ljava/lang/String;
    .end local v6    # "filterSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v7    # "excludeFiles":Ljava/util/regex/Pattern;
    .end local v23    # "efLocationDir":Ljava/lang/String;
    .end local v28    # "arr$":[Ljava/lang/String;
    .end local v30    # "dToken":Ljava/lang/String;
    .end local v31    # "i$":I
    .end local v32    # "len$":I
    .end local v33    # "libDir":Ljava/lang/String;
    :cond_7
    const/16 v33, 0x0

    goto/16 :goto_0

    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v6    # "filterSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v7    # "excludeFiles":Ljava/util/regex/Pattern;
    .restart local v23    # "efLocationDir":Ljava/lang/String;
    .restart local v28    # "arr$":[Ljava/lang/String;
    .restart local v31    # "i$":I
    .restart local v32    # "len$":I
    .restart local v33    # "libDir":Ljava/lang/String;
    :cond_8
    return-void
.end method

.method private shouldSkip(I)Z
    .locals 1
    .param p1, "mode"    # I

    .prologue
    invoke-static {p1}, Llibcore/io/OsConstants;->S_ISREG(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Llibcore/io/OsConstants;->S_ISDIR(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private waitForSharedPrefs()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/app/backup/BackupAgent;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/app/backup/BackupAgent;->mHandler:Landroid/os/Handler;

    :cond_0
    new-instance v0, Landroid/app/backup/BackupAgent$SharedPrefsSynchronizer;

    invoke-direct {v0, p0}, Landroid/app/backup/BackupAgent$SharedPrefsSynchronizer;-><init>(Landroid/app/backup/BackupAgent;)V

    .local v0, "s":Landroid/app/backup/BackupAgent$SharedPrefsSynchronizer;
    iget-object v1, p0, Landroid/app/backup/BackupAgent;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :try_start_0
    iget-object v1, v0, Landroid/app/backup/BackupAgent$SharedPrefsSynchronizer;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public attach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-virtual {p0, p1}, Landroid/app/backup/BackupAgent;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public final fullBackupFile(Ljava/io/File;Landroid/app/backup/FullBackupDataOutput;)V
    .locals 17
    .param p1, "file"    # Ljava/io/File;
    .param p2, "output"    # Landroid/app/backup/FullBackupDataOutput;

    .prologue
    const/4 v11, 0x0

    .local v11, "efDir":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .local v7, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v3, v7, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v15

    .local v15, "mainDir":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v13

    .local v13, "filesDir":Ljava/lang/String;
    const-string v1, "foo"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/app/backup/BackupAgent;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v9

    .local v9, "dbDir":Ljava/lang/String;
    const-string v1, "foo"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/app/backup/BackupAgent;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v16

    .local v16, "spDir":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v8

    .local v8, "cacheDir":Ljava/lang/String;
    iget-object v1, v7, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    if-nez v1, :cond_2

    const/4 v14, 0x0

    .local v14, "libDir":Ljava/lang/String;
    :goto_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v3, 0x3e8

    if-eq v1, v3, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/app/backup/BackupAgent;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    .local v12, "efLocation":Ljava/io/File;
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v11

    .end local v12    # "efLocation":Ljava/io/File;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .local v5, "filePath":Ljava/lang/String;
    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v5, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    const-string v1, "BackupAgent"

    const-string v3, "lib and cache files are not backed up"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5    # "filePath":Ljava/lang/String;
    .end local v8    # "cacheDir":Ljava/lang/String;
    .end local v9    # "dbDir":Ljava/lang/String;
    .end local v13    # "filesDir":Ljava/lang/String;
    .end local v14    # "libDir":Ljava/lang/String;
    .end local v15    # "mainDir":Ljava/lang/String;
    .end local v16    # "spDir":Ljava/lang/String;
    :goto_1
    return-void

    .restart local v8    # "cacheDir":Ljava/lang/String;
    .restart local v9    # "dbDir":Ljava/lang/String;
    .restart local v13    # "filesDir":Ljava/lang/String;
    .restart local v15    # "mainDir":Ljava/lang/String;
    .restart local v16    # "spDir":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v1, Ljava/io/File;

    iget-object v3, v7, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v14

    goto :goto_0

    .end local v8    # "cacheDir":Ljava/lang/String;
    .end local v9    # "dbDir":Ljava/lang/String;
    .end local v13    # "filesDir":Ljava/lang/String;
    .end local v15    # "mainDir":Ljava/lang/String;
    .end local v16    # "spDir":Ljava/lang/String;
    :catch_0
    move-exception v10

    .local v10, "e":Ljava/io/IOException;
    const-string v1, "BackupAgent"

    const-string v3, "Unable to obtain canonical paths"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v10    # "e":Ljava/io/IOException;
    .restart local v5    # "filePath":Ljava/lang/String;
    .restart local v8    # "cacheDir":Ljava/lang/String;
    .restart local v9    # "dbDir":Ljava/lang/String;
    .restart local v13    # "filesDir":Ljava/lang/String;
    .restart local v14    # "libDir":Ljava/lang/String;
    .restart local v15    # "mainDir":Ljava/lang/String;
    .restart local v16    # "spDir":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    .local v4, "rootpath":Ljava/lang/String;
    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v2, "db"

    .local v2, "domain":Ljava/lang/String;
    move-object v4, v9

    :goto_2
    const-string v1, "BackupAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "backupFile() of "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " => domain="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " rootpath="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/app/backup/FullBackupDataOutput;->getData()Landroid/app/backup/BackupDataOutput;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/BackupDataOutput;)I

    goto :goto_1

    .end local v2    # "domain":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v2, "sp"

    .restart local v2    # "domain":Ljava/lang/String;
    move-object/from16 v4, v16

    goto :goto_2

    .end local v2    # "domain":Ljava/lang/String;
    :cond_5
    invoke-virtual {v5, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v2, "f"

    .restart local v2    # "domain":Ljava/lang/String;
    move-object v4, v13

    goto :goto_2

    .end local v2    # "domain":Ljava/lang/String;
    :cond_6
    invoke-virtual {v5, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v2, "r"

    .restart local v2    # "domain":Ljava/lang/String;
    move-object v4, v15

    goto :goto_2

    .end local v2    # "domain":Ljava/lang/String;
    :cond_7
    if-eqz v11, :cond_8

    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v2, "ef"

    .restart local v2    # "domain":Ljava/lang/String;
    move-object v4, v11

    goto :goto_2

    .end local v2    # "domain":Ljava/lang/String;
    :cond_8
    const-string v1, "BackupAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " is in an unsupported location; skipping"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method protected final fullBackupFileTree(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashSet;Landroid/app/backup/FullBackupDataOutput;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;
    .param p3, "rootPath"    # Ljava/lang/String;
    .param p5, "output"    # Landroid/app/backup/FullBackupDataOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/backup/FullBackupDataOutput;",
            ")V"
        }
    .end annotation

    .prologue
    .local p4, "excludeFullPathDir":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/app/backup/BackupAgent;->fullBackupFileTree(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashSet;Ljava/util/regex/Pattern;Landroid/app/backup/FullBackupDataOutput;)V

    return-void
.end method

.method protected final fullBackupFileTree(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashSet;Ljava/util/regex/Pattern;Landroid/app/backup/FullBackupDataOutput;)V
    .locals 17
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;
    .param p3, "rootPath"    # Ljava/lang/String;
    .param p5, "excludeFiles"    # Ljava/util/regex/Pattern;
    .param p6, "output"    # Landroid/app/backup/FullBackupDataOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/regex/Pattern;",
            "Landroid/app/backup/FullBackupDataOutput;",
            ")V"
        }
    .end annotation

    .prologue
    .local p4, "excludeFullPathDir":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p3

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v14, "rootFile":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v15, Ljava/util/LinkedList;

    invoke-direct {v15}, Ljava/util/LinkedList;-><init>()V

    .local v15, "scanQueue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/io/File;>;"
    invoke-virtual {v15, v14}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    invoke-virtual {v15}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/io/File;

    .local v11, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v11}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    .local v5, "filePath":Ljava/lang/String;
    if-eqz p4, :cond_1

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    if-eqz p5, :cond_2

    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v1, v5}, Llibcore/io/Os;->lstat(Ljava/lang/String;)Llibcore/io/StructStat;

    move-result-object v16

    .local v16, "stat":Llibcore/io/StructStat;
    move-object/from16 v0, v16

    iget v1, v0, Llibcore/io/StructStat;->st_mode:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/app/backup/BackupAgent;->shouldSkip(I)Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, v16

    iget v1, v0, Llibcore/io/StructStat;->st_mode:I

    invoke-static {v1}, Llibcore/io/OsConstants;->S_ISDIR(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .local v8, "contents":[Ljava/io/File;
    if-eqz v8, :cond_3

    move-object v7, v8

    .local v7, "arr$":[Ljava/io/File;
    array-length v13, v7

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_1
    if-ge v12, v13, :cond_3

    aget-object v10, v7, v12

    .local v10, "entry":Ljava/io/File;
    const/4 v1, 0x0

    invoke-virtual {v15, v1, v10}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .end local v5    # "filePath":Ljava/lang/String;
    .end local v7    # "arr$":[Ljava/io/File;
    .end local v8    # "contents":[Ljava/io/File;
    .end local v10    # "entry":Ljava/io/File;
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    .end local v16    # "stat":Llibcore/io/StructStat;
    :catch_0
    move-exception v9

    .local v9, "e":Ljava/io/IOException;
    goto :goto_0

    .end local v9    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v9

    .local v9, "e":Llibcore/io/ErrnoException;
    goto :goto_0

    .end local v9    # "e":Llibcore/io/ErrnoException;
    .restart local v5    # "filePath":Ljava/lang/String;
    .restart local v16    # "stat":Llibcore/io/StructStat;
    :cond_3
    const/4 v3, 0x0

    invoke-virtual/range {p6 .. p6}, Landroid/app/backup/FullBackupDataOutput;->getData()Landroid/app/backup/BackupDataOutput;

    move-result-object v6

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    invoke-static/range {v1 .. v6}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/BackupDataOutput;)I

    goto :goto_0

    .end local v5    # "filePath":Ljava/lang/String;
    .end local v11    # "file":Ljava/io/File;
    .end local v15    # "scanQueue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/io/File;>;"
    .end local v16    # "stat":Llibcore/io/StructStat;
    :cond_4
    return-void
.end method

.method public abstract onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final onBind()Landroid/os/IBinder;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/backup/BackupAgent;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    return-void
.end method

.method public onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    .locals 28
    .param p1, "data"    # Landroid/app/backup/FullBackupDataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v24

    .local v24, "appInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v1, Ljava/io/File;

    move-object/from16 v0, v24

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    .local v4, "rootDir":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v9

    .local v9, "filesDir":Ljava/lang/String;
    const-string v1, "foo"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/app/backup/BackupAgent;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v13

    .local v13, "databaseDir":Ljava/lang/String;
    const-string v1, "foo"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/app/backup/BackupAgent;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v17

    .local v17, "sharedPrefsDir":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v25

    .local v25, "cacheDir":Ljava/lang/String;
    move-object/from16 v0, v24

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/io/File;

    move-object/from16 v0, v24

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v27

    .local v27, "libDir":Ljava/lang/String;
    :goto_0
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .local v5, "filterSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .local v2, "packageName":Ljava/lang/String;
    if-eqz v27, :cond_0

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v3, "r"

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v1 .. v6}, Landroid/app/backup/BackupAgent;->fullBackupFileTree(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashSet;Landroid/app/backup/FullBackupDataOutput;)V

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v9}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const-string v8, "f"

    move-object/from16 v6, p0

    move-object v7, v2

    move-object v10, v5

    move-object/from16 v11, p1

    invoke-virtual/range {v6 .. v11}, Landroid/app/backup/BackupAgent;->fullBackupFileTree(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashSet;Landroid/app/backup/FullBackupDataOutput;)V

    invoke-virtual {v5, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v13}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const-string v12, "db"

    move-object/from16 v10, p0

    move-object v11, v2

    move-object v14, v5

    move-object/from16 v15, p1

    invoke-virtual/range {v10 .. v15}, Landroid/app/backup/BackupAgent;->fullBackupFileTree(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashSet;Landroid/app/backup/FullBackupDataOutput;)V

    invoke-virtual {v5, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const-string v16, "sp"

    move-object/from16 v14, p0

    move-object v15, v2

    move-object/from16 v18, v5

    move-object/from16 v19, p1

    invoke-virtual/range {v14 .. v19}, Landroid/app/backup/BackupAgent;->fullBackupFileTree(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashSet;Landroid/app/backup/FullBackupDataOutput;)V

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v3, 0x3e8

    if-eq v1, v3, :cond_1

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/app/backup/BackupAgent;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v26

    .local v26, "efLocation":Ljava/io/File;
    if-eqz v26, :cond_1

    const-string v20, "ef"

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v18, p0

    move-object/from16 v19, v2

    move-object/from16 v23, p1

    invoke-virtual/range {v18 .. v23}, Landroid/app/backup/BackupAgent;->fullBackupFileTree(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashSet;Landroid/app/backup/FullBackupDataOutput;)V

    .end local v26    # "efLocation":Ljava/io/File;
    :cond_1
    return-void

    .end local v2    # "packageName":Ljava/lang/String;
    .end local v5    # "filterSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v27    # "libDir":Ljava/lang/String;
    :cond_2
    const/16 v27, 0x0

    goto/16 :goto_0
.end method

.method public abstract onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected onRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 18
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "size"    # J
    .param p4, "type"    # I
    .param p5, "domain"    # Ljava/lang/String;
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "mode"    # J
    .param p9, "mtime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v15, 0x0

    .local v15, "basePath":Ljava/lang/String;
    const-string v1, "f"

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v15

    :cond_0
    :goto_0
    if-eqz v15, :cond_7

    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p6

    invoke-direct {v5, v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v5, "outFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v17

    .local v17, "outPath":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move/from16 v6, p4

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    invoke-virtual/range {v1 .. v10}, Landroid/app/backup/BackupAgent;->onRestoreFile(Landroid/os/ParcelFileDescriptor;JLjava/io/File;IJJ)V

    .end local v5    # "outFile":Ljava/io/File;
    .end local v17    # "outPath":Ljava/lang/String;
    :goto_1
    return-void

    :cond_1
    const-string v1, "db"

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "foo"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/app/backup/BackupAgent;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    :cond_2
    const-string v1, "r"

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    :cond_3
    const-string v1, "sp"

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "foo"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/app/backup/BackupAgent;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_0

    :cond_4
    const-string v1, "c"

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_0

    :cond_5
    const-string v1, "ef"

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/app/backup/BackupAgent;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v16

    .local v16, "efLocation":Ljava/io/File;
    if-eqz v16, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/app/backup/BackupAgent;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v15

    const-wide/16 p7, -0x1

    goto/16 :goto_0

    .end local v16    # "efLocation":Ljava/io/File;
    :cond_6
    const-string v1, "BackupAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized domain "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    const/4 v14, 0x0

    move-object/from16 v6, p1

    move-wide/from16 v7, p2

    move/from16 v9, p4

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    invoke-static/range {v6 .. v14}, Landroid/app/backup/FullBackup;->restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V

    goto/16 :goto_1
.end method

.method public onRestoreFile(Landroid/os/ParcelFileDescriptor;JLjava/io/File;IJJ)V
    .locals 9
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "size"    # J
    .param p4, "destination"    # Ljava/io/File;
    .param p5, "type"    # I
    .param p6, "mode"    # J
    .param p8, "mtime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    move-object v0, p1

    move-wide v1, p2

    move v3, p5

    move-wide v4, p6

    move-wide/from16 v6, p8

    move-object v8, p4

    invoke-static/range {v0 .. v8}, Landroid/app/backup/FullBackup;->restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V

    return-void
.end method
