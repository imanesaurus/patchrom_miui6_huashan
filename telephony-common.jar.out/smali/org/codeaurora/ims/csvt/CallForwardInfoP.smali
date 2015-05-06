.class public Lorg/codeaurora/ims/csvt/CallForwardInfoP;
.super Ljava/lang/Object;
.source "CallForwardInfoP.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/codeaurora/ims/csvt/CallForwardInfoP;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public number:Ljava/lang/String;

.field public reason:I

.field public serviceClass:I

.field public status:I

.field public timeSeconds:I

.field public toa:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lorg/codeaurora/ims/csvt/CallForwardInfoP$1;

    invoke-direct {v0}, Lorg/codeaurora/ims/csvt/CallForwardInfoP$1;-><init>()V

    sput-object v0, Lorg/codeaurora/ims/csvt/CallForwardInfoP;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/codeaurora/ims/csvt/CallForwardInfoP;->status:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/codeaurora/ims/csvt/CallForwardInfoP;->reason:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/codeaurora/ims/csvt/CallForwardInfoP;->toa:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/csvt/CallForwardInfoP;->number:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/codeaurora/ims/csvt/CallForwardInfoP;->timeSeconds:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/codeaurora/ims/csvt/CallForwardInfoP;->serviceClass:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget v0, p0, Lorg/codeaurora/ims/csvt/CallForwardInfoP;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lorg/codeaurora/ims/csvt/CallForwardInfoP;->reason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lorg/codeaurora/ims/csvt/CallForwardInfoP;->toa:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lorg/codeaurora/ims/csvt/CallForwardInfoP;->number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lorg/codeaurora/ims/csvt/CallForwardInfoP;->timeSeconds:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lorg/codeaurora/ims/csvt/CallForwardInfoP;->serviceClass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
