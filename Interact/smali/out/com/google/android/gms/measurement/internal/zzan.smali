.class public final Lcom/google/android/gms/measurement/internal/zzan;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.2.2"


# direct methods
.method static zza(Lcom/google/android/gms/measurement/internal/zzeu;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_e6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_4
    const-string v3, "SQLITE_MASTER"

    const-string v2, "name"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "name=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    aput-object p2, v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 2
    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_1b} :catch_30
    .catchall {:try_start_4 .. :try_end_1b} :catchall_2d

    .line 3
    :try_start_1b
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3
    :try_end_1f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b .. :try_end_1f} :catch_2b
    .catchall {:try_start_1b .. :try_end_1f} :catchall_27

    if-eqz v2, :cond_24

    .line 5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_24
    if-nez v3, :cond_44

    goto :goto_41

    .line 6
    :catchall_27
    move-exception p0

    move-object v1, v2

    goto/16 :goto_e0

    :catch_2b
    move-exception v3

    goto :goto_33

    .line 5
    :catchall_2d
    move-exception p0

    goto/16 :goto_e0

    .line 20
    :catch_30
    move-exception v2

    move-object v3, v2

    move-object v2, v1

    :goto_33
    :try_start_33
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzk()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v4

    const-string v5, "Error querying for table"

    .line 4
    invoke-virtual {v4, v5, p2, v3}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3c
    .catchall {:try_start_33 .. :try_end_3c} :catchall_de

    if-eqz v2, :cond_41

    .line 5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 7
    :cond_41
    :goto_41
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_44
    :try_start_44
    new-instance p3, Ljava/util/HashSet;

    .line 8
    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " LIMIT 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual {p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_63
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_44 .. :try_end_63} :catch_d3

    .line 11
    :try_start_63
    invoke-interface {v1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    :try_end_6a
    .catchall {:try_start_63 .. :try_end_6a} :catchall_ce

    .line 12
    :try_start_6a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const-string v1, ","

    .line 14
    invoke-virtual {p4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    array-length v1, p4

    move v2, v0

    :goto_75
    if-ge v2, v1, :cond_a1

    aget-object v3, p4, v2

    .line 15
    invoke-interface {p3, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_82

    .line 16
    add-int/lit8 v2, v2, 0x1

    goto :goto_75

    :cond_82
    new-instance p1, Landroid/database/sqlite/SQLiteException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Table "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " is missing required column: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a1
    if-eqz p5, :cond_b8

    :goto_a3
    array-length p4, p5

    if-ge v0, p4, :cond_b8

    .line 17
    aget-object p4, p5, v0

    invoke-interface {p3, p4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_b5

    add-int/lit8 p4, v0, 0x1

    .line 18
    aget-object p4, p5, p4

    invoke-virtual {p1, p4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_b5
    add-int/lit8 v0, v0, 0x2

    goto :goto_a3

    .line 19
    :cond_b8
    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_cd

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzk()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    const-string p4, "Table has extra columns. table, columns"

    const-string p5, ", "

    .line 20
    invoke-static {p5, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p4, p2, p3}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_cd
    return-void

    .line 22
    :catchall_ce
    move-exception p1

    .line 12
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 13
    throw p1
    :try_end_d3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6a .. :try_end_d3} :catch_d3

    .line 6
    :catch_d3
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p0

    .line 21
    const-string p3, "Failed to verify columns on table that was just created"

    invoke-virtual {p0, p3, p2}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    throw p1

    .line 13
    :catchall_de
    move-exception p0

    move-object v1, v2

    .line 5
    :goto_e0
    if-eqz v1, :cond_e5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 6
    :cond_e5
    throw p0

    .line 1
    :cond_e6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Monitor must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static zzb(Lcom/google/android/gms/measurement/internal/zzeu;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5

    .line 1
    if-eqz p0, :cond_4d

    new-instance v0, Ljava/io/File;

    .line 2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    const/4 p1, 0x0

    invoke-virtual {v0, p1, p1}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzk()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    .line 4
    const-string v2, "Failed to turn off database read permission"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    :cond_1b
    nop

    .line 5
    invoke-virtual {v0, p1, p1}, Ljava/io/File;->setWritable(ZZ)Z

    move-result p1

    if-nez p1, :cond_2b

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzk()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    .line 6
    const-string v1, "Failed to turn off database write permission"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    :cond_2b
    nop

    .line 7
    const/4 p1, 0x1

    invoke-virtual {v0, p1, p1}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v1

    if-nez v1, :cond_3c

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzk()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    .line 8
    const-string v2, "Failed to turn on database read permission for owner"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    :cond_3c
    nop

    .line 9
    invoke-virtual {v0, p1, p1}, Ljava/io/File;->setWritable(ZZ)Z

    move-result p1

    if-nez p1, :cond_4c

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzk()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p0

    .line 10
    const-string p1, "Failed to turn on database write permission for owner"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    :cond_4c
    return-void

    .line 1
    :cond_4d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Monitor must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
