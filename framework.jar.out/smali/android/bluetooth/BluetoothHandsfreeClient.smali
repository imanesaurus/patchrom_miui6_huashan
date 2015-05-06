.class public final Landroid/bluetooth/BluetoothHandsfreeClient;
.super Ljava/lang/Object;
.source "BluetoothHandsfreeClient.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# static fields
.field public static final ACTION_AG_EVENT:Ljava/lang/String; = "org.codeaurora.handsfreeclient.profile.action.AG_EVENT"

.field public static final ACTION_AUDIO_STATE_CHANGED:Ljava/lang/String; = "org.codeaurora.handsfreeclient.profile.action.AUDIO_STATE_CHANGED"

.field public static final ACTION_CALL_CHANGED:Ljava/lang/String; = "org.codeaurora.handsfreeclient.profile.action.AG_CALL_CHANGED"

.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "org.codeaurora.handsfreeclient.profile.action.CONNECTION_STATE_CHANGED"

.field public static final ACTION_LAST_VTAG:Ljava/lang/String; = "org.codeaurora.handsfreeclient.profile.action.LAST_VTAG"

.field public static final ACTION_RESULT:Ljava/lang/String; = "org.codeaurora.handsfreeclient.profile.action.RESULT"

.field public static final ACTION_RESULT_ERROR:I = 0x1

.field public static final ACTION_RESULT_ERROR_BLACKLISTED:I = 0x6

.field public static final ACTION_RESULT_ERROR_BUSY:I = 0x3

.field public static final ACTION_RESULT_ERROR_CME:I = 0x7

.field public static final ACTION_RESULT_ERROR_DELAYED:I = 0x5

.field public static final ACTION_RESULT_ERROR_NO_ANSWER:I = 0x4

.field public static final ACTION_RESULT_ERROR_NO_CARRIER:I = 0x2

.field public static final ACTION_RESULT_OK:I = 0x0

.field public static final CALL_ACCEPT_HOLD:I = 0x1

.field public static final CALL_ACCEPT_NONE:I = 0x0

.field public static final CALL_ACCEPT_TERMINATE:I = 0x2

.field public static final CME_CORPORATE_PERSONALIZATION_PIN_REQUIRED:I = 0x2e

.field public static final CME_CORPORATE_PERSONALIZATION_PUK_REQUIRED:I = 0x2f

.field public static final CME_DIAL_STRING_TOO_LONG:I = 0x1a

.field public static final CME_EAP_NOT_SUPPORTED:I = 0x31

.field public static final CME_EMERGENCY_SERVICE_ONLY:I = 0x20

.field public static final CME_HIDDEN_KEY_REQUIRED:I = 0x30

.field public static final CME_INCORRECT_PARAMETERS:I = 0x32

.field public static final CME_INCORRECT_PASSWORD:I = 0x10

.field public static final CME_INVALID_CHARACTER_IN_DIAL_STRING:I = 0x1b

.field public static final CME_INVALID_CHARACTER_IN_TEXT_STRING:I = 0x19

.field public static final CME_INVALID_INDEX:I = 0x15

.field public static final CME_MEMORY_FAILURE:I = 0x17

.field public static final CME_MEMORY_FULL:I = 0x14

.field public static final CME_NETWORK_PERSONALIZATION_PIN_REQUIRED:I = 0x28

.field public static final CME_NETWORK_PERSONALIZATION_PUK_REQUIRED:I = 0x29

.field public static final CME_NETWORK_SUBSET_PERSONALIZATION_PIN_REQUIRED:I = 0x2a

.field public static final CME_NETWORK_SUBSET_PERSONALIZATION_PUK_REQUIRED:I = 0x2b

.field public static final CME_NETWORK_TIMEOUT:I = 0x1f

.field public static final CME_NOT_FOUND:I = 0x16

.field public static final CME_NOT_SUPPORTED_FOR_VOIP:I = 0x22

.field public static final CME_NO_CONNECTION_TO_PHONE:I = 0x1

.field public static final CME_NO_NETWORK_SERVICE:I = 0x1e

.field public static final CME_NO_SIMULTANOUS_VOIP_CS_CALLS:I = 0x21

.field public static final CME_OPERATION_NOT_ALLOWED:I = 0x3

.field public static final CME_OPERATION_NOT_SUPPORTED:I = 0x4

.field public static final CME_PHFSIM_PIN_REQUIRED:I = 0x6

.field public static final CME_PHFSIM_PUK_REQUIRED:I = 0x7

.field public static final CME_PHONE_FAILURE:I = 0x0

.field public static final CME_PHSIM_PIN_REQUIRED:I = 0x5

.field public static final CME_SERVICE_PROVIDER_PERSONALIZATION_PIN_REQUIRED:I = 0x2c

.field public static final CME_SERVICE_PROVIDER_PERSONALIZATION_PUK_REQUIRED:I = 0x2d

.field public static final CME_SIM_BUSY:I = 0xe

.field public static final CME_SIM_FAILURE:I = 0xd

.field public static final CME_SIM_NOT_INSERTED:I = 0xa

.field public static final CME_SIM_PIN2_REQUIRED:I = 0x11

.field public static final CME_SIM_PIN_REQUIRED:I = 0xb

.field public static final CME_SIM_PUK2_REQUIRED:I = 0x12

.field public static final CME_SIM_PUK_REQUIRED:I = 0xc

.field public static final CME_SIM_WRONG:I = 0xf

.field public static final CME_SIP_RESPONSE_CODE:I = 0x23

.field public static final CME_TEXT_STRING_TOO_LONG:I = 0x18

.field private static final DBG:Z = true

.field public static final EXTRA_AG_FEATURE_3WAY_CALLING:Ljava/lang/String; = "android.bluetooth.handsfreeclient.extra.EXTRA_AG_FEATURE_3WAY_CALLING"

.field public static final EXTRA_AG_FEATURE_ACCEPT_HELD_OR_WAITING_CALL:Ljava/lang/String; = "android.bluetooth.handsfreeclient.extra.EXTRA_AG_FEATURE_ACCEPT_HELD_OR_WAITING_CALL"

.field public static final EXTRA_AG_FEATURE_ATTACH_NUMBER_TO_VT:Ljava/lang/String; = "android.bluetooth.handsfreeclient.extra.EXTRA_AG_FEATURE_ATTACH_NUMBER_TO_VT"

.field public static final EXTRA_AG_FEATURE_ECC:Ljava/lang/String; = "android.bluetooth.handsfreeclient.extra.EXTRA_AG_FEATURE_ECC"

.field public static final EXTRA_AG_FEATURE_MERGE:Ljava/lang/String; = "android.bluetooth.handsfreeclient.extra.EXTRA_AG_FEATURE_MERGE"

.field public static final EXTRA_AG_FEATURE_MERGE_AND_DETACH:Ljava/lang/String; = "android.bluetooth.handsfreeclient.extra.EXTRA_AG_FEATURE_MERGE_AND_DETACH"

.field public static final EXTRA_AG_FEATURE_REJECT_CALL:Ljava/lang/String; = "android.bluetooth.handsfreeclient.extra.EXTRA_AG_FEATURE_REJECT_CALL"

.field public static final EXTRA_AG_FEATURE_RELEASE_AND_ACCEPT:Ljava/lang/String; = "android.bluetooth.handsfreeclient.extra.EXTRA_AG_FEATURE_RELEASE_AND_ACCEPT"

.field public static final EXTRA_AG_FEATURE_RELEASE_HELD_OR_WAITING_CALL:Ljava/lang/String; = "android.bluetooth.handsfreeclient.extra.EXTRA_AG_FEATURE_RELEASE_HELD_OR_WAITING_CALL"

.field public static final EXTRA_AG_FEATURE_RESPONSE_AND_HOLD:Ljava/lang/String; = "android.bluetooth.handsfreeclient.extra.EXTRA_AG_FEATURE_RESPONSE_AND_HOLD"

.field public static final EXTRA_AG_FEATURE_VOICE_RECOGNITION:Ljava/lang/String; = "android.bluetooth.handsfreeclient.extra.EXTRA_AG_FEATURE_VOICE_RECOGNITION"

.field public static final EXTRA_AUDIO_WBS:Ljava/lang/String; = "android.bluetooth.handsfreeclient.extra.AUDIO_WBS"

.field public static final EXTRA_BATTERY_LEVEL:Ljava/lang/String; = "android.bluetooth.handsfreeclient.extra.BATTERY_LEVEL"

.field public static final EXTRA_CALL:Ljava/lang/String; = "android.bluetooth.handsfreeclient.extra.CALL"

.field public static final EXTRA_CME_CODE:Ljava/lang/String; = "android.bluetooth.handsfreeclient.extra.CME_CODE"

.field public static final EXTRA_IN_BAND_RING:Ljava/lang/String; = "android.bluetooth.handsfreeclient.extra.IN_BAND_RING"

.field public static final EXTRA_NETWORK_ROAMING:Ljava/lang/String; = "android.bluetooth.handsfreeclient.extra.NETWORK_ROAMING"

.field public static final EXTRA_NETWORK_SIGNAL_STRENGTH:Ljava/lang/String; = "android.bluetooth.handsfreeclient.extra.NETWORK_SIGNAL_STRENGTH"

.field public static final EXTRA_NETWORK_STATUS:Ljava/lang/String; = "android.bluetooth.handsfreeclient.extra.NETWORK_STATUS"

.field public static final EXTRA_NUMBER:Ljava/lang/String; = "android.bluetooth.handsfreeclient.extra.NUMBER"

.field public static final EXTRA_OPERATOR_NAME:Ljava/lang/String; = "android.bluetooth.handsfreeclient.extra.OPERATOR_NAME"

.field public static final EXTRA_RESULT_CODE:Ljava/lang/String; = "android.bluetooth.handsfreeclient.extra.RESULT_CODE"

.field public static final EXTRA_SUBSCRIBER_INFO:Ljava/lang/String; = "android.bluetooth.handsfreeclient.extra.SUBSCRIBER_INFO"

.field public static final EXTRA_VOICE_RECOGNITION:Ljava/lang/String; = "android.bluetooth.handsfreeclient.extra.VOICE_RECOGNITION"

.field public static final STATE_AUDIO_CONNECTED:I = 0x2

.field public static final STATE_AUDIO_CONNECTING:I = 0x1

.field public static final STATE_AUDIO_DISCONNECTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BluetoothHandsfreeClient"

.field private static final VDBG:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "l"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Landroid/bluetooth/BluetoothHandsfreeClient$1;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothHandsfreeClient$1;-><init>(Landroid/bluetooth/BluetoothHandsfreeClient;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    new-instance v2, Landroid/bluetooth/BluetoothHandsfreeClient$2;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothHandsfreeClient$2;-><init>(Landroid/bluetooth/BluetoothHandsfreeClient;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    .local v1, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v1, :cond_0

    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-class v3, Landroid/bluetooth/IBluetoothHandsfreeClient;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "BluetoothHandsfreeClient"

    const-string v3, "Could not bind to Bluetooth Handsfree Client Service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothHandsfreeClient"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/bluetooth/BluetoothHandsfreeClient;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothHandsfreeClient;

    .prologue
    iget-object v0, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$100(Landroid/bluetooth/BluetoothHandsfreeClient;)Landroid/bluetooth/IBluetoothHandsfreeClient;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothHandsfreeClient;

    .prologue
    iget-object v0, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    return-object v0
.end method

.method static synthetic access$102(Landroid/bluetooth/BluetoothHandsfreeClient;Landroid/bluetooth/IBluetoothHandsfreeClient;)Landroid/bluetooth/IBluetoothHandsfreeClient;
    .locals 0
    .param p0, "x0"    # Landroid/bluetooth/BluetoothHandsfreeClient;
    .param p1, "x1"    # Landroid/bluetooth/IBluetoothHandsfreeClient;

    .prologue
    iput-object p1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    return-object p1
.end method

.method static synthetic access$200(Landroid/bluetooth/BluetoothHandsfreeClient;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothHandsfreeClient;

    .prologue
    iget-object v0, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Landroid/bluetooth/BluetoothHandsfreeClient;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothHandsfreeClient;

    .prologue
    iget-object v0, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method private isEnabled()Z
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    const-string v0, "BluetoothHandsfreeClient"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public acceptCall(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "flag"    # I

    .prologue
    const-string v1, "acceptCall()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothHandsfreeClient;->log(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHandsfreeClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHandsfreeClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothHandsfreeClient;->acceptCall(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHandsfreeClient"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    if-nez v1, :cond_1

    const-string v1, "BluetoothHandsfreeClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public acceptIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const-string v1, "acceptIncomingConnect"

    invoke-static {v1}, Landroid/bluetooth/BluetoothHandsfreeClient;->log(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHandsfreeClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHandsfreeClient;->acceptIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHandsfreeClient"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "BluetoothHandsfreeClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "BluetoothHandsfreeClient"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method close()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    iget-object v3, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    .local v1, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v1, :cond_0

    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v1, v3}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v4, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v4

    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    :try_start_2
    iput-object v3, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    iget-object v3, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iput-object v6, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "BluetoothHandsfreeClient"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .local v2, "re":Ljava/lang/Exception;
    :try_start_4
    const-string v3, "BluetoothHandsfreeClient"

    const-string v5, ""

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v2    # "re":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothHandsfreeClient;->log(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHandsfreeClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHandsfreeClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothHandsfreeClient;->connect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothHandsfreeClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    if-nez v2, :cond_0

    const-string v2, "BluetoothHandsfreeClient"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public connectAudio()Z
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHandsfreeClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothHandsfreeClient;->connectAudio()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHandsfreeClient"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "BluetoothHandsfreeClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "BluetoothHandsfreeClient"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public dial(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const-string v1, "dial()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothHandsfreeClient;->log(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHandsfreeClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHandsfreeClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothHandsfreeClient;->dial(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHandsfreeClient"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    if-nez v1, :cond_1

    const-string v1, "BluetoothHandsfreeClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dialMemory(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "location"    # I

    .prologue
    const-string v1, "dialMemory()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothHandsfreeClient;->log(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHandsfreeClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHandsfreeClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothHandsfreeClient;->dialMemory(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHandsfreeClient"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    if-nez v1, :cond_1

    const-string v1, "BluetoothHandsfreeClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disconnect("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothHandsfreeClient;->log(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHandsfreeClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHandsfreeClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothHandsfreeClient;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothHandsfreeClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    if-nez v2, :cond_0

    const-string v2, "BluetoothHandsfreeClient"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public disconnectAudio()Z
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHandsfreeClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothHandsfreeClient;->disconnectAudio()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHandsfreeClient"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "BluetoothHandsfreeClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "BluetoothHandsfreeClient"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public enterPrivateMode(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "index"    # I

    .prologue
    const-string v1, "enterPrivateMode()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothHandsfreeClient;->log(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHandsfreeClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHandsfreeClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothHandsfreeClient;->enterPrivateMode(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHandsfreeClient"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    if-nez v1, :cond_1

    const-string v1, "BluetoothHandsfreeClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public explicitCallTransfer(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const-string v1, "explicitCallTransfer()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothHandsfreeClient;->log(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHandsfreeClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHandsfreeClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHandsfreeClient;->explicitCallTransfer(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHandsfreeClient"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    if-nez v1, :cond_1

    const-string v1, "BluetoothHandsfreeClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHandsfreeClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHandsfreeClient;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHandsfreeClient"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "BluetoothHandsfreeClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "BluetoothHandsfreeClient"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHandsfreeClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothHandsfreeClient;->getConnectedDevices()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHandsfreeClient"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    if-nez v1, :cond_1

    const-string v1, "BluetoothHandsfreeClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHandsfreeClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHandsfreeClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothHandsfreeClient;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothHandsfreeClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    if-nez v2, :cond_0

    const-string v2, "BluetoothHandsfreeClient"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCurrentAgEvents(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const-string v1, "getCurrentCalls()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothHandsfreeClient;->log(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHandsfreeClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHandsfreeClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHandsfreeClient;->getCurrentAgEvents(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHandsfreeClient"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    if-nez v1, :cond_1

    const-string v1, "BluetoothHandsfreeClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentAgFeatures(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHandsfreeClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHandsfreeClient;->getCurrentAgFeatures(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHandsfreeClient"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "BluetoothHandsfreeClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "BluetoothHandsfreeClient"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getCurrentCalls(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothHandsfreeClientCall;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v1, "getCurrentCalls()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothHandsfreeClient;->log(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHandsfreeClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHandsfreeClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHandsfreeClient;->getCurrentCalls(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHandsfreeClient"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    if-nez v1, :cond_1

    const-string v1, "BluetoothHandsfreeClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 3
    .param p1, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHandsfreeClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHandsfreeClient;->getDevicesMatchingConnectionStates([I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHandsfreeClient"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    if-nez v1, :cond_1

    const-string v1, "BluetoothHandsfreeClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getLastVoiceTagNumber(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const-string v1, "getLastVoiceTagNumber()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothHandsfreeClient;->log(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHandsfreeClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHandsfreeClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHandsfreeClient;->getLastVoiceTagNumber(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHandsfreeClient"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    if-nez v1, :cond_1

    const-string v1, "BluetoothHandsfreeClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHandsfreeClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHandsfreeClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothHandsfreeClient;->getPriority(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothHandsfreeClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    if-nez v2, :cond_0

    const-string v2, "BluetoothHandsfreeClient"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public holdCall(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const-string v1, "holdCall()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothHandsfreeClient;->log(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHandsfreeClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHandsfreeClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHandsfreeClient;->holdCall(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHandsfreeClient"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    if-nez v1, :cond_1

    const-string v1, "BluetoothHandsfreeClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public redial(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const-string v1, "redial()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothHandsfreeClient;->log(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHandsfreeClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHandsfreeClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHandsfreeClient;->redial(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHandsfreeClient"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    if-nez v1, :cond_1

    const-string v1, "BluetoothHandsfreeClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public rejectCall(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const-string v1, "rejectCall()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothHandsfreeClient;->log(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHandsfreeClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHandsfreeClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHandsfreeClient;->rejectCall(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHandsfreeClient"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    if-nez v1, :cond_1

    const-string v1, "BluetoothHandsfreeClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public rejectIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const-string v1, "rejectIncomingConnect"

    invoke-static {v1}, Landroid/bluetooth/BluetoothHandsfreeClient;->log(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHandsfreeClient;->rejectIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHandsfreeClient"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "BluetoothHandsfreeClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "BluetoothHandsfreeClient"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public sendDTMF(Landroid/bluetooth/BluetoothDevice;B)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "code"    # B

    .prologue
    const-string v1, "sendDTMF()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothHandsfreeClient;->log(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHandsfreeClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHandsfreeClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothHandsfreeClient;->sendDTMF(Landroid/bluetooth/BluetoothDevice;B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHandsfreeClient"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    if-nez v1, :cond_1

    const-string v1, "BluetoothHandsfreeClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    .prologue
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPriority("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothHandsfreeClient;->log(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    if-eqz v2, :cond_2

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHandsfreeClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHandsfreeClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p2, :cond_1

    const/16 v2, 0x64

    if-eq p2, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    invoke-interface {v2, p1, p2}, Landroid/bluetooth/IBluetoothHandsfreeClient;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothHandsfreeClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v2, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    if-nez v2, :cond_0

    const-string v2, "BluetoothHandsfreeClient"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const-string v1, "startVoiceRecognition()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothHandsfreeClient;->log(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHandsfreeClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHandsfreeClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHandsfreeClient;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHandsfreeClient"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    if-nez v1, :cond_1

    const-string v1, "BluetoothHandsfreeClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const-string v1, "stopVoiceRecognition()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothHandsfreeClient;->log(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHandsfreeClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHandsfreeClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHandsfreeClient;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHandsfreeClient"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    if-nez v1, :cond_1

    const-string v1, "BluetoothHandsfreeClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public terminateCall(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "index"    # I

    .prologue
    const-string v1, "terminateCall()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothHandsfreeClient;->log(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHandsfreeClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHandsfreeClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothHandsfreeClient;->terminateCall(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHandsfreeClient"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;

    if-nez v1, :cond_1

    const-string v1, "BluetoothHandsfreeClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
