.class public abstract Lcom/google/android/gms/internal/measurement/zzbq;
.super Lcom/google/android/gms/internal/measurement/zzbn;
.source "com.google.android.gms:play-services-measurement@@21.2.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzbr;


# direct methods
.method public static zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/measurement/zzbr;
    .registers 3

    .line 1
    const-string v0, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzbr;

    if-eqz v1, :cond_d

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbr;

    return-object v0

    :cond_d
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzbp;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
