.class public final Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;
.super Ljava/lang/Object;
.source "BluetoothHidDeviceAppSdpSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final description:Ljava/lang/String;

.field public final descriptors:[B

.field public final name:Ljava/lang/String;

.field public final provider:Ljava/lang/String;

.field public final subclass:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B[B)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "provider"    # Ljava/lang/String;
    .param p4, "subclass"    # B
    .param p5, "descriptors"    # [B

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->name:Ljava/lang/String;

    iput-object p2, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->description:Ljava/lang/String;

    iput-object p3, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->provider:Ljava/lang/String;

    iput-byte p4, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->subclass:B

    invoke-virtual {p5}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->descriptors:[B

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    instance-of v1, p1, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;

    :cond_0
    return v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->provider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-byte v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->subclass:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->descriptors:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
