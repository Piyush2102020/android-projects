.class final Lcom/google/android/gms/measurement/internal/zzim;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.2.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzin;

.field private final zzb:Ljava/net/URL;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Lcom/google/android/gms/measurement/internal/zzgc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzin;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzgc;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzim;->zza:Lcom/google/android/gms/measurement/internal/zzin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzim;->zzb:Ljava/net/URL;

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzim;->zzd:Lcom/google/android/gms/measurement/internal/zzgc;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzim;->zzc:Ljava/lang/String;

    return-void
.end method

.method private final zzb(ILjava/lang/Exception;[BLjava/util/Map;)V
    .registers 13

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzim;->zza:Lcom/google/android/gms/measurement/internal/zzin;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaB()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    new-instance v7, Lcom/google/android/gms/measurement/internal/zzil;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzil;-><init>(Lcom/google/android/gms/measurement/internal/zzim;ILjava/lang/Exception;[BLjava/util/Map;)V

    .line 2
    invoke-virtual {v0, v7}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzim;->zza:Lcom/google/android/gms/measurement/internal/zzin;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzaz()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_7
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzim;->zza:Lcom/google/android/gms/measurement/internal/zzin;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzim;->zzb:Ljava/net/URL;

    .line 2
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .line 3
    instance-of v4, v3, Ljava/net/HttpURLConnection;

    if-eqz v4, :cond_87

    .line 5
    check-cast v3, Ljava/net/HttpURLConnection;

    .line 6
    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 7
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzge;->zzf()Lcom/google/android/gms/measurement/internal/zzag;

    .line 8
    const v4, 0xea60

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzge;->zzf()Lcom/google/android/gms/measurement/internal/zzag;

    .line 10
    const v2, 0xee48

    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 11
    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 12
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_35} :catch_9f
    .catchall {:try_start_7 .. :try_end_35} :catchall_8f

    .line 13
    :try_start_35
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_39} :catch_81
    .catchall {:try_start_35 .. :try_end_39} :catchall_7b

    .line 14
    :try_start_39
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v4
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3d} :catch_78
    .catchall {:try_start_39 .. :try_end_3d} :catchall_75

    .line 15
    :try_start_3d
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 16
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6
    :try_end_46
    .catchall {:try_start_3d .. :try_end_46} :catchall_69

    const/16 v7, 0x400

    :try_start_48
    new-array v7, v7, [B

    .line 17
    :goto_4a
    invoke-virtual {v6, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-lez v8, :cond_54

    .line 18
    invoke-virtual {v5, v7, v0, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_4a

    .line 19
    :cond_54
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_58
    .catchall {:try_start_48 .. :try_end_58} :catchall_67

    if-eqz v6, :cond_5d

    .line 20
    :try_start_5a
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_73
    .catchall {:try_start_5a .. :try_end_5d} :catchall_71

    :cond_5d
    if-eqz v3, :cond_62

    .line 22
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_62
    nop

    .line 23
    invoke-direct {p0, v2, v1, v0, v4}, Lcom/google/android/gms/measurement/internal/zzim;->zzb(ILjava/lang/Exception;[BLjava/util/Map;)V

    return-void

    .line 21
    :catchall_67
    move-exception v0

    goto :goto_6b

    .line 24
    :catchall_69
    move-exception v0

    move-object v6, v1

    :goto_6b
    if-eqz v6, :cond_70

    .line 20
    :try_start_6d
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 21
    :cond_70
    throw v0
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_71} :catch_73
    .catchall {:try_start_6d .. :try_end_71} :catchall_71

    :catchall_71
    move-exception v0

    goto :goto_95

    :catch_73
    move-exception v0

    goto :goto_a5

    .line 24
    :catchall_75
    move-exception v0

    move-object v4, v1

    goto :goto_95

    :catch_78
    move-exception v0

    move-object v4, v1

    goto :goto_a5

    :catchall_7b
    move-exception v2

    move-object v4, v1

    move-object v9, v2

    move v2, v0

    move-object v0, v9

    goto :goto_95

    :catch_81
    move-exception v2

    move-object v4, v1

    move-object v9, v2

    move v2, v0

    move-object v0, v9

    goto :goto_a5

    .line 3
    :cond_87
    :try_start_87
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Failed to obtain HTTP connection"

    .line 4
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8f} :catch_9f
    .catchall {:try_start_87 .. :try_end_8f} :catchall_8f

    .line 23
    :catchall_8f
    move-exception v2

    move-object v3, v1

    move-object v4, v3

    move-object v9, v2

    move v2, v0

    move-object v0, v9

    :goto_95
    if-eqz v3, :cond_9a

    .line 22
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9a
    nop

    .line 23
    invoke-direct {p0, v2, v1, v1, v4}, Lcom/google/android/gms/measurement/internal/zzim;->zzb(ILjava/lang/Exception;[BLjava/util/Map;)V

    .line 24
    throw v0

    .line 23
    :catch_9f
    move-exception v2

    move-object v3, v1

    move-object v4, v3

    move-object v9, v2

    move v2, v0

    move-object v0, v9

    :goto_a5
    if-eqz v3, :cond_aa

    .line 22
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_aa
    nop

    .line 23
    invoke-direct {p0, v2, v0, v1, v4}, Lcom/google/android/gms/measurement/internal/zzim;->zzb(ILjava/lang/Exception;[BLjava/util/Map;)V

    return-void
.end method

.method final synthetic zza(ILjava/lang/Exception;[BLjava/util/Map;)V
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzim;->zzd:Lcom/google/android/gms/measurement/internal/zzgc;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzim;->zzc:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzgc;->zza:Lcom/google/android/gms/measurement/internal/zzge;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzge;->zzC(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void
.end method
