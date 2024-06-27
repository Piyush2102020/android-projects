.class public Lcom/google/android/gms/internal/measurement/zzlo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@21.2.2"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/measurement/zzkn;


# instance fields
.field protected volatile zza:Lcom/google/android/gms/internal/measurement/zzmi;

.field private volatile zzc:Lcom/google/android/gms/internal/measurement/zzka;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzkn;->zza:Lcom/google/android/gms/internal/measurement/zzkn;

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzlo;->zzb:Lcom/google/android/gms/internal/measurement/zzkn;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 1
    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzlo;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzlo;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlo;->zza:Lcom/google/android/gms/internal/measurement/zzmi;

    .line 3
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzlo;->zza:Lcom/google/android/gms/internal/measurement/zzmi;

    if-nez v0, :cond_22

    if-eqz v1, :cond_15

    goto :goto_22

    .line 8
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlo;->zzb()Lcom/google/android/gms/internal/measurement/zzka;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzlo;->zzb()Lcom/google/android/gms/internal/measurement/zzka;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzka;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_22
    :goto_22
    if-eqz v0, :cond_2c

    if-nez v1, :cond_27

    goto :goto_2c

    .line 7
    :cond_27
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_2c
    :goto_2c
    if-eqz v0, :cond_3c

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzmi;->zzbV()Lcom/google/android/gms/internal/measurement/zzmi;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzlo;->zzc(Lcom/google/android/gms/internal/measurement/zzmi;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzlo;->zza:Lcom/google/android/gms/internal/measurement/zzmi;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 5
    :cond_3c
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzmi;->zzbV()Lcom/google/android/gms/internal/measurement/zzmi;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzlo;->zzc(Lcom/google/android/gms/internal/measurement/zzmi;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzlo;->zza:Lcom/google/android/gms/internal/measurement/zzmi;

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final zza()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlo;->zzc:Lcom/google/android/gms/internal/measurement/zzka;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlo;->zzc:Lcom/google/android/gms/internal/measurement/zzka;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzjx;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzjx;->zza:[B

    array-length v0, v0

    return v0

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlo;->zza:Lcom/google/android/gms/internal/measurement/zzmi;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlo;->zza:Lcom/google/android/gms/internal/measurement/zzmi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzmi;->zzbz()I

    move-result v0

    return v0

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/measurement/zzka;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlo;->zzc:Lcom/google/android/gms/internal/measurement/zzka;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlo;->zzc:Lcom/google/android/gms/internal/measurement/zzka;

    return-object v0

    :cond_7
    monitor-enter p0

    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlo;->zzc:Lcom/google/android/gms/internal/measurement/zzka;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlo;->zzc:Lcom/google/android/gms/internal/measurement/zzka;

    monitor-exit p0

    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlo;->zza:Lcom/google/android/gms/internal/measurement/zzmi;

    if-nez v0, :cond_19

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzka;->zzb:Lcom/google/android/gms/internal/measurement/zzka;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlo;->zzc:Lcom/google/android/gms/internal/measurement/zzka;

    goto :goto_21

    .line 4
    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlo;->zza:Lcom/google/android/gms/internal/measurement/zzmi;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzmi;->zzbv()Lcom/google/android/gms/internal/measurement/zzka;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlo;->zzc:Lcom/google/android/gms/internal/measurement/zzka;

    .line 2
    :goto_21
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlo;->zzc:Lcom/google/android/gms/internal/measurement/zzka;

    .line 4
    monitor-exit p0

    return-object v0

    .line 3
    :catchall_25
    move-exception v0

    .line 5
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_25

    throw v0
.end method

.method protected final zzc(Lcom/google/android/gms/internal/measurement/zzmi;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlo;->zza:Lcom/google/android/gms/internal/measurement/zzmi;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    monitor-enter p0

    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlo;->zza:Lcom/google/android/gms/internal/measurement/zzmi;
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_1c

    if-nez v0, :cond_1a

    :try_start_a
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzlo;->zza:Lcom/google/android/gms/internal/measurement/zzmi;

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzka;->zzb:Lcom/google/android/gms/internal/measurement/zzka;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlo;->zzc:Lcom/google/android/gms/internal/measurement/zzka;
    :try_end_10
    .catch Lcom/google/android/gms/internal/measurement/zzll; {:try_start_a .. :try_end_10} :catch_11
    .catchall {:try_start_a .. :try_end_10} :catchall_1c

    goto :goto_18

    .line 3
    :catch_11
    move-exception v0

    :try_start_12
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzlo;->zza:Lcom/google/android/gms/internal/measurement/zzmi;

    .line 2
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzka;->zzb:Lcom/google/android/gms/internal/measurement/zzka;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzlo;->zzc:Lcom/google/android/gms/internal/measurement/zzka;

    .line 3
    :goto_18
    monitor-exit p0

    return-void

    .line 4
    :cond_1a
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception p1

    .line 3
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_1c

    throw p1
.end method
