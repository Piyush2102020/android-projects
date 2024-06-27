.class final Lcom/google/android/gms/measurement/internal/zzez;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@21.2.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzfa;

.field private final zzb:Ljava/net/URL;

.field private final zzc:[B

.field private final zzd:Lcom/google/android/gms/measurement/internal/zzew;

.field private final zze:Ljava/lang/String;

.field private final zzf:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzfa;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzew;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzez;->zza:Lcom/google/android/gms/measurement/internal/zzfa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzez;->zzb:Ljava/net/URL;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzez;->zzc:[B

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzez;->zzd:Lcom/google/android/gms/measurement/internal/zzew;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzez;->zze:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzez;->zzf:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 15

    .line 1
    const-string v0, "Error closing HTTP compressed POST connection output stream. appId"

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzez;->zza:Lcom/google/android/gms/measurement/internal/zzfa;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgx;->zzaz()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_9
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzez;->zza:Lcom/google/android/gms/measurement/internal/zzfa;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzez;->zzb:Ljava/net/URL;

    .line 2
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    .line 3
    instance-of v5, v4, Ljava/net/HttpURLConnection;

    if-eqz v5, :cond_11e

    .line 5
    check-cast v4, Ljava/net/HttpURLConnection;

    .line 6
    invoke-virtual {v4, v1}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 7
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzge;->zzf()Lcom/google/android/gms/measurement/internal/zzag;

    .line 8
    const v5, 0xea60

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 9
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzge;->zzf()Lcom/google/android/gms/measurement/internal/zzag;

    .line 10
    const v3, 0xee48

    invoke-virtual {v4, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 11
    invoke-virtual {v4, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 12
    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_37} :catch_165
    .catchall {:try_start_9 .. :try_end_37} :catchall_126

    :try_start_37
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzez;->zzf:Ljava/util/Map;

    if-eqz v5, :cond_5f

    .line 13
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_43
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 14
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v7, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43

    :cond_5f
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzez;->zzc:[B

    if-eqz v5, :cond_af

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzez;->zza:Lcom/google/android/gms/measurement/internal/zzfa;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzks;->zzf:Lcom/google/android/gms/measurement/internal/zzlg;

    .line 15
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzlg;->zzu()Lcom/google/android/gms/measurement/internal/zzli;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzez;->zzc:[B

    .line 16
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzli;->zzy([B)[B

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzez;->zza:Lcom/google/android/gms/measurement/internal/zzfa;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 17
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v6

    .line 18
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v6

    const-string v7, "Uploading data. size"

    array-length v8, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    invoke-virtual {v4, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v3, "Content-Encoding"

    const-string v6, "gzip"

    .line 20
    invoke-virtual {v4, v3, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v4, v8}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 22
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 23
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_9b} :catch_119
    .catchall {:try_start_37 .. :try_end_9b} :catchall_114

    .line 24
    :try_start_9b
    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 25
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_a1} :catch_a8
    .catchall {:try_start_9b .. :try_end_a1} :catchall_a2

    goto :goto_af

    .line 43
    :catchall_a2
    move-exception v5

    move v9, v1

    move-object v12, v2

    move-object v2, v3

    goto/16 :goto_12b

    :catch_a8
    move-exception v5

    move v9, v1

    move-object v12, v2

    move-object v2, v3

    move-object v10, v5

    goto/16 :goto_16b

    .line 26
    :cond_af
    :goto_af
    :try_start_af
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b3} :catch_119
    .catchall {:try_start_af .. :try_end_b3} :catchall_114

    .line 27
    :try_start_b3
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v11
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_b7} :catch_10e
    .catchall {:try_start_b3 .. :try_end_b7} :catchall_10a

    .line 28
    :try_start_b7
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 29
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5
    :try_end_c0
    .catchall {:try_start_b7 .. :try_end_c0} :catchall_f6

    const/16 v6, 0x400

    :try_start_c2
    new-array v6, v6, [B

    .line 30
    :goto_c4
    invoke-virtual {v5, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_ce

    .line 31
    invoke-virtual {v3, v6, v1, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_c4

    .line 32
    :cond_ce
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10
    :try_end_d2
    .catchall {:try_start_c2 .. :try_end_d2} :catchall_f4

    if-eqz v5, :cond_d7

    .line 33
    :try_start_d4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_d7} :catch_103
    .catchall {:try_start_d4 .. :try_end_d7} :catchall_fe

    :cond_d7
    if-eqz v4, :cond_dc

    .line 35
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_dc
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzez;->zza:Lcom/google/android/gms/measurement/internal/zzfa;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaB()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzey;

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzez;->zze:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzez;->zzd:Lcom/google/android/gms/measurement/internal/zzew;

    const/4 v9, 0x0

    const/4 v12, 0x0

    .line 37
    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Lcom/google/android/gms/measurement/internal/zzey;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzew;ILjava/lang/Throwable;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzex;)V

    .line 38
    :goto_f0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp(Ljava/lang/Runnable;)V

    return-void

    .line 34
    :catchall_f4
    move-exception v1

    goto :goto_f8

    .line 43
    :catchall_f6
    move-exception v1

    move-object v5, v2

    :goto_f8
    if-eqz v5, :cond_fd

    .line 33
    :try_start_fa
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 34
    :cond_fd
    throw v1
    :try_end_fe
    .catch Ljava/io/IOException; {:try_start_fa .. :try_end_fe} :catch_103
    .catchall {:try_start_fa .. :try_end_fe} :catchall_fe

    :catchall_fe
    move-exception v1

    move-object v5, v1

    move v9, v8

    move-object v12, v11

    goto :goto_12b

    :catch_103
    move-exception v1

    move-object v5, v1

    move-object v10, v5

    move v9, v8

    move-object v12, v11

    goto/16 :goto_16b

    .line 43
    :catchall_10a
    move-exception v5

    move-object v12, v2

    move v9, v8

    goto :goto_12b

    :catch_10e
    move-exception v5

    move-object v12, v2

    move-object v10, v5

    move v9, v8

    goto/16 :goto_16b

    :catchall_114
    move-exception v3

    move v9, v1

    move-object v12, v2

    move-object v5, v3

    goto :goto_12b

    :catch_119
    move-exception v3

    move v9, v1

    move-object v12, v2

    move-object v10, v3

    goto :goto_16b

    .line 3
    :cond_11e
    :try_start_11e
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Failed to obtain HTTP connection"

    .line 4
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_126
    .catch Ljava/io/IOException; {:try_start_11e .. :try_end_126} :catch_165
    .catchall {:try_start_11e .. :try_end_126} :catchall_126

    .line 38
    :catchall_126
    move-exception v3

    move-object v5, v3

    move v9, v1

    move-object v4, v2

    move-object v12, v4

    :goto_12b
    if-eqz v2, :cond_147

    .line 39
    :try_start_12d
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_130
    .catch Ljava/io/IOException; {:try_start_12d .. :try_end_130} :catch_131

    goto :goto_147

    .line 42
    :catch_131
    move-exception v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzez;->zza:Lcom/google/android/gms/measurement/internal/zzfa;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 40
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v2

    .line 41
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzez;->zze:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 42
    invoke-virtual {v2, v0, v3, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    :cond_147
    :goto_147
    if-eqz v4, :cond_14c

    .line 35
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_14c
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzez;->zza:Lcom/google/android/gms/measurement/internal/zzfa;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaB()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzey;

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzez;->zze:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzez;->zzd:Lcom/google/android/gms/measurement/internal/zzew;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    .line 37
    move-object v6, v1

    invoke-direct/range {v6 .. v13}, Lcom/google/android/gms/measurement/internal/zzey;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzew;ILjava/lang/Throwable;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzex;)V

    .line 38
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp(Ljava/lang/Runnable;)V

    .line 43
    throw v5

    .line 38
    :catch_165
    move-exception v3

    move-object v5, v3

    move v9, v1

    move-object v4, v2

    move-object v12, v4

    move-object v10, v5

    :goto_16b
    if-eqz v2, :cond_187

    .line 39
    :try_start_16d
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_170
    .catch Ljava/io/IOException; {:try_start_16d .. :try_end_170} :catch_171

    goto :goto_187

    .line 34
    :catch_171
    move-exception v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzez;->zza:Lcom/google/android/gms/measurement/internal/zzfa;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 40
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v2

    .line 41
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzez;->zze:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 42
    invoke-virtual {v2, v0, v3, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    :cond_187
    :goto_187
    if-eqz v4, :cond_18c

    .line 35
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_18c
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzez;->zza:Lcom/google/android/gms/measurement/internal/zzfa;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaB()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzey;

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzez;->zze:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzez;->zzd:Lcom/google/android/gms/measurement/internal/zzew;

    const/4 v11, 0x0

    const/4 v13, 0x0

    .line 37
    move-object v6, v1

    invoke-direct/range {v6 .. v13}, Lcom/google/android/gms/measurement/internal/zzey;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzew;ILjava/lang/Throwable;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzex;)V

    goto/16 :goto_f0
.end method
