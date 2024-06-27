.class final Lcom/google/android/gms/measurement/internal/zzjp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.2.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Ljava/lang/String;

.field final synthetic zzd:Lcom/google/android/gms/measurement/internal/zzq;

.field final synthetic zze:Lcom/google/android/gms/measurement/internal/zzjy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzjy;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzq;)V
    .registers 7

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjp;->zze:Lcom/google/android/gms/measurement/internal/zzjy;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjp;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzjp;->zzb:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzjp;->zzc:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzjp;->zzd:Lcom/google/android/gms/measurement/internal/zzq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjp;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjp;->zze:Lcom/google/android/gms/measurement/internal/zzjy;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzjy;->zzh(Lcom/google/android/gms/measurement/internal/zzjy;)Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v3

    if-nez v3, :cond_2f

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v2

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    const-string v3, "(legacy) Failed to get conditional properties; not connected to service"

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzjp;->zzb:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzjp;->zzc:Ljava/lang/String;

    .line 11
    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/google/android/gms/measurement/internal/zzes;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjp;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_28} :catch_65
    .catchall {:try_start_4 .. :try_end_28} :catchall_63

    :try_start_28
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjp;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_8d

    return-void

    :cond_2f
    nop

    .line 1
    :try_start_30
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4b

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjp;->zzd:Lcom/google/android/gms/measurement/internal/zzq;

    .line 2
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjp;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzjp;->zzb:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzjp;->zzc:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzjp;->zzd:Lcom/google/android/gms/measurement/internal/zzq;

    .line 3
    invoke-interface {v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzek;->zzf(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzq;)Ljava/util/List;

    move-result-object v3

    .line 4
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_58

    .line 18
    :cond_4b
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjp;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzjp;->zzb:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzjp;->zzc:Ljava/lang/String;

    .line 5
    invoke-interface {v3, v1, v4, v5}, Lcom/google/android/gms/measurement/internal/zzek;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 6
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 4
    :goto_58
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjp;->zze:Lcom/google/android/gms/measurement/internal/zzjy;

    .line 7
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzjy;->zzp(Lcom/google/android/gms/measurement/internal/zzjy;)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_5d} :catch_65
    .catchall {:try_start_30 .. :try_end_5d} :catchall_63

    :try_start_5d
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjp;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    :goto_5f
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_62
    .catchall {:try_start_5d .. :try_end_62} :catchall_8d

    goto :goto_85

    :catchall_63
    move-exception v1

    goto :goto_87

    .line 6
    :catch_65
    move-exception v2

    :try_start_66
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzjp;->zze:Lcom/google/android/gms/measurement/internal/zzjy;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 13
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v3

    .line 14
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v3

    const-string v4, "(legacy) Failed to get conditional properties; remote exception"

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzjp;->zzb:Ljava/lang/String;

    .line 15
    invoke-virtual {v3, v4, v1, v5, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjp;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_82
    .catchall {:try_start_66 .. :try_end_82} :catchall_63

    :try_start_82
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjp;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    goto :goto_5f

    .line 18
    :goto_85
    monitor-exit v0

    return-void

    .line 8
    :goto_87
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjp;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 17
    throw v1

    :catchall_8d
    move-exception v1

    .line 18
    monitor-exit v0
    :try_end_8f
    .catchall {:try_start_82 .. :try_end_8f} :catchall_8d

    throw v1
.end method
