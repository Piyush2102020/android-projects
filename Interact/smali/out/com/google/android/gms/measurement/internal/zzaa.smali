.class final Lcom/google/android/gms/measurement/internal/zzaa;
.super Lcom/google/android/gms/measurement/internal/zzkt;
.source "com.google.android.gms:play-services-measurement@@21.2.2"


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/util/Set;

.field private zzc:Ljava/util/Map;

.field private zzd:Ljava/lang/Long;

.field private zze:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzlg;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkt;-><init>(Lcom/google/android/gms/measurement/internal/zzlg;)V

    return-void
.end method

.method private final zzd(Ljava/lang/Integer;)Lcom/google/android/gms/measurement/internal/zzu;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzu;

    return-object p1

    :cond_11
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzu;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    .line 3
    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzu;-><init>(Lcom/google/android/gms/measurement/internal/zzaa;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzt;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Ljava/util/Map;

    .line 4
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private final zzf(II)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzu;

    if-nez p1, :cond_10

    const/4 p1, 0x0

    return p1

    :cond_10
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzu;->zzb(Lcom/google/android/gms/measurement/internal/zzu;)Ljava/util/BitSet;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    return p1
.end method


# virtual methods
.method final zza(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;
    .registers 70

    .line 1
    move-object/from16 v10, p0

    const-string v11, "current_results"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p1

    iput-object v0, v10, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    .line 4
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v10, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:Ljava/util/Set;

    .line 5
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, v10, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Ljava/util/Map;

    move-object/from16 v0, p4

    iput-object v0, v10, Lcom/google/android/gms/measurement/internal/zzaa;->zzd:Ljava/lang/Long;

    move-object/from16 v0, p5

    iput-object v0, v10, Lcom/google/android/gms/measurement/internal/zzaa;->zze:Ljava/lang/Long;

    .line 6
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v1, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzft;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzft;->zzh()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_s"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    move v1, v13

    goto :goto_48

    .line 42
    :cond_47
    move v1, v12

    .line 8
    :goto_48
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzov;->zzc()Z

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzf()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    iget-object v2, v10, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    .line 10
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzeh;->zzY:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzag;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v14

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzov;->zzc()Z

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzf()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    iget-object v2, v10, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzeh;->zzX:Lcom/google/android/gms/measurement/internal/zzeg;

    .line 13
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzag;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v15

    if-eqz v1, :cond_af

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzks;->zzf:Lcom/google/android/gms/measurement/internal/zzlg;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v2

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzkt;->zzW()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 16
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Landroid/content/ContentValues;

    .line 17
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 18
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "current_session_count"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 15
    :try_start_8b
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzh()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "events"

    const-string v6, "app_id = ?"

    new-array v7, v13, [Ljava/lang/String;

    aput-object v3, v7, v12

    .line 19
    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_9a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8b .. :try_end_9a} :catch_9b

    goto :goto_af

    .line 42
    :catch_9b
    move-exception v0

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v2

    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 22
    const-string v4, "Error resetting session-scoped event counts. appId"

    invoke-virtual {v2, v4, v3, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    :cond_af
    :goto_af
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    const-string v9, "Failed to merge filter. appId"

    const-string v8, "Database error querying filters. appId"

    const-string v7, "data"

    const-string v6, "audience_id"

    if-eqz v15, :cond_183

    if-eqz v14, :cond_183

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzks;->zzf:Lcom/google/android/gms/measurement/internal/zzlg;

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v2

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    .line 25
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    new-instance v4, Landroidx/collection/ArrayMap;

    .line 26
    invoke-direct {v4}, Landroidx/collection/ArrayMap;-><init>()V

    .line 27
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzh()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v16

    :try_start_d3
    const-string v17, "event_filters"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v18

    const-string v19, "app_id=?"

    new-array v0, v13, [Ljava/lang/String;

    aput-object v3, v0, v12

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 28
    move-object/from16 v20, v0

    invoke-virtual/range {v16 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_eb
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d3 .. :try_end_eb} :catch_162
    .catchall {:try_start_d3 .. :try_end_eb} :catchall_15f

    .line 29
    :try_start_eb
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_151

    :goto_f1
    nop

    .line 30
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_f6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_eb .. :try_end_f6} :catch_15d
    .catchall {:try_start_eb .. :try_end_f6} :catchall_15b

    .line 31
    :try_start_f6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzek;->zzc()Lcom/google/android/gms/internal/measurement/zzej;

    move-result-object v13

    invoke-static {v13, v0}, Lcom/google/android/gms/measurement/internal/zzli;->zzl(Lcom/google/android/gms/internal/measurement/zzmh;[B)Lcom/google/android/gms/internal/measurement/zzmh;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzej;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaD()Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzek;
    :try_end_106
    .catch Ljava/io/IOException; {:try_start_f6 .. :try_end_106} :catch_12d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f6 .. :try_end_106} :catch_15d
    .catchall {:try_start_f6 .. :try_end_106} :catchall_15b

    .line 35
    :try_start_106
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzek;->zzo()Z

    move-result v13

    if-nez v13, :cond_10d

    goto :goto_13f

    .line 64
    :cond_10d
    nop

    .line 36
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 37
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/List;

    if-nez v16, :cond_127

    new-instance v12, Ljava/util/ArrayList;

    .line 38
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 39
    invoke-interface {v4, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_129

    .line 40
    :cond_127
    move-object/from16 v12, v16

    :goto_129
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13f

    .line 48
    :catch_12d
    move-exception v0

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 32
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v12

    .line 33
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v12

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 34
    invoke-virtual {v12, v9, v13, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    :goto_13f
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_143
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_106 .. :try_end_143} :catch_15d
    .catchall {:try_start_106 .. :try_end_143} :catchall_15b

    if-nez v0, :cond_14e

    if-eqz v5, :cond_14b

    .line 42
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_14c

    .line 64
    :cond_14b
    nop

    .line 42
    :goto_14c
    move-object v12, v4

    goto :goto_184

    .line 41
    :cond_14e
    const/4 v12, 0x0

    const/4 v13, 0x1

    goto :goto_f1

    .line 43
    :cond_151
    :try_start_151
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_155
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_151 .. :try_end_155} :catch_15d
    .catchall {:try_start_151 .. :try_end_155} :catchall_15b

    if-eqz v5, :cond_183

    .line 42
    :goto_157
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_183

    .line 48
    :catchall_15b
    move-exception v0

    goto :goto_17d

    :catch_15d
    move-exception v0

    goto :goto_164

    .line 42
    :catchall_15f
    move-exception v0

    const/4 v5, 0x0

    goto :goto_17d

    .line 22
    :catch_162
    move-exception v0

    const/4 v5, 0x0

    :goto_164
    :try_start_164
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 44
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v2

    .line 45
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 46
    invoke-virtual {v2, v8, v3, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_179
    .catchall {:try_start_164 .. :try_end_179} :catchall_17c

    if-eqz v5, :cond_183

    .line 42
    goto :goto_157

    .line 61
    :catchall_17c
    move-exception v0

    .line 42
    :goto_17d
    if-eqz v5, :cond_182

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 48
    :cond_182
    throw v0

    .line 42
    :cond_183
    :goto_183
    move-object v12, v0

    :goto_184
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzks;->zzf:Lcom/google/android/gms/measurement/internal/zzlg;

    .line 49
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v2

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    .line 50
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzkt;->zzW()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 51
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzh()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v16

    :try_start_199
    const-string v17, "audience_filter_values"

    filled-new-array {v6, v11}, [Ljava/lang/String;

    move-result-object v18

    const-string v19, "app_id=?"

    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 52
    move-object/from16 v20, v0

    invoke-virtual/range {v16 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_1b3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_199 .. :try_end_1b3} :catch_23c
    .catchall {:try_start_199 .. :try_end_1b3} :catchall_238

    .line 53
    :try_start_1b3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1c9

    .line 65
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_1bd
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b3 .. :try_end_1bd} :catch_232
    .catchall {:try_start_1b3 .. :try_end_1bd} :catchall_22e

    if-eqz v4, :cond_1c2

    .line 64
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 71
    :cond_1c2
    move-object v13, v0

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    goto/16 :goto_25f

    .line 86
    :cond_1c9
    :try_start_1c9
    new-instance v5, Landroidx/collection/ArrayMap;

    .line 54
    invoke-direct {v5}, Landroidx/collection/ArrayMap;-><init>()V

    :goto_1ce
    nop

    .line 55
    const/4 v13, 0x0

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 56
    const/4 v13, 0x1

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_1d9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c9 .. :try_end_1d9} :catch_232
    .catchall {:try_start_1c9 .. :try_end_1d9} :catchall_22e

    .line 57
    :try_start_1d9
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgi;->zze()Lcom/google/android/gms/internal/measurement/zzgh;

    move-result-object v13

    invoke-static {v13, v0}, Lcom/google/android/gms/measurement/internal/zzli;->zzl(Lcom/google/android/gms/internal/measurement/zzmh;[B)Lcom/google/android/gms/internal/measurement/zzmh;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaD()Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgi;
    :try_end_1e9
    .catch Ljava/io/IOException; {:try_start_1d9 .. :try_end_1e9} :catch_1f7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1d9 .. :try_end_1e9} :catch_232
    .catchall {:try_start_1d9 .. :try_end_1e9} :catchall_22e

    .line 62
    :try_start_1e9
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v5, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    goto :goto_215

    .line 92
    :catch_1f7
    move-exception v0

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 58
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v13

    .line 59
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v13

    move-object/from16 v17, v5

    const-string v5, "Failed to merge filter results. appId, audienceId, error"
    :try_end_206
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1e9 .. :try_end_206} :catch_232
    .catchall {:try_start_1e9 .. :try_end_206} :catchall_22e

    move-object/from16 v18, v6

    :try_start_208
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6
    :try_end_20c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_208 .. :try_end_20c} :catch_22c
    .catchall {:try_start_208 .. :try_end_20c} :catchall_22e

    .line 60
    move-object/from16 v19, v7

    :try_start_20e
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 61
    invoke-virtual {v13, v5, v6, v7, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    :goto_215
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_219
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_20e .. :try_end_219} :catch_22a
    .catchall {:try_start_20e .. :try_end_219} :catchall_22e

    if-nez v0, :cond_223

    if-eqz v4, :cond_220

    .line 64
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 71
    :cond_220
    move-object/from16 v13, v17

    goto :goto_25f

    .line 63
    :cond_223
    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    goto :goto_1ce

    .line 70
    :catch_22a
    move-exception v0

    goto :goto_242

    :catch_22c
    move-exception v0

    goto :goto_235

    :catchall_22e
    move-exception v0

    move-object v5, v4

    goto/16 :goto_b6d

    :catch_232
    move-exception v0

    move-object/from16 v18, v6

    :goto_235
    move-object/from16 v19, v7

    goto :goto_242

    .line 64
    :catchall_238
    move-exception v0

    const/4 v5, 0x0

    goto/16 :goto_b6d

    .line 34
    :catch_23c
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    const/4 v4, 0x0

    :goto_242
    :try_start_242
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 66
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v2

    .line 67
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    const-string v5, "Database error querying filter results. appId"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 68
    invoke-virtual {v2, v5, v3, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_259
    .catchall {:try_start_242 .. :try_end_259} :catchall_b6b

    if-eqz v4, :cond_25e

    .line 64
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 71
    :cond_25e
    move-object v13, v0

    :goto_25f
    invoke-interface {v13}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v7, 0x2

    if-eqz v0, :cond_26e

    move-object v12, v8

    move-object v13, v9

    move-object/from16 v28, v18

    move-object/from16 v29, v19

    goto/16 :goto_5ec

    .line 177
    :cond_26e
    new-instance v2, Ljava/util/HashSet;

    .line 72
    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    if-eqz v1, :cond_438

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzks;->zzf:Lcom/google/android/gms/measurement/internal/zzlg;

    .line 73
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v3

    iget-object v4, v10, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    .line 74
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzkt;->zzW()V

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 75
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Landroidx/collection/ArrayMap;

    .line 76
    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 74
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzh()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    :try_start_295
    const-string v6, "select audience_id, filter_id from event_filters where app_id = ? and session_scoped = 1 UNION select audience_id, filter_id from property_filters where app_id = ? and session_scoped = 1;"
    :try_end_297
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_295 .. :try_end_297} :catch_2f5
    .catchall {:try_start_295 .. :try_end_297} :catchall_2f1

    move-object/from16 v16, v8

    :try_start_299
    new-array v8, v7, [Ljava/lang/String;

    const/16 v17, 0x0

    aput-object v4, v8, v17

    const/16 v17, 0x1

    aput-object v4, v8, v17

    .line 77
    invoke-virtual {v5, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_2a7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_299 .. :try_end_2a7} :catch_2ef
    .catchall {:try_start_299 .. :try_end_2a7} :catchall_2f1

    .line 78
    :try_start_2a7
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_2e3

    :cond_2ad
    nop

    .line 79
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 80
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    if-nez v8, :cond_2c8

    new-instance v8, Ljava/util/ArrayList;

    .line 81
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 82
    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c9

    .line 121
    :cond_2c8
    nop

    .line 82
    :goto_2c9
    nop

    .line 83
    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 84
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_2da
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2a7 .. :try_end_2da} :catch_2ed
    .catchall {:try_start_2a7 .. :try_end_2da} :catchall_2ea

    if-nez v6, :cond_2ad

    if-eqz v5, :cond_2e2

    .line 86
    :goto_2de
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_313

    .line 121
    :cond_2e2
    goto :goto_313

    .line 87
    :cond_2e3
    :try_start_2e3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_2e7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2e3 .. :try_end_2e7} :catch_2ed
    .catchall {:try_start_2e3 .. :try_end_2e7} :catchall_2ea

    if-eqz v5, :cond_313

    .line 86
    goto :goto_2de

    .line 92
    :catchall_2ea
    move-exception v0

    goto/16 :goto_432

    :catch_2ed
    move-exception v0

    goto :goto_2f9

    .line 192
    :catch_2ef
    move-exception v0

    goto :goto_2f8

    .line 86
    :catchall_2f1
    move-exception v0

    const/4 v5, 0x0

    goto/16 :goto_432

    .line 192
    :catch_2f5
    move-exception v0

    move-object/from16 v16, v8

    :goto_2f8
    const/4 v5, 0x0

    :goto_2f9
    :try_start_2f9
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 88
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v3

    .line 89
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v3

    const-string v6, "Database error querying scoped filters. appId"

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 90
    invoke-virtual {v3, v6, v4, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_310
    .catchall {:try_start_2f9 .. :try_end_310} :catchall_431

    if-eqz v5, :cond_313

    .line 86
    goto :goto_2de

    .line 93
    :cond_313
    :goto_313
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    invoke-static {v13}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/collection/ArrayMap;

    .line 95
    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    .line 96
    invoke-interface {v13}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_326

    goto/16 :goto_42f

    .line 97
    :cond_326
    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_32e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 98
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v13, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzgi;

    .line 99
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    if-eqz v8, :cond_420

    .line 100
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_35c

    move-object/from16 v20, v0

    move-object/from16 v22, v3

    goto/16 :goto_424

    .line 101
    :cond_35c
    iget-object v5, v10, Lcom/google/android/gms/measurement/internal/zzks;->zzf:Lcom/google/android/gms/measurement/internal/zzlg;

    .line 102
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzlg;->zzu()Lcom/google/android/gms/measurement/internal/zzli;

    move-result-object v5

    .line 103
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgi;->zzi()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/measurement/internal/zzli;->zzq(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 104
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_419

    .line 105
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzlb;->zzbB()Lcom/google/android/gms/internal/measurement/zzkx;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzgh;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgh;->zzf()Lcom/google/android/gms/internal/measurement/zzgh;

    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/measurement/zzgh;->zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzgh;

    iget-object v5, v10, Lcom/google/android/gms/measurement/internal/zzks;->zzf:Lcom/google/android/gms/measurement/internal/zzlg;

    .line 106
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzlg;->zzu()Lcom/google/android/gms/measurement/internal/zzli;

    move-result-object v5

    .line 107
    move-object/from16 v20, v0

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgi;->zzk()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5, v0, v8}, Lcom/google/android/gms/measurement/internal/zzli;->zzq(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 108
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgh;->zzh()Lcom/google/android/gms/internal/measurement/zzgh;

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/measurement/zzgh;->zzd(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzgh;

    new-instance v0, Ljava/util/ArrayList;

    .line 109
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgi;->zzh()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_39f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_3cc

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v22, v3

    move-object/from16 v3, v21

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfr;

    .line 111
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfr;->zza()I

    move-result v21

    move-object/from16 v23, v5

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v8, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3c7

    .line 112
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v22

    move-object/from16 v5, v23

    goto :goto_39f

    .line 111
    :cond_3c7
    move-object/from16 v3, v22

    move-object/from16 v5, v23

    goto :goto_39f

    .line 113
    :cond_3cc
    move-object/from16 v22, v3

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgh;->zze()Lcom/google/android/gms/internal/measurement/zzgh;

    .line 114
    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/measurement/zzgh;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzgh;

    new-instance v0, Ljava/util/ArrayList;

    .line 115
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgi;->zzj()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3e1
    :goto_3e1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3ff

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzgk;

    .line 117
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgk;->zzb()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v8, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3e1

    .line 118
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3e1

    .line 119
    :cond_3ff
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgh;->zzg()Lcom/google/android/gms/internal/measurement/zzgh;

    .line 120
    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/measurement/zzgh;->zzc(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzgh;

    .line 121
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaD()Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzgi;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v20

    move-object/from16 v3, v22

    const/4 v7, 0x2

    goto/16 :goto_32e

    .line 104
    :cond_419
    move-object/from16 v20, v0

    move-object/from16 v22, v3

    const/4 v7, 0x2

    goto/16 :goto_32e

    .line 99
    :cond_420
    move-object/from16 v20, v0

    move-object/from16 v22, v3

    .line 101
    :goto_424
    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v20

    move-object/from16 v3, v22

    const/4 v7, 0x2

    goto/16 :goto_32e

    .line 121
    :cond_42e
    nop

    .line 122
    :goto_42f
    move-object v0, v1

    goto :goto_43b

    .line 61
    :catchall_431
    move-exception v0

    .line 86
    :goto_432
    if-eqz v5, :cond_437

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 92
    :cond_437
    throw v0

    .line 86
    :cond_438
    move-object/from16 v16, v8

    move-object v0, v13

    .line 122
    :goto_43b
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_43f
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5e5

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 123
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzgi;

    new-instance v5, Ljava/util/BitSet;

    .line 124
    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    new-instance v6, Ljava/util/BitSet;

    .line 125
    invoke-direct {v6}, Ljava/util/BitSet;-><init>()V

    new-instance v7, Landroidx/collection/ArrayMap;

    .line 126
    invoke-direct {v7}, Landroidx/collection/ArrayMap;-><init>()V

    if-eqz v1, :cond_4a7

    .line 127
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgi;->zza()I

    move-result v2

    if-nez v2, :cond_471

    goto :goto_4a7

    .line 140
    :cond_471
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgi;->zzh()Ljava/util/List;

    move-result-object v2

    .line 128
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_479
    :goto_479
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4a7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfr;

    .line 129
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfr;->zzh()Z

    move-result v4

    if-eqz v4, :cond_479

    .line 130
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfr;->zza()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 131
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfr;->zzg()Z

    move-result v8

    if-eqz v8, :cond_4a2

    .line 132
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfr;->zzb()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_4a3

    .line 133
    :cond_4a2
    const/4 v3, 0x0

    :goto_4a3
    invoke-interface {v7, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_479

    .line 127
    :cond_4a7
    :goto_4a7
    new-instance v8, Landroidx/collection/ArrayMap;

    .line 134
    invoke-direct {v8}, Landroidx/collection/ArrayMap;-><init>()V

    if-eqz v1, :cond_4fb

    .line 135
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgi;->zzc()I

    move-result v2

    if-nez v2, :cond_4b7

    move-object/from16 v23, v0

    goto :goto_4fd

    .line 160
    :cond_4b7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgi;->zzj()Ljava/util/List;

    move-result-object v2

    .line 136
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4bf
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzgk;

    .line 137
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgk;->zzi()Z

    move-result v4

    if-eqz v4, :cond_4f5

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgk;->zza()I

    move-result v4

    if-lez v4, :cond_4f5

    .line 138
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgk;->zzb()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 139
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgk;->zza()I

    move-result v22

    move-object/from16 v23, v0

    add-int/lit8 v0, v22, -0x1

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzgk;->zzc(I)J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 140
    invoke-interface {v8, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v23

    goto :goto_4bf

    .line 137
    :cond_4f5
    move-object/from16 v23, v0

    goto :goto_4bf

    .line 136
    :cond_4f8
    move-object/from16 v23, v0

    goto :goto_4fd

    .line 134
    :cond_4fb
    move-object/from16 v23, v0

    .line 135
    :goto_4fd
    if-eqz v1, :cond_54d

    const/4 v0, 0x0

    .line 141
    :goto_500
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgi;->zzd()I

    move-result v2

    mul-int/lit8 v2, v2, 0x40

    if-ge v0, v2, :cond_54a

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgi;->zzk()Ljava/util/List;

    move-result-object v2

    .line 142
    invoke-static {v2, v0}, Lcom/google/android/gms/measurement/internal/zzli;->zzv(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_53c

    iget-object v2, v10, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 143
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v2

    .line 144
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    .line 145
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v22, v9

    const-string v9, "Filter already evaluated. audience ID, filter ID"

    invoke-virtual {v2, v9, v3, v4}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 146
    invoke-virtual {v6, v0}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgi;->zzi()Ljava/util/List;

    move-result-object v2

    .line 147
    invoke-static {v2, v0}, Lcom/google/android/gms/measurement/internal/zzli;->zzv(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_53e

    .line 149
    invoke-virtual {v5, v0}, Ljava/util/BitSet;->set(I)V

    goto :goto_545

    .line 142
    :cond_53c
    move-object/from16 v22, v9

    .line 148
    :cond_53e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :goto_545
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v9, v22

    goto :goto_500

    .line 141
    :cond_54a
    move-object/from16 v22, v9

    goto :goto_54f

    .line 135
    :cond_54d
    move-object/from16 v22, v9

    .line 150
    :goto_54f
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzgi;

    if-eqz v15, :cond_5bc

    if-eqz v14, :cond_5bc

    .line 151
    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_5bc

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/zzaa;->zze:Ljava/lang/Long;

    if-eqz v1, :cond_5bc

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/zzaa;->zzd:Ljava/lang/Long;

    if-nez v1, :cond_56f

    goto :goto_5bc

    .line 152
    :cond_56f
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_573
    :goto_573
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5bc

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzek;

    .line 153
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzek;->zzb()I

    move-result v2

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/zzaa;->zze:Ljava/lang/Long;

    .line 154
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    const-wide/16 v26, 0x3e8

    div-long v24, v24, v26

    .line 155
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzek;->zzm()Z

    move-result v1

    if-eqz v1, :cond_59c

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/zzaa;->zzd:Ljava/lang/Long;

    .line 156
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    div-long v24, v24, v26

    goto :goto_59d

    .line 160
    :cond_59c
    nop

    .line 157
    :goto_59d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5ae

    .line 158
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_5ae
    invoke-interface {v8, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_573

    .line 160
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_573

    .line 151
    :cond_5bc
    :goto_5bc
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzu;

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    const/4 v9, 0x0

    .line 161
    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v28, v18

    move-object/from16 v29, v19

    move-object/from16 v17, v12

    move-object/from16 v12, v16

    move-object/from16 p1, v13

    move-object/from16 v13, v22

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/measurement/internal/zzu;-><init>(Lcom/google/android/gms/measurement/internal/zzaa;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzgi;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/zzt;)V

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Ljava/util/Map;

    .line 162
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v13

    move-object/from16 v12, v17

    move-object/from16 v0, v23

    move-object/from16 v13, p1

    goto/16 :goto_43f

    .line 122
    :cond_5e5
    move-object v13, v9

    move-object/from16 v12, v16

    move-object/from16 v28, v18

    move-object/from16 v29, v19

    .line 163
    :goto_5ec
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "Skipping failed audience ID"

    if-eqz v0, :cond_5f8

    move-object/from16 v24, v11

    goto/16 :goto_86c

    .line 240
    :cond_5f8
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzw;

    const/4 v3, 0x0

    invoke-direct {v2, v10, v3}, Lcom/google/android/gms/measurement/internal/zzw;-><init>(Lcom/google/android/gms/measurement/internal/zzaa;Lcom/google/android/gms/measurement/internal/zzv;)V

    new-instance v4, Landroidx/collection/ArrayMap;

    .line 164
    invoke-direct {v4}, Landroidx/collection/ArrayMap;-><init>()V

    .line 165
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_607
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_86a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzft;

    iget-object v6, v10, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    .line 166
    invoke-virtual {v2, v6, v0}, Lcom/google/android/gms/measurement/internal/zzw;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzft;)Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v6

    if-eqz v6, :cond_861

    iget-object v7, v10, Lcom/google/android/gms/measurement/internal/zzks;->zzf:Lcom/google/android/gms/measurement/internal/zzlg;

    .line 167
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzlg;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v7

    iget-object v8, v10, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzft;->zzh()Ljava/lang/String;

    move-result-object v9

    .line 168
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzft;->zzh()Ljava/lang/String;

    move-result-object v14

    .line 169
    invoke-virtual {v7, v8, v14}, Lcom/google/android/gms/measurement/internal/zzam;->zzn(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v14

    if-nez v14, :cond_670

    iget-object v14, v7, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 170
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v14

    .line 171
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzeu;->zzk()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v14

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 172
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzge;->zzj()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v7

    .line 173
    invoke-virtual {v7, v9}, Lcom/google/android/gms/measurement/internal/zzep;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 174
    const-string v9, "Event aggregate wasn\'t created during raw event logging. appId, event"

    invoke-virtual {v14, v9, v15, v7}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Lcom/google/android/gms/measurement/internal/zzas;

    move-object/from16 v30, v7

    .line 175
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzft;->zzh()Ljava/lang/String;

    move-result-object v32

    const-wide/16 v33, 0x1

    const-wide/16 v35, 0x1

    const-wide/16 v37, 0x1

    .line 176
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzft;->zzd()J

    move-result-wide v39

    const-wide/16 v41, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    move-object/from16 v31, v8

    invoke-direct/range {v30 .. v46}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_6a5

    .line 199
    :cond_670
    new-instance v7, Lcom/google/android/gms/measurement/internal/zzas;

    move-object/from16 v47, v7

    iget-object v0, v14, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    move-object/from16 v48, v0

    iget-object v0, v14, Lcom/google/android/gms/measurement/internal/zzas;->zzb:Ljava/lang/String;

    move-object/from16 v49, v0

    iget-wide v8, v14, Lcom/google/android/gms/measurement/internal/zzas;->zzc:J

    const-wide/16 v15, 0x1

    add-long v50, v8, v15

    iget-wide v8, v14, Lcom/google/android/gms/measurement/internal/zzas;->zzd:J

    add-long v52, v8, v15

    iget-wide v8, v14, Lcom/google/android/gms/measurement/internal/zzas;->zze:J

    add-long v54, v8, v15

    iget-wide v8, v14, Lcom/google/android/gms/measurement/internal/zzas;->zzf:J

    move-wide/from16 v56, v8

    iget-wide v8, v14, Lcom/google/android/gms/measurement/internal/zzas;->zzg:J

    move-wide/from16 v58, v8

    iget-object v0, v14, Lcom/google/android/gms/measurement/internal/zzas;->zzh:Ljava/lang/Long;

    move-object/from16 v60, v0

    iget-object v0, v14, Lcom/google/android/gms/measurement/internal/zzas;->zzi:Ljava/lang/Long;

    move-object/from16 v61, v0

    iget-object v0, v14, Lcom/google/android/gms/measurement/internal/zzas;->zzj:Ljava/lang/Long;

    move-object/from16 v62, v0

    iget-object v0, v14, Lcom/google/android/gms/measurement/internal/zzas;->zzk:Ljava/lang/Boolean;

    move-object/from16 v63, v0

    .line 177
    invoke-direct/range {v47 .. v63}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 176
    :goto_6a5
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzks;->zzf:Lcom/google/android/gms/measurement/internal/zzlg;

    .line 178
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    .line 179
    invoke-virtual {v0, v7}, Lcom/google/android/gms/measurement/internal/zzam;->zzE(Lcom/google/android/gms/measurement/internal/zzas;)V

    iget-wide v8, v7, Lcom/google/android/gms/measurement/internal/zzas;->zzc:J

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzft;->zzh()Ljava/lang/String;

    move-result-object v14

    .line 180
    invoke-interface {v4, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_7c2

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzks;->zzf:Lcom/google/android/gms/measurement/internal/zzlg;

    .line 181
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v15

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    .line 182
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzkt;->zzW()V

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 183
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 184
    invoke-static {v14}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 p1, v2

    new-instance v2, Landroidx/collection/ArrayMap;

    .line 185
    invoke-direct {v2}, Landroidx/collection/ArrayMap;-><init>()V

    .line 182
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzam;->zzh()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v16

    :try_start_6db
    const-string v17, "event_filters"
    :try_end_6dd
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6db .. :try_end_6dd} :catch_797
    .catchall {:try_start_6db .. :try_end_6dd} :catchall_794

    move-object/from16 p2, v5

    move-object/from16 v24, v11

    move-object/from16 v11, v28

    move-object/from16 v5, v29

    :try_start_6e5
    filled-new-array {v11, v5}, [Ljava/lang/String;

    move-result-object v18

    const-string v19, "app_id=? AND event_name=?"
    :try_end_6eb
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6e5 .. :try_end_6eb} :catch_78c
    .catchall {:try_start_6e5 .. :try_end_6eb} :catchall_794

    move-object/from16 v29, v5

    const/4 v5, 0x2

    :try_start_6ee
    new-array v0, v5, [Ljava/lang/String;

    const/16 v20, 0x0

    aput-object v3, v0, v20

    const/16 v20, 0x1

    aput-object v14, v0, v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 186
    move-object/from16 v20, v0

    invoke-virtual/range {v16 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_704
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6ee .. :try_end_704} :catch_78a
    .catchall {:try_start_6ee .. :try_end_704} :catchall_794

    .line 187
    :try_start_704
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_708
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_704 .. :try_end_708} :catch_784
    .catchall {:try_start_704 .. :try_end_708} :catchall_782

    if-eqz v0, :cond_772

    :goto_70a
    nop

    .line 188
    move-object/from16 v28, v11

    const/4 v11, 0x1

    :try_start_70e
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_712
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_70e .. :try_end_712} :catch_76e
    .catchall {:try_start_70e .. :try_end_712} :catchall_782

    .line 189
    :try_start_712
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzek;->zzc()Lcom/google/android/gms/internal/measurement/zzej;

    move-result-object v11

    invoke-static {v11, v0}, Lcom/google/android/gms/measurement/internal/zzli;->zzl(Lcom/google/android/gms/internal/measurement/zzmh;[B)Lcom/google/android/gms/internal/measurement/zzmh;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzej;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaD()Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzek;
    :try_end_722
    .catch Ljava/io/IOException; {:try_start_712 .. :try_end_722} :catch_746
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_712 .. :try_end_722} :catch_76e
    .catchall {:try_start_712 .. :try_end_722} :catchall_782

    .line 193
    const/4 v11, 0x0

    :try_start_723
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 194
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/List;
    :try_end_731
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_723 .. :try_end_731} :catch_76e
    .catchall {:try_start_723 .. :try_end_731} :catchall_782

    if-nez v16, :cond_73e

    move-object/from16 v22, v7

    :try_start_735
    new-instance v7, Ljava/util/ArrayList;

    .line 195
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 196
    invoke-interface {v2, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_742

    .line 217
    :cond_73e
    move-object/from16 v22, v7

    move-object/from16 v7, v16

    .line 197
    :goto_742
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_75a

    .line 303
    :catch_746
    move-exception v0

    move-object/from16 v22, v7

    iget-object v7, v15, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 190
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v7

    .line 191
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v7

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 192
    invoke-virtual {v7, v13, v11, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 198
    :goto_75a
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_75e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_735 .. :try_end_75e} :catch_780
    .catchall {:try_start_735 .. :try_end_75e} :catchall_782

    if-nez v0, :cond_769

    if-eqz v5, :cond_766

    .line 199
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_767

    .line 217
    :cond_766
    nop

    .line 205
    :goto_767
    move-object v0, v2

    goto :goto_7b7

    .line 198
    :cond_769
    move-object/from16 v7, v22

    move-object/from16 v11, v28

    goto :goto_70a

    .line 303
    :catch_76e
    move-exception v0

    move-object/from16 v22, v7

    goto :goto_79f

    .line 200
    :cond_772
    move-object/from16 v22, v7

    move-object/from16 v28, v11

    :try_start_776
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_77a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_776 .. :try_end_77a} :catch_780
    .catchall {:try_start_776 .. :try_end_77a} :catchall_782

    if-eqz v5, :cond_7b7

    .line 199
    :goto_77c
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_7b7

    .line 303
    :catch_780
    move-exception v0

    goto :goto_79f

    :catchall_782
    move-exception v0

    goto :goto_7bc

    :catch_784
    move-exception v0

    move-object/from16 v22, v7

    move-object/from16 v28, v11

    goto :goto_79f

    .line 233
    :catch_78a
    move-exception v0

    goto :goto_78f

    :catch_78c
    move-exception v0

    move-object/from16 v29, v5

    :goto_78f
    move-object/from16 v22, v7

    move-object/from16 v28, v11

    goto :goto_79e

    .line 199
    :catchall_794
    move-exception v0

    const/4 v5, 0x0

    goto :goto_7bc

    .line 233
    :catch_797
    move-exception v0

    move-object/from16 p2, v5

    move-object/from16 v22, v7

    move-object/from16 v24, v11

    :goto_79e
    const/4 v5, 0x0

    :goto_79f
    :try_start_79f
    iget-object v2, v15, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 201
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v2

    .line 202
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 203
    invoke-virtual {v2, v12, v3, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 204
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_7b4
    .catchall {:try_start_79f .. :try_end_7b4} :catchall_7bb

    if-eqz v5, :cond_7b7

    .line 199
    goto :goto_77c

    .line 205
    :cond_7b7
    :goto_7b7
    invoke-interface {v4, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7ca

    .line 61
    :catchall_7bb
    move-exception v0

    .line 199
    :goto_7bc
    if-eqz v5, :cond_7c1

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 303
    :cond_7c1
    throw v0

    .line 180
    :cond_7c2
    move-object/from16 p1, v2

    move-object/from16 p2, v5

    move-object/from16 v22, v7

    move-object/from16 v24, v11

    .line 206
    :goto_7ca
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7d2
    :goto_7d2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_858

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v5, v10, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:Ljava/util/Set;

    .line 207
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7fc

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 208
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v3

    .line 209
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v3

    invoke-virtual {v3, v1, v7}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7d2

    .line 210
    :cond_7fc
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 211
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x1

    :goto_807
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_84b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzek;

    new-instance v11, Lcom/google/android/gms/measurement/internal/zzx;

    iget-object v14, v10, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    invoke-direct {v11, v10, v14, v3, v7}, Lcom/google/android/gms/measurement/internal/zzx;-><init>(Lcom/google/android/gms/measurement/internal/zzaa;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzek;)V

    iget-object v15, v10, Lcom/google/android/gms/measurement/internal/zzaa;->zzd:Ljava/lang/Long;

    iget-object v14, v10, Lcom/google/android/gms/measurement/internal/zzaa;->zze:Ljava/lang/Long;

    .line 212
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzek;->zzb()I

    move-result v7

    invoke-direct {v10, v3, v7}, Lcom/google/android/gms/measurement/internal/zzaa;->zzf(II)Z

    move-result v21

    .line 213
    move-object v7, v14

    move-object v14, v11

    move-object/from16 v16, v7

    move-object/from16 v17, v6

    move-wide/from16 v18, v8

    move-object/from16 v20, v22

    invoke-virtual/range {v14 .. v21}, Lcom/google/android/gms/measurement/internal/zzx;->zzd(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/zzft;JLcom/google/android/gms/measurement/internal/zzas;Z)Z

    move-result v7

    if-eqz v7, :cond_842

    .line 214
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-direct {v10, v14}, Lcom/google/android/gms/measurement/internal/zzaa;->zzd(Ljava/lang/Integer;)Lcom/google/android/gms/measurement/internal/zzu;

    move-result-object v14

    .line 215
    invoke-virtual {v14, v11}, Lcom/google/android/gms/measurement/internal/zzu;->zzc(Lcom/google/android/gms/measurement/internal/zzy;)V

    goto :goto_807

    :cond_842
    iget-object v5, v10, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:Ljava/util/Set;

    .line 216
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_84b
    if-nez v7, :cond_7d2

    iget-object v5, v10, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:Ljava/util/Set;

    .line 217
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7d2

    .line 206
    :cond_858
    move-object/from16 v2, p1

    move-object/from16 v5, p2

    move-object/from16 v11, v24

    const/4 v3, 0x0

    goto/16 :goto_607

    .line 166
    :cond_861
    move-object/from16 p1, v2

    move-object/from16 p2, v5

    move-object/from16 v24, v11

    const/4 v3, 0x0

    goto/16 :goto_607

    .line 165
    :cond_86a
    move-object/from16 v24, v11

    .line 218
    :goto_86c
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_876

    move-object/from16 v11, v28

    goto/16 :goto_abc

    .line 298
    :cond_876
    new-instance v2, Landroidx/collection/ArrayMap;

    .line 219
    invoke-direct {v2}, Landroidx/collection/ArrayMap;-><init>()V

    .line 220
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_87f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_aba

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzgm;

    .line 221
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgm;->zzf()Ljava/lang/String;

    move-result-object v5

    .line 222
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_97c

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzks;->zzf:Lcom/google/android/gms/measurement/internal/zzlg;

    .line 223
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v6

    iget-object v7, v10, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    .line 224
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzkt;->zzW()V

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 225
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 226
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    new-instance v8, Landroidx/collection/ArrayMap;

    .line 227
    invoke-direct {v8}, Landroidx/collection/ArrayMap;-><init>()V

    .line 224
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzam;->zzh()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    :try_start_8b5
    const-string v14, "property_filters"
    :try_end_8b7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8b5 .. :try_end_8b7} :catch_950
    .catchall {:try_start_8b5 .. :try_end_8b7} :catchall_94d

    move-object/from16 v11, v28

    move-object/from16 v9, v29

    :try_start_8bb
    filled-new-array {v11, v9}, [Ljava/lang/String;

    move-result-object v15

    const-string v16, "app_id=? AND property_name=?"
    :try_end_8c1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8bb .. :try_end_8c1} :catch_949
    .catchall {:try_start_8bb .. :try_end_8c1} :catchall_94d

    move-object/from16 p1, v3

    const/4 v3, 0x2

    :try_start_8c4
    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v7, v0, v3

    const/4 v3, 0x1

    aput-object v5, v0, v3

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 228
    move-object/from16 v17, v0

    invoke-virtual/range {v13 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_8d8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8c4 .. :try_end_8d8} :catch_947
    .catchall {:try_start_8c4 .. :try_end_8d8} :catchall_94d

    .line 229
    :try_start_8d8
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_938

    :cond_8de
    nop

    .line 230
    const/4 v13, 0x1

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_8e4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8d8 .. :try_end_8e4} :catch_945
    .catchall {:try_start_8d8 .. :try_end_8e4} :catchall_942

    .line 231
    :try_start_8e4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzet;->zzc()Lcom/google/android/gms/internal/measurement/zzes;

    move-result-object v14

    invoke-static {v14, v0}, Lcom/google/android/gms/measurement/internal/zzli;->zzl(Lcom/google/android/gms/internal/measurement/zzmh;[B)Lcom/google/android/gms/internal/measurement/zzmh;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzes;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaD()Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzet;
    :try_end_8f4
    .catch Ljava/io/IOException; {:try_start_8e4 .. :try_end_8f4} :catch_914
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8e4 .. :try_end_8f4} :catch_945
    .catchall {:try_start_8e4 .. :try_end_8f4} :catchall_942

    .line 234
    const/4 v14, 0x0

    :try_start_8f5
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 235
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v8, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/List;

    if-nez v16, :cond_90e

    new-instance v13, Ljava/util/ArrayList;

    .line 236
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 237
    invoke-interface {v8, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_910

    .line 274
    :cond_90e
    move-object/from16 v13, v16

    .line 238
    :goto_910
    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_929

    .line 302
    :catch_914
    move-exception v0

    const/4 v14, 0x0

    iget-object v13, v6, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 232
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v13

    .line 233
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v13

    const-string v15, "Failed to merge filter"

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v15, v14, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 239
    :goto_929
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_92d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8f5 .. :try_end_92d} :catch_945
    .catchall {:try_start_8f5 .. :try_end_92d} :catchall_942

    if-nez v0, :cond_8de

    if-eqz v3, :cond_935

    .line 240
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_936

    .line 274
    :cond_935
    nop

    .line 246
    :goto_936
    move-object v0, v8

    goto :goto_970

    .line 241
    :cond_938
    :try_start_938
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_93c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_938 .. :try_end_93c} :catch_945
    .catchall {:try_start_938 .. :try_end_93c} :catchall_942

    if-eqz v3, :cond_970

    .line 240
    :goto_93e
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_970

    .line 302
    :catchall_942
    move-exception v0

    move-object v5, v3

    goto :goto_976

    :catch_945
    move-exception v0

    goto :goto_958

    .line 301
    :catch_947
    move-exception v0

    goto :goto_957

    :catch_949
    move-exception v0

    move-object/from16 p1, v3

    goto :goto_957

    .line 240
    :catchall_94d
    move-exception v0

    const/4 v5, 0x0

    goto :goto_976

    .line 301
    :catch_950
    move-exception v0

    move-object/from16 p1, v3

    move-object/from16 v11, v28

    move-object/from16 v9, v29

    :goto_957
    const/4 v3, 0x0

    :goto_958
    :try_start_958
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 242
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v6

    .line 243
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v6

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 244
    invoke-virtual {v6, v12, v7, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 245
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_96d
    .catchall {:try_start_958 .. :try_end_96d} :catchall_974

    if-eqz v3, :cond_970

    .line 240
    goto :goto_93e

    .line 246
    :cond_970
    :goto_970
    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_982

    .line 61
    :catchall_974
    move-exception v0

    move-object v5, v3

    .line 240
    :goto_976
    if-eqz v5, :cond_97b

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 302
    :cond_97b
    throw v0

    .line 222
    :cond_97c
    move-object/from16 p1, v3

    move-object/from16 v11, v28

    move-object/from16 v9, v29

    .line 247
    :goto_982
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_98a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ab2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, v10, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:Ljava/util/Set;

    .line 248
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9bb

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 276
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    invoke-virtual {v0, v1, v7}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v3, p1

    move-object/from16 v29, v9

    move-object/from16 v28, v11

    goto/16 :goto_87f

    .line 249
    :cond_9bb
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 250
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x1

    :goto_9c6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a9d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzet;

    iget-object v8, v10, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 251
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v8

    .line 252
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzeu;->zzr()Ljava/lang/String;

    move-result-object v8

    .line 253
    const/4 v13, 0x2

    invoke-static {v8, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_a30

    iget-object v8, v10, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 254
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v8

    .line 255
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v8

    .line 256
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 257
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzet;->zzj()Z

    move-result v15

    if-eqz v15, :cond_a00

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzet;->zza()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto :goto_a01

    .line 274
    :cond_a00
    const/4 v15, 0x0

    .line 257
    :goto_a01
    iget-object v13, v10, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 258
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzge;->zzj()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v13

    .line 259
    move-object/from16 p2, v0

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzet;->zze()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/google/android/gms/measurement/internal/zzep;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    const-string v13, "Evaluating filter. audience, filter, property"

    invoke-virtual {v8, v13, v14, v15, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 261
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    .line 262
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    iget-object v8, v10, Lcom/google/android/gms/measurement/internal/zzks;->zzf:Lcom/google/android/gms/measurement/internal/zzlg;

    .line 263
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzlg;->zzu()Lcom/google/android/gms/measurement/internal/zzli;

    move-result-object v8

    .line 264
    invoke-virtual {v8, v7}, Lcom/google/android/gms/measurement/internal/zzli;->zzp(Lcom/google/android/gms/internal/measurement/zzet;)Ljava/lang/String;

    move-result-object v8

    const-string v13, "Filter definition"

    invoke-virtual {v0, v13, v8}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_a32

    .line 253
    :cond_a30
    move-object/from16 p2, v0

    .line 265
    :goto_a32
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzet;->zzj()Z

    move-result v0

    if-eqz v0, :cond_a73

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzet;->zza()I

    move-result v0

    const/16 v8, 0x100

    if-le v0, v8, :cond_a41

    goto :goto_a73

    .line 275
    :cond_a41
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzz;

    iget-object v8, v10, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    invoke-direct {v0, v10, v8, v5, v7}, Lcom/google/android/gms/measurement/internal/zzz;-><init>(Lcom/google/android/gms/measurement/internal/zzaa;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzet;)V

    iget-object v8, v10, Lcom/google/android/gms/measurement/internal/zzaa;->zzd:Ljava/lang/Long;

    iget-object v13, v10, Lcom/google/android/gms/measurement/internal/zzaa;->zze:Ljava/lang/Long;

    .line 266
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzet;->zza()I

    move-result v7

    invoke-direct {v10, v5, v7}, Lcom/google/android/gms/measurement/internal/zzaa;->zzf(II)Z

    move-result v7

    .line 267
    invoke-virtual {v0, v8, v13, v4, v7}, Lcom/google/android/gms/measurement/internal/zzz;->zzd(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/zzgm;Z)Z

    move-result v7

    if-eqz v7, :cond_a69

    .line 268
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v10, v8}, Lcom/google/android/gms/measurement/internal/zzaa;->zzd(Ljava/lang/Integer;)Lcom/google/android/gms/measurement/internal/zzu;

    move-result-object v8

    .line 269
    invoke-virtual {v8, v0}, Lcom/google/android/gms/measurement/internal/zzu;->zzc(Lcom/google/android/gms/measurement/internal/zzy;)V

    move-object/from16 v0, p2

    goto/16 :goto_9c6

    :cond_a69
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:Ljava/util/Set;

    .line 274
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_a9f

    .line 265
    :cond_a73
    :goto_a73
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 270
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    .line 271
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzk()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    iget-object v6, v10, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 272
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzet;->zzj()Z

    move-result v8

    if-eqz v8, :cond_a92

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzet;->zza()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_a93

    .line 275
    :cond_a92
    const/4 v7, 0x0

    .line 272
    :goto_a93
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 273
    const-string v8, "Invalid property filter ID. appId, id"

    invoke-virtual {v0, v8, v6, v7}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_aa1

    .line 250
    :cond_a9d
    move-object/from16 p2, v0

    .line 274
    :goto_a9f
    if-nez v7, :cond_aae

    .line 273
    :goto_aa1
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:Ljava/util/Set;

    .line 275
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p2

    goto/16 :goto_98a

    .line 274
    :cond_aae
    move-object/from16 v0, p2

    goto/16 :goto_98a

    .line 247
    :cond_ab2
    move-object/from16 v3, p1

    move-object/from16 v29, v9

    move-object/from16 v28, v11

    goto/16 :goto_87f

    .line 220
    :cond_aba
    move-object/from16 v11, v28

    .line 218
    :goto_abc
    new-instance v1, Ljava/util/ArrayList;

    .line 278
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Ljava/util/Map;

    .line 279
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v2, v10, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:Ljava/util/Set;

    .line 280
    invoke-interface {v0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 281
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_ad0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b6a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Ljava/util/Map;

    .line 282
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzu;

    .line 283
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/zzu;->zza(I)Lcom/google/android/gms/internal/measurement/zzfp;

    move-result-object v0

    .line 285
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/zzks;->zzf:Lcom/google/android/gms/measurement/internal/zzlg;

    .line 286
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzlg;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v3

    iget-object v5, v10, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    .line 287
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfp;->zzd()Lcom/google/android/gms/internal/measurement/zzgi;

    move-result-object v0

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzkt;->zzW()V

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 288
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 289
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjk;->zzbx()[B

    move-result-object v0

    new-instance v6, Landroid/content/ContentValues;

    .line 291
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 292
    const-string v7, "app_id"

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-virtual {v6, v11, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 294
    move-object/from16 v4, v24

    invoke-virtual {v6, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 287
    :try_start_b24
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzh()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v7, "audience_filter_values"
    :try_end_b2a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b24 .. :try_end_b2a} :catch_b51

    .line 295
    const/4 v8, 0x5

    const/4 v9, 0x0

    :try_start_b2c
    invoke-virtual {v0, v7, v9, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v6

    const-wide/16 v12, -0x1

    cmp-long v0, v6, v12

    if-nez v0, :cond_b4c

    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 296
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v6, "Failed to insert filter results (got -1). appId"

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 298
    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_b49
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b2c .. :try_end_b49} :catch_b4f

    move-object/from16 v24, v4

    goto :goto_ad0

    .line 295
    :cond_b4c
    move-object/from16 v24, v4

    goto :goto_ad0

    .line 70
    :catch_b4f
    move-exception v0

    goto :goto_b53

    :catch_b51
    move-exception v0

    const/4 v9, 0x0

    :goto_b53
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 299
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v3

    .line 300
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v3

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 301
    const-string v6, "Error storing filter results. appId"

    invoke-virtual {v3, v6, v5, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v24, v4

    goto/16 :goto_ad0

    .line 298
    :cond_b6a
    return-object v1

    .line 61
    :catchall_b6b
    move-exception v0

    move-object v5, v4

    .line 64
    :goto_b6d
    if-eqz v5, :cond_b72

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 70
    :cond_b72
    throw v0
.end method

.method protected final zzb()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
