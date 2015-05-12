.class public Lcom/android/mipop/widget/MeterHome;
.super Lcom/android/mipop/widget/MeterBase;
.source "MeterHome.java"


# static fields
.field public static final NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/android/mipop/widget/MeterHome;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mipop/widget/MeterHome;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/android/mipop/widget/MeterBase;-><init>(Landroid/content/Context;)V

    .line 19
    sget-object v0, Lcom/android/mipop/widget/MeterHome;->NAME:Ljava/lang/String;

    invoke-virtual {p0, v0, p0}, Lcom/android/mipop/widget/MeterHome;->Register(Ljava/lang/String;Lcom/android/mipop/widget/MeterBase;)V

    .line 20
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mipop/widget/MeterHome;->setSoundEffectsEnabled(Z)V

    .line 22
    const v0, 0x7f020026

    invoke-virtual {p0, v0}, Lcom/android/mipop/widget/MeterHome;->setImageResource(I)V

    .line 23
    const v0, 0x7f020024

    const v1, 0x7f020025

    invoke-virtual {p0, v0, v1}, Lcom/android/mipop/widget/MeterHome;->setResId(II)V

    .line 24
    return-void
.end method


# virtual methods
.method public Click()V
    .locals 2

    .prologue
    .line 27
    const-string v0, "CLICK"

    const-string v1, "home   click"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mipop/widget/MeterHome;->playSoundEffect(I)V

    .line 29
    new-instance v0, Lcom/android/mipop/widget/MeterHome$1;

    invoke-direct {v0, p0}, Lcom/android/mipop/widget/MeterHome$1;-><init>(Lcom/android/mipop/widget/MeterHome;)V

    invoke-virtual {v0}, Lcom/android/mipop/widget/MeterHome$1;->start()V

    .line 42
    return-void
.end method

.method public LongClick()V
    .locals 2

    .prologue
    .line 45
    const-string v0, "Suhao"

    const-string v1, "home  long click"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method
