.class final Lcom/google/android/gms/measurement/internal/zzja;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.2.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzq;

.field final synthetic zzc:Z

.field final synthetic zzd:Lcom/google/android/gms/measurement/internal/zzjy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzjy;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/zzq;Z)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzd:Lcom/google/android/gms/measurement/internal/zzjy;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzja;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzb:Lcom/google/android/gms/measurement/internal/zzq;

    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzc:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzja;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzd:Lcom/google/android/gms/measurement/internal/zzjy;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzjy;->zzh(Lcom/google/android/gms/measurement/internal/zzjy;)Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v2

    if-nez v2, :cond_21

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "Failed to get all user properties; not connected to service"

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1a} :catch_3d
    .catchall {:try_start_3 .. :try_end_1a} :catchall_3b

    :try_start_1a
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzja;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_5c

    return-void

    :cond_21
    :try_start_21
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzb:Lcom/google/android/gms/measurement/internal/zzq;

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzja;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzb:Lcom/google/android/gms/measurement/internal/zzq;

    iget-boolean v4, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzc:Z

    .line 6
    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzek;->zze(Lcom/google/android/gms/measurement/internal/zzq;Z)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzd:Lcom/google/android/gms/measurement/internal/zzjy;

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzjy;->zzp(Lcom/google/android/gms/measurement/internal/zzjy;)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_38} :catch_3d
    .catchall {:try_start_21 .. :try_end_38} :catchall_3b

    :try_start_38
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzja;->zza:Ljava/util/concurrent/atomic/AtomicReference;
    :try_end_3a
    .catchall {:try_start_38 .. :try_end_3a} :catchall_5c

    goto :goto_51

    .line 4
    :catchall_3b
    move-exception v1

    goto :goto_56

    .line 12
    :catch_3d
    move-exception v1

    :try_start_3e
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzd:Lcom/google/android/gms/measurement/internal/zzjy;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    const-string v3, "Failed to get all user properties; remote exception"

    .line 10
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4f
    .catchall {:try_start_3e .. :try_end_4f} :catchall_3b

    :try_start_4f
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzja;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    :goto_51
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 12
    monitor-exit v0

    return-void

    .line 4
    :goto_56
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzja;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 11
    throw v1

    :catchall_5c
    move-exception v1

    .line 12
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_4f .. :try_end_5e} :catchall_5c

    throw v1
.end method