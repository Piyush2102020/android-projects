.class public final Lcom/google/android/gms/measurement/internal/zzen;
.super Lcom/google/android/gms/measurement/internal/zzf;
.source "com.google.android.gms:play-services-measurement-impl@@21.2.2"


# instance fields
.field private final zza:Lcom/google/android/gms/measurement/internal/zzem;

.field private zzb:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzge;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzf;-><init>(Lcom/google/android/gms/measurement/internal/zzge;)V

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzem;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaw()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzge;->zzf()Lcom/google/android/gms/measurement/internal/zzag;

    .line 4
    const-string v1, "google_app_measurement_local.db"

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzem;-><init>(Lcom/google/android/gms/measurement/internal/zzen;Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzen;->zza:Lcom/google/android/gms/measurement/internal/zzem;

    return-void
.end method

.method private final zzq(I[B)Z
    .registers 19

    .line 1
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    iget-boolean v0, v1, Lcom/google/android/gms/measurement/internal/zzen;->zzb:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    return v2

    :cond_b
    new-instance v3, Landroid/content/ContentValues;

    .line 2
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 3
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v4, "type"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4
    const-string v0, "entry"

    move-object/from16 v4, p2

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzf()Lcom/google/android/gms/measurement/internal/zzag;

    const/4 v4, 0x5

    move v5, v2

    move v6, v4

    :goto_29
    if-ge v5, v4, :cond_136

    .line 6
    const/4 v7, 0x1

    const/4 v8, 0x0

    :try_start_2d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzen;->zzh()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9
    :try_end_31
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2d .. :try_end_31} :catch_104
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_2d .. :try_end_31} :catch_f1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2d .. :try_end_31} :catch_ca
    .catchall {:try_start_2d .. :try_end_31} :catchall_c7

    if-nez v9, :cond_36

    :try_start_33
    iput-boolean v7, v1, Lcom/google/android/gms/measurement/internal/zzen;->zzb:Z

    return v2

    .line 7
    :cond_36
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v0, "select count(1) from messages"

    .line 8
    invoke-virtual {v9, v0, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_3f
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_33 .. :try_end_3f} :catch_c3
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_33 .. :try_end_3f} :catch_c1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_33 .. :try_end_3f} :catch_bd
    .catchall {:try_start_33 .. :try_end_3f} :catchall_ba

    const-wide/16 v11, 0x0

    if-eqz v10, :cond_58

    .line 9
    :try_start_43
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 10
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11
    :try_end_4d
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_43 .. :try_end_4d} :catch_55
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_43 .. :try_end_4d} :catch_53
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_43 .. :try_end_4d} :catch_51
    .catchall {:try_start_43 .. :try_end_4d} :catchall_4e

    goto :goto_59

    .line 35
    :catchall_4e
    move-exception v0

    goto/16 :goto_12a

    :catch_51
    move-exception v0

    goto :goto_bf

    :catch_53
    move-exception v0

    goto :goto_b8

    :catch_55
    move-exception v0

    goto/16 :goto_c5

    .line 29
    :cond_58
    nop

    .line 10
    :goto_59
    const-wide/32 v13, 0x186a0

    cmp-long v0, v11, v13

    const-string v15, "messages"

    if-ltz v0, :cond_a4

    :try_start_62
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v4, "Data loss, local db full"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    sub-long/2addr v13, v11

    const-string v0, "rowid in (select rowid from messages order by rowid asc limit ?)"

    new-array v4, v7, [Ljava/lang/String;

    const-wide/16 v11, 0x1

    add-long/2addr v13, v11

    .line 13
    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v2

    .line 14
    invoke-virtual {v9, v15, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v11, v0

    cmp-long v0, v11, v13

    if-eqz v0, :cond_a4

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v4, "Different delete count than expected in local db. expected, received, difference"

    .line 17
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 18
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    sub-long/2addr v13, v11

    .line 19
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 20
    invoke-virtual {v0, v4, v2, v7, v11}, Lcom/google/android/gms/measurement/internal/zzes;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a4
    nop

    .line 21
    invoke-virtual {v9, v15, v8, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 22
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 23
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_ae
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_62 .. :try_end_ae} :catch_55
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_62 .. :try_end_ae} :catch_53
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_62 .. :try_end_ae} :catch_51
    .catchall {:try_start_62 .. :try_end_ae} :catchall_4e

    if-eqz v10, :cond_b3

    .line 28
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 29
    :cond_b3
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v2, 0x1

    return v2

    .line 35
    :goto_b8
    move-object v8, v10

    goto :goto_f3

    :catchall_ba
    move-exception v0

    goto/16 :goto_12b

    :catch_bd
    move-exception v0

    move-object v10, v8

    :goto_bf
    move-object v8, v9

    goto :goto_cc

    :catch_c1
    move-exception v0

    goto :goto_f3

    :catch_c3
    move-exception v0

    move-object v10, v8

    :goto_c5
    move-object v8, v9

    goto :goto_106

    .line 29
    :catchall_c7
    move-exception v0

    move-object v9, v8

    goto :goto_12b

    :catch_ca
    move-exception v0

    move-object v10, v8

    :goto_cc
    if-eqz v8, :cond_d7

    .line 24
    :try_start_ce
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 25
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_d7
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 26
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    const-string v4, "Error writing entry to local database"

    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzen;->zzb:Z
    :try_end_e9
    .catchall {:try_start_ce .. :try_end_e9} :catchall_128

    if-eqz v10, :cond_ee

    .line 28
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_ee
    if-eqz v8, :cond_122

    .line 29
    goto :goto_11f

    :catch_f1
    move-exception v0

    move-object v9, v8

    :goto_f3
    int-to-long v10, v6

    .line 30
    :try_start_f4
    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_f7
    .catchall {:try_start_f4 .. :try_end_f7} :catchall_ba

    add-int/lit8 v6, v6, 0x14

    if-eqz v8, :cond_fe

    .line 28
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_fe
    if-eqz v9, :cond_122

    .line 29
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_122

    .line 34
    :catch_104
    move-exception v0

    move-object v10, v8

    :goto_106
    :try_start_106
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 31
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v2

    .line 32
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    const-string v4, "Error writing entry; local database full"

    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzen;->zzb:Z
    :try_end_118
    .catchall {:try_start_106 .. :try_end_118} :catchall_128

    if-eqz v10, :cond_11d

    .line 28
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_11d
    if-eqz v8, :cond_122

    .line 29
    :goto_11f
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_122
    :goto_122
    add-int/lit8 v5, v5, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x5

    goto/16 :goto_29

    .line 35
    :catchall_128
    move-exception v0

    move-object v9, v8

    :goto_12a
    move-object v8, v10

    .line 29
    :goto_12b
    if-eqz v8, :cond_130

    .line 28
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_130
    if-eqz v9, :cond_135

    .line 29
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 35
    :cond_135
    throw v0

    .line 29
    :cond_136
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v2, "Failed to write entry to local database"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method protected final zzf()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method final zzh()Landroid/database/sqlite/SQLiteDatabase;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzen;->zzb:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return-object v1

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzen;->zza:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzen;->zzb:Z

    return-object v1

    :cond_12
    return-object v0
.end method

.method public final zzi(I)Ljava/util/List;
    .registers 24

    .line 1
    move-object/from16 v1, p0

    const-string v2, "rowid"

    const-string v3, "Error reading entries from local database"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    iget-boolean v0, v1, Lcom/google/android/gms/measurement/internal/zzen;->zzb:Z

    const/4 v4, 0x0

    if-eqz v0, :cond_f

    return-object v4

    :cond_f
    new-instance v5, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzen;->zzl()Z

    move-result v0

    if-eqz v0, :cond_289

    const/4 v6, 0x5

    const/4 v7, 0x0

    move v9, v6

    move v8, v7

    :goto_1e
    if-ge v8, v6, :cond_279

    .line 4
    const/4 v10, 0x1

    :try_start_21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzen;->zzh()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15
    :try_end_25
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_21 .. :try_end_25} :catch_24e
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_21 .. :try_end_25} :catch_23a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_21 .. :try_end_25} :catch_215
    .catchall {:try_start_21 .. :try_end_25} :catchall_212

    if-nez v15, :cond_2a

    :try_start_27
    iput-boolean v10, v1, Lcom/google/android/gms/measurement/internal/zzen;->zzb:Z

    return-object v4

    .line 5
    :cond_2a
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v0, "3"
    :try_end_2f
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_27 .. :try_end_2f} :catch_20d
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_27 .. :try_end_2f} :catch_208
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_27 .. :try_end_2f} :catch_203
    .catchall {:try_start_27 .. :try_end_2f} :catchall_1fe

    :try_start_2f
    const-string v12, "messages"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "type=?"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "rowid desc"

    const-string v19, "1"
    :try_end_44
    .catchall {:try_start_2f .. :try_end_44} :catchall_1ed

    .line 6
    move-object v11, v15

    move-object/from16 p1, v15

    move-object v15, v0

    :try_start_48
    invoke-virtual/range {v11 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_1e9

    .line 7
    :try_start_4c
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    const-wide/16 v20, -0x1

    if-eqz v0, :cond_5f

    .line 9
    invoke-interface {v11, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12
    :try_end_58
    .catchall {:try_start_4c .. :try_end_58} :catchall_1e5

    if-eqz v11, :cond_5e

    .line 8
    :try_start_5a
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_7b

    .line 63
    :cond_5e
    goto :goto_7b

    :cond_5f
    if-eqz v11, :cond_79

    .line 8
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_79

    .line 69
    :catchall_65
    move-exception v0

    move-object/from16 v14, p1

    goto/16 :goto_200

    :catch_6a
    move-exception v0

    move-object/from16 v14, p1

    goto/16 :goto_205

    :catch_6f
    move-exception v0

    move-object/from16 v14, p1

    goto/16 :goto_20a

    :catch_74
    move-exception v0

    move-object/from16 v14, p1

    goto/16 :goto_20f

    .line 8
    :cond_79
    :goto_79
    move-wide/from16 v12, v20

    :goto_7b
    cmp-long v0, v12, v20

    if-eqz v0, :cond_8c

    const-string v0, "rowid<?"

    new-array v11, v10, [Ljava/lang/String;

    .line 11
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v7

    move-object v14, v0

    move-object v15, v11

    goto :goto_8e

    .line 63
    :cond_8c
    move-object v14, v4

    move-object v15, v14

    .line 11
    :goto_8e
    const-string v12, "messages"

    const-string/jumbo v0, "type"

    const-string v11, "entry"

    filled-new-array {v2, v0, v11}, [Ljava/lang/String;

    move-result-object v13

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "rowid asc"

    .line 12
    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    .line 13
    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_ab
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_5a .. :try_end_ab} :catch_74
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_5a .. :try_end_ab} :catch_6f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5a .. :try_end_ab} :catch_6a
    .catchall {:try_start_5a .. :try_end_ab} :catchall_65

    .line 14
    :goto_ab
    :try_start_ab
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_18e

    .line 15
    invoke-interface {v11, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 16
    invoke-interface {v11, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 17
    const/4 v12, 0x2

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v13

    if-nez v0, :cond_f6

    .line 18
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12
    :try_end_c4
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_ab .. :try_end_c4} :catch_1df
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_ab .. :try_end_c4} :catch_1d9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ab .. :try_end_c4} :catch_1d3
    .catchall {:try_start_ab .. :try_end_c4} :catchall_1cc

    .line 19
    :try_start_c4
    array-length v0, v13

    invoke-virtual {v12, v13, v7, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 20
    invoke-virtual {v12, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 21
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzaw;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzaw;
    :try_end_d3
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_c4 .. :try_end_d3} :catch_de
    .catchall {:try_start_c4 .. :try_end_d3} :catchall_dc

    .line 24
    :try_start_d3
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    if-eqz v0, :cond_db

    .line 25
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_db
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_d3 .. :try_end_db} :catch_1df
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_d3 .. :try_end_db} :catch_1d9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d3 .. :try_end_db} :catch_1d3
    .catchall {:try_start_d3 .. :try_end_db} :catchall_1cc

    :cond_db
    goto :goto_ab

    .line 24
    :catchall_dc
    move-exception v0

    goto :goto_f2

    .line 10
    :catch_de
    move-exception v0

    :try_start_df
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v13, "Failed to load event from local database"

    invoke-virtual {v0, v13}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V
    :try_end_ee
    .catchall {:try_start_df .. :try_end_ee} :catchall_dc

    .line 24
    :try_start_ee
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    goto :goto_ab

    :goto_f2
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    .line 48
    throw v0

    .line 25
    :cond_f6
    if-ne v0, v10, :cond_12f

    .line 26
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12
    :try_end_fc
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_ee .. :try_end_fc} :catch_1df
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_ee .. :try_end_fc} :catch_1d9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ee .. :try_end_fc} :catch_1d3
    .catchall {:try_start_ee .. :try_end_fc} :catchall_1cc

    .line 27
    :try_start_fc
    array-length v0, v13

    invoke-virtual {v12, v13, v7, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 28
    invoke-virtual {v12, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 29
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzlj;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzlj;
    :try_end_10b
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_fc .. :try_end_10b} :catch_111
    .catchall {:try_start_fc .. :try_end_10b} :catchall_10f

    .line 32
    :try_start_10b
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V
    :try_end_10e
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_10b .. :try_end_10e} :catch_1df
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_10b .. :try_end_10e} :catch_1d9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10b .. :try_end_10e} :catch_1d3
    .catchall {:try_start_10b .. :try_end_10e} :catchall_1cc

    goto :goto_125

    :catchall_10f
    move-exception v0

    goto :goto_12b

    .line 48
    :catch_111
    move-exception v0

    :try_start_112
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v13, "Failed to load user property from local database"

    invoke-virtual {v0, v13}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V
    :try_end_121
    .catchall {:try_start_112 .. :try_end_121} :catchall_10f

    .line 32
    :try_start_121
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    move-object v0, v4

    :goto_125
    if-eqz v0, :cond_12a

    .line 33
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12a
    goto :goto_ab

    .line 32
    :goto_12b
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    .line 49
    throw v0

    .line 33
    :cond_12f
    if-ne v0, v12, :cond_169

    .line 34
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12
    :try_end_135
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_121 .. :try_end_135} :catch_1df
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_121 .. :try_end_135} :catch_1d9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_121 .. :try_end_135} :catch_1d3
    .catchall {:try_start_121 .. :try_end_135} :catchall_1cc

    .line 35
    :try_start_135
    array-length v0, v13

    invoke-virtual {v12, v13, v7, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 36
    invoke-virtual {v12, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 37
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzac;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 38
    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzac;
    :try_end_144
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_135 .. :try_end_144} :catch_14a
    .catchall {:try_start_135 .. :try_end_144} :catchall_148

    .line 42
    :try_start_144
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V
    :try_end_147
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_144 .. :try_end_147} :catch_1df
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_144 .. :try_end_147} :catch_1d9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_144 .. :try_end_147} :catch_1d3
    .catchall {:try_start_144 .. :try_end_147} :catchall_1cc

    goto :goto_15e

    :catchall_148
    move-exception v0

    goto :goto_165

    .line 49
    :catch_14a
    move-exception v0

    :try_start_14b
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 39
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v13, "Failed to load conditional user property from local database"

    .line 41
    invoke-virtual {v0, v13}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V
    :try_end_15a
    .catchall {:try_start_14b .. :try_end_15a} :catchall_148

    .line 42
    :try_start_15a
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    move-object v0, v4

    :goto_15e
    if-eqz v0, :cond_163

    .line 43
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_163
    goto/16 :goto_ab

    .line 42
    :goto_165
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    .line 50
    throw v0

    .line 43
    :cond_169
    const/4 v12, 0x3

    if-ne v0, v12, :cond_17d

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 46
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzk()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v12, "Skipping app launch break"

    invoke-virtual {v0, v12}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    goto/16 :goto_ab

    :cond_17d
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 44
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v12, "Unknown record type in local database"

    invoke-virtual {v0, v12}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    goto/16 :goto_ab

    :cond_18e
    const-string v0, "messages"

    const-string v12, "rowid <= ?"

    new-array v13, v10, [Ljava/lang/String;

    .line 51
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v7
    :try_end_19a
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_15a .. :try_end_19a} :catch_1df
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_15a .. :try_end_19a} :catch_1d9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15a .. :try_end_19a} :catch_1d3
    .catchall {:try_start_15a .. :try_end_19a} :catchall_1cc

    .line 52
    move-object/from16 v14, p1

    :try_start_19c
    invoke-virtual {v14, v0, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 53
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    if-ge v0, v12, :cond_1b5

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 54
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v12, "Fewer entries removed from local database than expected"

    invoke-virtual {v0, v12}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    .line 56
    :cond_1b5
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 57
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1bb
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_19c .. :try_end_1bb} :catch_1ca
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_19c .. :try_end_1bb} :catch_1c8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_19c .. :try_end_1bb} :catch_1c6
    .catchall {:try_start_19c .. :try_end_1bb} :catchall_1c4

    if-eqz v11, :cond_1c0

    .line 62
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 63
    :cond_1c0
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-object v5

    .line 10
    :catchall_1c4
    move-exception v0

    goto :goto_1cf

    :catch_1c6
    move-exception v0

    goto :goto_1d6

    :catch_1c8
    move-exception v0

    goto :goto_1dc

    :catch_1ca
    move-exception v0

    goto :goto_1e2

    :catchall_1cc
    move-exception v0

    move-object/from16 v14, p1

    :goto_1cf
    move-object v4, v11

    move-object v15, v14

    goto/16 :goto_26e

    :catch_1d3
    move-exception v0

    move-object/from16 v14, p1

    :goto_1d6
    move-object v15, v14

    goto/16 :goto_218

    :catch_1d9
    move-exception v0

    move-object/from16 v14, p1

    :goto_1dc
    move-object v15, v14

    goto/16 :goto_23d

    :catch_1df
    move-exception v0

    move-object/from16 v14, p1

    :goto_1e2
    move-object v15, v14

    goto/16 :goto_251

    :catchall_1e5
    move-exception v0

    move-object/from16 v14, p1

    goto :goto_1f0

    .line 69
    :catchall_1e9
    move-exception v0

    move-object/from16 v14, p1

    goto :goto_1ef

    :catchall_1ed
    move-exception v0

    move-object v14, v15

    :goto_1ef
    move-object v11, v4

    :goto_1f0
    if-eqz v11, :cond_1f5

    .line 8
    :try_start_1f2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 10
    :cond_1f5
    throw v0
    :try_end_1f6
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1f2 .. :try_end_1f6} :catch_1fc
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1f2 .. :try_end_1f6} :catch_1fa
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1f2 .. :try_end_1f6} :catch_1f8
    .catchall {:try_start_1f2 .. :try_end_1f6} :catchall_1f6

    .line 69
    :catchall_1f6
    move-exception v0

    goto :goto_200

    :catch_1f8
    move-exception v0

    goto :goto_205

    :catch_1fa
    move-exception v0

    goto :goto_20a

    :catch_1fc
    move-exception v0

    goto :goto_20f

    :catchall_1fe
    move-exception v0

    move-object v14, v15

    :goto_200
    move-object v15, v14

    goto/16 :goto_26e

    :catch_203
    move-exception v0

    move-object v14, v15

    :goto_205
    move-object v11, v4

    move-object v15, v14

    goto :goto_218

    :catch_208
    move-exception v0

    move-object v14, v15

    :goto_20a
    move-object v11, v4

    move-object v15, v14

    goto :goto_23d

    :catch_20d
    move-exception v0

    move-object v14, v15

    :goto_20f
    move-object v11, v4

    move-object v15, v14

    goto :goto_251

    .line 63
    :catchall_212
    move-exception v0

    move-object v15, v4

    goto :goto_26e

    :catch_215
    move-exception v0

    move-object v11, v4

    move-object v15, v11

    :goto_218
    if-eqz v15, :cond_223

    .line 58
    :try_start_21a
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v12

    if-eqz v12, :cond_223

    .line 59
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_223
    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 60
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v12

    .line 61
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v12

    invoke-virtual {v12, v3, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v10, v1, Lcom/google/android/gms/measurement/internal/zzen;->zzb:Z
    :try_end_232
    .catchall {:try_start_21a .. :try_end_232} :catchall_26c

    if-eqz v11, :cond_237

    .line 62
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_237
    if-eqz v15, :cond_268

    .line 63
    goto :goto_24a

    :catch_23a
    move-exception v0

    move-object v11, v4

    move-object v15, v11

    :goto_23d
    int-to-long v12, v9

    .line 64
    :try_start_23e
    invoke-static {v12, v13}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_241
    .catchall {:try_start_23e .. :try_end_241} :catchall_26c

    add-int/lit8 v9, v9, 0x14

    if-eqz v11, :cond_248

    .line 62
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_248
    if-eqz v15, :cond_268

    .line 63
    :goto_24a
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_268

    .line 68
    :catch_24e
    move-exception v0

    move-object v11, v4

    move-object v15, v11

    :goto_251
    :try_start_251
    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 65
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v12

    .line 66
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v12

    invoke-virtual {v12, v3, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v10, v1, Lcom/google/android/gms/measurement/internal/zzen;->zzb:Z
    :try_end_260
    .catchall {:try_start_251 .. :try_end_260} :catchall_26c

    if-eqz v11, :cond_265

    .line 62
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_265
    if-eqz v15, :cond_268

    .line 63
    goto :goto_24a

    :cond_268
    :goto_268
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1e

    .line 50
    :catchall_26c
    move-exception v0

    move-object v4, v11

    .line 63
    :goto_26e
    if-eqz v4, :cond_273

    .line 62
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_273
    if-eqz v15, :cond_278

    .line 63
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 69
    :cond_278
    throw v0

    .line 8
    :cond_279
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 67
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzk()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v2, "Failed to read events from database in reasonable time"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    return-object v4

    :cond_289
    return-object v5
.end method

.method public final zzj()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 2
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzen;->zzh()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_25

    const-string v1, "messages"

    .line 3
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_25

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "Reset local analytics data. records"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_25
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_25} :catch_26

    :cond_25
    return-void

    :catch_26
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "Error resetting local analytics data. error"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzk()Z
    .registers 3

    .line 1
    const/4 v0, 0x0

    new-array v0, v0, [B

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/measurement/internal/zzen;->zzq(I[B)Z

    move-result v0

    return v0
.end method

.method final zzl()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaw()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzge;->zzf()Lcom/google/android/gms/measurement/internal/zzag;

    .line 3
    const-string v1, "google_app_measurement_local.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public final zzm()Z
    .registers 12

    .line 1
    const-string v0, "Error deleting app launch break from local database"

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzen;->zzb:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    return v2

    .line 2
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzen;->zzl()Z

    move-result v1

    if-eqz v1, :cond_9f

    const/4 v1, 0x5

    move v4, v1

    move v3, v2

    :goto_14
    if-ge v3, v1, :cond_90

    .line 3
    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_18
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzen;->zzh()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5
    :try_end_1c
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_18 .. :try_end_1c} :catch_74
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_18 .. :try_end_1c} :catch_67
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_1c} :catch_49
    .catchall {:try_start_18 .. :try_end_1c} :catchall_47

    if-nez v5, :cond_21

    :try_start_1e
    iput-boolean v6, p0, Lcom/google/android/gms/measurement/internal/zzen;->zzb:Z

    return v2

    .line 4
    :cond_21
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v7, "messages"

    const-string/jumbo v8, "type == ?"

    new-array v9, v6, [Ljava/lang/String;

    .line 5
    const/4 v10, 0x3

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v2

    .line 6
    invoke-virtual {v5, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 7
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 8
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3b
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1e .. :try_end_3b} :catch_45
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1e .. :try_end_3b} :catch_43
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1e .. :try_end_3b} :catch_41
    .catchall {:try_start_1e .. :try_end_3b} :catchall_3f

    .line 13
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return v6

    .line 20
    :catchall_3f
    move-exception v0

    goto :goto_8a

    :catch_41
    move-exception v7

    goto :goto_4a

    :catch_43
    move-exception v6

    goto :goto_68

    :catch_45
    move-exception v7

    goto :goto_75

    .line 13
    :catchall_47
    move-exception v0

    goto :goto_8a

    :catch_49
    move-exception v7

    :goto_4a
    if-eqz v5, :cond_55

    .line 9
    :try_start_4c
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v8

    if-eqz v8, :cond_55

    .line 10
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_55
    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 11
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v8

    .line 12
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v8

    invoke-virtual {v8, v0, v7}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v6, p0, Lcom/google/android/gms/measurement/internal/zzen;->zzb:Z

    if-eqz v5, :cond_87

    .line 13
    goto :goto_70

    :catch_67
    move-exception v6

    :goto_68
    int-to-long v6, v4

    .line 14
    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_6c
    .catchall {:try_start_4c .. :try_end_6c} :catchall_3f

    add-int/lit8 v4, v4, 0x14

    if-eqz v5, :cond_87

    .line 13
    :goto_70
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_87

    .line 19
    :catch_74
    move-exception v7

    :goto_75
    :try_start_75
    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 15
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v8

    .line 16
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v8

    invoke-virtual {v8, v0, v7}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v6, p0, Lcom/google/android/gms/measurement/internal/zzen;->zzb:Z
    :try_end_84
    .catchall {:try_start_75 .. :try_end_84} :catchall_3f

    if-eqz v5, :cond_87

    .line 13
    goto :goto_70

    :cond_87
    :goto_87
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :goto_8a
    if-eqz v5, :cond_8f

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 20
    :cond_8f
    throw v0

    .line 13
    :cond_90
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzk()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    .line 19
    const-string v1, "Error deleting app launch break from local database in reasonable time"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    :cond_9f
    return v2
.end method

.method public final zzn(Lcom/google/android/gms/measurement/internal/zzac;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzv()Lcom/google/android/gms/measurement/internal/zzlo;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzlo;->zzap(Landroid/os/Parcelable;)[B

    move-result-object p1

    .line 3
    array-length v0, p1

    const/high16 v1, 0x20000

    if-le v0, v1, :cond_20

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    .line 6
    const-string v0, "Conditional user property too long for local database. Sending directly to service"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_20
    nop

    .line 7
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzen;->zzq(I[B)Z

    move-result p1

    return p1
.end method

.method public final zzo(Lcom/google/android/gms/measurement/internal/zzaw;)Z
    .registers 5

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzax;->zza(Lcom/google/android/gms/measurement/internal/zzaw;Landroid/os/Parcel;I)V

    .line 3
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    .line 4
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5
    array-length v0, p1

    const/high16 v2, 0x20000

    if-le v0, v2, :cond_24

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    .line 8
    const-string v0, "Event is too long for local database. Sending event directly to service"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    return v1

    :cond_24
    nop

    .line 9
    invoke-direct {p0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzen;->zzq(I[B)Z

    move-result p1

    return p1
.end method

.method public final zzp(Lcom/google/android/gms/measurement/internal/zzlj;)Z
    .registers 5

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzlk;->zza(Lcom/google/android/gms/measurement/internal/zzlj;Landroid/os/Parcel;I)V

    .line 3
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    .line 4
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5
    array-length v0, p1

    const/high16 v2, 0x20000

    if-le v0, v2, :cond_24

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    .line 8
    const-string v0, "User property too long for local database. Sending directly to service"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    return v1

    :cond_24
    nop

    .line 9
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzen;->zzq(I[B)Z

    move-result p1

    return p1
.end method
