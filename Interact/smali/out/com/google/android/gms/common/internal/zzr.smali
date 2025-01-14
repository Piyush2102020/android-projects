.class final Lcom/google/android/gms/common/internal/zzr;
.super Lcom/google/android/gms/common/internal/GmsClientSupervisor;
.source "com.google.android.gms:play-services-basement@@18.1.0"


# instance fields
.field private final zzb:Ljava/util/HashMap;

.field private final zzc:Landroid/content/Context;

.field private volatile zzd:Landroid/os/Handler;

.field private final zze:Lcom/google/android/gms/common/internal/zzq;

.field private final zzf:Lcom/google/android/gms/common/stats/ConnectionTracker;

.field private final zzg:J

.field private final zzh:J


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/GmsClientSupervisor;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzr;->zzb:Ljava/util/HashMap;

    .line 2
    new-instance v0, Lcom/google/android/gms/common/internal/zzq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/common/internal/zzq;-><init>(Lcom/google/android/gms/common/internal/zzr;Lcom/google/android/gms/common/internal/zzp;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzr;->zze:Lcom/google/android/gms/common/internal/zzq;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzr;->zzc:Landroid/content/Context;

    new-instance p1, Lcom/google/android/gms/internal/common/zzi;

    .line 4
    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/internal/common/zzi;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzr;->zzd:Landroid/os/Handler;

    .line 5
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzr;->zzf:Lcom/google/android/gms/common/stats/ConnectionTracker;

    const-wide/16 p1, 0x1388

    iput-wide p1, p0, Lcom/google/android/gms/common/internal/zzr;->zzg:J

    const-wide/32 p1, 0x493e0

    iput-wide p1, p0, Lcom/google/android/gms/common/internal/zzr;->zzh:J

    return-void
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/common/internal/zzr;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/common/internal/zzr;->zzh:J

    return-wide v0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/common/internal/zzr;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzr;->zzc:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic zzf(Lcom/google/android/gms/common/internal/zzr;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzr;->zzd:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic zzg(Lcom/google/android/gms/common/internal/zzr;)Lcom/google/android/gms/common/stats/ConnectionTracker;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzr;->zzf:Lcom/google/android/gms/common/stats/ConnectionTracker;

    return-object p0
.end method

.method static bridge synthetic zzh(Lcom/google/android/gms/common/internal/zzr;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzr;->zzb:Ljava/util/HashMap;

    return-object p0
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/common/internal/zzn;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .registers 7

    .line 1
    const-string v0, "ServiceConnection must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzr;->zzb:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzr;->zzb:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/internal/zzo;

    if-eqz v1, :cond_4c

    .line 4
    invoke-virtual {v1, p2}, Lcom/google/android/gms/common/internal/zzo;->zzh(Landroid/content/ServiceConnection;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 6
    invoke-virtual {v1, p2, p3}, Lcom/google/android/gms/common/internal/zzo;->zzf(Landroid/content/ServiceConnection;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzo;->zzi()Z

    move-result p2

    if-eqz p2, :cond_2f

    iget-object p2, p0, Lcom/google/android/gms/common/internal/zzr;->zzd:Landroid/os/Handler;

    .line 8
    const/4 p3, 0x0

    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/common/internal/zzr;->zzd:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/google/android/gms/common/internal/zzr;->zzg:J

    .line 9
    invoke-virtual {p2, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 10
    :cond_2f
    monitor-exit v0

    return-void

    .line 4
    :cond_31
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to unbind a GmsServiceConnection  that was not bound before.  config="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2
    :cond_4c
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Nonexistent connection status for service config: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 10
    :catchall_67
    move-exception p1

    monitor-exit v0
    :try_end_69
    .catchall {:try_start_8 .. :try_end_69} :catchall_67

    throw p1
.end method

.method protected final zzc(Lcom/google/android/gms/common/internal/zzn;Landroid/content/ServiceConnection;Ljava/lang/String;Ljava/util/concurrent/Executor;)Z
    .registers 9

    .line 1
    const-string v0, "ServiceConnection must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzr;->zzb:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzr;->zzb:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/internal/zzo;

    if-nez v1, :cond_23

    new-instance v1, Lcom/google/android/gms/common/internal/zzo;

    .line 3
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/internal/zzo;-><init>(Lcom/google/android/gms/common/internal/zzr;Lcom/google/android/gms/common/internal/zzn;)V

    .line 4
    invoke-virtual {v1, p2, p2, p3}, Lcom/google/android/gms/common/internal/zzo;->zzd(Landroid/content/ServiceConnection;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, p3, p4}, Lcom/google/android/gms/common/internal/zzo;->zze(Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    iget-object p2, p0, Lcom/google/android/gms/common/internal/zzr;->zzb:Ljava/util/HashMap;

    .line 6
    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_49

    .line 13
    :cond_23
    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzr;->zzd:Landroid/os/Handler;

    .line 7
    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 8
    invoke-virtual {v1, p2}, Lcom/google/android/gms/common/internal/zzo;->zzh(Landroid/content/ServiceConnection;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 10
    invoke-virtual {v1, p2, p2, p3}, Lcom/google/android/gms/common/internal/zzo;->zzd(Landroid/content/ServiceConnection;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzo;->zza()I

    move-result p1

    packed-switch p1, :pswitch_data_6e

    goto :goto_49

    .line 11
    :pswitch_3a
    invoke-virtual {v1, p3, p4}, Lcom/google/android/gms/common/internal/zzo;->zze(Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    goto :goto_49

    :pswitch_3e
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzo;->zzb()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzo;->zzc()Landroid/os/IBinder;

    move-result-object p3

    .line 12
    invoke-interface {p2, p1, p3}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 6
    :goto_49
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzo;->zzj()Z

    move-result p1

    .line 13
    monitor-exit v0

    return p1

    .line 8
    :cond_4f
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Trying to bind a GmsServiceConnection that was already connected before.  config="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 12
    :catchall_6a
    move-exception p1

    .line 14
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_8 .. :try_end_6c} :catchall_6a

    throw p1

    nop

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_3a
    .end packed-switch
.end method

.method final zzi(Landroid/os/Looper;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzr;->zzb:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_3
    new-instance v1, Lcom/google/android/gms/internal/common/zzi;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzr;->zze:Lcom/google/android/gms/common/internal/zzq;

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/common/zzi;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/google/android/gms/common/internal/zzr;->zzd:Landroid/os/Handler;

    .line 2
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method
