.class public final Landroid/app/AirplaneModeSettings;
.super Ljava/lang/Object;
.source "AirplaneModeSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/AirplaneModeSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDirty:Z

.field private mOverride:Z

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/app/AirplaneModeSettings$1;

    invoke-direct {v0}, Landroid/app/AirplaneModeSettings$1;-><init>()V

    sput-object v0, Landroid/app/AirplaneModeSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/app/AirplaneModeSettings;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1
    .param p1, "value"    # I
    .param p2, "override"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/AirplaneModeSettings;->mValue:I

    iput-boolean p2, p0, Landroid/app/AirplaneModeSettings;->mOverride:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/AirplaneModeSettings;->mDirty:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/app/AirplaneModeSettings;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public static fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Landroid/app/AirplaneModeSettings;
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

    move-result v1

    .local v1, "event":I
    new-instance v0, Landroid/app/AirplaneModeSettings;

    invoke-direct {v0}, Landroid/app/AirplaneModeSettings;-><init>()V

    .local v0, "airplaneModeDescriptor":Landroid/app/AirplaneModeSettings;
    :goto_0
    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "airplaneModeDescriptor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .local v2, "name":Ljava/lang/String;
    const-string v3, "value"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Landroid/app/AirplaneModeSettings;->mValue:I

    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .restart local v2    # "name":Ljava/lang/String;
    :cond_2
    const-string v3, "override"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Landroid/app/AirplaneModeSettings;->mOverride:Z

    goto :goto_1

    .end local v2    # "name":Ljava/lang/String;
    :cond_3
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/app/AirplaneModeSettings;->mValue:I

    return v0
.end method

.method public getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V
    .locals 1
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "<airplaneModeDescriptor>\n<value>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/app/AirplaneModeSettings;->mValue:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "</value>\n<override>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Landroid/app/AirplaneModeSettings;->mOverride:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "</override>\n</airplaneModeDescriptor>\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/app/AirplaneModeSettings;->mDirty:Z

    return v0
.end method

.method public isOverride()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/app/AirplaneModeSettings;->mOverride:Z

    return v0
.end method

.method public processOverride(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/app/AirplaneModeSettings;->isOverride()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, "current":I
    iget v4, p0, Landroid/app/AirplaneModeSettings;->mValue:I

    if-eq v0, v4, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    iget v6, p0, Landroid/app/AirplaneModeSettings;->mValue:I

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "state"

    iget v5, p0, Landroid/app/AirplaneModeSettings;->mValue:I

    if-ne v5, v2, :cond_1

    :goto_0
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v0    # "current":I
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .restart local v0    # "current":I
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_1
    move v2, v3

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
    iput-boolean v0, p0, Landroid/app/AirplaneModeSettings;->mOverride:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AirplaneModeSettings;->mValue:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Landroid/app/AirplaneModeSettings;->mDirty:Z

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
    iput-boolean p1, p0, Landroid/app/AirplaneModeSettings;->mOverride:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/AirplaneModeSettings;->mDirty:Z

    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    iput p1, p0, Landroid/app/AirplaneModeSettings;->mValue:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/AirplaneModeSettings;->mDirty:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Landroid/app/AirplaneModeSettings;->mOverride:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/AirplaneModeSettings;->mValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/app/AirplaneModeSettings;->mDirty:Z

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
