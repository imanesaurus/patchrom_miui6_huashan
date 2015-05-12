.class public Lcom/android/mipop/MIPopActivity;
.super Landroid/preference/PreferenceActivity;
.source "MIPopActivity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final SET_CAN_SWITCH_WAVE:I = 0x6

.field private static canSwitchWave:Z

.field private static mFirstCreate:Z

.field private static mSwitchWave:Z


# instance fields
.field RadioReceiver:Landroid/content/BroadcastReceiver;

.field private TAG:Ljava/lang/String;

.field mFullScreen:Landroid/preference/CheckBoxPreference;

.field private mHandler:Landroid/os/Handler;

.field mMiPop:Landroid/preference/CheckBoxPreference;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mNotifiyId:I

.field private mNotify:Landroid/app/Notification;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field mcontext:Landroid/content/Context;

.field private vibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 58
    sput-boolean v0, Lcom/android/mipop/MIPopActivity;->canSwitchWave:Z

    .line 75
    sput-boolean v0, Lcom/android/mipop/MIPopActivity;->mFirstCreate:Z

    .line 76
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mipop/MIPopActivity;->mSwitchWave:Z

    .line 77
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 39
    new-instance v0, Lcom/android/mipop/MIPopActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mipop/MIPopActivity$1;-><init>(Lcom/android/mipop/MIPopActivity;)V

    iput-object v0, p0, Lcom/android/mipop/MIPopActivity;->RadioReceiver:Landroid/content/BroadcastReceiver;

    .line 50
    const-string v0, "MIPopActivity"

    iput-object v0, p0, Lcom/android/mipop/MIPopActivity;->TAG:Ljava/lang/String;

    .line 59
    new-instance v0, Lcom/android/mipop/MIPopActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mipop/MIPopActivity$2;-><init>(Lcom/android/mipop/MIPopActivity;)V

    iput-object v0, p0, Lcom/android/mipop/MIPopActivity;->mHandler:Landroid/os/Handler;

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mipop/MIPopActivity;->mNotifiyId:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/mipop/MIPopActivity;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mipop/MIPopActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/mipop/MIPopActivity;->taskAsigned(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 37
    sput-boolean p0, Lcom/android/mipop/MIPopActivity;->canSwitchWave:Z

    return p0
.end method

.method private activityFullStatusChanged(Z)V
    .locals 4
    .param p1, "full"    # Z

    .prologue
    .line 540
    const-string v2, "MyAppWidget"

    const-string v3, "activity: activityFullStatusChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 542
    .local v1, "intent":Landroid/content/Intent;
    const-string v0, "activityFullStatusChanged"

    .line 543
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 544
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 545
    iget-object v2, p0, Lcom/android/mipop/MIPopActivity;->mcontext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 546
    return-void
.end method

.method private activityMipopStatusChanged(Z)V
    .locals 5
    .param p1, "mipop"    # Z

    .prologue
    .line 530
    const-string v2, "MyAppWidget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "activity: activityMipopStatusChanged "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 533
    .local v1, "intent":Landroid/content/Intent;
    const-string v0, "activityMipopStatusChanged"

    .line 534
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 535
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 536
    iget-object v2, p0, Lcom/android/mipop/MIPopActivity;->mcontext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 537
    return-void
.end method

.method private changeTimer()V
    .locals 4

    .prologue
    .line 499
    const-string v1, "mq"

    const-string v2, "~~~~~~~~~~~~changeTimer~~~~~~~~~~~~~~~~~~~"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object v1, p0, Lcom/android/mipop/MIPopActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 502
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/mipop/MIPopActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 503
    return-void
.end method

.method private fullScreenStatusUpdate()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 551
    iget-object v0, p0, Lcom/android/mipop/MIPopActivity;->mFullScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/android/mipop/MIPopActivity;->mMiPop:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 553
    iget-object v0, p0, Lcom/android/mipop/MIPopActivity;->mMiPop:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 554
    const-string v0, "Suhao.CheckBox"

    const-string v1, "activity: fullScreenStatusUpdate mipop = true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :goto_0
    return-void

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/android/mipop/MIPopActivity;->mMiPop:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private globalActionMipopChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 572
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 574
    .local v0, "globalAction":Z
    const-string v5, "globalChange"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "activity: globalActionMipopChanged "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    if-eqz v0, :cond_1

    .line 578
    iget-object v5, p0, Lcom/android/mipop/MIPopActivity;->mFullScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 579
    invoke-virtual {p0}, Lcom/android/mipop/MIPopActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.android.mipop_preferences"

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "lastMipop_fullscreen"

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 581
    .local v1, "lastFull":Z
    iget-object v5, p0, Lcom/android/mipop/MIPopActivity;->mFullScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 583
    invoke-virtual {p0}, Lcom/android/mipop/MIPopActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.android.mipop_preferences"

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "lastMipop_switch"

    invoke-interface {v5, v6, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 585
    .local v2, "lastMipop":Z
    iget-object v5, p0, Lcom/android/mipop/MIPopActivity;->mMiPop:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 586
    iget-object v5, p0, Lcom/android/mipop/MIPopActivity;->mMiPop:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/mipop/MIPopActivity;->mFullScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-nez v6, :cond_0

    :goto_0
    invoke-virtual {v5, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 588
    const-string v3, "Suhao.CheckBox"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "activity: globalActionMipopChanged mipop = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    .end local v1    # "lastFull":Z
    .end local v2    # "lastMipop":Z
    :goto_1
    return-void

    .restart local v1    # "lastFull":Z
    .restart local v2    # "lastMipop":Z
    :cond_0
    move v3, v4

    .line 586
    goto :goto_0

    .line 591
    .end local v1    # "lastFull":Z
    .end local v2    # "lastMipop":Z
    :cond_1
    iget-object v5, p0, Lcom/android/mipop/MIPopActivity;->mMiPop:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 592
    iget-object v5, p0, Lcom/android/mipop/MIPopActivity;->mFullScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 593
    iget-object v3, p0, Lcom/android/mipop/MIPopActivity;->mMiPop:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 594
    iget-object v3, p0, Lcom/android/mipop/MIPopActivity;->mFullScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 596
    const-string v3, "Suhao.Click"

    const-string v4, "activity: globalActionMipopChanged mipop = false"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setNotify(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    return-void
.end method

.method private setupFloatIcon()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 281
    invoke-virtual {p0}, Lcom/android/mipop/MIPopActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.android.mipop_preferences"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "mipop_switch"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 289
    .local v0, "mipopStatus":Z
    if-eqz v0, :cond_0

    .line 291
    iget-object v3, p0, Lcom/android/mipop/MIPopActivity;->mMiPop:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 297
    :goto_0
    iget-object v3, p0, Lcom/android/mipop/MIPopActivity;->mMiPop:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/mipop/MIPopActivity;->mFullScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_1

    :goto_1
    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 299
    const-string v1, "Suhao.CheckBox"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activity :setupFloatIcon mipop = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return-void

    .line 295
    :cond_0
    iget-object v3, p0, Lcom/android/mipop/MIPopActivity;->mMiPop:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    move v1, v2

    .line 297
    goto :goto_1
.end method

.method private setupFullScreen()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 303
    const-string v3, "showNavigationBar"

    .line 304
    .local v3, "key":Ljava/lang/String;
    const/4 v1, 0x0

    .line 305
    .local v1, "isFullScreen":Z
    invoke-virtual {p0}, Lcom/android/mipop/MIPopActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 307
    .local v2, "isShow":Ljava/lang/String;
    const-string v4, "show"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 308
    const/4 v1, 0x0

    .line 312
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/mipop/MIPopActivity;->mFullScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 314
    invoke-virtual {p0}, Lcom/android/mipop/MIPopActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.android.mipop_preferences"

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "globalAction"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 316
    .local v0, "globalAction":Z
    const-string v4, "globalChange"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "activity: setupFullScreen "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    if-eqz v0, :cond_2

    .line 318
    iget-object v4, p0, Lcom/android/mipop/MIPopActivity;->mFullScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 324
    :goto_1
    return-void

    .line 309
    .end local v0    # "globalAction":Z
    :cond_1
    const-string v4, "hide"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 310
    const/4 v1, 0x1

    goto :goto_0

    .line 320
    .restart local v0    # "globalAction":Z
    :cond_2
    iget-object v4, p0, Lcom/android/mipop/MIPopActivity;->mFullScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private taskAsigned(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 562
    const-string v1, "MyAppWidget"

    const-string v2, "activity: taskAsigned"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 564
    .local v0, "action":Ljava/lang/String;
    const-string v1, "globalActionMipopChanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 565
    invoke-virtual {p0}, Lcom/android/mipop/MIPopActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/mipop/MIPopActivity;->globalActionMipopChanged(Landroid/content/Context;Landroid/content/Intent;)V

    .line 567
    :cond_0
    return-void
.end method


# virtual methods
.method public getluncher()V
    .locals 5

    .prologue
    .line 437
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Lcom/android/mipop/MIPopActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 438
    .local v0, "a":Landroid/app/ActivityManager;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 439
    .local v1, "localObject":Ljava/util/List;
    if-eqz v1, :cond_0

    move-object v2, v1

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 440
    check-cast v1, Ljava/util/List;

    .end local v1    # "localObject":Ljava/util/List;
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 441
    .local v1, "localObject":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mipop/MIPopActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+++++++getluncher()+++localObject="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    .end local v1    # "localObject":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/hardware/Sensor;
    .param p2, "arg1"    # I

    .prologue
    .line 480
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 455
    iget-object v1, p0, Lcom/android/mipop/MIPopActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult --requestCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    if-ne p1, v4, :cond_0

    .line 462
    iget-object v1, p0, Lcom/android/mipop/MIPopActivity;->TAG:Ljava/lang/String;

    const-string v2, "onActivityResult =1--in"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    if-eqz p3, :cond_0

    .line 465
    const-string v1, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 466
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/mipop/MIPopActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult =1--uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    invoke-static {p0, v4, v0}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 470
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 198
    const-string v0, "MyAppWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activity onCreate() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mipop/MIPopActivity;->mcontext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 201
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcom/android/mipop/MIPopActivity;->addPreferencesFromResource(I)V

    .line 203
    const-string v0, "mipop_switch"

    invoke-virtual {p0, v0}, Lcom/android/mipop/MIPopActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/mipop/MIPopActivity;->mMiPop:Landroid/preference/CheckBoxPreference;

    .line 204
    const-string v0, "mipop_fullscreen"

    invoke-virtual {p0, v0}, Lcom/android/mipop/MIPopActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/mipop/MIPopActivity;->mFullScreen:Landroid/preference/CheckBoxPreference;

    .line 209
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/android/mipop/MIPopActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/mipop/MIPopActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 210
    iget-object v0, p0, Lcom/android/mipop/MIPopActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/mipop/MIPopActivity;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 213
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/android/mipop/MIPopActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/mipop/MIPopActivity;->vibrator:Landroid/os/Vibrator;

    .line 216
    iput-object p0, p0, Lcom/android/mipop/MIPopActivity;->mcontext:Landroid/content/Context;

    .line 219
    sget-boolean v0, Lcom/android/mipop/MIPopActivity;->mFirstCreate:Z

    if-eqz v0, :cond_0

    .line 221
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mipop/MIPopActivity;->mFirstCreate:Z

    .line 241
    invoke-virtual {p0}, Lcom/android/mipop/MIPopActivity;->getluncher()V

    .line 246
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 130
    iget-object v1, p0, Lcom/android/mipop/MIPopActivity;->TAG:Ljava/lang/String;

    const-string v2, "onPreferenceTreeClick"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v1, p0, Lcom/android/mipop/MIPopActivity;->mMiPop:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_2

    .line 132
    iget-object v1, p0, Lcom/android/mipop/MIPopActivity;->TAG:Ljava/lang/String;

    const-string v2, "onPreferenceTreeClick preference == mMiPop"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v1, p0, Lcom/android/mipop/MIPopActivity;->mMiPop:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/android/mipop/MIPopActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/android/mipop/api/MyApplication;

    invoke-static {}, Lcom/android/mipop/api/MyApplication;->showMipop()V

    .line 138
    iget-object v1, p0, Lcom/android/mipop/MIPopActivity;->mFullScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 140
    iget-object v1, p0, Lcom/android/mipop/MIPopActivity;->mMiPop:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 142
    new-instance v0, Landroid/content/Intent;

    const-string v1, "zte.com.cn.NAVIGATIONBAR_SHOW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    .local v0, "isShowIntent":Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 145
    invoke-virtual {p0, v0}, Lcom/android/mipop/MIPopActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 146
    iget-object v1, p0, Lcom/android/mipop/MIPopActivity;->TAG:Ljava/lang/String;

    const-string v2, "sendbroadcast true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .end local v0    # "isShowIntent":Landroid/content/Intent;
    :goto_0
    iget-object v1, p0, Lcom/android/mipop/MIPopActivity;->mMiPop:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/mipop/MIPopActivity;->activityMipopStatusChanged(Z)V

    .line 192
    :cond_0
    :goto_1
    return v4

    .line 149
    :cond_1
    invoke-virtual {p0}, Lcom/android/mipop/MIPopActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/android/mipop/api/MyApplication;

    invoke-static {}, Lcom/android/mipop/api/MyApplication;->hideMipop()V

    .line 153
    sput-boolean v3, Lcom/android/mipop/MIPopActivity;->mSwitchWave:Z

    goto :goto_0

    .line 159
    :cond_2
    iget-object v1, p0, Lcom/android/mipop/MIPopActivity;->mFullScreen:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/android/mipop/MIPopActivity;->TAG:Ljava/lang/String;

    const-string v2, "onPreferenceTreeClick preference == mFullScreen"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const-string v1, "Suhao.CheckBox"

    const-string v2, "mFullScreen checked mipop = true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v1, p0, Lcom/android/mipop/MIPopActivity;->mFullScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 163
    new-instance v0, Landroid/content/Intent;

    const-string v1, "zte.com.cn.NAVIGATIONBAR_SHOW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    .restart local v0    # "isShowIntent":Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 166
    invoke-virtual {p0, v0}, Lcom/android/mipop/MIPopActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 167
    iget-object v1, p0, Lcom/android/mipop/MIPopActivity;->TAG:Ljava/lang/String;

    const-string v2, "sendbroadcast true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v1, p0, Lcom/android/mipop/MIPopActivity;->mMiPop:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 170
    iget-object v1, p0, Lcom/android/mipop/MIPopActivity;->mMiPop:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 171
    invoke-virtual {p0}, Lcom/android/mipop/MIPopActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/android/mipop/api/MyApplication;

    invoke-static {}, Lcom/android/mipop/api/MyApplication;->showMipop()V

    .line 189
    :goto_2
    iget-object v1, p0, Lcom/android/mipop/MIPopActivity;->mFullScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/mipop/MIPopActivity;->activityFullStatusChanged(Z)V

    goto :goto_1

    .line 178
    .end local v0    # "isShowIntent":Landroid/content/Intent;
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "zte.com.cn.NAVIGATIONBAR_SHOW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    .restart local v0    # "isShowIntent":Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 181
    invoke-virtual {p0, v0}, Lcom/android/mipop/MIPopActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 182
    iget-object v1, p0, Lcom/android/mipop/MIPopActivity;->TAG:Ljava/lang/String;

    const-string v2, "sendbroadcast false"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v1, p0, Lcom/android/mipop/MIPopActivity;->mMiPop:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_2
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 328
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 329
    iget-object v0, p0, Lcom/android/mipop/MIPopActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+++++++onResume--mcontext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mipop/MIPopActivity;->mcontext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-direct {p0}, Lcom/android/mipop/MIPopActivity;->setupFloatIcon()V

    .line 333
    invoke-direct {p0}, Lcom/android/mipop/MIPopActivity;->setupFullScreen()V

    .line 338
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 509
    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    .line 510
    .local v0, "sensorType":I
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 511
    .local v1, "values":[F
    monitor-enter p0

    .line 512
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 526
    :cond_0
    :try_start_0
    monitor-exit p0

    .line 527
    return-void

    .line 526
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 91
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 92
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v0, "globalActionMipopChanged"

    .line 93
    .local v0, "actionGlobalActionMipop":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/mipop/MIPopActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mipop/MIPopActivity;->RadioReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 97
    invoke-virtual {p0}, Lcom/android/mipop/MIPopActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mipop/MIPopActivity;->setNotify(Landroid/content/Context;)V

    .line 99
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 100
    return-void
.end method
