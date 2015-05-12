.class Lcom/android/mipop/widget/MeterBase$1;
.super Ljava/lang/Object;
.source "MeterBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mipop/widget/MeterBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mipop/widget/MeterBase;


# direct methods
.method constructor <init>(Lcom/android/mipop/widget/MeterBase;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/mipop/widget/MeterBase$1;->this$0:Lcom/android/mipop/widget/MeterBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/mipop/widget/MeterBase$1;->this$0:Lcom/android/mipop/widget/MeterBase;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/mipop/widget/MeterBase;->isLongClick:Z

    .line 84
    iget-object v0, p0, Lcom/android/mipop/widget/MeterBase$1;->this$0:Lcom/android/mipop/widget/MeterBase;

    invoke-virtual {v0}, Lcom/android/mipop/widget/MeterBase;->LongClick()V

    .line 85
    return-void
.end method
