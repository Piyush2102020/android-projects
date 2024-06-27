.class public final Lcom/google/android/gms/measurement/internal/zzfa;
.super Lcom/google/android/gms/measurement/internal/zzkt;
.source "com.google.android.gms:play-services-measurement@@21.2.2"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzlg;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkt;-><init>(Lcom/google/android/gms/measurement/internal/zzlg;)V

    return-void
.end method


# virtual methods
.method public final zza()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkt;->zzW()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaw()Landroid/content/Context;

    move-result-object v0

    .line 3
    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 4
    :try_start_14
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1
    :try_end_18
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_18} :catch_19

    goto :goto_1b

    .line 5
    :catch_19
    move-exception v0

    :cond_1a
    nop

    .line 4
    :goto_1b
    if-eqz v1, :cond_25

    .line 5
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    return v0

    :cond_25
    const/4 v0, 0x0

    return v0
.end method

.method protected final zzb()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
