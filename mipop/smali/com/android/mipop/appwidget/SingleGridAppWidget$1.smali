.class Lcom/android/mipop/appwidget/SingleGridAppWidget$1;
.super Ljava/lang/Object;
.source "SingleGridAppWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mipop/appwidget/SingleGridAppWidget;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mipop/appwidget/SingleGridAppWidget;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/mipop/appwidget/SingleGridAppWidget;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget$1;->this$0:Lcom/android/mipop/appwidget/SingleGridAppWidget;

    iput-object p2, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget$1;->this$0:Lcom/android/mipop/appwidget/SingleGridAppWidget;

    iget-object v1, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lcom/android/mipop/appwidget/SingleGridAppWidget;->onReceiveAsync(Landroid/content/Context;Landroid/content/Intent;)V

    .line 101
    return-void
.end method
