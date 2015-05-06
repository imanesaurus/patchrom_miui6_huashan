.class public abstract Lcom/android/internal/telephony/ISms$Stub;
.super Landroid/os/Binder;
.source "ISms.java"

# interfaces
.implements Lcom/android/internal/telephony/ISms;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ISms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ISms$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ISms"

.field static final TRANSACTION_copyMessageToIccEf:I = 0x4

.field static final TRANSACTION_disableCellBroadcast:I = 0xc

.field static final TRANSACTION_disableCellBroadcastRange:I = 0xe

.field static final TRANSACTION_enableCellBroadcast:I = 0xb

.field static final TRANSACTION_enableCellBroadcastRange:I = 0xd

.field static final TRANSACTION_getAllMessagesFromIccEf:I = 0x2

.field static final TRANSACTION_getImsSmsFormat:I = 0x12

.field static final TRANSACTION_getPremiumSmsPermission:I = 0xf

.field static final TRANSACTION_getSmsCapacityOnIcc:I = 0x13

.field static final TRANSACTION_isImsSmsSupported:I = 0x11

.field static final TRANSACTION_sendData:I = 0x5

.field static final TRANSACTION_sendDataWithOrigPort:I = 0x6

.field static final TRANSACTION_sendMultipartText:I = 0x9

.field static final TRANSACTION_sendMultipartTextWithOptions:I = 0xa

.field static final TRANSACTION_sendText:I = 0x7

.field static final TRANSACTION_sendTextWithOptions:I = 0x8

.field static final TRANSACTION_setPremiumSmsPermission:I = 0x10

.field static final TRANSACTION_synthesizeMessages:I = 0x1

.field static final TRANSACTION_updateMessageOnIccEf:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.telephony.ISms"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ISms$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.android.internal.telephony.ISms"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ISms;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/telephony/ISms;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/internal/telephony/ISms$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ISms$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 30
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
    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    :sswitch_0
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_1
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .local v5, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .local v6, "_arg3":J
    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/ISms$Stub;->synthesizeMessages(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "_arg3":J
    :sswitch_2
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ISms$Stub;->getAllMessagesFromIccEf(Ljava/lang/String;)Ljava/util/List;

    move-result-object v29

    .local v29, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v2, 0x1

    goto :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v29    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :sswitch_3
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .local v6, "_arg3":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v11, v6}, Lcom/android/internal/telephony/ISms$Stub;->updateMessageOnIccEf(Ljava/lang/String;II[B)Z

    move-result v28

    .local v28, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v28, :cond_0

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v6    # "_arg3":[B
    .end local v11    # "_arg2":I
    .end local v28    # "_result":Z
    :sswitch_4
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v11

    .local v11, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .restart local v6    # "_arg3":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v11, v6}, Lcom/android/internal/telephony/ISms$Stub;->copyMessageToIccEf(Ljava/lang/String;I[B[B)Z

    move-result v28

    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v28, :cond_1

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v6    # "_arg3":[B
    .end local v11    # "_arg2":[B
    .end local v28    # "_result":Z
    :sswitch_5
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .local v11, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v13

    .local v13, "_arg4":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/PendingIntent;

    .local v14, "_arg5":Landroid/app/PendingIntent;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/PendingIntent;

    .local v15, "_arg6":Landroid/app/PendingIntent;
    :goto_4
    move-object/from16 v8, p0

    move-object v9, v3

    move-object v10, v4

    move v12, v6

    invoke-virtual/range {v8 .. v15}, Lcom/android/internal/telephony/ISms$Stub;->sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v14    # "_arg5":Landroid/app/PendingIntent;
    .end local v15    # "_arg6":Landroid/app/PendingIntent;
    :cond_2
    const/4 v14, 0x0

    .restart local v14    # "_arg5":Landroid/app/PendingIntent;
    goto :goto_3

    :cond_3
    const/4 v15, 0x0

    .restart local v15    # "_arg6":Landroid/app/PendingIntent;
    goto :goto_4

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg3":I
    .end local v11    # "_arg2":Ljava/lang/String;
    .end local v13    # "_arg4":[B
    .end local v14    # "_arg5":Landroid/app/PendingIntent;
    .end local v15    # "_arg6":Landroid/app/PendingIntent;
    :sswitch_6
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .local v13, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v14

    .local v14, "_arg5":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/PendingIntent;

    .restart local v15    # "_arg6":Landroid/app/PendingIntent;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/PendingIntent;

    .local v16, "_arg7":Landroid/app/PendingIntent;
    :goto_6
    move-object/from16 v8, p0

    move-object v9, v3

    move-object v10, v4

    move v12, v6

    invoke-virtual/range {v8 .. v16}, Lcom/android/internal/telephony/ISms$Stub;->sendDataWithOrigPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v15    # "_arg6":Landroid/app/PendingIntent;
    .end local v16    # "_arg7":Landroid/app/PendingIntent;
    :cond_4
    const/4 v15, 0x0

    .restart local v15    # "_arg6":Landroid/app/PendingIntent;
    goto :goto_5

    :cond_5
    const/16 v16, 0x0

    .restart local v16    # "_arg7":Landroid/app/PendingIntent;
    goto :goto_6

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg3":I
    .end local v11    # "_arg2":Ljava/lang/String;
    .end local v13    # "_arg4":I
    .end local v14    # "_arg5":[B
    .end local v15    # "_arg6":Landroid/app/PendingIntent;
    .end local v16    # "_arg7":Landroid/app/PendingIntent;
    :sswitch_7
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/PendingIntent;

    .local v13, "_arg4":Landroid/app/PendingIntent;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/PendingIntent;

    .local v14, "_arg5":Landroid/app/PendingIntent;
    :goto_8
    move-object/from16 v8, p0

    move-object v9, v3

    move-object v10, v4

    move-object v12, v6

    invoke-virtual/range {v8 .. v14}, Lcom/android/internal/telephony/ISms$Stub;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v13    # "_arg4":Landroid/app/PendingIntent;
    .end local v14    # "_arg5":Landroid/app/PendingIntent;
    :cond_6
    const/4 v13, 0x0

    .restart local v13    # "_arg4":Landroid/app/PendingIntent;
    goto :goto_7

    :cond_7
    const/4 v14, 0x0

    .restart local v14    # "_arg5":Landroid/app/PendingIntent;
    goto :goto_8

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v11    # "_arg2":Ljava/lang/String;
    .end local v13    # "_arg4":Landroid/app/PendingIntent;
    .end local v14    # "_arg5":Landroid/app/PendingIntent;
    :sswitch_8
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/PendingIntent;

    .restart local v13    # "_arg4":Landroid/app/PendingIntent;
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/PendingIntent;

    .restart local v14    # "_arg5":Landroid/app/PendingIntent;
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .local v15, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a

    const/16 v16, 0x1

    .local v16, "_arg7":Z
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .local v17, "_arg8":I
    move-object/from16 v8, p0

    move-object v9, v3

    move-object v10, v4

    move-object v12, v6

    invoke-virtual/range {v8 .. v17}, Lcom/android/internal/telephony/ISms$Stub;->sendTextWithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;IZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v13    # "_arg4":Landroid/app/PendingIntent;
    .end local v14    # "_arg5":Landroid/app/PendingIntent;
    .end local v15    # "_arg6":I
    .end local v16    # "_arg7":Z
    .end local v17    # "_arg8":I
    :cond_8
    const/4 v13, 0x0

    .restart local v13    # "_arg4":Landroid/app/PendingIntent;
    goto :goto_9

    :cond_9
    const/4 v14, 0x0

    .restart local v14    # "_arg5":Landroid/app/PendingIntent;
    goto :goto_a

    .restart local v15    # "_arg6":I
    :cond_a
    const/16 v16, 0x0

    goto :goto_b

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v11    # "_arg2":Ljava/lang/String;
    .end local v13    # "_arg4":Landroid/app/PendingIntent;
    .end local v14    # "_arg5":Landroid/app/PendingIntent;
    .end local v15    # "_arg6":I
    :sswitch_9
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v22

    .local v22, "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v23

    .local v23, "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v24

    .local v24, "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    move-object/from16 v18, p0

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v11

    invoke-virtual/range {v18 .. v24}, Lcom/android/internal/telephony/ISms$Stub;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v11    # "_arg2":Ljava/lang/String;
    .end local v22    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v24    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    :sswitch_a
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v22

    .restart local v22    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v23

    .restart local v23    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v24

    .restart local v24    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .restart local v15    # "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b

    const/16 v16, 0x1

    .restart local v16    # "_arg7":Z
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "_arg8":I
    move-object/from16 v18, p0

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v11

    move/from16 v25, v15

    move/from16 v26, v16

    move/from16 v27, v17

    invoke-virtual/range {v18 .. v27}, Lcom/android/internal/telephony/ISms$Stub;->sendMultipartTextWithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;IZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v16    # "_arg7":Z
    .end local v17    # "_arg8":I
    :cond_b
    const/16 v16, 0x0

    goto :goto_c

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v11    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg6":I
    .end local v22    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v24    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    :sswitch_b
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ISms$Stub;->enableCellBroadcast(I)Z

    move-result v28

    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v28, :cond_c

    const/4 v2, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_c
    const/4 v2, 0x0

    goto :goto_d

    .end local v3    # "_arg0":I
    .end local v28    # "_result":Z
    :sswitch_c
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ISms$Stub;->disableCellBroadcast(I)Z

    move-result v28

    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v28, :cond_d

    const/4 v2, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_d
    const/4 v2, 0x0

    goto :goto_e

    .end local v3    # "_arg0":I
    .end local v28    # "_result":Z
    :sswitch_d
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/ISms$Stub;->enableCellBroadcastRange(II)Z

    move-result v28

    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v28, :cond_e

    const/4 v2, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_e
    const/4 v2, 0x0

    goto :goto_f

    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v28    # "_result":Z
    :sswitch_e
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/ISms$Stub;->disableCellBroadcastRange(II)Z

    move-result v28

    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v28, :cond_f

    const/4 v2, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_f
    const/4 v2, 0x0

    goto :goto_10

    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v28    # "_result":Z
    :sswitch_f
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ISms$Stub;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v28

    .local v28, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v28    # "_result":I
    :sswitch_10
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/ISms$Stub;->setPremiumSmsPermission(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    :sswitch_11
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->isImsSmsSupported()Z

    move-result v28

    .local v28, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v28, :cond_10

    const/4 v2, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_10
    const/4 v2, 0x0

    goto :goto_11

    .end local v28    # "_result":Z
    :sswitch_12
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->getImsSmsFormat()Ljava/lang/String;

    move-result-object v28

    .local v28, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v28    # "_result":Ljava/lang/String;
    :sswitch_13
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->getSmsCapacityOnIcc()I

    move-result v28

    .local v28, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

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
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
