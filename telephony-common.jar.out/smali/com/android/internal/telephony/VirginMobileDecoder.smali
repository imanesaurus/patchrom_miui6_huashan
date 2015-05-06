.class public Lcom/android/internal/telephony/VirginMobileDecoder;
.super Ljava/lang/Object;
.source "VirginMobileDecoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeMMS(Lcom/android/internal/telephony/SmsMessageBase;)V
    .locals 11
    .param p0, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    const/4 v9, 0x0

    .local v9, "userData":[B
    const/4 v8, 0x0

    .local v8, "ref":I
    const/4 v3, 0x0

    .local v3, "i1":I
    const/4 v1, 0x0

    .local v1, "desiredBitLength":I
    :try_start_0
    new-instance v4, Lcom/android/internal/util/BitwiseInputStream;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v10

    invoke-direct {v4, v10}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .local v4, "inStream":Lcom/android/internal/util/BitwiseInputStream;
    const/16 v10, 0x14

    invoke-virtual {v4, v10}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v10

    shl-int/lit8 v5, v10, 0x8

    .local v5, "j":I
    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v7

    .local v7, "k":I
    or-int v8, v5, v7

    const/16 v10, 0xc

    invoke-virtual {v4, v10}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v10

    add-int/lit8 v3, v10, -0x2

    const/16 v10, 0xd

    invoke-virtual {v4, v10}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    new-array v0, v3, [B

    .local v0, "abyte1":[B
    const/4 v6, 0x0

    .local v6, "j1":I
    :goto_0
    if-ge v6, v3, :cond_0

    const/4 v10, 0x0

    aput-byte v10, v0, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v3, 0x8

    invoke-virtual {v4}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v10

    if-ge v10, v1, :cond_1

    .end local v0    # "abyte1":[B
    .end local v4    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .end local v5    # "j":I
    .end local v6    # "j1":I
    .end local v7    # "k":I
    :goto_1
    return-void

    .restart local v0    # "abyte1":[B
    .restart local v4    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .restart local v5    # "j":I
    .restart local v6    # "j1":I
    .restart local v7    # "k":I
    :cond_1
    invoke-virtual {v4, v1}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/SmsMessageBase;->mUserData:[B

    iput v8, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    goto :goto_1

    .end local v0    # "abyte1":[B
    .end local v4    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .end local v5    # "j":I
    .end local v6    # "j1":I
    .end local v7    # "k":I
    :catch_0
    move-exception v2

    .local v2, "e":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    goto :goto_1
.end method
