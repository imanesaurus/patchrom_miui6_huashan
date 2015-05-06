.class public abstract Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;
.super Landroid/os/Binder;
.source "IIccPhoneBookMSim.java"

# interfaces
.implements Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.msim.IIccPhoneBookMSim"

.field static final TRANSACTION_getAdnCount:I = 0x7

.field static final TRANSACTION_getAdnRecordsInEf:I = 0x1

.field static final TRANSACTION_getAdnRecordsSize:I = 0x5

.field static final TRANSACTION_getAnrCount:I = 0x8

.field static final TRANSACTION_getEmailCount:I = 0x9

.field static final TRANSACTION_getSpareAnrCount:I = 0xa

.field static final TRANSACTION_getSpareEmailCount:I = 0xb

.field static final TRANSACTION_updateAdnRecordsInEfByIndex:I = 0x3

.field static final TRANSACTION_updateAdnRecordsInEfBySearch:I = 0x2

.field static final TRANSACTION_updateAdnRecordsInEfBySearchOnSubscription:I = 0x4

.field static final TRANSACTION_updateUsimAdnRecordsInEfByIndex:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
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

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v0, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v0, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->getAdnRecordsInEf(II)Ljava/util/List;

    move-result-object v10

    .local v10, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v0, 0x1

    goto :goto_0

    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v10    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :sswitch_2
    const-string v0, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg5":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg6":I
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v9

    .local v9, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v9, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v7    # "_arg6":I
    .end local v9    # "_result":Z
    :sswitch_3
    const-string v0, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg5":I
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v9

    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v9, :cond_1

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":I
    .end local v9    # "_result":Z
    :sswitch_4
    const-string v0, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .local v2, "_arg1":Landroid/content/ContentValues;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->updateAdnRecordsInEfBySearchOnSubscription(ILandroid/content/ContentValues;Ljava/lang/String;I)Z

    move-result v9

    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v9, :cond_3

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v2    # "_arg1":Landroid/content/ContentValues;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v9    # "_result":Z
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/content/ContentValues;
    goto :goto_3

    .restart local v3    # "_arg2":Ljava/lang/String;
    .restart local v4    # "_arg3":I
    .restart local v9    # "_result":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_4

    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/content/ContentValues;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v9    # "_result":Z
    :sswitch_5
    const-string v0, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->getAdnRecordsSize(II)[I

    move-result-object v9

    .local v9, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v9    # "_result":[I
    :sswitch_6
    const-string v0, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .local v4, "_arg3":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg4":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg5":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, "_arg6":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "_arg7":I
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->updateUsimAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v9

    .local v9, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v9, :cond_4

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_5

    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":[Ljava/lang/String;
    .end local v5    # "_arg4":[Ljava/lang/String;
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Ljava/lang/String;
    .end local v8    # "_arg7":I
    .end local v9    # "_result":Z
    :sswitch_7
    const-string v0, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->getAdnCount(I)I

    move-result v9

    .local v9, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v9    # "_result":I
    :sswitch_8
    const-string v0, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->getAnrCount(I)I

    move-result v9

    .restart local v9    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v9    # "_result":I
    :sswitch_9
    const-string v0, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->getEmailCount(I)I

    move-result v9

    .restart local v9    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v9    # "_result":I
    :sswitch_a
    const-string v0, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->getSpareAnrCount(I)I

    move-result v9

    .restart local v9    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v9    # "_result":I
    :sswitch_b
    const-string v0, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->getSpareEmailCount(I)I

    move-result v9

    .restart local v9    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
