.class public final Lcom/google/android/gms/dynamite/zzb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.1.0"


# static fields
.field private static volatile zza:Ljava/lang/ClassLoader;

.field private static volatile zzb:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/dynamite/zzb;->zza:Ljava/lang/ClassLoader;

    sput-object v0, Lcom/google/android/gms/dynamite/zzb;->zzb:Ljava/lang/Thread;

    return-void
.end method

.method public static declared-synchronized zza()Ljava/lang/ClassLoader;
    .registers 2

    const-class v0, Lcom/google/android/gms/dynamite/zzb;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lcom/google/android/gms/dynamite/zzb;->zza:Ljava/lang/ClassLoader;

    if-nez v1, :cond_d

    invoke-static {}, Lcom/google/android/gms/dynamite/zzb;->zzb()Ljava/lang/ClassLoader;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/dynamite/zzb;->zza:Ljava/lang/ClassLoader;

    :cond_d
    sget-object v1, Lcom/google/android/gms/dynamite/zzb;->zza:Ljava/lang/ClassLoader;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    monitor-exit v0

    return-object v1

    .line 1
    :catchall_11
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized zzb()Ljava/lang/ClassLoader;
    .registers 6

    const-class v0, Lcom/google/android/gms/dynamite/zzb;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lcom/google/android/gms/dynamite/zzb;->zzb:Ljava/lang/Thread;

    const/4 v2, 0x0

    if-nez v1, :cond_15

    invoke-static {}, Lcom/google/android/gms/dynamite/zzb;->zzc()Ljava/lang/Thread;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/dynamite/zzb;->zzb:Ljava/lang/Thread;

    sget-object v1, Lcom/google/android/gms/dynamite/zzb;->zzb:Ljava/lang/Thread;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_40

    if-eqz v1, :cond_13

    goto :goto_15

    .line 5
    :cond_13
    :goto_13
    monitor-exit v0

    return-object v2

    .line 1
    :cond_15
    :goto_15
    :try_start_15
    sget-object v1, Lcom/google/android/gms/dynamite/zzb;->zzb:Ljava/lang/Thread;

    .line 2
    monitor-enter v1
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_40

    :try_start_18
    sget-object v3, Lcom/google/android/gms/dynamite/zzb;->zzb:Ljava/lang/Thread;

    .line 3
    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2
    :try_end_1e
    .catch Ljava/lang/SecurityException; {:try_start_18 .. :try_end_1e} :catch_21
    .catchall {:try_start_18 .. :try_end_1e} :catchall_1f

    goto :goto_3c

    .line 4
    :catchall_1f
    move-exception v2

    goto :goto_3e

    .line 5
    :catch_21
    move-exception v3

    .line 4
    :try_start_22
    invoke-virtual {v3}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get thread context classloader "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "DynamiteLoaderV2CL"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :goto_3c
    monitor-exit v1

    goto :goto_13

    .line 6
    :goto_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_22 .. :try_end_3f} :catchall_1f

    :try_start_3f
    throw v2
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_40

    .line 0
    :catchall_40
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized zzc()Ljava/lang/Thread;
    .registers 12

    const-class v0, Lcom/google/android/gms/dynamite/zzb;

    monitor-enter v0

    .line 1
    :try_start_3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_9c

    const/4 v2, 0x0

    if-nez v1, :cond_14

    monitor-exit v0

    return-object v2

    :cond_14
    :try_start_14
    const-class v3, Ljava/lang/Void;

    monitor-enter v3
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_9c

    .line 2
    :try_start_17
    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->activeGroupCount()I

    move-result v4

    new-array v5, v4, [Ljava/lang/ThreadGroup;

    .line 3
    invoke-virtual {v1, v5}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/ThreadGroup;)I

    const/4 v6, 0x0

    move v7, v6

    :goto_22
    if-ge v7, v4, :cond_36

    .line 4
    aget-object v8, v5, v7

    const-string v9, "dynamiteLoader"

    .line 5
    invoke-virtual {v8}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_33

    goto :goto_37

    .line 15
    :cond_33
    add-int/lit8 v7, v7, 0x1

    goto :goto_22

    :cond_36
    move-object v8, v2

    .line 5
    :goto_37
    if-nez v8, :cond_40

    new-instance v8, Ljava/lang/ThreadGroup;

    const-string v4, "dynamiteLoader"

    .line 6
    invoke-direct {v8, v1, v4}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    .line 7
    :cond_40
    invoke-virtual {v8}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v1

    new-array v4, v1, [Ljava/lang/Thread;

    .line 8
    invoke-virtual {v8, v4}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    :goto_49
    if-ge v6, v1, :cond_5d

    .line 9
    aget-object v5, v4, v6

    const-string v7, "GmsDynamite"

    .line 10
    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_57
    .catch Ljava/lang/SecurityException; {:try_start_17 .. :try_end_57} :catch_78
    .catchall {:try_start_17 .. :try_end_57} :catchall_76

    if-eqz v7, :cond_5a

    goto :goto_5e

    .line 15
    :cond_5a
    add-int/lit8 v6, v6, 0x1

    goto :goto_49

    :cond_5d
    move-object v5, v2

    .line 10
    :goto_5e
    if-nez v5, :cond_75

    :try_start_60
    new-instance v1, Lcom/google/android/gms/dynamite/zza;

    const-string v4, "GmsDynamite"

    .line 11
    invoke-direct {v1, v8, v4}, Lcom/google/android/gms/dynamite/zza;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V
    :try_end_67
    .catch Ljava/lang/SecurityException; {:try_start_60 .. :try_end_67} :catch_71
    .catchall {:try_start_60 .. :try_end_67} :catchall_76

    .line 12
    :try_start_67
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 13
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_6d
    .catch Ljava/lang/SecurityException; {:try_start_67 .. :try_end_6d} :catch_6f
    .catchall {:try_start_67 .. :try_end_6d} :catchall_76

    move-object v5, v1

    goto :goto_97

    .line 16
    :catch_6f
    move-exception v2

    goto :goto_7c

    :catch_71
    move-exception v1

    move-object v2, v1

    move-object v1, v5

    goto :goto_7c

    .line 15
    :cond_75
    goto :goto_97

    .line 14
    :catchall_76
    move-exception v1

    goto :goto_9a

    .line 15
    :catch_78
    move-exception v1

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    .line 14
    :goto_7c
    :try_start_7c
    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to enumerate thread/threadgroup "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "DynamiteLoaderV2CL"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v1

    .line 15
    :goto_97
    monitor-exit v3
    :try_end_98
    .catchall {:try_start_7c .. :try_end_98} :catchall_76

    monitor-exit v0

    return-object v5

    .line 16
    :goto_9a
    :try_start_9a
    monitor-exit v3
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_76

    :try_start_9b
    throw v1
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_9c

    .line 0
    :catchall_9c
    move-exception v1

    monitor-exit v0

    throw v1
.end method
