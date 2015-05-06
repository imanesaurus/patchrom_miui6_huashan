.class public abstract Landroid/app/IProfileManager$Stub;
.super Landroid/os/Binder;
.source "IProfileManager.java"

# interfaces
.implements Landroid/app/IProfileManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IProfileManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IProfileManager"

.field static final TRANSACTION_addNotificationGroup:I = 0xe

.field static final TRANSACTION_addProfile:I = 0x4

.field static final TRANSACTION_getActiveProfile:I = 0x3

.field static final TRANSACTION_getNotificationGroup:I = 0x12

.field static final TRANSACTION_getNotificationGroupForPackage:I = 0x11

.field static final TRANSACTION_getNotificationGroups:I = 0xd

.field static final TRANSACTION_getProfile:I = 0x7

.field static final TRANSACTION_getProfileByName:I = 0x8

.field static final TRANSACTION_getProfiles:I = 0x9

.field static final TRANSACTION_notificationGroupExistsByName:I = 0xc

.field static final TRANSACTION_profileExists:I = 0xa

.field static final TRANSACTION_profileExistsByName:I = 0xb

.field static final TRANSACTION_removeNotificationGroup:I = 0xf

.field static final TRANSACTION_removeProfile:I = 0x5

.field static final TRANSACTION_resetAll:I = 0x13

.field static final TRANSACTION_setActiveProfile:I = 0x1

.field static final TRANSACTION_setActiveProfileByName:I = 0x2

.field static final TRANSACTION_updateNotificationGroup:I = 0x10

.field static final TRANSACTION_updateProfile:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.IProfileManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IProfileManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IProfileManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.app.IProfileManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IProfileManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/IProfileManager;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/app/IProfileManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/IProfileManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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
    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    :sswitch_0
    const-string v2, "android.app.IProfileManager"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v4, "android.app.IProfileManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    .local v0, "_arg0":Landroid/os/ParcelUuid;
    :goto_1
    invoke-virtual {p0, v0}, Landroid/app/IProfileManager$Stub;->setActiveProfile(Landroid/os/ParcelUuid;)Z

    move-result v1

    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0    # "_arg0":Landroid/os/ParcelUuid;
    .end local v1    # "_result":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/ParcelUuid;
    goto :goto_1

    .end local v0    # "_arg0":Landroid/os/ParcelUuid;
    :sswitch_2
    const-string v4, "android.app.IProfileManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/IProfileManager$Stub;->setActiveProfileByName(Ljava/lang/String;)Z

    move-result v1

    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :sswitch_3
    const-string v4, "android.app.IProfileManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/IProfileManager$Stub;->getActiveProfile()Landroid/app/Profile;

    move-result-object v1

    .local v1, "_result":Landroid/app/Profile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_3

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3, v3}, Landroid/app/Profile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v1    # "_result":Landroid/app/Profile;
    :sswitch_4
    const-string v4, "android.app.IProfileManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Landroid/app/Profile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Profile;

    .local v0, "_arg0":Landroid/app/Profile;
    :goto_2
    invoke-virtual {p0, v0}, Landroid/app/IProfileManager$Stub;->addProfile(Landroid/app/Profile;)Z

    move-result v1

    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_4

    move v2, v3

    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0    # "_arg0":Landroid/app/Profile;
    .end local v1    # "_result":Z
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/app/Profile;
    goto :goto_2

    .end local v0    # "_arg0":Landroid/app/Profile;
    :sswitch_5
    const-string v4, "android.app.IProfileManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Landroid/app/Profile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Profile;

    .restart local v0    # "_arg0":Landroid/app/Profile;
    :goto_3
    invoke-virtual {p0, v0}, Landroid/app/IProfileManager$Stub;->removeProfile(Landroid/app/Profile;)Z

    move-result v1

    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_6

    move v2, v3

    :cond_6
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/app/Profile;
    .end local v1    # "_result":Z
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/app/Profile;
    goto :goto_3

    .end local v0    # "_arg0":Landroid/app/Profile;
    :sswitch_6
    const-string v2, "android.app.IProfileManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Landroid/app/Profile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Profile;

    .restart local v0    # "_arg0":Landroid/app/Profile;
    :goto_4
    invoke-virtual {p0, v0}, Landroid/app/IProfileManager$Stub;->updateProfile(Landroid/app/Profile;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/app/Profile;
    :cond_8
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/app/Profile;
    goto :goto_4

    .end local v0    # "_arg0":Landroid/app/Profile;
    :sswitch_7
    const-string v4, "android.app.IProfileManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    .local v0, "_arg0":Landroid/os/ParcelUuid;
    :goto_5
    invoke-virtual {p0, v0}, Landroid/app/IProfileManager$Stub;->getProfile(Landroid/os/ParcelUuid;)Landroid/app/Profile;

    move-result-object v1

    .local v1, "_result":Landroid/app/Profile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_a

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3, v3}, Landroid/app/Profile;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/os/ParcelUuid;
    .end local v1    # "_result":Landroid/app/Profile;
    :cond_9
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/ParcelUuid;
    goto :goto_5

    .restart local v1    # "_result":Landroid/app/Profile;
    :cond_a
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/os/ParcelUuid;
    .end local v1    # "_result":Landroid/app/Profile;
    :sswitch_8
    const-string v4, "android.app.IProfileManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/IProfileManager$Stub;->getProfileByName(Ljava/lang/String;)Landroid/app/Profile;

    move-result-object v1

    .restart local v1    # "_result":Landroid/app/Profile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_b

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3, v3}, Landroid/app/Profile;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Landroid/app/Profile;
    :sswitch_9
    const-string v2, "android.app.IProfileManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/IProfileManager$Stub;->getProfiles()[Landroid/app/Profile;

    move-result-object v1

    .local v1, "_result":[Landroid/app/Profile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .end local v1    # "_result":[Landroid/app/Profile;
    :sswitch_a
    const-string v4, "android.app.IProfileManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    .local v0, "_arg0":Landroid/os/ParcelUuid;
    :goto_6
    invoke-virtual {p0, v0}, Landroid/app/IProfileManager$Stub;->profileExists(Landroid/os/ParcelUuid;)Z

    move-result v1

    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_c

    move v2, v3

    :cond_c
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/os/ParcelUuid;
    .end local v1    # "_result":Z
    :cond_d
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/ParcelUuid;
    goto :goto_6

    .end local v0    # "_arg0":Landroid/os/ParcelUuid;
    :sswitch_b
    const-string v4, "android.app.IProfileManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/IProfileManager$Stub;->profileExistsByName(Ljava/lang/String;)Z

    move-result v1

    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_e

    move v2, v3

    :cond_e
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :sswitch_c
    const-string v4, "android.app.IProfileManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/IProfileManager$Stub;->notificationGroupExistsByName(Ljava/lang/String;)Z

    move-result v1

    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_f

    move v2, v3

    :cond_f
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :sswitch_d
    const-string v2, "android.app.IProfileManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/IProfileManager$Stub;->getNotificationGroups()[Landroid/app/NotificationGroup;

    move-result-object v1

    .local v1, "_result":[Landroid/app/NotificationGroup;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .end local v1    # "_result":[Landroid/app/NotificationGroup;
    :sswitch_e
    const-string v2, "android.app.IProfileManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_10

    sget-object v2, Landroid/app/NotificationGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationGroup;

    .local v0, "_arg0":Landroid/app/NotificationGroup;
    :goto_7
    invoke-virtual {p0, v0}, Landroid/app/IProfileManager$Stub;->addNotificationGroup(Landroid/app/NotificationGroup;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/app/NotificationGroup;
    :cond_10
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/app/NotificationGroup;
    goto :goto_7

    .end local v0    # "_arg0":Landroid/app/NotificationGroup;
    :sswitch_f
    const-string v2, "android.app.IProfileManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_11

    sget-object v2, Landroid/app/NotificationGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationGroup;

    .restart local v0    # "_arg0":Landroid/app/NotificationGroup;
    :goto_8
    invoke-virtual {p0, v0}, Landroid/app/IProfileManager$Stub;->removeNotificationGroup(Landroid/app/NotificationGroup;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/app/NotificationGroup;
    :cond_11
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/app/NotificationGroup;
    goto :goto_8

    .end local v0    # "_arg0":Landroid/app/NotificationGroup;
    :sswitch_10
    const-string v2, "android.app.IProfileManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_12

    sget-object v2, Landroid/app/NotificationGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationGroup;

    .restart local v0    # "_arg0":Landroid/app/NotificationGroup;
    :goto_9
    invoke-virtual {p0, v0}, Landroid/app/IProfileManager$Stub;->updateNotificationGroup(Landroid/app/NotificationGroup;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/app/NotificationGroup;
    :cond_12
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/app/NotificationGroup;
    goto :goto_9

    .end local v0    # "_arg0":Landroid/app/NotificationGroup;
    :sswitch_11
    const-string v4, "android.app.IProfileManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/IProfileManager$Stub;->getNotificationGroupForPackage(Ljava/lang/String;)Landroid/app/NotificationGroup;

    move-result-object v1

    .local v1, "_result":Landroid/app/NotificationGroup;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_13

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3, v3}, Landroid/app/NotificationGroup;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_13
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Landroid/app/NotificationGroup;
    :sswitch_12
    const-string v4, "android.app.IProfileManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_14

    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    .local v0, "_arg0":Landroid/os/ParcelUuid;
    :goto_a
    invoke-virtual {p0, v0}, Landroid/app/IProfileManager$Stub;->getNotificationGroup(Landroid/os/ParcelUuid;)Landroid/app/NotificationGroup;

    move-result-object v1

    .restart local v1    # "_result":Landroid/app/NotificationGroup;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_15

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3, v3}, Landroid/app/NotificationGroup;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/os/ParcelUuid;
    .end local v1    # "_result":Landroid/app/NotificationGroup;
    :cond_14
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/ParcelUuid;
    goto :goto_a

    .restart local v1    # "_result":Landroid/app/NotificationGroup;
    :cond_15
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/os/ParcelUuid;
    .end local v1    # "_result":Landroid/app/NotificationGroup;
    :sswitch_13
    const-string v2, "android.app.IProfileManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/IProfileManager$Stub;->resetAll()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

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
