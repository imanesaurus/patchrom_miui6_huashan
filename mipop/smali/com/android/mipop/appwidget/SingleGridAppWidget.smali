.class public Lcom/android/mipop/appwidget/SingleGridAppWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "SingleGridAppWidget.java"


# static fields
.field private static final OFF:Z = false

.field private static final ON:Z = true

.field private static mAsyncHandler:Landroid/os/Handler;

.field private static mFirstRecv:Z

.field private static statusFull:Z

.field private static statusGlobalAction:Z

.field private static statusMipop:Z


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mWidgetIds:[I

.field private mWidgetManager:Landroid/appwidget/AppWidgetManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 28
    sput-boolean v1, Lcom/android/mipop/appwidget/SingleGridAppWidget;->statusMipop:Z

    .line 29
    sput-boolean v1, Lcom/android/mipop/appwidget/SingleGridAppWidget;->statusFull:Z

    .line 30
    sput-boolean v2, Lcom/android/mipop/appwidget/SingleGridAppWidget;->statusGlobalAction:Z

    .line 35
    sput-boolean v2, Lcom/android/mipop/appwidget/SingleGridAppWidget;->mFirstRecv:Z

    .line 39
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ProtipWidget async"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, "thr":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 41
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/android/mipop/appwidget/SingleGridAppWidget;->mAsyncHandler:Landroid/os/Handler;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 23
    const-string v0, "MyAppWidget"

    iput-object v0, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->TAG:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->mContext:Landroid/content/Context;

    .line 33
    iput-object v1, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->mWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 21
    return-void
.end method

.method private activityFullStatusChanged(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 141
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->statusFull:Z

    .line 142
    const-string v0, "MyAppWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "widget: activityFullStatusChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/mipop/appwidget/SingleGridAppWidget;->statusFull:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    sget-boolean v0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->statusFull:Z

    if-eqz v0, :cond_0

    .line 144
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->statusMipop:Z

    .line 147
    :cond_0
    return-void
.end method

.method private activityMipopStatusChanged(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 136
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->statusMipop:Z

    .line 137
    const-string v0, "MyAppWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "singlegrid: : activityMipopStatusChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/mipop/appwidget/SingleGridAppWidget;->statusMipop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void
.end method

.method private buildUpdate(Landroid/content/Context;Landroid/content/Intent;)Landroid/widget/RemoteViews;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 45
    iget-object v3, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->TAG:Ljava/lang/String;

    const-string v4, "singlegrid: buildUpdate()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f030002

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 49
    .local v2, "views":Landroid/widget/RemoteViews;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "activityMipopStatusChanged"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 50
    invoke-direct {p0, p2}, Lcom/android/mipop/appwidget/SingleGridAppWidget;->activityMipopStatusChanged(Landroid/content/Intent;)V

    .line 59
    :cond_0
    :goto_0
    sget-boolean v3, Lcom/android/mipop/appwidget/SingleGridAppWidget;->statusGlobalAction:Z

    if-eqz v3, :cond_1

    .line 60
    sget-boolean v3, Lcom/android/mipop/appwidget/SingleGridAppWidget;->statusFull:Z

    if-nez v3, :cond_1

    .line 61
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/android/mipop/appwidget/SingleGridAppWidget;

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    .local v0, "bcastMipop":Landroid/content/Intent;
    const-string v3, "widgetMipopUpdate"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {p1, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 65
    .local v1, "pendingMipop":Landroid/app/PendingIntent;
    const v3, 0x7f050012

    invoke-virtual {v2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 69
    .end local v0    # "bcastMipop":Landroid/content/Intent;
    .end local v1    # "pendingMipop":Landroid/app/PendingIntent;
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/mipop/appwidget/SingleGridAppWidget;->updateUI(Landroid/widget/RemoteViews;)V

    .line 71
    return-object v2

    .line 51
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "widgetMipopUpdate"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 52
    invoke-direct {p0, p1}, Lcom/android/mipop/appwidget/SingleGridAppWidget;->widgetMipopStatusChanged(Landroid/content/Context;)V

    goto :goto_0

    .line 53
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "activityFullStatusChanged"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 54
    invoke-direct {p0, p2}, Lcom/android/mipop/appwidget/SingleGridAppWidget;->activityFullStatusChanged(Landroid/content/Intent;)V

    goto :goto_0

    .line 55
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "globalActionMipopChanged"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/mipop/appwidget/SingleGridAppWidget;->globalActionMipopChanged(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private getstatusMipop(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.mipop_preferences"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "mipop_switch"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->statusMipop:Z

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.mipop_preferences"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "mipop_fullscreen"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->statusFull:Z

    .line 130
    const-string v0, "MyAppWdiget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "singlegrid: getstatusMipop = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/mipop/appwidget/SingleGridAppWidget;->statusMipop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void
.end method

.method private globalActionMipopChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 163
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 164
    .local v0, "mipop":Z
    const-string v1, "globalChange"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "widget: globalActionMipopChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    sput-boolean v0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->statusGlobalAction:Z

    .line 167
    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.mipop_preferences"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "mipop_switch"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/mipop/appwidget/SingleGridAppWidget;->statusMipop:Z

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.mipop_preferences"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "mipop_fullscreen"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/mipop/appwidget/SingleGridAppWidget;->statusFull:Z

    .line 177
    :goto_0
    return-void

    .line 174
    :cond_0
    sput-boolean v4, Lcom/android/mipop/appwidget/SingleGridAppWidget;->statusMipop:Z

    .line 175
    sput-boolean v5, Lcom/android/mipop/appwidget/SingleGridAppWidget;->statusFull:Z

    goto :goto_0
.end method

.method private setup(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->mContext:Landroid/content/Context;

    .line 120
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->mWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 121
    iget-object v0, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->mWidgetManager:Landroid/appwidget/AppWidgetManager;

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/mipop/appwidget/SingleGridAppWidget;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->mWidgetIds:[I

    .line 122
    return-void
.end method

.method private updateUI(Landroid/widget/RemoteViews;)V
    .locals 7
    .param p1, "views"    # Landroid/widget/RemoteViews;

    .prologue
    const v6, 0x7f050016

    const v5, 0x7f050014

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 76
    iget-object v0, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "singlegrid: updateUI()  statusMipop = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/mipop/appwidget/SingleGridAppWidget;->statusMipop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    sget-boolean v0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->statusMipop:Z

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p1, v6, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 80
    invoke-virtual {p1, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 85
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-virtual {p1, v6, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 83
    invoke-virtual {p1, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0
.end method

.method private widgetMipopStatusChanged(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 150
    const-string v2, "MyAppWidget"

    const-string v3, "singlegrid: : widgetMipopStatusChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    sget-boolean v2, Lcom/android/mipop/appwidget/SingleGridAppWidget;->statusFull:Z

    if-nez v2, :cond_0

    .line 153
    sget-boolean v2, Lcom/android/mipop/appwidget/SingleGridAppWidget;->statusMipop:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    sput-boolean v2, Lcom/android/mipop/appwidget/SingleGridAppWidget;->statusMipop:Z

    .line 154
    const-string v0, "widgetMipopStatusChanged"

    .line 155
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    .local v1, "intent":Landroid/content/Intent;
    sget-boolean v2, Lcom/android/mipop/appwidget/SingleGridAppWidget;->statusMipop:Z

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 157
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 160
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 153
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 90
    const-string v1, "MyAppWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "singlegrid: onReceive action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    sget-boolean v1, Lcom/android/mipop/appwidget/SingleGridAppWidget;->mFirstRecv:Z

    if-eqz v1, :cond_0

    .line 93
    invoke-direct {p0, p1}, Lcom/android/mipop/appwidget/SingleGridAppWidget;->getstatusMipop(Landroid/content/Context;)V

    .line 94
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/mipop/appwidget/SingleGridAppWidget;->mFirstRecv:Z

    .line 97
    :cond_0
    new-instance v0, Lcom/android/mipop/appwidget/SingleGridAppWidget$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/mipop/appwidget/SingleGridAppWidget$1;-><init>(Lcom/android/mipop/appwidget/SingleGridAppWidget;Landroid/content/Context;Landroid/content/Intent;)V

    .line 103
    .local v0, "worker":Ljava/lang/Runnable;
    sget-object v1, Lcom/android/mipop/appwidget/SingleGridAppWidget;->mAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 105
    return-void
.end method

.method onReceiveAsync(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/mipop/appwidget/SingleGridAppWidget;->setup(Landroid/content/Context;)V

    .line 111
    iget-object v5, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, p2}, Lcom/android/mipop/appwidget/SingleGridAppWidget;->buildUpdate(Landroid/content/Context;Landroid/content/Intent;)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 112
    .local v4, "views":Landroid/widget/RemoteViews;
    iget-object v0, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->mWidgetIds:[I

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, v0, v2

    .line 113
    .local v1, "i":I
    iget-object v5, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->mWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v5, v1, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
