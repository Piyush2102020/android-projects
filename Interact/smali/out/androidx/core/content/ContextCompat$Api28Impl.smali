.class Landroidx/core/content/ContextCompat$Api28Impl;
.super Ljava/lang/Object;
.source "ContextCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/ContextCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api28Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1097
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1099
    return-void
.end method

.method static getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;
    .registers 2
    .param p0, "obj"    # Landroid/content/Context;

    .line 1103
    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method
