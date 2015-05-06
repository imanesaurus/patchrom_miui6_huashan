.class public Lcom/android/internal/telephony/CallManager$CmHandler;
.super Landroid/os/Handler;
.source "CallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CmHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/CallManager;


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/CallManager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x0

    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v7, v6, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {v7, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    :pswitch_1
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v7, v6, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {v7, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    :pswitch_2
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    # invokes: Lcom/android/internal/telephony/CallManager;->hasMoreThanOneRingingCall()Z
    invoke-static {v6}, Lcom/android/internal/telephony/CallManager;->access$000(Lcom/android/internal/telephony/CallManager;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    # invokes: Lcom/android/internal/telephony/CallManager;->isRingingDuplicateCall()Z
    invoke-static {v6}, Lcom/android/internal/telephony/CallManager;->access$100(Lcom/android/internal/telephony/CallManager;)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    iget-object v1, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .local v1, "c":Lcom/android/internal/telephony/Connection;
    :try_start_0
    const-string v6, "CallManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "silently drop incoming call: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v6, "CallManager"

    const-string v7, "new ringing connection"

    invoke-static {v6, v7, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "c":Lcom/android/internal/telephony/Connection;
    .end local v2    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v7, v6, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {v7, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    :pswitch_3
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v7, v6, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {v7, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v7, v6, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {v7, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v7, v6, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {v7, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v7, v6, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {v7, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v7, v6, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {v7, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v7, v6, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {v7, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v7, v6, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {v7, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :pswitch_a
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v7, v6, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {v7, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :pswitch_b
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v7, v6, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants:Landroid/os/RegistrantList;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {v7, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :pswitch_c
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v7, v6, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {v7, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :pswitch_d
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v7, v6, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants:Landroid/os/RegistrantList;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {v7, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :pswitch_e
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v7, v6, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {v7, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :pswitch_f
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v7, v6, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {v7, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :pswitch_10
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v7, v6, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {v7, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :pswitch_11
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v7, v6, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {v7, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :pswitch_12
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v7, v6, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {v7, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :pswitch_13
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v7, v6, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants:Landroid/os/RegistrantList;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {v7, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :pswitch_14
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_3

    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v6, :cond_3

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v7, v6, Lcom/android/internal/telephony/CallManager;->mCallModifyRegistrants:Landroid/os/RegistrantList;

    new-instance v8, Landroid/os/AsyncResult;

    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/Connection;

    invoke-direct {v8, v9, v6, v9}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v7, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :cond_3
    const-string v6, "CallManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error EVENT_MODIFY_CALL AsyncResult ar= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_15
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v6, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v6, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6, v3}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Registrant;

    invoke-virtual {v6}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v4

    .local v4, "notifyMsg":Landroid/os/Message;
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v6, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget v6, p1, Landroid/os/Message;->arg1:I

    iput v6, v4, Landroid/os/Message;->arg1:I

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v3    # "i":I
    .end local v4    # "notifyMsg":Landroid/os/Message;
    :pswitch_16
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .local v5, "res":Landroid/os/AsyncResult;
    if-eqz v5, :cond_4

    iget-object v6, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v6, :cond_4

    iget-object v6, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v6, Lcom/android/internal/telephony/CallManager;->mModifyCallResponseRegistrants:Landroid/os/RegistrantList;

    new-instance v7, Landroid/os/AsyncResult;

    iget-object v8, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-direct {v7, v9, v8, v9}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v6, v7}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :cond_4
    const-string v6, "CallManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EVENT_MODIFY_CALL_RESPONSE AsyncResult res= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_13
        :pswitch_15
        :pswitch_12
        :pswitch_14
        :pswitch_16
    .end packed-switch
.end method
