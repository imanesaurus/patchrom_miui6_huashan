.class public Lcom/android/mipop/widget/MeterRecent;
.super Lcom/android/mipop/widget/MeterBase;
.source "MeterRecent.java"


# static fields
.field public static final NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/android/mipop/widget/MeterRecent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mipop/widget/MeterRecent;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/android/mipop/widget/MeterBase;-><init>(Landroid/content/Context;)V

    .line 19
    sget-object v0, Lcom/android/mipop/widget/MeterRecent;->NAME:Ljava/lang/String;

    invoke-virtual {p0, v0, p0}, Lcom/android/mipop/widget/MeterRecent;->Register(Ljava/lang/String;Lcom/android/mipop/widget/MeterBase;)V

    .line 20
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mipop/widget/MeterRecent;->setSoundEffectsEnabled(Z)V

    .line 23
    const v0, 0x7f020037

    invoke-virtual {p0, v0}, Lcom/android/mipop/widget/MeterRecent;->setImageResource(I)V

    .line 24
    const v0, 0x7f020035

    const v1, 0x7f020036

    invoke-virtual {p0, v0, v1}, Lcom/android/mipop/widget/MeterRecent;->setResId(II)V

    .line 25
    return-void
.end method


# virtual methods
.method public Click()V
    .locals 2

    .prologue
    .line 28
    const-string v0, "CLICK"

    const-string v1, "recent  click"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mipop/widget/MeterRecent;->playSoundEffect(I)V

    .line 30
    new-instance v0, Lcom/android/mipop/widget/MeterRecent$1;

    invoke-direct {v0, p0}, Lcom/android/mipop/widget/MeterRecent$1;-><init>(Lcom/android/mipop/widget/MeterRecent;)V

    invoke-virtual {v0}, Lcom/android/mipop/widget/MeterRecent$1;->start()V

    .line 58
    return-void
.end method

.method public LongClick()V
    .locals 2

    .prologue
    .line 61
    const-string v0, "Suhao"

    const-string v1, "recent  long click"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
.end method
