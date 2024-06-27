.class final Lcom/google/android/gms/internal/measurement/zzkp;
.super Lcom/google/android/gms/internal/measurement/zzko;
.source "com.google.android.gms:play-services-measurement-base@@21.2.2"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzko;-><init>()V

    return-void
.end method


# virtual methods
.method final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzks;
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzky;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzky;->zza:Lcom/google/android/gms/internal/measurement/zzks;

    const/4 p1, 0x0

    throw p1
.end method

.method final zzb(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzky;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzky;->zza:Lcom/google/android/gms/internal/measurement/zzks;

    .line 2
    const/4 p1, 0x0

    throw p1
.end method

.method final zzc(Lcom/google/android/gms/internal/measurement/zzmi;)Z
    .registers 2

    .line 1
    instance-of p1, p1, Lcom/google/android/gms/internal/measurement/zzky;

    return p1
.end method
