.class final Lcom/google/android/gms/internal/measurement/zzmd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@21.2.2"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final zza(ILjava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzmc;

    .line 2
    check-cast p2, Lcom/google/android/gms/internal/measurement/zzmb;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzmc;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_19

    .line 4
    :cond_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzmc;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_1b

    .line 3
    :goto_19
    const/4 p0, 0x0

    return p0

    .line 4
    :cond_1b
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 6
    const/4 p0, 0x0

    throw p0
.end method

.method public static final zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/measurement/zzmc;

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzmc;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzmc;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzmc;->zze()Z

    move-result v0

    if-nez v0, :cond_14

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzmc;->zzb()Lcom/google/android/gms/internal/measurement/zzmc;

    move-result-object p0

    .line 6
    :cond_14
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzmc;->zzd(Lcom/google/android/gms/internal/measurement/zzmc;)V

    :cond_17
    return-object p0
.end method
