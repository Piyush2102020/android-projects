.class public abstract Lcom/google/android/gms/stats/GCoreWakefulBroadcastReceiver;
.super Landroidx/legacy/content/WakefulBroadcastReceiver;
.source "com.google.android.gms:play-services-stats@@17.0.1"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/legacy/content/WakefulBroadcastReceiver;-><init>()V

    return-void
.end method

.method public static completeWakefulIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .end local p1    # "intent":Landroid/content/Intent;
    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_4
    invoke-static {p1}, Landroidx/legacy/content/WakefulBroadcastReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method
