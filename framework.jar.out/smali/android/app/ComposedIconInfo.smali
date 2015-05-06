.class public Landroid/app/ComposedIconInfo;
.super Ljava/lang/Object;
.source "ComposedIconInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/ComposedIconInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public colorFilter:[F

.field public iconBacks:[I

.field public iconDensity:I

.field public iconMask:I

.field public iconScale:F

.field public iconSize:I

.field public iconUpon:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/app/ComposedIconInfo$1;

    invoke-direct {v0}, Landroid/app/ComposedIconInfo$1;-><init>()V

    sput-object v0, Landroid/app/ComposedIconInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    iput v3, p0, Landroid/app/ComposedIconInfo;->iconScale:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/app/ComposedIconInfo;->iconDensity:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/app/ComposedIconInfo;->iconSize:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "backCount":I
    if-lez v0, :cond_0

    new-array v3, v0, [I

    iput-object v3, p0, Landroid/app/ComposedIconInfo;->iconBacks:[I

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Landroid/app/ComposedIconInfo;->iconBacks:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/app/ComposedIconInfo;->iconMask:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/app/ComposedIconInfo;->iconUpon:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "colorFilterSize":I
    if-lez v1, :cond_1

    new-array v3, v1, [F

    iput-object v3, p0, Landroid/app/ComposedIconInfo;->colorFilter:[F

    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Landroid/app/ComposedIconInfo;->colorFilter:[F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/ComposedIconInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/app/ComposedIconInfo$1;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ComposedIconInfo;-><init>(Landroid/os/Parcel;)V

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
    .locals 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v6, 0x0

    iget v5, p0, Landroid/app/ComposedIconInfo;->iconScale:F

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeFloat(F)V

    iget v5, p0, Landroid/app/ComposedIconInfo;->iconDensity:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    iget v5, p0, Landroid/app/ComposedIconInfo;->iconSize:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v5, p0, Landroid/app/ComposedIconInfo;->iconBacks:[I

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/app/ComposedIconInfo;->iconBacks:[I

    array-length v5, v5

    :goto_0
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v5, p0, Landroid/app/ComposedIconInfo;->iconBacks:[I

    if-eqz v5, :cond_1

    iget-object v0, p0, Landroid/app/ComposedIconInfo;->iconBacks:[I

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .local v3, "resId":I
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "resId":I
    :cond_0
    move v5, v6

    goto :goto_0

    :cond_1
    iget v5, p0, Landroid/app/ComposedIconInfo;->iconMask:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    iget v5, p0, Landroid/app/ComposedIconInfo;->iconUpon:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v5, p0, Landroid/app/ComposedIconInfo;->colorFilter:[F

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/app/ComposedIconInfo;->colorFilter:[F

    array-length v5, v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/ComposedIconInfo;->colorFilter:[F

    .local v0, "arr$":[F
    array-length v2, v0

    .restart local v2    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_2
    if-ge v1, v2, :cond_3

    aget v4, v0, v1

    .local v4, "val":F
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeFloat(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0    # "arr$":[F
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "val":F
    :cond_2
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    :cond_3
    return-void
.end method
