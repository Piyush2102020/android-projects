.class public final Lcom/google/android/gms/measurement/internal/zzeg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.2.2"


# static fields
.field private static final zza:Ljava/lang/Object;


# instance fields
.field private final zzb:Ljava/lang/String;

.field private final zzc:Lcom/google/android/gms/measurement/internal/zzed;

.field private final zzd:Ljava/lang/Object;

.field private final zze:Ljava/lang/Object;

.field private final zzf:Ljava/lang/Object;

.field private volatile zzg:Ljava/lang/Object;

.field private volatile zzh:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzeg;->zza:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/measurement/internal/zzed;Lcom/google/android/gms/measurement/internal/zzef;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p5, Ljava/lang/Object;

    invoke-direct {p5}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzf:Ljava/lang/Object;

    const/4 p5, 0x0

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzg:Ljava/lang/Object;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzh:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzb:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzd:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zze:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzc:Lcom/google/android/gms/measurement/internal/zzed;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzf:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_6f

    if-eqz p1, :cond_7

    return-object p1

    :cond_7
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzee;->zza:Lcom/google/android/gms/measurement/internal/zzab;

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzd:Ljava/lang/Object;

    return-object p1

    :cond_e
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzeg;->zza:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_11
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzab;->zza()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzh:Ljava/lang/Object;

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzd:Ljava/lang/Object;

    goto :goto_20

    .line 3
    :cond_1e
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzh:Ljava/lang/Object;

    :goto_20
    monitor-exit p1

    return-object v0

    .line 4
    :cond_22
    monitor-exit p1
    :try_end_23
    .catchall {:try_start_11 .. :try_end_23} :catchall_6c

    .line 5
    :try_start_23
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzeh;->zzb()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzeg;

    .line 6
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzab;->zza()Z

    move-result v1
    :try_end_3b
    .catch Ljava/lang/SecurityException; {:try_start_23 .. :try_end_3b} :catch_5b

    if-nez v1, :cond_53

    .line 9
    const/4 v1, 0x0

    :try_start_3e
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzeg;->zzc:Lcom/google/android/gms/measurement/internal/zzed;

    if-eqz v2, :cond_47

    .line 7
    invoke-interface {v2}, Lcom/google/android/gms/measurement/internal/zzed;->zza()Ljava/lang/Object;

    move-result-object v1
    :try_end_46
    .catch Ljava/lang/IllegalStateException; {:try_start_3e .. :try_end_46} :catch_48
    .catch Ljava/lang/SecurityException; {:try_start_3e .. :try_end_46} :catch_5b

    goto :goto_49

    .line 8
    :cond_47
    goto :goto_49

    .line 4
    :catch_48
    move-exception v2

    .line 7
    :goto_49
    :try_start_49
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzeg;->zza:Ljava/lang/Object;

    monitor-enter v2
    :try_end_4c
    .catch Ljava/lang/SecurityException; {:try_start_49 .. :try_end_4c} :catch_5b

    :try_start_4c
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzeg;->zzh:Ljava/lang/Object;

    .line 8
    monitor-exit v2

    goto :goto_2b

    .line 4
    :catchall_50
    move-exception p1

    .line 8
    monitor-exit v2
    :try_end_52
    .catchall {:try_start_4c .. :try_end_52} :catchall_50

    :try_start_52
    throw p1

    .line 6
    :cond_53
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Refreshing flag cache must be done on a worker thread."

    .line 9
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5b
    .catch Ljava/lang/SecurityException; {:try_start_52 .. :try_end_5b} :catch_5b

    .line 4
    :catch_5b
    move-exception p1

    .line 8
    :cond_5c
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzc:Lcom/google/android/gms/measurement/internal/zzed;

    if-nez p1, :cond_63

    :goto_60
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzd:Ljava/lang/Object;

    return-object p1

    .line 10
    :cond_63
    :try_start_63
    invoke-interface {p1}, Lcom/google/android/gms/measurement/internal/zzed;->zza()Ljava/lang/Object;

    move-result-object p1
    :try_end_67
    .catch Ljava/lang/SecurityException; {:try_start_63 .. :try_end_67} :catch_6a
    .catch Ljava/lang/IllegalStateException; {:try_start_63 .. :try_end_67} :catch_68

    return-object p1

    .line 8
    :catch_68
    move-exception p1

    goto :goto_60

    :catch_6a
    move-exception p1

    goto :goto_60

    .line 1
    :catchall_6c
    move-exception v0

    .line 4
    :try_start_6d
    monitor-exit p1
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw v0

    .line 10
    :catchall_6f
    move-exception p1

    .line 1
    :try_start_70
    monitor-exit v0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    throw p1
.end method

.method public final zzb()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzb:Ljava/lang/String;

    return-object v0
.end method
