.class public Landroid/content/res/ThemeConfig$HoloTheme;
.super Landroid/content/res/ThemeConfig$AppTheme;
.source "ThemeConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/ThemeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HoloTheme"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-string v0, "holo"

    const-string v1, "holo"

    const-string v2, "holo"

    invoke-direct {p0, v0, v1, v2}, Landroid/content/res/ThemeConfig$AppTheme;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "No Theme Applied (Holo)"

    return-object v0
.end method
