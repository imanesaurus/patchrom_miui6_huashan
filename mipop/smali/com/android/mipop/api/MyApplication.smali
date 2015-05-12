.class public Lcom/android/mipop/api/MyApplication;
.super Landroid/app/Application;
.source "MyApplication.java"


# static fields
.field private static back:Lcom/android/mipop/widget/MeterBack;

.field private static home:Lcom/android/mipop/widget/MeterHome;

.field private static mPowerRecovery:Z

.field private static menu:Lcom/android/mipop/widget/MeterMenu;

.field private static recent:Lcom/android/mipop/widget/MeterRecent;


# instance fields
.field public CONFIG_APP:Ljava/lang/String;

.field public CONFIG_POP:Ljava/lang/String;

.field RadioReceiver:Landroid/content/BroadcastReceiver;

.field private TAG:Ljava/lang/String;

.field public mSwitchIcon:Z

.field public wm4Icon:Landroid/view/WindowManager;

.field private wmParams:Landroid/view/WindowManager$LayoutParams;

.field wmParams4Window:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    sput-object v0, Lcom/android/mipop/api/MyApplication;->menu:Lcom/android/mipop/widget/MeterMenu;

    .line 31
    sput-object v0, Lcom/android/mipop/api/MyApplication;->recent:Lcom/android/mipop/widget/MeterRecent;

    .line 32
    sput-object v0, Lcom/android/mipop/api/MyApplication;->home:Lcom/android/mipop/widget/MeterHome;

    .line 33
    sput-object v0, Lcom/android/mipop/api/MyApplication;->back:Lcom/android/mipop/widget/MeterBack;

    .line 35
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mipop/api/MyApplication;->mPowerRecovery:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 23
    const-string v0, "MyApp"

    iput-object v0, p0, Lcom/android/mipop/api/MyApplication;->TAG:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/android/mipop/api/MyApplication;->wm4Icon:Landroid/view/WindowManager;

    .line 25
    iput-object v1, p0, Lcom/android/mipop/api/MyApplication;->wmParams4Window:Landroid/view/WindowManager$LayoutParams;

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mipop/api/MyApplication;->mSwitchIcon:Z

    .line 27
    const-string v0, "_CONFIG_APP_"

    iput-object v0, p0, Lcom/android/mipop/api/MyApplication;->CONFIG_APP:Ljava/lang/String;

    .line 28
    const-string v0, "_CONFIG_POP_"

    iput-object v0, p0, Lcom/android/mipop/api/MyApplication;->CONFIG_POP:Ljava/lang/String;

    .line 46
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/api/MyApplication;->wmParams:Landroid/view/WindowManager$LayoutParams;

    .line 99
    new-instance v0, Lcom/android/mipop/api/MyApplication$1;

    invoke-direct {v0, p0}, Lcom/android/mipop/api/MyApplication$1;-><init>(Lcom/android/mipop/api/MyApplication;)V

    iput-object v0, p0, Lcom/android/mipop/api/MyApplication;->RadioReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mipop/api/MyApplication;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mipop/api/MyApplication;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/mipop/api/MyApplication;->taskAsigned(Landroid/content/Intent;)V

    return-void
.end method

.method private globalActionMipopChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 122
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 123
    .local v2, "mipop":Z
    const-string v3, "Suhao.GlobalAction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "app: globalActionMipopChanged "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-string v3, "com.android.mipop_preferences"

    invoke-virtual {p1, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "globalAction"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 128
    if-eqz v2, :cond_0

    .line 129
    sput-boolean v7, Lcom/android/mipop/api/MyApplication;->mPowerRecovery:Z

    .line 130
    invoke-direct {p0}, Lcom/android/mipop/api/MyApplication;->onInitByPower()V

    .line 154
    :goto_0
    return-void

    .line 132
    :cond_0
    sput-boolean v6, Lcom/android/mipop/api/MyApplication;->mPowerRecovery:Z

    .line 134
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.android.mipop_preferences"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "mipop_switch"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 136
    .local v1, "lastMipop":Z
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.android.mipop_preferences"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "lastMipop_switch"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 139
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.android.mipop_preferences"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "mipop_fullscreen"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 141
    .local v0, "lastFullScreen":Z
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.android.mipop_preferences"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "lastMipop_fullscreen"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 144
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.android.mipop_preferences"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "mipop_switch"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 146
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.android.mipop_preferences"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "mipop_fullscreen"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 149
    const-string v3, "Suhao.GlobalAction"

    const-string v4, "app: globalActionMipopChanged mipop = false"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-static {}, Lcom/android/mipop/api/MyApplication;->hideMipop()V

    .line 152
    invoke-direct {p0, v6}, Lcom/android/mipop/api/MyApplication;->showNavigationbar(Z)V

    goto/16 :goto_0
.end method

.method public static hideMipop()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 93
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterHome;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    invoke-virtual {v0, v2}, Lcom/android/mipop/widget/MeterBase;->setVisibility(I)V

    .line 94
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterRecent;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    invoke-virtual {v0, v2}, Lcom/android/mipop/widget/MeterBase;->setVisibility(I)V

    .line 95
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterMenu;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    invoke-virtual {v0, v2}, Lcom/android/mipop/widget/MeterBase;->setVisibility(I)V

    .line 96
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterBack;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    invoke-virtual {v0, v2}, Lcom/android/mipop/widget/MeterBase;->setVisibility(I)V

    .line 97
    return-void
.end method

.method private onInitByCheckBox()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 158
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.android.mipop_preferences"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "globalAction"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 161
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.android.mipop_preferences"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "mipop_switch"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 164
    .local v1, "mipop":Z
    const-string v2, "Suhao.Power"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mipopApp: onInitByCheckBox mipop = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    if-eqz v1, :cond_0

    .line 167
    invoke-static {}, Lcom/android/mipop/api/MyApplication;->showMipop()V

    .line 172
    :goto_0
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.android.mipop_preferences"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "mipop_fullscreen"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 174
    .local v0, "full":Z
    if-nez v0, :cond_1

    .line 175
    invoke-direct {p0, v6}, Lcom/android/mipop/api/MyApplication;->showNavigationbar(Z)V

    .line 179
    :goto_1
    return-void

    .line 169
    .end local v0    # "full":Z
    :cond_0
    invoke-static {}, Lcom/android/mipop/api/MyApplication;->hideMipop()V

    goto :goto_0

    .line 177
    .restart local v0    # "full":Z
    :cond_1
    invoke-direct {p0, v5}, Lcom/android/mipop/api/MyApplication;->showNavigationbar(Z)V

    goto :goto_1
.end method

.method private onInitByPower()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 182
    const-string v2, "Suhao.Power"

    const-string v3, "mipopApp: onInitByPower"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.android.mipop_preferences"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "globalAction"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 186
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.android.mipop_preferences"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "lastMipop_switch"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 188
    .local v1, "lastMipop":Z
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.android.mipop_preferences"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "mipop_switch"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 190
    const-string v2, "Suhao.Power"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mipopApp: onInitByPower mipop = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    if-eqz v1, :cond_0

    .line 193
    invoke-static {}, Lcom/android/mipop/api/MyApplication;->showMipop()V

    .line 198
    :goto_0
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.android.mipop_preferences"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "lastMipop_fullscreen"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 200
    .local v0, "lastFull":Z
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.android.mipop_preferences"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "mipop_fullscreen"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 202
    if-nez v0, :cond_1

    .line 203
    invoke-direct {p0, v6}, Lcom/android/mipop/api/MyApplication;->showNavigationbar(Z)V

    .line 208
    :goto_1
    return-void

    .line 195
    .end local v0    # "lastFull":Z
    :cond_0
    invoke-static {}, Lcom/android/mipop/api/MyApplication;->hideMipop()V

    goto :goto_0

    .line 205
    .restart local v0    # "lastFull":Z
    :cond_1
    invoke-direct {p0, v5}, Lcom/android/mipop/api/MyApplication;->showNavigationbar(Z)V

    goto :goto_1
.end method

.method public static showMipop()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 84
    invoke-static {}, Lcom/android/mipop/animation/AnimationParking;->stop()V

    .line 85
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mipop/animation/AnimationParking;->mOriginSide:Z

    .line 86
    sput v1, Lcom/android/mipop/animation/AnimationParking;->baseX:I

    .line 87
    sget-object v0, Lcom/android/mipop/api/MyApplication;->back:Lcom/android/mipop/widget/MeterBack;

    sget v0, Lcom/android/mipop/widget/MeterBack;->baseY:I

    invoke-static {v1, v0}, Lcom/android/mipop/animation/AnimationParking;->updateAll(II)V

    .line 88
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterBack;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mipop/widget/MeterBase;->setVisibility(I)V

    .line 89
    return-void
.end method

.method private showNavigationbar(Z)V
    .locals 6
    .param p1, "show"    # Z

    .prologue
    .line 253
    const-string v2, "showNavigationBar"

    .line 254
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "isShow":Ljava/lang/String;
    const-string v3, "Suhao.GlobalAction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "app: showNavigationbar show = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const-string v3, "Suhao.GlobalAction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "app: showNavigationbar navigationBar"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-instance v1, Landroid/content/Intent;

    const-string v3, "zte.com.cn.NAVIGATIONBAR_SHOW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
    .local v1, "isShowIntent":Landroid/content/Intent;
    if-eqz p1, :cond_1

    .line 261
    const-string v3, "show"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 262
    const-string v3, "state"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 263
    invoke-virtual {p0, v1}, Lcom/android/mipop/api/MyApplication;->sendBroadcast(Landroid/content/Intent;)V

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    const-string v3, "hide"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 267
    const-string v3, "state"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 268
    invoke-virtual {p0, v1}, Lcom/android/mipop/api/MyApplication;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private taskAsigned(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 110
    const-string v1, "MyAppWidget"

    const-string v2, "app: taskAsigned"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "action":Ljava/lang/String;
    const-string v1, "widgetMipopStatusChanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/mipop/api/MyApplication;->widgetMipopStatusChanged(Landroid/content/Context;Landroid/content/Intent;)V

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    const-string v1, "widgetFullStatusChanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 115
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/mipop/api/MyApplication;->widgetFullStatusChanged(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 116
    :cond_2
    const-string v1, "globalActionMipopChanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/mipop/api/MyApplication;->globalActionMipopChanged(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private widgetFullStatusChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 225
    const-string v2, "Suhao.Widget"

    const-string v3, "mipopApp: widgetFullStatusChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 228
    .local v1, "mFullStatus":Z
    const-string v2, "MyAppWidget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "app: widgetFullStatusChanged "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    if-eqz v1, :cond_0

    .line 230
    new-instance v0, Landroid/content/Intent;

    const-string v2, "zte.com.cn.NAVIGATIONBAR_SHOW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 231
    .local v0, "isShowIntent":Landroid/content/Intent;
    const-string v2, "state"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 232
    invoke-virtual {p0, v0}, Lcom/android/mipop/api/MyApplication;->sendBroadcast(Landroid/content/Intent;)V

    .line 233
    iget-object v2, p0, Lcom/android/mipop/api/MyApplication;->TAG:Ljava/lang/String;

    const-string v3, "sendbroadcast true"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-static {}, Lcom/android/mipop/api/MyApplication;->showMipop()V

    .line 238
    const-string v2, "com.android.mipop_preferences"

    invoke-virtual {p1, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "mipop_switch"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 240
    const-string v2, "Suhao.Widget"

    const-string v3, "mipopApp: widgetFullStatusChanged mipop = true"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :goto_0
    const-string v2, "com.android.mipop_preferences"

    invoke-virtual {p1, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "mipop_fullscreen"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 250
    return-void

    .line 243
    .end local v0    # "isShowIntent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "zte.com.cn.NAVIGATIONBAR_SHOW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 244
    .restart local v0    # "isShowIntent":Landroid/content/Intent;
    const-string v2, "state"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 245
    invoke-virtual {p0, v0}, Lcom/android/mipop/api/MyApplication;->sendBroadcast(Landroid/content/Intent;)V

    .line 246
    const-string v2, "MyAppWidget"

    const-string v3, "app: sendbroadcast false"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private widgetMipopStatusChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 211
    const-string v1, "Suhao.Widget"

    const-string v2, "mipopApp: widgetMipopStatusChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 214
    .local v0, "mipop":Z
    if-eqz v0, :cond_0

    .line 215
    invoke-static {}, Lcom/android/mipop/api/MyApplication;->showMipop()V

    .line 220
    :goto_0
    const-string v1, "com.android.mipop_preferences"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "mipop_switch"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 222
    const-string v1, "Suhao.Widget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app: widgetMipopStatusChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-void

    .line 218
    :cond_0
    invoke-static {}, Lcom/android/mipop/api/MyApplication;->hideMipop()V

    goto :goto_0
.end method


# virtual methods
.method public getMywmParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/mipop/api/MyApplication;->wmParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 56
    const-string v4, "MyAppWidget"

    const-string v5, "app receiver register"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 58
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v2, "widgetMipopStatusChanged"

    .line 59
    .local v2, "actionWidgetMipop":Ljava/lang/String;
    const-string v1, "widgetFullStatusChanged"

    .line 60
    .local v1, "actionWidgetFull":Ljava/lang/String;
    const-string v0, "globalActionMipopChanged"

    .line 61
    .local v0, "actionGlobalActionMipop":Ljava/lang/String;
    invoke-virtual {v3, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v3, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mipop/api/MyApplication;->RadioReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 66
    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mipop/widget/Until;->initialPop(Landroid/content/Context;)V

    .line 68
    new-instance v4, Lcom/android/mipop/widget/MeterMenu;

    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/mipop/widget/MeterMenu;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/android/mipop/api/MyApplication;->menu:Lcom/android/mipop/widget/MeterMenu;

    .line 69
    new-instance v4, Lcom/android/mipop/widget/MeterRecent;

    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/mipop/widget/MeterRecent;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/android/mipop/api/MyApplication;->recent:Lcom/android/mipop/widget/MeterRecent;

    .line 70
    new-instance v4, Lcom/android/mipop/widget/MeterHome;

    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/mipop/widget/MeterHome;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/android/mipop/api/MyApplication;->home:Lcom/android/mipop/widget/MeterHome;

    .line 71
    new-instance v4, Lcom/android/mipop/widget/MeterBack;

    invoke-virtual {p0}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/mipop/widget/MeterBack;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/android/mipop/api/MyApplication;->back:Lcom/android/mipop/widget/MeterBack;

    .line 78
    invoke-direct {p0}, Lcom/android/mipop/api/MyApplication;->onInitByCheckBox()V

    .line 80
    return-void
.end method
