.class public final Landroid/bluetooth/BluetoothLEServiceUuid;
.super Ljava/lang/Object;
.source "BluetoothLEServiceUuid.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final BLE_SERVICE_128Bit_SLC_UUID_TYPE:B = 0x15t

.field public static final BLE_SERVICE_128Bit_UUID_TYPE:B = 0x7t

.field public static final BLE_SERVICE_16Bit_SLC_UUID_TYPE:B = 0x14t

.field public static final BLE_SERVICE_16Bit_UUID_TYPE:B = 0x3t

.field public static final BLE_SERVICE_32Bit_UUID_TYPE:B = 0x5t

.field public static final BLE_SERVICE_EXAMPLE_UUID_VALUE:Ljava/util/UUID;

.field public static final BLE_SERVICE_UUID_NONE_TYPE:B

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/BluetoothLEServiceUuid;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final id:Ljava/util/UUID;

.field public final type:B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x110f00001000L

    const-wide v3, -0x7fffff7fa064cb05L    # -2.724079460785E-312

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Landroid/bluetooth/BluetoothLEServiceUuid;->BLE_SERVICE_EXAMPLE_UUID_VALUE:Ljava/util/UUID;

    new-instance v0, Landroid/bluetooth/BluetoothLEServiceUuid$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothLEServiceUuid$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothLEServiceUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(BLjava/util/UUID;)V
    .locals 0
    .param p1, "type"    # B
    .param p2, "id"    # Ljava/util/UUID;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Landroid/bluetooth/BluetoothLEServiceUuid;->type:B

    iput-object p2, p0, Landroid/bluetooth/BluetoothLEServiceUuid;->id:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;)V
    .locals 1
    .param p1, "id"    # Ljava/util/UUID;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/bluetooth/BluetoothLEServiceUuid;->type:B

    iput-object p1, p0, Landroid/bluetooth/BluetoothLEServiceUuid;->id:Ljava/util/UUID;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getLeastSignificantBits()J
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/bluetooth/BluetoothLEServiceUuid;->id:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMostSignificantBits()J
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/bluetooth/BluetoothLEServiceUuid;->id:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    return-wide v0
.end method

.method public getType()B
    .locals 1

    .prologue
    iget-byte v0, p0, Landroid/bluetooth/BluetoothLEServiceUuid;->type:B

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-byte v0, p0, Landroid/bluetooth/BluetoothLEServiceUuid;->type:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLEServiceUuid;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLEServiceUuid;->getMostSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
