.class public final Lcom/google/android/gms/measurement/internal/zzfv;
.super Lcom/google/android/gms/measurement/internal/zzkt;
.source "com.google.android.gms:play-services-measurement@@21.2.2"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzaf;


# instance fields
.field final zza:Ljava/util/Map;

.field final zzb:Ljava/util/Map;

.field final zzc:Ljava/util/Map;

.field final zzd:Landroidx/collection/LruCache;

.field final zze:Lcom/google/android/gms/internal/measurement/zzr;

.field private final zzg:Ljava/util/Map;

.field private final zzh:Ljava/util/Map;

.field private final zzi:Ljava/util/Map;

.field private final zzj:Ljava/util/Map;

.field private final zzk:Ljava/util/Map;

.field private final zzl:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzlg;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkt;-><init>(Lcom/google/android/gms/measurement/internal/zzlg;)V

    .line 2
    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzg:Ljava/util/Map;

    new-instance p1, Landroidx/collection/ArrayMap;

    .line 3
    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zza:Ljava/util/Map;

    new-instance p1, Landroidx/collection/ArrayMap;

    .line 4
    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzb:Ljava/util/Map;

    new-instance p1, Landroidx/collection/ArrayMap;

    .line 5
    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzc:Ljava/util/Map;

    new-instance p1, Landroidx/collection/ArrayMap;

    .line 6
    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzh:Ljava/util/Map;

    new-instance p1, Landroidx/collection/ArrayMap;

    .line 7
    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzj:Ljava/util/Map;

    new-instance p1, Landroidx/collection/ArrayMap;

    .line 8
    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzk:Ljava/util/Map;

    new-instance p1, Landroidx/collection/ArrayMap;

    .line 9
    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzl:Ljava/util/Map;

    new-instance p1, Landroidx/collection/ArrayMap;

    .line 10
    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzi:Ljava/util/Map;

    .line 11
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzfs;

    const/16 v0, 0x14

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/measurement/internal/zzfs;-><init>(Lcom/google/android/gms/measurement/internal/zzfv;I)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzd:Landroidx/collection/LruCache;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzft;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzft;-><init>(Lcom/google/android/gms/measurement/internal/zzfv;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zze:Lcom/google/android/gms/internal/measurement/zzr;

    return-void
.end method

.method private final zzA(Ljava/lang/String;[B)Lcom/google/android/gms/internal/measurement/zzff;
    .registers 10

    .line 1
    const-string v0, "Unable to merge remote config. appId"

    if-nez p2, :cond_9

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzff;->zzg()Lcom/google/android/gms/internal/measurement/zzff;

    move-result-object p1

    return-object p1

    .line 2
    :cond_9
    :try_start_9
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzff;->zze()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/google/android/gms/measurement/internal/zzli;->zzl(Lcom/google/android/gms/internal/measurement/zzmh;[B)Lcom/google/android/gms/internal/measurement/zzmh;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzfe;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaD()Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzff;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "Parsed config. version, gmp_app_id"

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzff;->zzu()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_35

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzff;->zzc()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_36

    .line 7
    :cond_35
    move-object v3, v4

    .line 6
    :goto_36
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzff;->zzt()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzff;->zzh()Ljava/lang/String;

    move-result-object v4

    goto :goto_42

    .line 7
    :cond_41
    nop

    :goto_42
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_45
    .catch Lcom/google/android/gms/internal/measurement/zzll; {:try_start_9 .. :try_end_45} :catch_5d
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_45} :catch_46

    return-object p2

    .line 15
    :catch_46
    move-exception p2

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzk()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 10
    invoke-virtual {v1, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzff;->zzg()Lcom/google/android/gms/internal/measurement/zzff;

    move-result-object p1

    return-object p1

    .line 7
    :catch_5d
    move-exception p2

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzk()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 14
    invoke-virtual {v1, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzff;->zzg()Lcom/google/android/gms/internal/measurement/zzff;

    move-result-object p1

    return-object p1
.end method

.method private final zzB(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfe;)V
    .registers 12

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    new-instance v2, Landroidx/collection/ArrayMap;

    .line 3
    invoke-direct {v2}, Landroidx/collection/ArrayMap;-><init>()V

    new-instance v3, Landroidx/collection/ArrayMap;

    .line 4
    invoke-direct {v3}, Landroidx/collection/ArrayMap;-><init>()V

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfe;->zzg()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfb;

    .line 6
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfb;->zzb()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_30
    const/4 v4, 0x0

    .line 7
    :goto_31
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfe;->zza()I

    move-result v5

    if-ge v4, v5, :cond_e5

    .line 8
    invoke-virtual {p2, v4}, Lcom/google/android/gms/internal/measurement/zzfe;->zzb(I)Lcom/google/android/gms/internal/measurement/zzfd;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzlb;->zzbB()Lcom/google/android/gms/internal/measurement/zzkx;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfc;

    .line 9
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfc;->zzc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5c

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 10
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v5

    .line 11
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzeu;->zzk()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v5

    const-string v6, "EventConfig contained null event name"

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    goto/16 :goto_e1

    .line 12
    :cond_5c
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfc;->zzc()Ljava/lang/String;

    move-result-object v6

    .line 13
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfc;->zzc()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzhb;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 14
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_74

    .line 15
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/measurement/zzfc;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfc;

    .line 16
    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzfe;->zzd(ILcom/google/android/gms/internal/measurement/zzfc;)Lcom/google/android/gms/internal/measurement/zzfe;

    .line 17
    :cond_74
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfc;->zzf()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_88

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfc;->zzd()Z

    move-result v7

    if-eqz v7, :cond_88

    .line 18
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_88
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfc;->zzg()Z

    move-result v6

    if-eqz v6, :cond_9f

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfc;->zze()Z

    move-result v6

    if-eqz v6, :cond_9f

    .line 20
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfc;->zzc()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_9f
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfc;->zzh()Z

    move-result v6

    if-eqz v6, :cond_e1

    .line 22
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfc;->zza()I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_c6

    .line 23
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfc;->zza()I

    move-result v6

    const v7, 0xffff

    if-le v6, v7, :cond_b6

    goto :goto_c6

    .line 29
    :cond_b6
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfc;->zzc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfc;->zza()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e1

    .line 23
    :cond_c6
    :goto_c6
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 24
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v6

    .line 25
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzeu;->zzk()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v6

    .line 26
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfc;->zzc()Ljava/lang/String;

    move-result-object v7

    .line 27
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfc;->zza()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 28
    const-string v8, "Invalid sampling rate. Event name, sample rate"

    invoke-virtual {v6, v8, v7, v5}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    :cond_e1
    :goto_e1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_31

    .line 29
    :cond_e5
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zza:Ljava/util/Map;

    .line 30
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzb:Ljava/util/Map;

    .line 31
    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzc:Ljava/util/Map;

    .line 32
    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzi:Ljava/util/Map;

    .line 33
    invoke-interface {p2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final zzC(Ljava/lang/String;)V
    .registers 14

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkt;->zzW()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzh:Ljava/util/Map;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_128

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzf:Lcom/google/android/gms/measurement/internal/zzlg;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkt;->zzW()V

    const/4 v1, 0x0

    :try_start_21
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzh()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "apps"

    const-string v4, "remote_config"

    const-string v5, "config_last_modified_time"

    const-string v6, "e_tag"

    filled-new-array {v4, v5, v6}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "app_id=?"

    const/4 v10, 0x1

    new-array v6, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object p1, v6, v11

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 8
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_40
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_21 .. :try_end_40} :catch_88
    .catchall {:try_start_21 .. :try_end_40} :catchall_85

    .line 9
    :try_start_40
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_4b

    if-eqz v2, :cond_49

    .line 10
    goto :goto_a0

    .line 38
    :cond_49
    move-object v6, v1

    goto :goto_a6

    :cond_4b
    nop

    .line 11
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 12
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 13
    const/4 v5, 0x2

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 14
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_72

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 15
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v6

    .line 16
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v6

    const-string v7, "Got multiple records for app config, expected one. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 17
    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_72
    if-nez v3, :cond_78

    if-eqz v2, :cond_77

    .line 10
    goto :goto_a0

    :cond_77
    goto :goto_a3

    :cond_78
    new-instance v6, Lcom/google/android/gms/measurement/internal/zzaj;

    invoke-direct {v6, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzaj;-><init>([BLjava/lang/String;Ljava/lang/String;)V
    :try_end_7d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_40 .. :try_end_7d} :catch_83
    .catchall {:try_start_40 .. :try_end_7d} :catchall_120

    if-eqz v2, :cond_a6

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_a6

    .line 21
    :catch_83
    move-exception v3

    goto :goto_8b

    .line 10
    :catchall_85
    move-exception p1

    goto/16 :goto_122

    :catch_88
    move-exception v2

    move-object v3, v2

    move-object v2, v1

    :goto_8b
    :try_start_8b
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v4, "Error querying remote config. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 20
    invoke-virtual {v0, v4, v5, v3}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_9e
    .catchall {:try_start_8b .. :try_end_9e} :catchall_120

    if-eqz v2, :cond_a5

    .line 10
    :goto_a0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :goto_a3
    move-object v6, v1

    goto :goto_a6

    .line 21
    :cond_a5
    move-object v6, v1

    .line 10
    :cond_a6
    :goto_a6
    if-nez v6, :cond_d6

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzg:Ljava/util/Map;

    .line 22
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzb:Ljava/util/Map;

    .line 23
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zza:Ljava/util/Map;

    .line 24
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzc:Ljava/util/Map;

    .line 25
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzh:Ljava/util/Map;

    .line 26
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzj:Ljava/util/Map;

    .line 27
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzk:Ljava/util/Map;

    .line 28
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzl:Ljava/util/Map;

    .line 29
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzi:Ljava/util/Map;

    .line 30
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_d6
    iget-object v0, v6, Lcom/google/android/gms/measurement/internal/zzaj;->zza:[B

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzA(Ljava/lang/String;[B)Lcom/google/android/gms/internal/measurement/zzff;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlb;->zzbB()Lcom/google/android/gms/internal/measurement/zzkx;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfe;

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzB(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfe;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzg:Ljava/util/Map;

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaD()Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzff;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzE(Lcom/google/android/gms/internal/measurement/zzff;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzh:Ljava/util/Map;

    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaD()Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzff;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaD()Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzff;

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzD(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzff;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzj:Ljava/util/Map;

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfe;->zze()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzk:Ljava/util/Map;

    iget-object v1, v6, Lcom/google/android/gms/measurement/internal/zzaj;->zzb:Ljava/lang/String;

    .line 37
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzl:Ljava/util/Map;

    iget-object v1, v6, Lcom/google/android/gms/measurement/internal/zzaj;->zzc:Ljava/lang/String;

    .line 38
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 21
    :catchall_120
    move-exception p1

    move-object v1, v2

    .line 10
    :goto_122
    if-eqz v1, :cond_127

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 21
    :cond_127
    throw p1

    .line 10
    :cond_128
    return-void
.end method

.method private final zzD(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzff;)V
    .registers 6

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzff;->zza()I

    move-result v0

    if-eqz v0, :cond_ac

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzff;->zza()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "EES programs found"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzff;->zzo()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzgt;

    :try_start_28
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzc;

    .line 5
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzc;-><init>()V

    const-string v1, "internal.remoteConfig"

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzfp;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/measurement/internal/zzfp;-><init>(Lcom/google/android/gms/measurement/internal/zzfv;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzc;->zzd(Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    const-string v1, "internal.appMetadata"

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/measurement/internal/zzfq;-><init>(Lcom/google/android/gms/measurement/internal/zzfv;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzc;->zzd(Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    const-string v1, "internal.logger"

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-direct {v2, p0}, Lcom/google/android/gms/measurement/internal/zzfr;-><init>(Lcom/google/android/gms/measurement/internal/zzfv;)V

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzc;->zzd(Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 9
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/zzc;->zzc(Lcom/google/android/gms/internal/measurement/zzgt;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzd:Landroidx/collection/LruCache;

    .line 10
    invoke-virtual {v1, p1, v0}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v1, "EES program loaded for appId, activities"

    .line 13
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzgt;->zza()Lcom/google/android/gms/internal/measurement/zzgp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgp;->zza()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 14
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzgt;->zza()Lcom/google/android/gms/internal/measurement/zzgp;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzgp;->zzd()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_7a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgr;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "EES program activity"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgr;->zzb()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_99
    .catch Lcom/google/android/gms/internal/measurement/zzd; {:try_start_28 .. :try_end_99} :catch_9b

    goto :goto_7a

    :cond_9a
    return-void

    .line 20
    :catch_9b
    move-exception p2

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 18
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object p2

    .line 19
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p2

    const-string v0, "Failed to load EES program. appId"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 17
    :cond_ac
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzd:Landroidx/collection/LruCache;

    .line 20
    invoke-virtual {p2, p1}, Landroidx/collection/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final zzE(Lcom/google/android/gms/internal/measurement/zzff;)Ljava/util/Map;
    .registers 4

    .line 1
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    if-eqz p0, :cond_27

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzff;->zzp()Ljava/util/List;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzfj;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfj;->zzb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfj;->zzc()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_27
    return-object v0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/measurement/internal/zzfv;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzc;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkt;->zzW()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzo(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 p0, 0x0

    goto :goto_39

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzh:Ljava/util/Map;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzh:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzh:Ljava/util/Map;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzff;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzD(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzff;)V

    goto :goto_2d

    .line 5
    :cond_2a
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzC(Ljava/lang/String;)V

    .line 6
    :goto_2d
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzd:Landroidx/collection/LruCache;

    .line 7
    invoke-virtual {p0}, Landroidx/collection/LruCache;->snapshot()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzc;

    .line 3
    :goto_39
    return-object p0
.end method

.method static bridge synthetic zzj(Lcom/google/android/gms/measurement/internal/zzfv;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzg:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzC(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzg:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_17

    .line 4
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_17
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final zzb()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method final zzc(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzC(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzi:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x1

    if-eqz p1, :cond_1f

    .line 4
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_1a

    return v0

    .line 5
    :cond_1a
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1f
    return v0
.end method

.method protected final zze(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzff;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkt;->zzW()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzC(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzh:Ljava/util/Map;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzff;

    return-object p1
.end method

.method protected final zzf(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzl:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method protected final zzh(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzk:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method final zzi(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzC(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzj:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method final zzk(Ljava/lang/String;)Ljava/util/Set;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzC(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zza:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1
.end method

.method protected final zzl(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzk:Ljava/util/Map;

    .line 2
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method final zzm(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzh:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method final zzn(Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfv;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzff;

    move-result-object p1

    if-nez p1, :cond_b

    const/4 p1, 0x0

    return p1

    :cond_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzff;->zzs()Z

    move-result p1

    return p1
.end method

.method public final zzo(Ljava/lang/String;)Z
    .registers 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzh:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzff;

    if-nez p1, :cond_13

    return v1

    .line 3
    :cond_13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzff;->zza()I

    move-result p1

    if-eqz p1, :cond_1b

    const/4 p1, 0x1

    return p1

    :cond_1b
    return v1
.end method

.method final zzp(Ljava/lang/String;)Z
    .registers 4

    .line 1
    const-string v0, "1"

    const-string v1, "measurement.upload.blacklist_internal"

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final zzq(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzC(Ljava/lang/String;)V

    .line 3
    const-string v0, "ecommerce_purchase"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    return v1

    .line 4
    :cond_10
    const-string v0, "purchase"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 5
    const-string v0, "refund"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_3b

    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzc:Ljava/util/Map;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x0

    if-eqz p1, :cond_3a

    .line 7
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_35

    return v0

    .line 8
    :cond_35
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_3a
    return v0

    .line 5
    :cond_3b
    :goto_3b
    return v1
.end method

.method final zzr(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzC(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzp(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzlo;->zzaj(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_15

    .line 7
    :cond_14
    return v1

    .line 4
    :cond_15
    :goto_15
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzs(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzlo;->zzak(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_23

    .line 7
    :cond_22
    return v1

    .line 4
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzb:Ljava/util/Map;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x0

    if-eqz p1, :cond_3c

    .line 6
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_37

    return v0

    .line 7
    :cond_37
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_3c
    return v0
.end method

.method final zzs(Ljava/lang/String;)Z
    .registers 4

    .line 1
    const-string v0, "1"

    const-string v1, "measurement.upload.blacklist_public"

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected final zzt(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z
    .registers 11

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkt;->zzW()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzA(Ljava/lang/String;[B)Lcom/google/android/gms/internal/measurement/zzff;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlb;->zzbB()Lcom/google/android/gms/internal/measurement/zzkx;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfe;

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzB(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfe;)V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaD()Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzff;

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzD(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzff;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzh:Ljava/util/Map;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaD()Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzff;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzj:Ljava/util/Map;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfe;->zze()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzk:Ljava/util/Map;

    .line 9
    invoke-interface {v1, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzl:Ljava/util/Map;

    .line 10
    invoke-interface {v1, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzg:Ljava/util/Map;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaD()Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzff;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzE(Lcom/google/android/gms/internal/measurement/zzff;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzf:Lcom/google/android/gms/measurement/internal/zzlg;

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzlg;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfe;->zzf()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzB(Ljava/lang/String;Ljava/util/List;)V

    .line 14
    :try_start_5e
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfe;->zzc()Lcom/google/android/gms/internal/measurement/zzfe;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaD()Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzff;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zzbx()[B

    move-result-object p2
    :try_end_6b
    .catch Ljava/lang/RuntimeException; {:try_start_5e .. :try_end_6b} :catch_6c

    goto :goto_80

    .line 33
    :catch_6c
    move-exception v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 16
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzk()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 18
    const-string v4, "Unable to serialize reduced-size config. Storing full config instead. appId"

    invoke-virtual {v2, v4, v3, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    :goto_80
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzks;->zzf:Lcom/google/android/gms/measurement/internal/zzlg;

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzlg;->zzi()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    .line 20
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkt;->zzW()V

    new-instance v2, Landroid/content/ContentValues;

    .line 22
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 23
    const-string v3, "remote_config"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 24
    const-string p2, "config_last_modified_time"

    invoke-virtual {v2, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string p2, "e_tag"

    invoke-virtual {v2, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const/4 p2, 0x1

    :try_start_a4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzam;->zzh()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    const-string p4, "apps"

    const-string v3, "app_id = ?"

    new-array v4, p2, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 26
    invoke-virtual {p3, p4, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p3

    int-to-long p3, p3

    const-wide/16 v2, 0x0

    cmp-long p3, p3, v2

    if-nez p3, :cond_e4

    iget-object p3, v1, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 27
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object p3

    .line 28
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p3

    const-string p4, "Failed to update remote config (got 0). appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 29
    invoke-virtual {p3, p4, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_cf
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a4 .. :try_end_cf} :catch_d0

    goto :goto_e4

    .line 18
    :catch_d0
    move-exception p3

    iget-object p4, v1, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 30
    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object p4

    .line 31
    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p4

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 32
    const-string v2, "Error storing remote config. appId"

    invoke-virtual {p4, v2, v1, p3}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    :cond_e4
    :goto_e4
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzh:Ljava/util/Map;

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaD()Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/internal/measurement/zzff;

    invoke-interface {p3, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p2
.end method

.method final zzu(Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzC(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zza:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zza:Ljava/util/Map;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    const-string v0, "app_instance_id"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    const/4 p1, 0x1

    return p1

    :cond_20
    const/4 p1, 0x0

    return p1
.end method

.method final zzv(Ljava/lang/String;)Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzC(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zza:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zza:Ljava/util/Map;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    const-string v2, "device_model"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zza:Ljava/util/Map;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    const-string v0, "device_info"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31

    goto :goto_34

    :cond_31
    return v2

    :cond_32
    move v1, v2

    goto :goto_35

    :cond_34
    :goto_34
    nop

    :goto_35
    return v1
.end method

.method final zzw(Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzC(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zza:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zza:Ljava/util/Map;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    const-string v0, "enhanced_user_id"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    const/4 p1, 0x1

    return p1

    :cond_20
    const/4 p1, 0x0

    return p1
.end method

.method final zzx(Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzC(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zza:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zza:Ljava/util/Map;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    const-string v0, "google_signals"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    const/4 p1, 0x1

    return p1

    :cond_20
    const/4 p1, 0x0

    return p1
.end method

.method final zzy(Ljava/lang/String;)Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzC(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zza:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zza:Ljava/util/Map;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    const-string v2, "os_version"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zza:Ljava/util/Map;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    const-string v0, "device_info"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31

    goto :goto_34

    :cond_31
    return v2

    :cond_32
    move v1, v2

    goto :goto_35

    :cond_34
    :goto_34
    nop

    :goto_35
    return v1
.end method

.method final zzz(Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzC(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zza:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zza:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    const-string/jumbo v0, "user_id"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    const/4 p1, 0x1

    return p1

    :cond_21
    const/4 p1, 0x0

    return p1
.end method