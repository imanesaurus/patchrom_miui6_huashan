.class Landroid/content/pm/ThemeUtils$ThemedUiContext;
.super Landroid/content/ContextWrapper;
.source "ThemeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/ThemeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThemedUiContext"
.end annotation


# instance fields
.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroid/content/pm/ThemeUtils$ThemedUiContext;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/content/pm/ThemeUtils$ThemedUiContext;->mPackageName:Ljava/lang/String;

    return-object v0
.end method
