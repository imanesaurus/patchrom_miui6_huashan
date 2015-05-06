.class public Landroid/telephony/MSimTelephonyManager;
.super Ljava/lang/Object;
.source "MSimTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/MSimTelephonyManager$1;,
        Landroid/telephony/MSimTelephonyManager$MultiSimVariants;
    }
.end annotation


# static fields
.field protected static multiSimConfig:Ljava/lang/String;

.field private static sContext:Landroid/content/Context;

.field private static sInstance:Landroid/telephony/MSimTelephonyManager;

.field protected static sRegistryMsim:Lcom/android/internal/telephony/ITelephonyRegistryMSim;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "persist.radio.multisim.config"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/MSimTelephonyManager;->multiSimConfig:Ljava/lang/String;

    new-instance v0, Landroid/telephony/MSimTelephonyManager;

    invoke-direct {v0}, Landroid/telephony/MSimTelephonyManager;-><init>()V

    sput-object v0, Landroid/telephony/MSimTelephonyManager;->sInstance:Landroid/telephony/MSimTelephonyManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Landroid/telephony/MSimTelephonyManager;->sContext:Landroid/content/Context;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_1

    sput-object v0, Landroid/telephony/MSimTelephonyManager;->sContext:Landroid/content/Context;

    :goto_0
    const-string v1, "telephony.msim.registry"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyRegistryMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistryMSim;

    move-result-object v1

    sput-object v1, Landroid/telephony/MSimTelephonyManager;->sRegistryMsim:Lcom/android/internal/telephony/ITelephonyRegistryMSim;

    .end local v0    # "appContext":Landroid/content/Context;
    :cond_0
    return-void

    .restart local v0    # "appContext":Landroid/content/Context;
    :cond_1
    sput-object p1, Landroid/telephony/MSimTelephonyManager;->sContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public static from(Landroid/content/Context;)Landroid/telephony/MSimTelephonyManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "phone_msim"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/MSimTelephonyManager;

    return-object v0
.end method

.method public static getDefault()Landroid/telephony/MSimTelephonyManager;
    .locals 1

    .prologue
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->sInstance:Landroid/telephony/MSimTelephonyManager;

    return-object v0
.end method

.method public static getFormattedSimName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subscription"    # I

    .prologue
    const v8, 0x10400ec

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    invoke-static {p0, p1, v3}, Landroid/provider/Settings$Global;->getSimNameForSubscription(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "label":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p0}, Landroid/telephony/MSimTelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    .local v2, "tm":Landroid/telephony/MSimTelephonyManager;
    invoke-virtual {v2, p1}, Landroid/telephony/MSimTelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "operatorName":Ljava/lang/String;
    invoke-virtual {v2, p1}, Landroid/telephony/MSimTelephonyManager;->getSimState(I)I

    move-result v3

    if-eq v3, v5, :cond_0

    invoke-virtual {v2, p1}, Landroid/telephony/MSimTelephonyManager;->getSimState(I)I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const v3, 0x10400eb

    new-array v4, v5, [Ljava/lang/Object;

    add-int/lit8 v5, p1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .end local v1    # "operatorName":Ljava/lang/String;
    .end local v2    # "tm":Landroid/telephony/MSimTelephonyManager;
    :goto_0
    return-object v0

    .restart local v1    # "operatorName":Ljava/lang/String;
    .restart local v2    # "tm":Landroid/telephony/MSimTelephonyManager;
    :cond_1
    new-array v3, v7, [Ljava/lang/Object;

    aput-object v1, v3, v6

    add-int/lit8 v4, p1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v8, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .end local v1    # "operatorName":Ljava/lang/String;
    .end local v2    # "tm":Landroid/telephony/MSimTelephonyManager;
    :cond_2
    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v6

    add-int/lit8 v4, p1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v8, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;
    .locals 1

    .prologue
    const-string v0, "phone_msim"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v0

    return-object v0
.end method

.method public static getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "valArray":[Ljava/lang/String;
    if-ltz p2, :cond_0

    array-length v2, v1

    if-ge p2, v2, :cond_0

    aget-object v2, v1, p2

    if-eqz v2, :cond_0

    :try_start_0
    aget-object v2, v1, p2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v2

    .end local v1    # "valArray":[Ljava/lang/String;
    :cond_0
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getPhoneTypeFromNetworkType(I)I
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const-string v1, "ro.telephony.default_network"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "mode":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getPhoneType(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPhoneTypeFromProperty(I)I
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const-string v1, "gsm.current.phone-type"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "type":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1}, Landroid/telephony/MSimTelephonyManager;->getPhoneTypeFromNetworkType(I)I

    move-result v1

    goto :goto_0
.end method

.method public static getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "index"    # I
    .param p2, "defaultVal"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .local v1, "propVal":Ljava/lang/String;
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "values":[Ljava/lang/String;
    if-ltz p1, :cond_0

    array-length v3, v2

    if-ge p1, v3, :cond_0

    aget-object v3, v2, p1

    if-eqz v3, :cond_0

    aget-object v1, v2, p1

    .end local v2    # "values":[Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    .end local p2    # "defaultVal":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "defaultVal":Ljava/lang/String;
    :cond_1
    move-object p2, v1

    goto :goto_0
.end method

.method public static putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "value"    # I

    .prologue
    const-string v0, ""

    .local v0, "data":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "valArray":[Ljava/lang/String;
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "v":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_2

    const-string v2, ""

    .local v2, "str":Ljava/lang/String;
    if-eqz v4, :cond_1

    array-length v5, v4

    if-ge v1, v5, :cond_1

    aget-object v2, v4, v1

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "str":Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v4, :cond_3

    add-int/lit8 v1, p2, 0x1

    :goto_1
    array-length v5, v4

    if-ge v1, v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    return v5
.end method

.method public static setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const-string v3, ""

    .local v3, "propVal":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "p":[Ljava/lang/String;
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "prop":Ljava/lang/String;
    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    if-eqz v2, :cond_1

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-gez p1, :cond_2

    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_4

    const-string v4, ""

    .local v4, "str":Ljava/lang/String;
    if-eqz v1, :cond_3

    array-length v5, v1

    if-ge v0, v5, :cond_3

    aget-object v4, v1, v0

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v4    # "str":Ljava/lang/String;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_5

    add-int/lit8 v0, p1, 0x1

    :goto_2
    array-length v5, v1

    if-ge v0, v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    invoke-static {p0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getAllCellInfo(I)Ljava/util/List;
    .locals 3
    .param p1, "subscription"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getAllCellInfo(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCallState(I)I
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getCallState(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCdmaEriIconIndex(I)I
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, -0x1

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getCdmaEriIconIndex(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCdmaEriIconMode(I)I
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, -0x1

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getCdmaEriIconMode(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCdmaEriText(I)Ljava/lang/String;
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getCdmaEriText(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCompleteVoiceMailNumber(I)Ljava/lang/String;
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;->getCompleteVoiceMailNumber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCurrentPhoneType(I)I
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v1

    .local v1, "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getActivePhoneType(I)I

    move-result v2

    .end local v1    # "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :goto_0
    return v2

    .restart local v1    # "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :cond_0
    invoke-direct {p0, p1}, Landroid/telephony/MSimTelephonyManager;->getPhoneTypeFromProperty(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .end local v1    # "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    invoke-direct {p0, p1}, Landroid/telephony/MSimTelephonyManager;->getPhoneTypeFromProperty(I)I

    move-result v2

    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-direct {p0, p1}, Landroid/telephony/MSimTelephonyManager;->getPhoneTypeFromProperty(I)I

    move-result v2

    goto :goto_0
.end method

.method public getDataActivity()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getDataActivity()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDataNetworkType(I)I
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v1

    .local v1, "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getDataNetworkType(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .end local v1    # "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDataState()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getDataState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDefaultDataSubscription()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getDefaultDataSubscription()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDefaultSubscription()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getDefaultSubscription()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;->getDeviceId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDeviceSoftwareVersion(I)Ljava/lang/String;
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;->getDeviceSvn(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLine1AlphaTag(I)Ljava/lang/String;
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;->getLine1AlphaTag(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLine1Number(I)Ljava/lang/String;
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;->getLine1Number(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLteOnCdmaMode(I)I
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, -0x1

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getLteOnCdmaMode(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method protected getMSimSubscriberInfo()Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;
    .locals 1

    .prologue
    const-string v0, "iphonesubinfo_msim"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    move-result-object v0

    return-object v0
.end method

.method public getMsisdn(I)Ljava/lang/String;
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;->getMsisdn(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getMultiSimConfiguration()Landroid/telephony/MSimTelephonyManager$MultiSimVariants;
    .locals 2

    .prologue
    const-string v1, "persist.radio.multisim.config"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "mSimConfig":Ljava/lang/String;
    const-string v1, "dsds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/telephony/MSimTelephonyManager$MultiSimVariants;->DSDS:Landroid/telephony/MSimTelephonyManager$MultiSimVariants;

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "dsda"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/telephony/MSimTelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/MSimTelephonyManager$MultiSimVariants;

    goto :goto_0

    :cond_1
    const-string v1, "tsts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Landroid/telephony/MSimTelephonyManager$MultiSimVariants;->TSTS:Landroid/telephony/MSimTelephonyManager$MultiSimVariants;

    goto :goto_0

    :cond_2
    sget-object v1, Landroid/telephony/MSimTelephonyManager$MultiSimVariants;->UNKNOWN:Landroid/telephony/MSimTelephonyManager$MultiSimVariants;

    goto :goto_0
.end method

.method public getNetworkCountryIso(I)Ljava/lang/String;
    .locals 2
    .param p1, "subscription"    # I

    .prologue
    const-string v0, "gsm.operator.iso-country"

    const-string v1, ""

    invoke-static {v0, p1, v1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 2
    .param p1, "subscription"    # I

    .prologue
    const-string v0, "gsm.operator.numeric"

    const-string v1, ""

    invoke-static {v0, p1, v1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorName(I)Ljava/lang/String;
    .locals 2
    .param p1, "subscription"    # I

    .prologue
    const-string v0, "gsm.operator.alpha"

    const-string v1, ""

    invoke-static {v0, p1, v1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkType(I)I
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v1

    .local v1, "iTelephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getNetworkType(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .end local v1    # "iTelephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    invoke-virtual {p0, p1}, Landroid/telephony/MSimTelephonyManager;->getNetworkType(I)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneCount()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .local v0, "phoneCount":I
    sget-object v1, Landroid/telephony/MSimTelephonyManager$1;->$SwitchMap$android$telephony$MSimTelephonyManager$MultiSimVariants:[I

    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMultiSimConfiguration()Landroid/telephony/MSimTelephonyManager$MultiSimVariants;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager$MultiSimVariants;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getPhoneType(I)I
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/telephony/MSimTelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getPreferredDataSubscription()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getPreferredDataSubscription()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getPreferredVoiceSubscription()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getPreferredVoiceSubscription()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSimCountryIso(I)Ljava/lang/String;
    .locals 2
    .param p1, "subscription"    # I

    .prologue
    const-string v0, "gsm.sim.operator.iso-country"

    const-string v1, ""

    invoke-static {v0, p1, v1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .locals 2
    .param p1, "subscription"    # I

    .prologue
    const-string v0, "gsm.sim.operator.numeric"

    const-string v1, ""

    invoke-static {v0, p1, v1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorName(I)Ljava/lang/String;
    .locals 2
    .param p1, "subscription"    # I

    .prologue
    const-string v0, "gsm.sim.operator.alpha"

    const-string v1, ""

    invoke-static {v0, p1, v1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;->getIccSerialNumber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSimState(I)I
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const-string v1, "gsm.sim.state"

    const-string v2, ""

    invoke-static {v1, p1, v2}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "prop":Ljava/lang/String;
    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const-string v1, "PIN_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const-string v1, "PUK_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    goto :goto_0

    :cond_2
    const-string v1, "NETWORK_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    goto :goto_0

    :cond_3
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;->getSubscriberId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMailAlphaTag(I)Ljava/lang/String;
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;->getVoiceMailAlphaTag(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMailNumber(I)Ljava/lang/String;
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;->getVoiceMailNumber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMessageCount(I)I
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getVoiceMessageCount(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceNetworkType(I)I
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v1

    .local v1, "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getVoiceNetworkType(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .end local v1    # "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public hasIccCard(I)Z
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->hasIccCard(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isMultiSimEnabled()Z
    .locals 2

    .prologue
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->multiSimConfig:Ljava/lang/String;

    const-string v1, "dsds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/telephony/MSimTelephonyManager;->multiSimConfig:Ljava/lang/String;

    const-string v1, "dsda"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/telephony/MSimTelephonyManager;->multiSimConfig:Ljava/lang/String;

    const-string v1, "tsts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNetworkRoaming(I)Z
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const-string v0, "true"

    const-string v1, "gsm.operator.isroaming"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .locals 7
    .param p1, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p2, "events"    # I

    .prologue
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/telephony/MSimTelephonyManager;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .local v1, "pkgForDebug":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .local v6, "notifyNow":Ljava/lang/Boolean;
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->sRegistryMsim:Lcom/android/internal/telephony/ITelephonyRegistryMSim;

    iget-object v2, p1, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget v5, p1, Landroid/telephony/PhoneStateListener;->mSubscription:I

    move v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephonyRegistryMSim;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6    # "notifyNow":Ljava/lang/Boolean;
    :goto_2
    return-void

    .end local v1    # "pkgForDebug":Ljava/lang/String;
    :cond_0
    const-string v1, "<unknown>"

    goto :goto_0

    .restart local v1    # "pkgForDebug":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public setDefaultDataSubscription(I)Z
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->setDefaultDataSubscription(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public setPreferredDataSubscription(I)Z
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->setPreferredDataSubscription(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method
