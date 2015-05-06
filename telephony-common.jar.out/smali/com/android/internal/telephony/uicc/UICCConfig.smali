.class public final Lcom/android/internal/telephony/uicc/UICCConfig;
.super Ljava/lang/Object;
.source "UICCConfig.java"


# instance fields
.field private final LOG_DEBUG:Z

.field private final PREFERENCE_NAME:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mImsi:Ljava/lang/String;

.field private mMncLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UICCConfig"

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UICCConfig;->PREFERENCE_NAME:Ljava/lang/String;

    const-string v0, "UICCConfig"

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UICCConfig;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UICCConfig;->LOG_DEBUG:Z

    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 0
    .param p1, "sLog"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "sLog"    # Ljava/lang/String;

    .prologue
    const-string v0, "UICCConfig"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getImsi()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UICCConfig;->mImsi:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Getting IMSI: null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UICCConfig;->logd(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UICCConfig;->mImsi:Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Getting IMSI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UICCConfig;->mImsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UICCConfig;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getMncLength()I
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Getting MncLength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/UICCConfig;->mMncLength:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UICCConfig;->logd(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/telephony/uicc/UICCConfig;->mMncLength:I

    return v0
.end method

.method public setImsi(Ljava/lang/String;)V
    .locals 2
    .param p1, "lImsi"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting IMSI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UICCConfig;->logd(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UICCConfig;->mImsi:Ljava/lang/String;

    return-void
.end method

.method public setMncLength(I)V
    .locals 2
    .param p1, "lMncLength"    # I

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting MncLength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UICCConfig;->logd(Ljava/lang/String;)V

    iput p1, p0, Lcom/android/internal/telephony/uicc/UICCConfig;->mMncLength:I

    return-void
.end method
