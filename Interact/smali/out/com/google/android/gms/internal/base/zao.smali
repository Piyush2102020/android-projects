.class public final Lcom/google/android/gms/internal/base/zao;
.super Landroidx/core/content/ContextCompat;
.source "com.google.android.gms:play-services-base@@18.1.0"


# direct methods
.method public static zaa(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/base/zan;->zaa()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/base/zan;->zaa()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_f

    const/4 v0, 0x0

    goto :goto_10

    .line 3
    :cond_f
    const/4 v0, 0x2

    :goto_10
    invoke-virtual {p0, p1, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 4
    :cond_15
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method
