.class public final Landroid/app/RingModeSettings;
.super Ljava/lang/Object;
.source "RingModeSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/RingModeSettings;",
            ">;"
        }
    .end annotation
.end field

.field private static final RING_MODE_MUTE:Ljava/lang/String; = "mute"

.field private static final RING_MODE_NORMAL:Ljava/lang/String; = "normal"

.field private static final RING_MODE_VIBRATE:Ljava/lang/String; = "vibrate"


# instance fields
.field private mDirty:Z

.field private mOverride:Z

.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/app/RingModeSettings$1;

    invoke-direct {v0}, Landroid/app/RingModeSettings$1;-><init>()V

    sput-object v0, Landroid/app/RingModeSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-string v0, "normal"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/app/RingModeSettings;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/app/RingModeSettings;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "override"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/RingModeSettings;->mValue:Ljava/lang/String;

    iput-boolean p2, p0, Landroid/app/RingModeSettings;->mOverride:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/RingModeSettings;->mDirty:Z

    return-void
.end method

.method public static fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Landroid/app/RingModeSettings;
    .locals 5
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, "event":I
    new-instance v2, Landroid/app/RingModeSettings;

    invoke-direct {v2}, Landroid/app/RingModeSettings;-><init>()V

    .local v2, "ringModeDescriptor":Landroid/app/RingModeSettings;
    :goto_0
    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ringModeDescriptor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .local v1, "name":Ljava/lang/String;
    const-string v3, "value"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/app/RingModeSettings;->mValue:Ljava/lang/String;

    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .restart local v1    # "name":Ljava/lang/String;
    :cond_2
    const-string v3, "override"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Landroid/app/RingModeSettings;->mOverride:Z

    goto :goto_1

    .end local v1    # "name":Ljava/lang/String;
    :cond_3
    return-object v2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/RingModeSettings;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V
    .locals 1
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "<ringModeDescriptor>\n<value>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/app/RingModeSettings;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</value>\n<override>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Landroid/app/RingModeSettings;->mOverride:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "</override>\n</ringModeDescriptor>\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/app/RingModeSettings;->mDirty:Z

    return v0
.end method

.method public isOverride()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/app/RingModeSettings;->mOverride:Z

    return v0
.end method

.method public processOverride(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-virtual {p0}, Landroid/app/RingModeSettings;->isOverride()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    .local v1, "ringerMode":I
    iget-object v2, p0, Landroid/app/RingModeSettings;->mValue:Ljava/lang/String;

    const-string v3, "mute"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    :cond_0
    :goto_0
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .local v0, "amgr":Landroid/media/AudioManager;
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .end local v0    # "amgr":Landroid/media/AudioManager;
    .end local v1    # "ringerMode":I
    :cond_1
    return-void

    .restart local v1    # "ringerMode":I
    :cond_2
    iget-object v2, p0, Landroid/app/RingModeSettings;->mValue:Ljava/lang/String;

    const-string v3, "vibrate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/app/RingModeSettings;->mOverride:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/RingModeSettings;->mValue:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Landroid/app/RingModeSettings;->mDirty:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public setOverride(Z)V
    .locals 1
    .param p1, "override"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/app/RingModeSettings;->mOverride:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/RingModeSettings;->mDirty:Z

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Landroid/app/RingModeSettings;->mValue:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/RingModeSettings;->mDirty:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Landroid/app/RingModeSettings;->mOverride:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/RingModeSettings;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/RingModeSettings;->mDirty:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
