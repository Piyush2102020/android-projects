.class public final Lcom/google/android/gms/internal/measurement/zzho;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.2.2"


# static fields
.field private static volatile zza:Lcom/google/android/gms/internal/measurement/zzii;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzho;->zza:Lcom/google/android/gms/internal/measurement/zzii;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/zzii;
    .registers 15

    .line 1
    const-class v0, Lcom/google/android/gms/internal/measurement/zzho;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzho;->zza:Lcom/google/android/gms/internal/measurement/zzii;

    if-nez v1, :cond_179

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->TAGS:Ljava/lang/String;

    const-string v3, "eng"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    const-string/jumbo v3, "userdebug"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    :cond_1c
    const-string v1, "dev-keys"

    .line 2
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_35

    const-string/jumbo v1, "test-keys"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2e

    goto :goto_35

    .line 35
    :cond_2e
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzii;->zzc()Lcom/google/android/gms/internal/measurement/zzii;

    move-result-object p0

    move-object v1, p0

    goto/16 :goto_171

    .line 3
    :cond_35
    :goto_35
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhb;->zzb()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->isDeviceProtectedStorage()Z

    move-result v1

    if-nez v1, :cond_45

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    .line 6
    :cond_45
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_17c

    .line 7
    :try_start_49
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_174

    const/4 v2, 0x0

    :try_start_4d
    new-instance v3, Ljava/io/File;

    const-string v4, "phenotype_hermetic"

    .line 8
    invoke-virtual {p0, v4, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    const-string v5, "overrides.txt"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/lang/RuntimeException; {:try_start_4d .. :try_end_5a} :catch_6a
    .catchall {:try_start_4d .. :try_end_5a} :catchall_174

    .line 10
    :try_start_5a
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_65

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzii;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzii;

    move-result-object v3

    goto :goto_76

    .line 35
    :cond_65
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzii;->zzc()Lcom/google/android/gms/internal/measurement/zzii;

    move-result-object v3

    goto :goto_76

    .line 34
    :catch_6a
    move-exception v3

    const-string v4, "HermeticFileOverrides"

    const-string v5, "no data dir"

    .line 9
    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzii;->zzc()Lcom/google/android/gms/internal/measurement/zzii;

    move-result-object v3

    .line 10
    :goto_76
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzii;->zzb()Z

    move-result v4

    if-eqz v4, :cond_169

    .line 11
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzii;->zza()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;
    :try_end_82
    .catchall {:try_start_5a .. :try_end_82} :catchall_174

    :try_start_82
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    .line 12
    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_91} :catch_162
    .catchall {:try_start_82 .. :try_end_91} :catchall_174

    .line 13
    const/4 v5, 0x1

    :try_start_92
    new-instance v6, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v6}, Landroidx/collection/SimpleArrayMap;-><init>()V

    new-instance v7, Ljava/util/HashMap;

    .line 14
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 15
    :goto_9c
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_111

    const-string v9, " "

    .line 16
    const/4 v10, 0x3

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    .line 17
    array-length v11, v9

    if-eq v11, v10, :cond_c3

    const-string v9, "HermeticFileOverrides"

    new-instance v10, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9c

    :cond_c3
    nop

    .line 19
    aget-object v8, v9, v2

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 20
    aget-object v8, v9, v5

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 21
    const/4 v11, 0x2

    aget-object v12, v9, v11

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    if-nez v12, :cond_f9

    .line 22
    aget-object v9, v9, v11

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-static {v11}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 24
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v13, 0x400

    if-lt v9, v13, :cond_f6

    if-ne v12, v11, :cond_f9

    .line 25
    :cond_f6
    invoke-interface {v7, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :cond_f9
    invoke-virtual {v6, v10}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_107

    new-instance v9, Landroidx/collection/SimpleArrayMap;

    .line 27
    invoke-direct {v9}, Landroidx/collection/SimpleArrayMap;-><init>()V

    invoke-virtual {v6, v10, v9}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_107
    invoke-virtual {v6, v10}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v9, v8, v12}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9c

    :cond_111
    const-string v7, "HermeticFileOverrides"

    .line 29
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Parsed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for Android package "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/google/android/gms/internal/measurement/zzhh;

    invoke-direct {p0, v6}, Lcom/google/android/gms/internal/measurement/zzhh;-><init>(Landroidx/collection/SimpleArrayMap;)V
    :try_end_13c
    .catchall {:try_start_92 .. :try_end_13c} :catchall_144

    .line 31
    :try_start_13c
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_13f
    .catch Ljava/io/IOException; {:try_start_13c .. :try_end_13f} :catch_162
    .catchall {:try_start_13c .. :try_end_13f} :catchall_174

    :try_start_13f
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzii;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzii;

    move-result-object p0
    :try_end_143
    .catchall {:try_start_13f .. :try_end_143} :catchall_174

    goto :goto_16d

    .line 32
    :catchall_144
    move-exception p0

    .line 12
    :try_start_145
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_148
    .catchall {:try_start_145 .. :try_end_148} :catchall_149

    goto :goto_161

    :catchall_149
    move-exception v3

    :try_start_14a
    const-class v4, Ljava/lang/Throwable;

    const-string v6, "addSuppressed"

    new-array v7, v5, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Throwable;

    aput-object v8, v7, v2

    .line 30
    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v2

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15f
    .catch Ljava/lang/Exception; {:try_start_14a .. :try_end_15f} :catch_160
    .catchall {:try_start_14a .. :try_end_15f} :catchall_174

    goto :goto_161

    :catch_160
    move-exception v2

    .line 12
    :goto_161
    :try_start_161
    throw p0
    :try_end_162
    .catch Ljava/io/IOException; {:try_start_161 .. :try_end_162} :catch_162
    .catchall {:try_start_161 .. :try_end_162} :catchall_174

    .line 9
    :catch_162
    move-exception p0

    :try_start_163
    new-instance v2, Ljava/lang/RuntimeException;

    .line 32
    invoke-direct {v2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 35
    :cond_169
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzii;->zzc()Lcom/google/android/gms/internal/measurement/zzii;

    move-result-object p0
    :try_end_16d
    .catchall {:try_start_163 .. :try_end_16d} :catchall_174

    .line 33
    :goto_16d
    :try_start_16d
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v1, p0

    :goto_171
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzho;->zza:Lcom/google/android/gms/internal/measurement/zzii;

    goto :goto_17a

    .line 36
    :catchall_174
    move-exception p0

    .line 33
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 34
    throw p0

    .line 35
    :cond_179
    nop

    :goto_17a
    monitor-exit v0

    return-object v1

    :catchall_17c
    move-exception p0

    .line 36
    monitor-exit v0
    :try_end_17e
    .catchall {:try_start_16d .. :try_end_17e} :catchall_17c

    throw p0
.end method
