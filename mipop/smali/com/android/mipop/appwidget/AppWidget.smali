.class public Lcom/android/mipop/appwidget/AppWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "AppWidget.java"


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

    .line 23
    sput-boolean v1, Lcom/android/mipop/appwidget/AppWidget;->statusMipop:Z

    .line 24
    sput-boolean v1, Lcom/android/mipop/appwidget/AppWidget;->statusFull:Z

    .line 25
    sput-boolean v2, Lcom/android/mipop/appwidget/AppWidget;->statusGlobalAction:Z

    .line 30
    sput-boolean v2, Lcom/android/mipop/appwidget/AppWidget;->mFirstRecv:Z

    .line 34
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ProtipWidget async"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 35
    .local v0, "thr":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 36
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/android/mipop/appwidget/AppWidget;->mAsyncHandler:Landroid/os/Handler;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 18
    const-string v0, "MyAppWidget"

    iput-object v0, p0, Lcom/android/mipop/appwidget/AppWidget;->TAG:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/android/mipop/appwidget/AppWidget;->mContext:Landroid/content/Context;

    .line 28
    iput-object v1, p0, Lcom/android/mipop/appwidget/AppWidget;->mWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 41
    return-void
.end method

.method private activityFullStatusChanged(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 161
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/mipop/appwidget/AppWidget;->statusFull:Z

    .line 162
    const-string v0, "MyAppWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "widget: activityFullStatusChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/mipop/appwidget/AppWidget;->statusFull:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    sget-boolean v0, Lcom/android/mipop/appwidget/AppWidget;->statusFull:Z

    if-eqz v0, :cond_0

    .line 164
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mipop/appwidget/AppWidget;->statusMipop:Z

    .line 167
    :cond_0
    return-void
.end method

.method private activityMipopStatusChanged(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 172
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/mipop/appwidget/AppWidget;->statusMipop:Z

    .line 173
    const-string v0, "MyAppWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "widget: activityMipopStatusChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/mipop/appwidget/AppWidget;->statusMipop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-void
.end method

.method private buildUpdate(Landroid/content/Context;Landroid/content/Intent;)Landroid/widget/RemoteViews;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/high16 v8, 0x8000000

    const/4 v7, 0x0

    .line 44
    iget-object v5, p0, Lcom/android/mipop/appwidget/AppWidget;->TAG:Ljava/lang/String;

    const-string v6, "buildUpdate()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/high16 v6, 0x7f030000

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 48
    .local v4, "views":Landroid/widget/RemoteViews;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "activityMipopStatusChanged"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 49
    invoke-direct {p0, p2}, Lcom/android/mipop/appwidget/AppWidget;->activityMipopStatusChanged(Landroid/content/Intent;)V

    .line 60
    :cond_0
    :goto_0
    sget-boolean v5, Lcom/android/mipop/appwidget/AppWidget;->statusGlobalAction:Z

    if-eqz v5, :cond_2

    .line 61
    sget-boolean v5, Lcom/android/mipop/appwidget/AppWidget;->statusFull:Z

    if-nez v5, :cond_1

    .line 62
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/android/mipop/appwidget/AppWidget;

    invoke-direct {v1, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .local v1, "bcastMipop":Landroid/content/Intent;
    const-string v5, "widgetMipopUpdate"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    invoke-static {p1, v7, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 66
    .local v3, "pendingMipop":Landroid/app/PendingIntent;
    const v5, 0x7f050003

    invoke-virtual {v4, v5, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 69
    .end local v1    # "bcastMipop":Landroid/content/Intent;
    .end local v3    # "pendingMipop":Landroid/app/PendingIntent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/android/mipop/appwidget/AppWidget;

    invoke-direct {v0, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    .local v0, "bcastFull":Landroid/content/Intent;
    const-string v5, "widgetFullUpdate"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    invoke-static {p1, v7, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 73
    .local v2, "pendingFull":Landroid/app/PendingIntent;
    const v5, 0x7f05000a

    invoke-virtual {v4, v5, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 77
    .end local v0    # "bcastFull":Landroid/content/Intent;
    .end local v2    # "pendingFull":Landroid/app/PendingIntent;
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/mipop/appwidget/AppWidget;->updateUI(Landroid/widget/RemoteViews;)V

    .line 79
    return-object v4

    .line 50
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "activityFullStatusChanged"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 51
    invoke-direct {p0, p2}, Lcom/android/mipop/appwidget/AppWidget;->activityFullStatusChanged(Landroid/content/Intent;)V

    goto :goto_0

    .line 52
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "widgetMipopUpdate"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 53
    invoke-direct {p0, p1}, Lcom/android/mipop/appwidget/AppWidget;->widgetMipopStatusChanged(Landroid/content/Context;)V

    goto :goto_0

    .line 54
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "widgetFullUpdate"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 55
    invoke-direct {p0, p1}, Lcom/android/mipop/appwidget/AppWidget;->widgetFullStatusChanged(Landroid/content/Context;)V

    goto :goto_0

    .line 56
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "globalActionMipopChanged"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/mipop/appwidget/AppWidget;->globalActionMipopChanged(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private getstatusMipop(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.mipop_preferences"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "mipop_switch"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/mipop/appwidget/AppWidget;->statusMipop:Z

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.mipop_preferences"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "mipop_fullscreen"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/mipop/appwidget/AppWidget;->statusFull:Z

    .line 157
    const-string v0, "MyAppWdiget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getstatusMipop statusMipop = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/mipop/appwidget/AppWidget;->statusMipop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void
.end method

.method private globalActionMipopChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 199
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 200
    .local v0, "mipop":Z
    const-string v1, "globalChange"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2*1widget: globalActionMipopChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    sput-boolean v0, Lcom/android/mipop/appwidget/AppWidget;->statusGlobalAction:Z

    .line 203
    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.mipop_preferences"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "mipop_switch"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/mipop/appwidget/AppWidget;->statusMipop:Z

    .line 206
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.mipop_preferences"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "mipop_fullscreen"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/mipop/appwidget/AppWidget;->statusFull:Z

    .line 213
    :goto_0
    return-void

    .line 210
    :cond_0
    sput-boolean v5, Lcom/android/mipop/appwidget/AppWidget;->statusFull:Z

    .line 211
    sput-boolean v4, Lcom/android/mipop/appwidget/AppWidget;->statusMipop:Z

    goto :goto_0
.end method

.method private setup(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/mipop/appwidget/AppWidget;->mContext:Landroid/content/Context;

    .line 142
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mipop/appwidget/AppWidget;->mWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 143
    iget-object v0, p0, Lcom/android/mipop/appwidget/AppWidget;->mWidgetManager:Landroid/appwidget/AppWidgetManager;

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/mipop/appwidget/AppWidget;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/mipop/appwidget/AppWidget;->mWidgetIds:[I

    .line 144
    return-void
.end method

.method private updateUI(Landroid/widget/RemoteViews;)V
    .locals 8
    .param p1, "views"    # Landroid/widget/RemoteViews;

    .prologue
    const v7, 0x7f05000c

    const v6, 0x7f050007

    const v5, 0x7f050005

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 84
    iget-object v0, p0, Lcom/android/mipop/appwidget/AppWidget;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "double: updateUI()  statusMipop = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/mipop/appwidget/AppWidget;->statusMipop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    sget-boolean v0, Lcom/android/mipop/appwidget/AppWidget;->statusFull:Z

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {p1, v7, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 88
    const v0, 0x7f05000e

    invoke-virtual {p1, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 90
    sget-boolean v0, Lcom/android/mipop/appwidget/AppWidget;->statusGlobalAction:Z

    if-eqz v0, :cond_0

    .line 91
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mipop/appwidget/AppWidget;->statusMipop:Z

    .line 98
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/android/mipop/appwidget/AppWidget;->statusMipop:Z

    if-eqz v0, :cond_2

    .line 99
    invoke-virtual {p1, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 100
    invoke-virtual {p1, v6, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 107
    :goto_1
    return-void

    .line 94
    :cond_1
    invoke-virtual {p1, v7, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 95
    const v0, 0x7f05000e

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    .line 102
    :cond_2
    invoke-virtual {p1, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 103
    invoke-virtual {p1, v6, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1
.end method

.method private widgetFullStatusChanged(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 177
    sget-boolean v2, Lcom/android/mipop/appwidget/AppWidget;->statusFull:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    sput-boolean v2, Lcom/android/mipop/appwidget/AppWidget;->statusFull:Z

    .line 178
    const-string v2, "MyAppWidget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "widget: widgetFullStatusChanged "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/mipop/appwidget/AppWidget;->statusFull:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const-string v0, "widgetFullStatusChanged"

    .line 180
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 181
    .local v1, "intent":Landroid/content/Intent;
    sget-boolean v2, Lcom/android/mipop/appwidget/AppWidget;->statusFull:Z

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 182
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 183
    return-void

    .line 177
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private widgetMipopStatusChanged(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 186
    const-string v2, "MyAppWidget"

    const-string v3, "widget: widgetMipopStatusChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    sget-boolean v2, Lcom/android/mipop/appwidget/AppWidget;->statusFull:Z

    if-nez v2, :cond_0

    .line 189
    sget-boolean v2, Lcom/android/mipop/appwidget/AppWidget;->statusMipop:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    sput-boolean v2, Lcom/android/mipop/appwidget/AppWidget;->statusMipop:Z

    .line 190
    const-string v0, "widgetMipopStatusChanged"

    .line 191
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    .local v1, "intent":Landroid/content/Intent;
    sget-boolean v2, Lcom/android/mipop/appwidget/AppWidget;->statusMipop:Z

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 193
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 196
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 189
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onEnabled(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 149
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 150
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 112
    const-string v1, "MyAppWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    sget-boolean v1, Lcom/android/mipop/appwidget/AppWidget;->mFirstRecv:Z

    if-eqz v1, :cond_0

    .line 115
    invoke-direct {p0, p1}, Lcom/android/mipop/appwidget/AppWidget;->getstatusMipop(Landroid/content/Context;)V

    .line 116
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/mipop/appwidget/AppWidget;->mFirstRecv:Z

    .line 119
    :cond_0
    new-instance v0, Lcom/android/mipop/appwidget/AppWidget$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/mipop/appwidget/AppWidget$1;-><init>(Lcom/android/mipop/appwidget/AppWidget;Landroid/content/Context;Landroid/content/Intent;)V

    .line 125
    .local v0, "worker":Ljava/lang/Runnable;
    sget-object v1, Lcom/android/mipop/appwidget/AppWidget;->mAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 127
    return-void
.end method

.method onReceiveAsync(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/android/mipop/appwidget/AppWidget;->setup(Landroid/content/Context;)V

    .line 133
    iget-object v5, p0, Lcom/android/mipop/appwidget/AppWidget;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, p2}, Lcom/android/mipop/appwidget/AppWidget;->buildUpdate(Landroid/content/Context;Landroid/content/Intent;)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 134
    .local v4, "views":Landroid/widget/RemoteViews;
    iget-object v0, p0, Lcom/android/mipop/appwidget/AppWidget;->mWidgetIds:[I

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, v0, v2

    .line 135
    .local v1, "i":I
    iget-object v5, p0, Lcom/android/mipop/appwidget/AppWidget;->mWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v5, v1, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 134
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
