.class final Lcom/google/android/gms/measurement/internal/zzjd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.2.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzq;

.field final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzjy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzjy;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/zzq;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zzc:Lcom/google/android/gms/measurement/internal/zzjy;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zzb:Lcom/google/android/gms/measurement/internal/zzq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zzc:Lcom/google/android/gms/measurement/internal/zzjy;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzge;->zzm()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfj;->zzc()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzah;->zzb:Lcom/google/android/gms/measurement/internal/zzah;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzi(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v1

    if-nez v1, :cond_4d

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zzc:Lcom/google/android/gms/measurement/internal/zzjy;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzl()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "Analytics storage consent denied; will not get app instance id"

    .line 6
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zzc:Lcom/google/android/gms/measurement/internal/zzjy;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zze;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzge;->zzq()Lcom/google/android/gms/measurement/internal/zzij;

    move-result-object v1

    .line 8
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzij;->zzO(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zzc:Lcom/google/android/gms/measurement/internal/zzjy;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzge;->zzm()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object v1

    .line 10
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfj;->zze:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzfi;->zzb(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 11
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_46} :catch_a7
    .catchall {:try_start_3 .. :try_end_46} :catchall_a5

    :try_start_46
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_46 .. :try_end_4c} :catchall_c6

    return-void

    :cond_4d
    :try_start_4d
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zzc:Lcom/google/android/gms/measurement/internal/zzjy;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzjy;->zzh(Lcom/google/android/gms/measurement/internal/zzjy;)Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v2

    if-nez v2, :cond_6b

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "Failed to get app instance id"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_64} :catch_a7
    .catchall {:try_start_4d .. :try_end_64} :catchall_a5

    :try_start_64
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_64 .. :try_end_6a} :catchall_c6

    return-void

    :cond_6b
    :try_start_6b
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zzb:Lcom/google/android/gms/measurement/internal/zzq;

    .line 15
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zzb:Lcom/google/android/gms/measurement/internal/zzq;

    .line 16
    invoke-interface {v2, v3}, Lcom/google/android/gms/measurement/internal/zzek;->zzd(Lcom/google/android/gms/measurement/internal/zzq;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 17
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_9d

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zzc:Lcom/google/android/gms/measurement/internal/zzjy;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zze;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 18
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzge;->zzq()Lcom/google/android/gms/measurement/internal/zzij;

    move-result-object v2

    .line 19
    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzij;->zzO(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zzc:Lcom/google/android/gms/measurement/internal/zzjy;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzge;->zzm()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object v2

    .line 21
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzfj;->zze:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzfi;->zzb(Ljava/lang/String;)V

    :cond_9d
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zzc:Lcom/google/android/gms/measurement/internal/zzjy;

    .line 22
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzjy;->zzp(Lcom/google/android/gms/measurement/internal/zzjy;)V
    :try_end_a2
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_a2} :catch_a7
    .catchall {:try_start_6b .. :try_end_a2} :catchall_a5

    :try_start_a2
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Ljava/util/concurrent/atomic/AtomicReference;
    :try_end_a4
    .catchall {:try_start_a2 .. :try_end_a4} :catchall_c6

    goto :goto_bb

    .line 12
    :catchall_a5
    move-exception v1

    goto :goto_c0

    .line 26
    :catch_a7
    move-exception v1

    :try_start_a8
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zzc:Lcom/google/android/gms/measurement/internal/zzjy;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 23
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v2

    .line 24
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    const-string v3, "Failed to get app instance id"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_b9
    .catchall {:try_start_a8 .. :try_end_b9} :catchall_a5

    :try_start_b9
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    :goto_bb
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 26
    monitor-exit v0

    return-void

    .line 12
    :goto_c0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjd;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 25
    throw v1

    :catchall_c6
    move-exception v1

    .line 26
    monitor-exit v0
    :try_end_c8
    .catchall {:try_start_b9 .. :try_end_c8} :catchall_c6

    throw v1
.end method
