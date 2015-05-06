.class public Landroid/app/ResourcesManager;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# static fields
.field static final DEBUG_CACHE:Z = false

.field static final DEBUG_STATS:Z = true

.field static final TAG:Ljava/lang/String; = "ResourcesManager"

.field static sPackageManager:Landroid/content/pm/IPackageManager;

.field private static sResourcesManager:Landroid/app/ResourcesManager;


# instance fields
.field final mActiveResources:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/res/ResourcesKey;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/Resources;",
            ">;>;"
        }
    .end annotation
.end field

.field final mDefaultDisplayMetrics:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/DisplayAdjustments;",
            "Landroid/util/DisplayMetrics;",
            ">;"
        }
    .end annotation
.end field

.field mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

.field mResConfiguration:Landroid/content/res/Configuration;

.field final mTmpConfig:Landroid/content/res/Configuration;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mDefaultDisplayMetrics:Landroid/util/ArrayMap;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mTmpConfig:Landroid/content/res/Configuration;

    return-void
.end method

.method private attachCommonAssets(Landroid/content/res/AssetManager;Landroid/content/res/ThemeConfig;)Z
    .locals 15
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "theme"    # Landroid/content/res/ThemeConfig;

    .prologue
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/AssetManager;->getBasePackageCount()I

    move-result v3

    .local v3, "count":I
    const/4 v11, 0x1

    if-le v3, v11, :cond_1

    const/4 v11, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/res/AssetManager;->getBasePackageName(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "basePackageName":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x0

    .local v4, "piTheme":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-static {}, Landroid/app/ResourcesManager;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/res/ThemeConfig;->getOverlayPkgNameForApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v14

    invoke-interface {v11, v12, v13, v14}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_0

    iget-object v11, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v11, :cond_0

    iget-boolean v11, v4, Landroid/content/pm/PackageInfo;->isLegacyThemeApk:Z

    if-eqz v11, :cond_3

    :cond_0
    const/4 v11, 0x0

    .end local v1    # "basePackageName":Ljava/lang/String;
    .end local v4    # "piTheme":Landroid/content/pm/PackageInfo;
    :goto_2
    return v11

    :cond_1
    const/4 v11, 0x1

    if-ne v3, v11, :cond_2

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/res/AssetManager;->getBasePackageName(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "basePackageName":Ljava/lang/String;
    goto :goto_0

    .end local v1    # "basePackageName":Ljava/lang/String;
    :cond_2
    const/4 v11, 0x0

    goto :goto_2

    .restart local v1    # "basePackageName":Ljava/lang/String;
    .restart local v4    # "piTheme":Landroid/content/pm/PackageInfo;
    :cond_3
    iget-object v11, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v11}, Landroid/content/pm/ThemeUtils;->getCommonPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, "themePackageName":Ljava/lang/String;
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_4

    iget-object v11, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v11, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .local v10, "themePath":Ljava/lang/String;
    const-string v5, "assets/overlays/common/"

    .local v5, "prefixPath":Ljava/lang/String;
    const-string v11, "common"

    invoke-static {v11, v4}, Landroid/content/pm/ThemeUtils;->getResDir(Ljava/lang/String;Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v7

    .local v7, "resCachePath":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/resources.arsc"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .local v8, "resTablePath":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/resources.apk"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, "resApkPath":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v8, v6, v5}, Landroid/content/res/AssetManager;->addCommonOverlayPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .local v2, "cookie":I
    if-eqz v2, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->setCommonResCookie(I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/res/AssetManager;->setCommonResPackageName(Ljava/lang/String;)V

    .end local v2    # "cookie":I
    .end local v5    # "prefixPath":Ljava/lang/String;
    .end local v6    # "resApkPath":Ljava/lang/String;
    .end local v7    # "resCachePath":Ljava/lang/String;
    .end local v8    # "resTablePath":Ljava/lang/String;
    .end local v10    # "themePath":Ljava/lang/String;
    :cond_4
    const/4 v11, 0x1

    goto :goto_2

    .end local v9    # "themePackageName":Ljava/lang/String;
    :catch_0
    move-exception v11

    goto :goto_1
.end method

.method private attachIconAssets(Landroid/content/res/AssetManager;Landroid/content/res/ThemeConfig;)Z
    .locals 13
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "theme"    # Landroid/content/res/ThemeConfig;

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x0

    .local v9, "piIcon":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-static {}, Landroid/app/ResourcesManager;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/res/ThemeConfig;->getIconPackPkgName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v12

    invoke-interface {v5, v10, v11, v12}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    :goto_0
    if-eqz v9, :cond_0

    iget-object v5, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v5, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/content/res/ThemeConfig;->getIconPackPkgName()Ljava/lang/String;

    move-result-object v8

    .local v8, "iconPkg":Ljava/lang/String;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .local v1, "themeIconPath":Ljava/lang/String;
    const-string v4, "assets/icons/"

    .local v4, "prefixPath":Ljava/lang/String;
    invoke-static {v8}, Landroid/content/pm/ThemeUtils;->getIconPackDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "iconDir":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "/resources.arsc"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "resTablePath":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "/resources.apk"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "resApkPath":Ljava/lang/String;
    iget-boolean v0, v9, Landroid/content/pm/PackageInfo;->isLegacyIconPackApk:Z

    if-eqz v0, :cond_2

    const-string v4, ""

    const-string v3, ""

    const-string v2, ""

    :cond_2
    const/16 v5, 0x62

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/res/AssetManager;->addIconPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    .local v6, "cookie":I
    if-eqz v6, :cond_3

    invoke-virtual {p1, v6}, Landroid/content/res/AssetManager;->setIconPackCookie(I)V

    invoke-virtual {p1, v8}, Landroid/content/res/AssetManager;->setIconPackageName(Ljava/lang/String;)V

    .end local v1    # "themeIconPath":Ljava/lang/String;
    .end local v2    # "resTablePath":Ljava/lang/String;
    .end local v3    # "resApkPath":Ljava/lang/String;
    .end local v4    # "prefixPath":Ljava/lang/String;
    .end local v6    # "cookie":I
    .end local v7    # "iconDir":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    .end local v8    # "iconPkg":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private attachThemeAssets(Landroid/content/res/AssetManager;Landroid/content/res/ThemeConfig;)Z
    .locals 21
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "theme"    # Landroid/content/res/ThemeConfig;

    .prologue
    const/4 v14, 0x0

    .local v14, "piTheme":Landroid/content/pm/PackageInfo;
    const/4 v13, 0x0

    .local v13, "piTarget":Landroid/content/pm/PackageInfo;
    const/4 v12, 0x0

    .local v12, "piAndroid":Landroid/content/pm/PackageInfo;
    const/4 v9, 0x0

    .local v9, "basePackageName":Ljava/lang/String;
    const/16 v16, 0x0

    .local v16, "resourcePackageName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/AssetManager;->getBasePackageCount()I

    move-result v11

    .local v11, "count":I
    const/4 v3, 0x1

    if-le v11, v3, :cond_2

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->getBasePackageName(I)Ljava/lang/String;

    move-result-object v9

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->getBaseResourcePackageName(I)Ljava/lang/String;

    move-result-object v16

    :goto_0
    :try_start_0
    invoke-static {}, Landroid/app/ResourcesManager;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/content/res/ThemeConfig;->getOverlayPkgNameForApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v3, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v14

    invoke-static {}, Landroid/app/ResourcesManager;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/16 v18, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v3, v9, v0, v1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v13

    if-nez v13, :cond_0

    if-eqz v16, :cond_0

    invoke-static {}, Landroid/app/ResourcesManager;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/16 v18, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v19

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v3, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v13

    :cond_0
    invoke-static {}, Landroid/app/ResourcesManager;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const-string v18, "android"

    const/16 v19, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v3, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    :goto_1
    if-eqz v14, :cond_1

    iget-object v3, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_1

    if-eqz v13, :cond_1

    iget-object v3, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_1

    if-eqz v12, :cond_1

    iget-object v3, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_1

    iget-object v3, v14, Landroid/content/pm/PackageInfo;->mOverlayTargets:Ljava/util/ArrayList;

    if-nez v3, :cond_4

    :cond_1
    const/4 v3, 0x0

    :goto_2
    return v3

    :cond_2
    const/4 v3, 0x1

    if-ne v11, v3, :cond_3

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->getBasePackageName(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    move-object/from16 v17, v9

    .local v17, "themePackageName":Ljava/lang/String;
    iget-object v3, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .local v4, "themePath":Ljava/lang/String;
    iget-boolean v3, v13, Landroid/content/pm/PackageInfo;->isThemeApk:Z

    if-nez v3, :cond_5

    iget-object v3, v14, Landroid/content/pm/PackageInfo;->mOverlayTargets:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .local v7, "targetPackagePath":Ljava/lang/String;
    iget-boolean v3, v14, Landroid/content/pm/PackageInfo;->isLegacyThemeApk:Z

    if-eqz v3, :cond_7

    const-string v8, ""

    .local v8, "prefixPath":Ljava/lang/String;
    :goto_3
    invoke-static {v9, v14}, Landroid/content/pm/ThemeUtils;->getResDir(Ljava/lang/String;Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v15

    .local v15, "resCachePath":Ljava/lang/String;
    iget-boolean v3, v14, Landroid/content/pm/PackageInfo;->isLegacyThemeApk:Z

    if-eqz v3, :cond_8

    const-string v5, ""

    .local v5, "resTablePath":Ljava/lang/String;
    :goto_4
    iget-boolean v3, v14, Landroid/content/pm/PackageInfo;->isLegacyThemeApk:Z

    if-eqz v3, :cond_9

    const-string v6, ""

    .local v6, "resApkPath":Ljava/lang/String;
    :goto_5
    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/res/AssetManager;->addOverlayPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .local v10, "cookie":I
    if-eqz v10, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/res/AssetManager;->setThemePackageName(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/res/AssetManager;->addThemeCookie(I)V

    .end local v5    # "resTablePath":Ljava/lang/String;
    .end local v6    # "resApkPath":Ljava/lang/String;
    .end local v7    # "targetPackagePath":Ljava/lang/String;
    .end local v8    # "prefixPath":Ljava/lang/String;
    .end local v10    # "cookie":I
    .end local v15    # "resCachePath":Ljava/lang/String;
    :cond_5
    iget-boolean v3, v13, Landroid/content/pm/PackageInfo;->isThemeApk:Z

    if-nez v3, :cond_6

    iget-object v3, v14, Landroid/content/pm/PackageInfo;->mOverlayTargets:Ljava/util/ArrayList;

    const-string v18, "android"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v14}, Landroid/content/pm/ThemeUtils;->getResDir(Ljava/lang/String;Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "resCachePath":Ljava/lang/String;
    iget-boolean v3, v14, Landroid/content/pm/PackageInfo;->isLegacyThemeApk:Z

    if-eqz v3, :cond_a

    const-string v8, ""

    .restart local v8    # "prefixPath":Ljava/lang/String;
    :goto_6
    iget-object v3, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .restart local v7    # "targetPackagePath":Ljava/lang/String;
    iget-boolean v3, v14, Landroid/content/pm/PackageInfo;->isLegacyThemeApk:Z

    if-eqz v3, :cond_b

    const-string v5, ""

    .restart local v5    # "resTablePath":Ljava/lang/String;
    :goto_7
    iget-boolean v3, v14, Landroid/content/pm/PackageInfo;->isLegacyThemeApk:Z

    if-eqz v3, :cond_c

    const-string v6, ""

    .restart local v6    # "resApkPath":Ljava/lang/String;
    :goto_8
    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/res/AssetManager;->addOverlayPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .restart local v10    # "cookie":I
    if-eqz v10, :cond_6

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->setThemePackageName(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/res/AssetManager;->addThemeCookie(I)V

    .end local v5    # "resTablePath":Ljava/lang/String;
    .end local v6    # "resApkPath":Ljava/lang/String;
    .end local v7    # "targetPackagePath":Ljava/lang/String;
    .end local v8    # "prefixPath":Ljava/lang/String;
    .end local v10    # "cookie":I
    .end local v15    # "resCachePath":Ljava/lang/String;
    :cond_6
    const/4 v3, 0x1

    goto/16 :goto_2

    .restart local v7    # "targetPackagePath":Ljava/lang/String;
    :cond_7
    invoke-static {v9}, Landroid/content/pm/ThemeUtils;->getOverlayPathToTarget(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .restart local v8    # "prefixPath":Ljava/lang/String;
    .restart local v15    # "resCachePath":Ljava/lang/String;
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v18, "/resources.arsc"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .restart local v5    # "resTablePath":Ljava/lang/String;
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v18, "/resources.apk"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_5

    .end local v5    # "resTablePath":Ljava/lang/String;
    .end local v7    # "targetPackagePath":Ljava/lang/String;
    .end local v8    # "prefixPath":Ljava/lang/String;
    :cond_a
    iget-object v3, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/content/pm/ThemeUtils;->getOverlayPathToTarget(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    .restart local v7    # "targetPackagePath":Ljava/lang/String;
    .restart local v8    # "prefixPath":Ljava/lang/String;
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v18, "/resources.arsc"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    .restart local v5    # "resTablePath":Ljava/lang/String;
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v18, "/resources.apk"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    .end local v4    # "themePath":Ljava/lang/String;
    .end local v5    # "resTablePath":Ljava/lang/String;
    .end local v7    # "targetPackagePath":Ljava/lang/String;
    .end local v8    # "prefixPath":Ljava/lang/String;
    .end local v15    # "resCachePath":Ljava/lang/String;
    .end local v17    # "themePackageName":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto/16 :goto_1
.end method

.method private detachThemeAssets(Landroid/content/res/AssetManager;)V
    .locals 8
    .param p1, "assets"    # Landroid/content/res/AssetManager;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/content/res/AssetManager;->getThemePackageName()Ljava/lang/String;

    move-result-object v4

    .local v4, "themePackageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/res/AssetManager;->getIconPackageName()Ljava/lang/String;

    move-result-object v2

    .local v2, "iconPackageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/res/AssetManager;->getCommonResPackageName()Ljava/lang/String;

    move-result-object v0

    .local v0, "commonResPackageName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Landroid/content/res/AssetManager;->getIconPackCookie()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {p1}, Landroid/content/res/AssetManager;->getIconPackCookie()I

    move-result v5

    invoke-virtual {p1, v2, v5}, Landroid/content/res/AssetManager;->removeOverlayPath(Ljava/lang/String;I)Z

    invoke-virtual {p1, v6}, Landroid/content/res/AssetManager;->setIconPackageName(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Landroid/content/res/AssetManager;->setIconPackCookie(I)V

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p1}, Landroid/content/res/AssetManager;->getCommonResCookie()I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {p1}, Landroid/content/res/AssetManager;->getCommonResCookie()I

    move-result v5

    invoke-virtual {p1, v0, v5}, Landroid/content/res/AssetManager;->removeOverlayPath(Ljava/lang/String;I)Z

    invoke-virtual {p1, v6}, Landroid/content/res/AssetManager;->setCommonResPackageName(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Landroid/content/res/AssetManager;->setCommonResCookie(I)V

    :cond_1
    invoke-virtual {p1}, Landroid/content/res/AssetManager;->getThemeCookies()Ljava/util/ArrayList;

    move-result-object v3

    .local v3, "themeCookies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/content/res/AssetManager;->removeOverlayPath(Ljava/lang/String;I)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/AssetManager;->getThemeCookies()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1, v6}, Landroid/content/res/AssetManager;->setThemePackageName(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Landroid/app/ResourcesManager;
    .locals 2

    .prologue
    const-class v1, Landroid/app/ResourcesManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/ResourcesManager;

    invoke-direct {v0}, Landroid/app/ResourcesManager;-><init>()V

    sput-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    :cond_0
    sget-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getPackageManager()Landroid/content/pm/IPackageManager;
    .locals 2

    .prologue
    sget-object v1, Landroid/app/ResourcesManager;->sPackageManager:Landroid/content/pm/IPackageManager;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/app/ResourcesManager;->sPackageManager:Landroid/content/pm/IPackageManager;

    .local v0, "b":Landroid/os/IBinder;
    :goto_0
    return-object v1

    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    sput-object v1, Landroid/app/ResourcesManager;->sPackageManager:Landroid/content/pm/IPackageManager;

    sget-object v1, Landroid/app/ResourcesManager;->sPackageManager:Landroid/content/pm/IPackageManager;

    goto :goto_0
.end method

.method private setActivityIcons(Landroid/content/res/Resources;)V
    .locals 17
    .param p1, "r"    # Landroid/content/res/Resources;

    .prologue
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    .local v8, "iconResources":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/pm/PackageItemInfo;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/AssetManager;->getAppName()Ljava/lang/String;

    move-result-object v11

    .local v11, "pkgName":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "pkgInfo":Landroid/content/pm/PackageInfo;
    const/4 v2, 0x0

    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-static {}, Landroid/app/ResourcesManager;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v14, v11, v15, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget-object v13, v14, Landroid/content/res/Configuration;->themeConfig:Landroid/content/res/ThemeConfig;

    .local v13, "themeConfig":Landroid/content/res/ThemeConfig;
    if-eqz v11, :cond_0

    if-eqz v13, :cond_0

    invoke-virtual {v13}, Landroid/content/res/ThemeConfig;->getIconPackPkgName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .end local v13    # "themeConfig":Landroid/content/res/ThemeConfig;
    :goto_0
    return-void

    :catch_0
    move-exception v5

    .local v5, "e1":Landroid/os/RemoteException;
    const-string v14, "ResourcesManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unable to get pkg "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v5    # "e1":Landroid/os/RemoteException;
    .restart local v13    # "themeConfig":Landroid/content/res/ThemeConfig;
    :cond_0
    if-eqz v10, :cond_2

    iget-object v14, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v14, :cond_2

    iget-object v2, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v2, Landroid/content/pm/ApplicationInfo;->themedIcon:I

    if-nez v14, :cond_1

    iget v14, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v8, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_2

    :cond_1
    iget v14, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v8, v14, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    if-eqz v10, :cond_7

    iget-object v14, v10, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v14, :cond_7

    iget-object v3, v10, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .local v3, "arr$":[Landroid/content/pm/ActivityInfo;
    array-length v9, v3

    .local v9, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v9, :cond_7

    aget-object v1, v3, v6

    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    iget v14, v1, Landroid/content/pm/ActivityInfo;->icon:I

    if-eqz v14, :cond_5

    iget v14, v1, Landroid/content/pm/ActivityInfo;->themedIcon:I

    if-nez v14, :cond_3

    iget v14, v1, Landroid/content/pm/ActivityInfo;->icon:I

    invoke-virtual {v8, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_5

    :cond_3
    iget v14, v1, Landroid/content/pm/ActivityInfo;->icon:I

    invoke-virtual {v8, v14, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    if-eqz v2, :cond_4

    iget v14, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v14, :cond_4

    iget v14, v1, Landroid/content/pm/ActivityInfo;->themedIcon:I

    if-nez v14, :cond_6

    iget v14, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v8, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_4

    :cond_6
    iget v14, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v8, v14, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .end local v1    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v3    # "arr$":[Landroid/content/pm/ActivityInfo;
    .end local v6    # "i$":I
    .end local v9    # "len$":I
    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->setIconResources(Landroid/util/SparseArray;)V

    invoke-static {}, Landroid/app/ResourcesManager;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v12

    .local v12, "pm":Landroid/content/pm/IPackageManager;
    :try_start_1
    invoke-interface {v12}, Landroid/content/pm/IPackageManager;->getComposedIconInfo()Landroid/app/ComposedIconInfo;

    move-result-object v7

    .local v7, "iconInfo":Landroid/app/ComposedIconInfo;
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->setComposedIconInfo(Landroid/app/ComposedIconInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .end local v7    # "iconInfo":Landroid/app/ComposedIconInfo;
    :catch_1
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    const-string v14, "ResourcesManager"

    const-string v15, "Failed to retrieve ComposedIconInfo"

    invoke-static {v14, v15, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public applyCompatConfiguration(ILandroid/content/res/Configuration;)Z
    .locals 1
    .param p1, "displayDensity"    # I
    .param p2, "compatConfiguration"    # Landroid/content/res/Configuration;

    .prologue
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)I
    .locals 13
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    iget-object v12, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    if-nez v12, :cond_0

    new-instance v12, Landroid/content/res/Configuration;

    invoke-direct {v12}, Landroid/content/res/Configuration;-><init>()V

    iput-object v12, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    :cond_0
    iget-object v12, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v12, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v12

    if-nez v12, :cond_2

    if-nez p2, :cond_2

    const/4 v1, 0x0

    :cond_1
    return v1

    :cond_2
    iget-object v12, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v12, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v1

    .local v1, "changes":I
    invoke-virtual {p0}, Landroid/app/ResourcesManager;->flushDisplayMetricsLocked()V

    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;

    move-result-object v2

    .local v2, "defaultDisplayMetrics":Landroid/util/DisplayMetrics;
    if-eqz p2, :cond_4

    iget-object v12, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v12, :cond_3

    iget-object v12, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v12, p2}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    :cond_3
    iput-object p2, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    or-int/lit16 v1, v1, 0xd00

    :cond_4
    invoke-static {v1, p1}, Landroid/app/MiuiThemeHelper;->handleExtraConfigurationChanges(ILandroid/content/res/Configuration;)V

    iget-object v12, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v12, :cond_5

    iget-object v12, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v12}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    :cond_5
    invoke-static {p1, v2, p2}, Landroid/content/res/Resources;->updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    invoke-static {}, Landroid/app/ApplicationPackageManager;->configurationChanged()V

    const/4 v11, 0x0

    .local v11, "tmpConfig":Landroid/content/res/Configuration;
    iget-object v12, p0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    add-int/lit8 v6, v12, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_1

    iget-object v12, p0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v12, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/res/ResourcesKey;

    .local v8, "key":Landroid/content/res/ResourcesKey;
    iget-object v12, p0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v12, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/ref/WeakReference;

    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/res/Resources;

    .local v9, "r":Landroid/content/res/Resources;
    if-eqz v9, :cond_f

    iget v3, v8, Landroid/content/res/ResourcesKey;->mDisplayId:I

    .local v3, "displayId":I
    if-nez v3, :cond_c

    const/4 v7, 0x1

    .local v7, "isDefaultDisplay":Z
    :goto_1
    move-object v4, v2

    .local v4, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v8}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v5

    .local v5, "hasOverrideConfiguration":Z
    const v12, 0x8000

    and-int/2addr v12, v1

    if-eqz v12, :cond_d

    const/4 v10, 0x1

    .local v10, "themeChanged":Z
    :goto_2
    if-eqz v10, :cond_6

    invoke-virtual {v9}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .local v0, "am":Landroid/content/res/AssetManager;
    invoke-virtual {v0}, Landroid/content/res/AssetManager;->hasThemeSupport()Z

    move-result v12

    if-eqz v12, :cond_6

    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->setIconResources(Landroid/util/SparseArray;)V

    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->setComposedIconInfo(Landroid/app/ComposedIconInfo;)V

    invoke-direct {p0, v0}, Landroid/app/ResourcesManager;->detachThemeAssets(Landroid/content/res/AssetManager;)V

    iget-object v12, p1, Landroid/content/res/Configuration;->themeConfig:Landroid/content/res/ThemeConfig;

    if-eqz v12, :cond_6

    iget-object v12, p1, Landroid/content/res/Configuration;->themeConfig:Landroid/content/res/ThemeConfig;

    invoke-direct {p0, v0, v12}, Landroid/app/ResourcesManager;->attachThemeAssets(Landroid/content/res/AssetManager;Landroid/content/res/ThemeConfig;)Z

    iget-object v12, p1, Landroid/content/res/Configuration;->themeConfig:Landroid/content/res/ThemeConfig;

    invoke-direct {p0, v0, v12}, Landroid/app/ResourcesManager;->attachCommonAssets(Landroid/content/res/AssetManager;Landroid/content/res/ThemeConfig;)Z

    iget-object v12, p1, Landroid/content/res/Configuration;->themeConfig:Landroid/content/res/ThemeConfig;

    invoke-direct {p0, v0, v12}, Landroid/app/ResourcesManager;->attachIconAssets(Landroid/content/res/AssetManager;Landroid/content/res/ThemeConfig;)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-direct {p0, v9}, Landroid/app/ResourcesManager;->setActivityIcons(Landroid/content/res/Resources;)V

    .end local v0    # "am":Landroid/content/res/AssetManager;
    :cond_6
    if-eqz v7, :cond_7

    if-eqz v5, :cond_e

    :cond_7
    if-nez v11, :cond_8

    new-instance v11, Landroid/content/res/Configuration;

    .end local v11    # "tmpConfig":Landroid/content/res/Configuration;
    invoke-direct {v11}, Landroid/content/res/Configuration;-><init>()V

    .restart local v11    # "tmpConfig":Landroid/content/res/Configuration;
    :cond_8
    invoke-virtual {v11, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    if-nez v7, :cond_9

    invoke-virtual {p0, v3}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-virtual {p0, v4, v11}, Landroid/app/ResourcesManager;->applyNonDefaultDisplayMetricsToConfigurationLocked(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    :cond_9
    if-eqz v5, :cond_a

    iget-object v12, v8, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v11, v12}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    :cond_a
    invoke-virtual {v9, v11, v4, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    :goto_3
    if-eqz v10, :cond_b

    invoke-virtual {v9}, Landroid/content/res/Resources;->updateStringCache()V

    .end local v3    # "displayId":I
    .end local v4    # "dm":Landroid/util/DisplayMetrics;
    .end local v5    # "hasOverrideConfiguration":Z
    .end local v7    # "isDefaultDisplay":Z
    .end local v10    # "themeChanged":Z
    :cond_b
    :goto_4
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_0

    .restart local v3    # "displayId":I
    :cond_c
    const/4 v7, 0x0

    goto :goto_1

    .restart local v4    # "dm":Landroid/util/DisplayMetrics;
    .restart local v5    # "hasOverrideConfiguration":Z
    .restart local v7    # "isDefaultDisplay":Z
    :cond_d
    const/4 v10, 0x0

    goto :goto_2

    .restart local v10    # "themeChanged":Z
    :cond_e
    invoke-virtual {v9, p1, v4, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    goto :goto_3

    .end local v3    # "displayId":I
    .end local v4    # "dm":Landroid/util/DisplayMetrics;
    .end local v5    # "hasOverrideConfiguration":Z
    .end local v7    # "isDefaultDisplay":Z
    .end local v10    # "themeChanged":Z
    :cond_f
    iget-object v12, p0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v12, v6}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_4
.end method

.method final applyNonDefaultDisplayMetricsToConfigurationLocked(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "dm"    # Landroid/util/DisplayMetrics;
    .param p2, "config"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x1

    iput v3, p2, Landroid/content/res/Configuration;->touchscreen:I

    iget v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p2, Landroid/content/res/Configuration;->densityDpi:I

    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget v2, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v1}, Landroid/content/res/Configuration;->resetScreenLayout(I)I

    move-result v0

    .local v0, "sl":I
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v1, v2, :cond_0

    const/4 v1, 0x2

    iput v1, p2, Landroid/content/res/Configuration;->orientation:I

    iget v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v0, v1, v2}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v1

    iput v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    :goto_0
    iget v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, p2, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iget v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v1, p2, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iget v1, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v1, p2, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    return-void

    :cond_0
    iput v3, p2, Landroid/content/res/Configuration;->orientation:I

    iget v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v0, v1, v2}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v1

    iput v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    goto :goto_0
.end method

.method public flushDisplayMetricsLocked()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/ResourcesManager;->mDefaultDisplayMetrics:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    sget-object v0, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    invoke-virtual {p0, p1, v0}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayMetricsLocked(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;
    .locals 6
    .param p1, "displayId"    # I
    .param p2, "daj"    # Landroid/view/DisplayAdjustments;

    .prologue
    if-nez p1, :cond_0

    const/4 v4, 0x1

    .local v4, "isDefaultDisplay":Z
    :goto_0
    if-eqz v4, :cond_1

    iget-object v5, p0, Landroid/app/ResourcesManager;->mDefaultDisplayMetrics:Landroid/util/ArrayMap;

    invoke-virtual {v5, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/DisplayMetrics;

    move-object v2, v5

    .local v2, "dm":Landroid/util/DisplayMetrics;
    :goto_1
    if-eqz v2, :cond_2

    move-object v3, v2

    .end local v2    # "dm":Landroid/util/DisplayMetrics;
    .local v3, "dm":Ljava/lang/Object;
    :goto_2
    return-object v3

    .end local v3    # "dm":Ljava/lang/Object;
    .end local v4    # "isDefaultDisplay":Z
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .restart local v4    # "isDefaultDisplay":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .restart local v2    # "dm":Landroid/util/DisplayMetrics;
    :cond_2
    new-instance v2, Landroid/util/DisplayMetrics;

    .end local v2    # "dm":Landroid/util/DisplayMetrics;
    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .restart local v2    # "dm":Landroid/util/DisplayMetrics;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    .local v1, "displayManager":Landroid/hardware/display/DisplayManagerGlobal;
    if-nez v1, :cond_3

    invoke-virtual {v2}, Landroid/util/DisplayMetrics;->setToDefaults()V

    move-object v3, v2

    .restart local v3    # "dm":Ljava/lang/Object;
    goto :goto_2

    .end local v3    # "dm":Ljava/lang/Object;
    :cond_3
    if-eqz v4, :cond_4

    iget-object v5, p0, Landroid/app/ResourcesManager;->mDefaultDisplayMetrics:Landroid/util/ArrayMap;

    invoke-virtual {v5, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {v1, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v0

    .local v0, "d":Landroid/view/Display;
    if-eqz v0, :cond_5

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    :goto_3
    move-object v3, v2

    .restart local v3    # "dm":Ljava/lang/Object;
    goto :goto_2

    .end local v3    # "dm":Ljava/lang/Object;
    :cond_5
    invoke-virtual {v2}, Landroid/util/DisplayMetrics;->setToDefaults()V

    goto :goto_3
.end method

.method public getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/IBinder;Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 20
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "overlayDirs"    # [Ljava/lang/String;
    .param p3, "displayId"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "overrideConfiguration"    # Landroid/content/res/Configuration;
    .param p6, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p7, "token"    # Landroid/os/IBinder;
    .param p8, "context"    # Landroid/content/Context;

    .prologue
    move-object/from16 v0, p6

    iget v6, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .local v6, "scale":F
    move-object/from16 v0, p6

    iget-boolean v7, v0, Landroid/content/res/CompatibilityInfo;->isThemeable:Z

    .local v7, "isThemeable":Z
    new-instance v2, Landroid/content/res/ResourcesKey;

    move-object/from16 v3, p1

    move/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v8, p7

    invoke-direct/range {v2 .. v8}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;ILandroid/content/res/Configuration;FZLandroid/os/IBinder;)V

    .local v2, "key":Landroid/content/res/ResourcesKey;
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/ref/WeakReference;

    .local v19, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    if-eqz v19, :cond_0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Resources;

    move-object v8, v3

    .local v8, "r":Landroid/content/res/Resources;
    :goto_0
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v3

    if-eqz v3, :cond_1

    monitor-exit p0

    move-object v15, v8

    :goto_1
    return-object v15

    .end local v8    # "r":Landroid/content/res/Resources;
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .restart local v8    # "r":Landroid/content/res/Resources;
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v9, Landroid/content/res/AssetManager;

    invoke-direct {v9}, Landroid/content/res/AssetManager;-><init>()V

    .local v9, "assets":Landroid/content/res/AssetManager;
    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Landroid/content/res/AssetManager;->setAppName(Ljava/lang/String;)V

    move-object/from16 v0, p6

    iget-boolean v3, v0, Landroid/content/res/CompatibilityInfo;->isThemeable:Z

    invoke-virtual {v9, v3}, Landroid/content/res/AssetManager;->setThemeSupport(Z)V

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    const/4 v15, 0x0

    goto :goto_1

    .end local v8    # "r":Landroid/content/res/Resources;
    .end local v9    # "assets":Landroid/content/res/AssetManager;
    .end local v19    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .restart local v8    # "r":Landroid/content/res/Resources;
    .restart local v9    # "assets":Landroid/content/res/AssetManager;
    .restart local v19    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;

    move-result-object v10

    .local v10, "dm":Landroid/util/DisplayMetrics;
    if-nez p3, :cond_9

    const/16 v18, 0x1

    .local v18, "isDefaultDisplay":Z
    :goto_2
    invoke-virtual {v2}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v16

    .local v16, "hasOverrideConfig":Z
    if-eqz v18, :cond_3

    if-eqz v16, :cond_a

    :cond_3
    new-instance v11, Landroid/content/res/Configuration;

    invoke-virtual/range {p0 .. p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v11, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .local v11, "config":Landroid/content/res/Configuration;
    if-nez v18, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Landroid/app/ResourcesManager;->applyNonDefaultDisplayMetricsToConfigurationLocked(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    :cond_4
    if-eqz v16, :cond_5

    iget-object v3, v2, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v11, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    :cond_5
    :goto_3
    const/16 v17, 0x0

    .local v17, "iconsAttached":Z
    move-object/from16 v0, p6

    iget-boolean v3, v0, Landroid/content/res/CompatibilityInfo;->isThemeable:Z

    if-eqz v3, :cond_7

    if-eqz v11, :cond_7

    invoke-virtual/range {p8 .. p8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, v11, Landroid/content/res/Configuration;->themeConfig:Landroid/content/res/ThemeConfig;

    if-nez v3, :cond_6

    :try_start_2
    invoke-virtual/range {p8 .. p8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Landroid/content/res/ThemeConfig;->getBootTheme(Landroid/content/ContentResolver;)Landroid/content/res/ThemeConfig;

    move-result-object v3

    iput-object v3, v11, Landroid/content/res/Configuration;->themeConfig:Landroid/content/res/ThemeConfig;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_6
    :goto_4
    iget-object v3, v11, Landroid/content/res/Configuration;->themeConfig:Landroid/content/res/ThemeConfig;

    if-eqz v3, :cond_7

    iget-object v3, v11, Landroid/content/res/Configuration;->themeConfig:Landroid/content/res/ThemeConfig;

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v3}, Landroid/app/ResourcesManager;->attachThemeAssets(Landroid/content/res/AssetManager;Landroid/content/res/ThemeConfig;)Z

    iget-object v3, v11, Landroid/content/res/Configuration;->themeConfig:Landroid/content/res/ThemeConfig;

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v3}, Landroid/app/ResourcesManager;->attachCommonAssets(Landroid/content/res/AssetManager;Landroid/content/res/ThemeConfig;)Z

    iget-object v3, v11, Landroid/content/res/Configuration;->themeConfig:Landroid/content/res/ThemeConfig;

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v3}, Landroid/app/ResourcesManager;->attachIconAssets(Landroid/content/res/AssetManager;Landroid/content/res/ThemeConfig;)Z

    move-result v17

    :cond_7
    new-instance v8, Landroid/content/res/MiuiResources;

    .end local v8    # "r":Landroid/content/res/Resources;
    move-object/from16 v12, p6

    move-object/from16 v13, p7

    invoke-direct/range {v8 .. v13}, Landroid/content/res/MiuiResources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/IBinder;)V

    .restart local v8    # "r":Landroid/content/res/Resources;
    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/app/ResourcesManager;->setActivityIcons(Landroid/content/res/Resources;)V

    :cond_8
    monitor-enter p0

    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    check-cast v19, Ljava/lang/ref/WeakReference;

    .restart local v19    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    if-eqz v19, :cond_b

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Resources;

    move-object v15, v3

    .local v15, "existing":Landroid/content/res/Resources;
    :goto_5
    if-eqz v15, :cond_c

    invoke-virtual {v15}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v8}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->close()V

    monitor-exit p0

    goto/16 :goto_1

    .end local v15    # "existing":Landroid/content/res/Resources;
    .end local v19    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :catchall_1
    move-exception v3

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .end local v11    # "config":Landroid/content/res/Configuration;
    .end local v16    # "hasOverrideConfig":Z
    .end local v17    # "iconsAttached":Z
    .end local v18    # "isDefaultDisplay":Z
    .restart local v19    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_9
    const/16 v18, 0x0

    goto/16 :goto_2

    .restart local v16    # "hasOverrideConfig":Z
    .restart local v18    # "isDefaultDisplay":Z
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    .restart local v11    # "config":Landroid/content/res/Configuration;
    goto/16 :goto_3

    .restart local v17    # "iconsAttached":Z
    :catch_0
    move-exception v14

    .local v14, "e":Ljava/lang/Exception;
    const-string v3, "ResourcesManager"

    const-string v4, "ThemeConfig.getBootTheme failed, falling back to system theme"

    invoke-static {v3, v4, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Landroid/content/res/ThemeConfig;->getSystemTheme()Landroid/content/res/ThemeConfig;

    move-result-object v3

    iput-object v3, v11, Landroid/content/res/Configuration;->themeConfig:Landroid/content/res/ThemeConfig;

    goto :goto_4

    .end local v14    # "e":Ljava/lang/Exception;
    :cond_b
    const/4 v15, 0x0

    goto :goto_5

    .restart local v15    # "existing":Landroid/content/res/Resources;
    :cond_c
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v15, v8

    goto/16 :goto_1
.end method

.method public getTopLevelThemedResources(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/res/CompatibilityInfo;Landroid/os/IBinder;)Landroid/content/res/Resources;
    .locals 9
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "displayId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "themePackageName"    # Ljava/lang/String;
    .param p5, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p6, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v7, 0x1

    new-instance v1, Landroid/content/res/AssetManager;

    invoke-direct {v1}, Landroid/content/res/AssetManager;-><init>()V

    .local v1, "assets":Landroid/content/res/AssetManager;
    invoke-virtual {v1, p3}, Landroid/content/res/AssetManager;->setAppName(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/content/res/AssetManager;->setThemeSupport(Z)V

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p2}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;

    move-result-object v2

    .local v2, "dm":Landroid/util/DisplayMetrics;
    if-nez p2, :cond_1

    .local v7, "isDefaultDisplay":Z
    :goto_1
    if-nez v7, :cond_2

    new-instance v3, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .local v3, "config":Landroid/content/res/Configuration;
    invoke-virtual {p0, v2, v3}, Landroid/app/ResourcesManager;->applyNonDefaultDisplayMetricsToConfigurationLocked(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    :goto_2
    new-instance v6, Landroid/content/res/ThemeConfig$Builder;

    invoke-direct {v6}, Landroid/content/res/ThemeConfig$Builder;-><init>()V

    .local v6, "builder":Landroid/content/res/ThemeConfig$Builder;
    invoke-virtual {v6, p4}, Landroid/content/res/ThemeConfig$Builder;->defaultOverlay(Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;

    invoke-virtual {v6, p4}, Landroid/content/res/ThemeConfig$Builder;->defaultIcon(Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;

    invoke-virtual {v6, p4}, Landroid/content/res/ThemeConfig$Builder;->defaultFont(Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;

    invoke-virtual {v6}, Landroid/content/res/ThemeConfig$Builder;->build()Landroid/content/res/ThemeConfig;

    move-result-object v8

    .local v8, "themeConfig":Landroid/content/res/ThemeConfig;
    invoke-direct {p0, v1, v8}, Landroid/app/ResourcesManager;->attachThemeAssets(Landroid/content/res/AssetManager;Landroid/content/res/ThemeConfig;)Z

    invoke-direct {p0, v1, v8}, Landroid/app/ResourcesManager;->attachCommonAssets(Landroid/content/res/AssetManager;Landroid/content/res/ThemeConfig;)Z

    invoke-direct {p0, v1, v8}, Landroid/app/ResourcesManager;->attachIconAssets(Landroid/content/res/AssetManager;Landroid/content/res/ThemeConfig;)Z

    new-instance v0, Landroid/content/res/Resources;

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/IBinder;)V

    .local v0, "r":Landroid/content/res/Resources;
    invoke-direct {p0, v0}, Landroid/app/ResourcesManager;->setActivityIcons(Landroid/content/res/Resources;)V

    goto :goto_0

    .end local v0    # "r":Landroid/content/res/Resources;
    .end local v3    # "config":Landroid/content/res/Configuration;
    .end local v6    # "builder":Landroid/content/res/ThemeConfig$Builder;
    .end local v7    # "isDefaultDisplay":Z
    .end local v8    # "themeConfig":Landroid/content/res/ThemeConfig;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .restart local v7    # "isDefaultDisplay":Z
    :cond_2
    invoke-virtual {p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .restart local v3    # "config":Landroid/content/res/Configuration;
    goto :goto_2
.end method
