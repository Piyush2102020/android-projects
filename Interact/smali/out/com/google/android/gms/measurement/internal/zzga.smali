.class final Lcom/google/android/gms/measurement/internal/zzga;
.super Ljava/lang/Thread;
.source "com.google.android.gms:play-services-measurement-impl@@21.2.2"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzgb;

.field private final zzb:Ljava/lang/Object;

.field private final zzc:Ljava/util/concurrent/BlockingQueue;

.field private zzd:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzgb;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzga;->zza:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzga;->zzd:Z

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzga;->zzb:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzga;->zzc:Ljava/util/concurrent/BlockingQueue;

    .line 4
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzga;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private final zzb()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzga;->zza:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzc(Lcom/google/android/gms/measurement/internal/zzgb;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzga;->zzd:Z

    if-nez v1, :cond_46

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzga;->zza:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzj(Lcom/google/android/gms/measurement/internal/zzgb;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzga;->zza:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzc(Lcom/google/android/gms/measurement/internal/zzgb;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzga;->zza:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb(Lcom/google/android/gms/measurement/internal/zzgb;)Lcom/google/android/gms/measurement/internal/zzga;

    move-result-object v2

    const/4 v3, 0x0

    if-ne p0, v2, :cond_2a

    .line 6
    invoke-static {v1, v3}, Lcom/google/android/gms/measurement/internal/zzgb;->zzm(Lcom/google/android/gms/measurement/internal/zzgb;Lcom/google/android/gms/measurement/internal/zzga;)V

    goto :goto_43

    .line 7
    :cond_2a
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Lcom/google/android/gms/measurement/internal/zzgb;)Lcom/google/android/gms/measurement/internal/zzga;

    move-result-object v2

    if-ne p0, v2, :cond_34

    .line 5
    invoke-static {v1, v3}, Lcom/google/android/gms/measurement/internal/zzgb;->zzl(Lcom/google/android/gms/measurement/internal/zzgb;Lcom/google/android/gms/measurement/internal/zzga;)V

    goto :goto_43

    :cond_34
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "Current scheduler thread is neither worker nor network"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    .line 6
    :goto_43
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzga;->zzd:Z

    .line 7
    :cond_46
    monitor-exit v0

    return-void

    .line 4
    :catchall_48
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_7 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method private final zzc(Ljava/lang/InterruptedException;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzga;->zza:Lcom/google/android/gms/measurement/internal/zzgb;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzk()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzga;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " was interrupted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 1
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x1

    if-nez v0, :cond_14

    :try_start_4
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzga;->zza:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzj(Lcom/google/android/gms/measurement/internal/zzgb;)Ljava/util/concurrent/Semaphore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_d} :catch_f

    move v0, v1

    goto :goto_1

    .line 14
    :catch_f
    move-exception v1

    .line 2
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzga;->zzc(Ljava/lang/InterruptedException;)V

    goto :goto_1

    .line 3
    :cond_14
    :try_start_14
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    :goto_1c
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzga;->zzc:Ljava/util/concurrent/BlockingQueue;

    .line 4
    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzfz;

    if-eqz v2, :cond_35

    iget-boolean v3, v2, Lcom/google/android/gms/measurement/internal/zzfz;->zza:Z

    if-eq v1, v3, :cond_2d

    const/16 v3, 0xa

    goto :goto_2e

    .line 6
    :cond_2d
    move v3, v0

    .line 5
    :goto_2e
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfz;->run()V

    goto :goto_1c

    :cond_35
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzga;->zzb:Ljava/lang/Object;

    .line 7
    monitor-enter v2
    :try_end_38
    .catchall {:try_start_14 .. :try_end_38} :catchall_71

    :try_start_38
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzga;->zzc:Ljava/util/concurrent/BlockingQueue;

    .line 8
    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_51

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzga;->zza:Lcom/google/android/gms/measurement/internal/zzgb;

    .line 9
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzgb;->zzr(Lcom/google/android/gms/measurement/internal/zzgb;)Z
    :try_end_45
    .catchall {:try_start_38 .. :try_end_45} :catchall_6e

    :try_start_45
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzga;->zzb:Ljava/lang/Object;

    .line 10
    const-wide/16 v4, 0x7530

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_4c
    .catch Ljava/lang/InterruptedException; {:try_start_45 .. :try_end_4c} :catch_4d
    .catchall {:try_start_45 .. :try_end_4c} :catchall_6e

    goto :goto_51

    .line 12
    :catch_4d
    move-exception v3

    .line 11
    :try_start_4e
    invoke-direct {p0, v3}, Lcom/google/android/gms/measurement/internal/zzga;->zzc(Ljava/lang/InterruptedException;)V

    .line 12
    :cond_51
    :goto_51
    monitor-exit v2
    :try_end_52
    .catchall {:try_start_4e .. :try_end_52} :catchall_6e

    :try_start_52
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzga;->zza:Lcom/google/android/gms/measurement/internal/zzgb;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzc(Lcom/google/android/gms/measurement/internal/zzgb;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_59
    .catchall {:try_start_52 .. :try_end_59} :catchall_71

    :try_start_59
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzga;->zzc:Ljava/util/concurrent/BlockingQueue;

    .line 13
    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_69

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()V

    .line 16
    monitor-exit v2
    :try_end_65
    .catchall {:try_start_59 .. :try_end_65} :catchall_6b

    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()V

    return-void

    .line 14
    :cond_69
    :try_start_69
    monitor-exit v2

    goto :goto_1c

    .line 11
    :catchall_6b
    move-exception v0

    .line 14
    monitor-exit v2
    :try_end_6d
    .catchall {:try_start_69 .. :try_end_6d} :catchall_6b

    :try_start_6d
    throw v0
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_71

    .line 18
    :catchall_6e
    move-exception v0

    .line 12
    :try_start_6f
    monitor-exit v2
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    :try_start_70
    throw v0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_71

    .line 2
    :catchall_71
    move-exception v0

    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzga;->zzb()V

    .line 18
    throw v0
.end method

.method public final zza()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzga;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzga;->zzb:Ljava/lang/Object;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 3
    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
