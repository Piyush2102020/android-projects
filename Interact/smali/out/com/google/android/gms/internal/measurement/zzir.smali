.class public final Lcom/google/android/gms/internal/measurement/zzir;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@21.2.2"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/measurement/zzim;)Lcom/google/android/gms/internal/measurement/zzim;
    .registers 2

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/zzip;

    if-nez v0, :cond_19

    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/zzin;

    if-eqz v0, :cond_9

    goto :goto_19

    .line 2
    :cond_9
    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_13

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzin;

    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzin;-><init>(Lcom/google/android/gms/internal/measurement/zzim;)V

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzip;

    .line 4
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzip;-><init>(Lcom/google/android/gms/internal/measurement/zzim;)V

    .line 3
    :goto_18
    return-object v0

    .line 1
    :cond_19
    :goto_19
    return-object p0
.end method

.method public static zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzim;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zziq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zziq;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
