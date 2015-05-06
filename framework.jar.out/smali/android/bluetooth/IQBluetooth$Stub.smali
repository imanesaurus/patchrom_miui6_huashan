.class public abstract Landroid/bluetooth/IQBluetooth$Stub;
.super Landroid/os/Binder;
.source "IQBluetooth.java"

# interfaces
.implements Landroid/bluetooth/IQBluetooth;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IQBluetooth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IQBluetooth$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IQBluetooth"

.field static final TRANSACTION_enableLeLppRssiMonitor:I = 0xd

.field static final TRANSACTION_getLEAdvMode:I = 0x1

.field static final TRANSACTION_readLeLppRssiThreshold:I = 0xc

.field static final TRANSACTION_registerLeLppRssiMonitorClient:I = 0xa

.field static final TRANSACTION_setLEAdvMask:I = 0x6

.field static final TRANSACTION_setLEAdvMode:I = 0x3

.field static final TRANSACTION_setLEAdvParams:I = 0x2

.field static final TRANSACTION_setLEManuData:I = 0x4

.field static final TRANSACTION_setLEScanRespMask:I = 0x7

.field static final TRANSACTION_setLEServiceData:I = 0x5

.field static final TRANSACTION_startLeScanEx:I = 0x8

.field static final TRANSACTION_stopLeScanEx:I = 0x9

.field static final TRANSACTION_writeLeLppRssiThreshold:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.bluetooth.IQBluetooth"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IQBluetooth$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IQBluetooth;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.bluetooth.IQBluetooth"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IQBluetooth;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/bluetooth/IQBluetooth;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/bluetooth/IQBluetooth$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/bluetooth/IQBluetooth$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    :sswitch_0
    const-string v0, "android.bluetooth.IQBluetooth"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v0, "android.bluetooth.IQBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/bluetooth/IQBluetooth$Stub;->getLEAdvMode()I

    move-result v6

    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v6    # "_result":I
    :sswitch_2
    const-string v0, "android.bluetooth.IQBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/bluetooth/IQBluetooth$Stub;->setLEAdvParams(IILjava/lang/String;I)Z

    move-result v6

    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_0

    move v0, v7

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    move v0, v8

    goto :goto_1

    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v6    # "_result":Z
    :sswitch_3
    const-string v0, "android.bluetooth.IQBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/bluetooth/IQBluetooth$Stub;->setLEAdvMode(I)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_1

    move v8, v7

    :cond_1
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_4
    const-string v0, "android.bluetooth.IQBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .local v1, "_arg0":[B
    invoke-virtual {p0, v1}, Landroid/bluetooth/IQBluetooth$Stub;->setLEManuData([B)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_2

    move v8, v7

    :cond_2
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v1    # "_arg0":[B
    .end local v6    # "_result":Z
    :sswitch_5
    const-string v0, "android.bluetooth.IQBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .restart local v1    # "_arg0":[B
    invoke-virtual {p0, v1}, Landroid/bluetooth/IQBluetooth$Stub;->setLEServiceData([B)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_3

    move v8, v7

    :cond_3
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v1    # "_arg0":[B
    .end local v6    # "_result":Z
    :sswitch_6
    const-string v0, "android.bluetooth.IQBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    move v1, v7

    .local v1, "_arg0":Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    move v2, v7

    .local v2, "_arg1":Z
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    move v3, v7

    .local v3, "_arg2":Z
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    move v4, v7

    .local v4, "_arg3":Z
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    move v5, v7

    .local v5, "_arg4":Z
    :goto_6
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IQBluetooth$Stub;->setLEAdvMask(ZZZZZ)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_4

    move v8, v7

    :cond_4
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Z
    .end local v6    # "_result":Z
    :cond_5
    move v1, v8

    goto :goto_2

    .restart local v1    # "_arg0":Z
    :cond_6
    move v2, v8

    goto :goto_3

    .restart local v2    # "_arg1":Z
    :cond_7
    move v3, v8

    goto :goto_4

    .restart local v3    # "_arg2":Z
    :cond_8
    move v4, v8

    goto :goto_5

    .restart local v4    # "_arg3":Z
    :cond_9
    move v5, v8

    goto :goto_6

    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Z
    :sswitch_7
    const-string v0, "android.bluetooth.IQBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    move v1, v7

    .restart local v1    # "_arg0":Z
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    move v2, v7

    .restart local v2    # "_arg1":Z
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    move v3, v7

    .restart local v3    # "_arg2":Z
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    move v4, v7

    .restart local v4    # "_arg3":Z
    :goto_a
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/bluetooth/IQBluetooth$Stub;->setLEScanRespMask(ZZZZ)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_a

    move v8, v7

    :cond_a
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Z
    .end local v6    # "_result":Z
    :cond_b
    move v1, v8

    goto :goto_7

    .restart local v1    # "_arg0":Z
    :cond_c
    move v2, v8

    goto :goto_8

    .restart local v2    # "_arg1":Z
    :cond_d
    move v3, v8

    goto :goto_9

    .restart local v3    # "_arg2":Z
    :cond_e
    move v4, v8

    goto :goto_a

    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Z
    :sswitch_8
    const-string v0, "android.bluetooth.IQBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v0, Landroid/bluetooth/BluetoothLEServiceUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/bluetooth/BluetoothLEServiceUuid;

    .local v1, "_arg0":[Landroid/bluetooth/BluetoothLEServiceUuid;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/IQBluetoothAdapterCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IQBluetoothAdapterCallback;

    move-result-object v2

    .local v2, "_arg1":Landroid/bluetooth/IQBluetoothAdapterCallback;
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IQBluetooth$Stub;->startLeScanEx([Landroid/bluetooth/BluetoothLEServiceUuid;Landroid/bluetooth/IQBluetoothAdapterCallback;)I

    move-result v6

    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":[Landroid/bluetooth/BluetoothLEServiceUuid;
    .end local v2    # "_arg1":Landroid/bluetooth/IQBluetoothAdapterCallback;
    .end local v6    # "_result":I
    :sswitch_9
    const-string v0, "android.bluetooth.IQBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/bluetooth/IQBluetooth$Stub;->stopLeScanEx(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    :sswitch_a
    const-string v0, "android.bluetooth.IQBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/IQBluetoothAdapterCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IQBluetoothAdapterCallback;

    move-result-object v2

    .restart local v2    # "_arg1":Landroid/bluetooth/IQBluetoothAdapterCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    move v3, v7

    .restart local v3    # "_arg2":Z
    :goto_b
    invoke-virtual {p0, v1, v2, v3}, Landroid/bluetooth/IQBluetooth$Stub;->registerLeLppRssiMonitorClient(Ljava/lang/String;Landroid/bluetooth/IQBluetoothAdapterCallback;Z)Z

    move-result v6

    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_f

    move v8, v7

    :cond_f
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v3    # "_arg2":Z
    .end local v6    # "_result":Z
    :cond_10
    move v3, v8

    goto :goto_b

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/bluetooth/IQBluetoothAdapterCallback;
    :sswitch_b
    const-string v0, "android.bluetooth.IQBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .local v2, "_arg1":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .local v3, "_arg2":B
    invoke-virtual {p0, v1, v2, v3}, Landroid/bluetooth/IQBluetooth$Stub;->writeLeLppRssiThreshold(Ljava/lang/String;BB)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":B
    .end local v3    # "_arg2":B
    :sswitch_c
    const-string v0, "android.bluetooth.IQBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IQBluetooth$Stub;->readLeLppRssiThreshold(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_d
    const-string v0, "android.bluetooth.IQBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    move v2, v7

    .local v2, "_arg1":Z
    :goto_c
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IQBluetooth$Stub;->enableLeLppRssiMonitor(Ljava/lang/String;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v2    # "_arg1":Z
    :cond_11
    move v2, v8

    goto :goto_c

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
