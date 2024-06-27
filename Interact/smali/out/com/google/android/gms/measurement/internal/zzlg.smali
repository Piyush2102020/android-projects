.class public final Lcom/google/android/gms/measurement/internal/zzlg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@21.2.2"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzgz;


# static fields
.field private static volatile zzb:Lcom/google/android/gms/measurement/internal/zzlg;


# instance fields
.field private zzA:J

.field private final zzB:Ljava/util/Map;

.field private final zzC:Ljava/util/Map;

.field private zzD:Lcom/google/android/gms/measurement/internal/zziq;

.field private zzE:Ljava/lang/String;

.field private final zzF:Lcom/google/android/gms/measurement/internal/zzln;

.field zza:J

.field private final zzc:Lcom/google/android/gms/measurement/internal/zzfv;

.field private final zzd:Lcom/google/android/gms/measurement/internal/zzfa;

.field private zze:Lcom/google/android/gms/measurement/internal/zzam;

.field private zzf:Lcom/google/android/gms/measurement/internal/zzfc;

.field private zzg:Lcom/google/android/gms/measurement/internal/zzkr;

.field private zzh:Lcom/google/android/gms/measurement/internal/zzaa;

.field private final zzi:Lcom/google/android/gms/measurement/internal/zzli;

.field private zzj:Lcom/google/android/gms/measurement/internal/zzio;

.field private zzk:Lcom/google/android/gms/measurement/internal/zzka;

.field private final zzl:Lcom/google/android/gms/measurement/internal/zzkv;

.field private zzm:Lcom/google/android/gms/measurement/internal/zzfm;

.field private final zzn:Lcom/google/android/gms/measurement/internal/zzge;

.field private zzo:Z

.field private zzp:Z

.field private zzq:Ljava/util/List;

.field private zzr:I

.field private zzs:I

.field private zzt:Z

.field private zzu:Z

.field private zzv:Z

.field private zzw:Ljava/nio/channels/FileLock;

.field private zzx:Ljava/nio/channels/FileChannel;

.field private zzy:Ljava/util/List;

.field private zzz:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzlh;Lcom/google/android/gms/measurement/internal/zzge;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzo:Z

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzlb;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzlb;-><init>(Lcom/google/android/gms/measurement/internal/zzlg;)V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzF:Lcom/google/android/gms/measurement/internal/zzln;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzlh;->zza:Landroid/content/Context;

    .line 2
    const/4 v0, 0x0

    invoke-static {p2, v0, v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzp(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzcl;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/zzge;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzn:Lcom/google/android/gms/measurement/internal/zzge;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzA:J

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzkv;

    .line 3
    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzkv;-><init>(Lcom/google/android/gms/measurement/internal/zzlg;)V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzl:Lcom/google/android/gms/measurement/internal/zzkv;

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzli;

    .line 4
    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzli;-><init>(Lcom/google/android/gms/measurement/internal/zzlg;)V

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzkt;->zzX()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzi:Lcom/google/android/gms/measurement/internal/zzli;

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzfa;

    .line 6
    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzfa;-><init>(Lcom/google/android/gms/measurement/internal/zzlg;)V

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzkt;->zzX()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzd:Lcom/google/android/gms/measurement/internal/zzfa;

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzfv;

    .line 8
    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzfv;-><init>(Lcom/google/android/gms/measurement/internal/zzlg;)V

    .line 9
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzkt;->zzX()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzc:Lcom/google/android/gms/measurement/internal/zzfv;

    new-instance p2, Ljava/util/HashMap;

    .line 10
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzB:Ljava/util/Map;

    new-instance p2, Ljava/util/HashMap;

    .line 11
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzC:Ljava/util/Map;

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaB()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzkw;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzkw;-><init>(Lcom/google/android/gms/measurement/internal/zzlg;Lcom/google/android/gms/measurement/internal/zzlh;)V

    .line 13
    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp(Ljava/lang/Runnable;)V

    return-void
.end method

.method static final zzaa(Lcom/google/android/gms/internal/measurement/zzfs;ILjava/lang/String;)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfs;->zzp()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "_err"

    if-ge v1, v2, :cond_21

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfx;->zzg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    return-void

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 4
    :cond_21
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfx;->zze()Lcom/google/android/gms/internal/measurement/zzfw;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzfw;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfw;

    int-to-long v1, p1

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzfw;->zzi(J)Lcom/google/android/gms/internal/measurement/zzfw;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaD()Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfx;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfx;->zze()Lcom/google/android/gms/internal/measurement/zzfw;

    move-result-object v0

    .line 9
    const-string v1, "_ev"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfw;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfw;

    .line 10
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/zzfw;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfw;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaD()Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzfx;

    .line 12
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzfs;->zzf(Lcom/google/android/gms/internal/measurement/zzfx;)Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzfs;->zzf(Lcom/google/android/gms/internal/measurement/zzfx;)Lcom/google/android/gms/internal/measurement/zzfs;

    return-void
.end method

.method static final zzab(Lcom/google/android/gms/internal/measurement/zzfs;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfs;->zzp()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfx;->zzg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzfs;->zzh(I)Lcom/google/android/gms/internal/measurement/zzfs;

    return-void

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_22
    return-void
.end method

.method private final zzac(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzq;
    .registers 38

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzj(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v15

    const/4 v1, 0x0

    if-eqz v15, :cond_9f

    .line 3
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzh;->zzx()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c

    goto/16 :goto_9f

    .line 5
    :cond_1c
    invoke-direct {v0, v15}, Lcom/google/android/gms/measurement/internal/zzlg;->zzad(Lcom/google/android/gms/measurement/internal/zzh;)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_3a

    .line 6
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_3a

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v3

    .line 26
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 27
    const-string v4, "App version does not match; dropping. appId"

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1

    .line 7
    :cond_3a
    new-instance v35, Lcom/google/android/gms/measurement/internal/zzq;

    move-object/from16 v1, v35

    .line 8
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzh;->zzz()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzh;->zzx()Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzh;->zzb()J

    move-result-wide v5

    .line 11
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzh;->zzw()Ljava/lang/String;

    move-result-object v7

    .line 12
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzh;->zzm()J

    move-result-wide v8

    .line 13
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzh;->zzj()J

    move-result-wide v10

    const/4 v12, 0x0

    .line 14
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzh;->zzal()Z

    move-result v13

    const/4 v14, 0x0

    .line 15
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzh;->zzy()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v30, v15

    move-object/from16 v15, v16

    .line 16
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/gms/measurement/internal/zzh;->zza()J

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    .line 17
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/gms/measurement/internal/zzh;->zzak()Z

    move-result v21

    const/16 v22, 0x0

    .line 18
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/gms/measurement/internal/zzh;->zzs()Ljava/lang/String;

    move-result-object v23

    .line 19
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/gms/measurement/internal/zzh;->zzr()Ljava/lang/Boolean;

    move-result-object v24

    .line 20
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/gms/measurement/internal/zzh;->zzk()J

    move-result-wide v25

    .line 21
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/gms/measurement/internal/zzh;->zzD()Ljava/util/List;

    move-result-object v27

    const/16 v28, 0x0

    .line 22
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzlg;->zzh(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/gms/measurement/internal/zzai;->zzh()Ljava/lang/String;

    move-result-object v29

    .line 23
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/gms/measurement/internal/zzh;->zzan()Z

    move-result v32

    .line 24
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/gms/measurement/internal/zzh;->zzq()J

    move-result-wide v33

    const-string v30, ""

    const/16 v31, 0x0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v34}, Lcom/google/android/gms/measurement/internal/zzq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V

    return-object v35

    .line 4
    :cond_9f
    :goto_9f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzeu;->zzc()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v3

    const-string v4, "No app data available; dropping"

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1
.end method

.method private final zzad(Lcom/google/android/gms/measurement/internal/zzh;)Ljava/lang/Boolean;
    .registers 9

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzb()J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzn:Lcom/google/android/gms/measurement/internal/zzge;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaw()Landroid/content/Context;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzu()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzb()J

    move-result-wide v3

    int-to-long v5, v0

    cmp-long p1, v3, v5

    if-nez p1, :cond_54

    .line 11
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 10
    :cond_2f
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzn:Lcom/google/android/gms/measurement/internal/zzge;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaw()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzu()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzx()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_54

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_54

    .line 6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_53
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_53} :catch_5a

    return-object p1

    .line 11
    :cond_54
    nop

    .line 10
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 6
    :catch_5a
    move-exception p1

    const/4 p1, 0x0

    return-object p1
.end method

.method private final zzae()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaB()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzt:Z

    if-nez v0, :cond_46

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzu:Z

    if-nez v0, :cond_46

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzv:Z

    if-eqz v0, :cond_14

    goto :goto_46

    .line 8
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v1, "Stopping uploading service(s)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzq:Ljava/util/List;

    if-nez v0, :cond_26

    return-void

    .line 9
    :cond_26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 10
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_2a

    :cond_3a
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzq:Ljava/util/List;

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    .line 2
    :cond_46
    :goto_46
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzt:Z

    .line 4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzu:Z

    .line 5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzv:Z

    .line 6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 7
    const-string v4, "Not stopping services. fetch, network, upload"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzes;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final zzaf(Lcom/google/android/gms/internal/measurement/zzgc;JZ)V
    .registers 16

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    const/4 v1, 0x1

    if-eq v1, p4, :cond_b

    const-string v2, "_lte"

    goto :goto_d

    .line 8
    :cond_b
    const-string v2, "_se"

    .line 2
    :goto_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzgc;->zzaq()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzll;

    move-result-object v0

    if-eqz v0, :cond_3f

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzll;->zze:Ljava/lang/Object;

    if-nez v3, :cond_1c

    goto :goto_3f

    .line 15
    :cond_1c
    new-instance v10, Lcom/google/android/gms/measurement/internal/zzll;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzgc;->zzaq()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v7

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzll;->zze:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long/2addr v5, p2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string v5, "auto"

    move-object v3, v10

    move-object v6, v2

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/measurement/internal/zzll;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_58

    .line 2
    :cond_3f
    :goto_3f
    new-instance v10, Lcom/google/android/gms/measurement/internal/zzll;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzgc;->zzaq()Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v7

    .line 5
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string v5, "auto"

    move-object v3, v10

    move-object v6, v2

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/measurement/internal/zzll;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 9
    :goto_58
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgm;->zzd()Lcom/google/android/gms/internal/measurement/zzgl;

    move-result-object v0

    .line 10
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/zzgl;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgl;

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/measurement/zzgl;->zzg(J)Lcom/google/android/gms/internal/measurement/zzgl;

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/zzll;->zze:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 12
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/measurement/zzgl;->zze(J)Lcom/google/android/gms/internal/measurement/zzgl;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaD()Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgm;

    .line 14
    invoke-static {p1, v2}, Lcom/google/android/gms/measurement/internal/zzli;->zza(Lcom/google/android/gms/internal/measurement/zzgc;Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_85

    .line 16
    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/measurement/zzgc;->zzan(ILcom/google/android/gms/internal/measurement/zzgm;)Lcom/google/android/gms/internal/measurement/zzgc;

    goto :goto_88

    .line 15
    :cond_85
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzgc;->zzm(Lcom/google/android/gms/internal/measurement/zzgm;)Lcom/google/android/gms/internal/measurement/zzgc;

    .line 16
    :goto_88
    const-wide/16 v2, 0x0

    cmp-long p1, p2, v2

    if-lez p1, :cond_ac

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 18
    invoke-virtual {p1, v10}, Lcom/google/android/gms/measurement/internal/zzam;->zzL(Lcom/google/android/gms/measurement/internal/zzll;)Z

    if-eq v1, p4, :cond_9b

    const-string p1, "lifetime"

    goto :goto_9d

    .line 21
    :cond_9b
    const-string p1, "session-scoped"

    .line 19
    :goto_9d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object p2

    .line 20
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p2

    iget-object p3, v10, Lcom/google/android/gms/measurement/internal/zzll;->zze:Ljava/lang/Object;

    .line 21
    const-string p4, "Updated engagement user property. scope, value"

    invoke-virtual {p2, p4, p1, p3}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_ac
    return-void
.end method

.method private final zzag()V
    .registers 21

    .line 1
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaB()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzB()V

    iget-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzlg;->zza:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_4e

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/zzlg;->zza:J

    sub-long/2addr v1, v5

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v5, 0x36ee80

    sub-long/2addr v5, v1

    cmp-long v1, v5, v3

    if-lez v1, :cond_4c

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    .line 7
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 8
    const-string v3, "Upload has been suspended. Will update scheduling later in approximately ms"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzm()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfc;->zzc()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzlg;->zzg:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 10
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkr;->zza()V

    return-void

    :cond_4c
    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/zzlg;->zza:J

    :cond_4e
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzlg;->zzn:Lcom/google/android/gms/measurement/internal/zzge;

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzge;->zzM()Z

    move-result v1

    if-eqz v1, :cond_25d

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzai()Z

    move-result v1

    if-nez v1, :cond_5e

    goto/16 :goto_25d

    .line 17
    :cond_5e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzg()Lcom/google/android/gms/measurement/internal/zzag;

    .line 19
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzeh;->zzA:Lcom/google/android/gms/measurement/internal/zzeg;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 20
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 21
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzam;->zzH()Z

    move-result v5

    const/4 v10, 0x1

    if-nez v5, :cond_94

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 20
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 21
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzam;->zzG()Z

    move-result v5

    if-eqz v5, :cond_92

    goto :goto_95

    .line 29
    :cond_92
    const/4 v10, 0x0

    goto :goto_95

    :cond_94
    nop

    .line 21
    :goto_95
    if-eqz v10, :cond_d5

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzg()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzag;->zzl()Ljava/lang/String;

    move-result-object v5

    .line 23
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_c1

    const-string v11, ".none."

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c1

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzg()Lcom/google/android/gms/measurement/internal/zzag;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzeh;->zzv:Lcom/google/android/gms/measurement/internal/zzeg;

    .line 27
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    goto :goto_d4

    .line 24
    :cond_c1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzg()Lcom/google/android/gms/measurement/internal/zzag;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzeh;->zzu:Lcom/google/android/gms/measurement/internal/zzeg;

    .line 25
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 27
    :goto_d4
    goto :goto_e8

    .line 28
    :cond_d5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzg()Lcom/google/android/gms/measurement/internal/zzag;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzeh;->zzt:Lcom/google/android/gms/measurement/internal/zzeg;

    .line 29
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 27
    :goto_e8
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzlg;->zzk:Lcom/google/android/gms/measurement/internal/zzka;

    .line 30
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzka;->zzc:Lcom/google/android/gms/measurement/internal/zzff;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzff;->zza()J

    move-result-wide v13

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzlg;->zzk:Lcom/google/android/gms/measurement/internal/zzka;

    .line 31
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzka;->zzd:Lcom/google/android/gms/measurement/internal/zzff;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzff;->zza()J

    move-result-wide v15

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 32
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 33
    move/from16 v17, v10

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzam;->zzd()J

    move-result-wide v9

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 34
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 35
    move-wide/from16 v18, v7

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzam;->zze()J

    move-result-wide v6

    .line 36
    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-nez v7, :cond_119

    move-wide v9, v3

    goto/16 :goto_195

    .line 71
    :cond_119
    sub-long/2addr v5, v1

    .line 37
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    sub-long v5, v1, v5

    sub-long/2addr v13, v1

    .line 38
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    sub-long v7, v1, v7

    sub-long/2addr v15, v1

    .line 39
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    sub-long/2addr v1, v9

    add-long v9, v5, v18

    .line 40
    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    if-eqz v17, :cond_13e

    cmp-long v13, v7, v3

    if-lez v13, :cond_13e

    .line 41
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    add-long/2addr v9, v11

    :cond_13e
    iget-object v13, v0, Lcom/google/android/gms/measurement/internal/zzlg;->zzi:Lcom/google/android/gms/measurement/internal/zzli;

    .line 42
    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 43
    invoke-virtual {v13, v7, v8, v11, v12}, Lcom/google/android/gms/measurement/internal/zzli;->zzw(JJ)Z

    move-result v13

    if-nez v13, :cond_14c

    add-long v9, v7, v11

    goto :goto_14d

    .line 47
    :cond_14c
    nop

    .line 43
    :goto_14d
    cmp-long v7, v1, v3

    if-eqz v7, :cond_190

    cmp-long v5, v1, v5

    if-ltz v5, :cond_190

    const/4 v5, 0x0

    .line 44
    :goto_156
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzg()Lcom/google/android/gms/measurement/internal/zzag;

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzeh;->zzC:Lcom/google/android/gms/measurement/internal/zzeg;

    .line 45
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/16 v8, 0x14

    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v5, v6, :cond_194

    const-wide/16 v11, 0x1

    shl-long/2addr v11, v5

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzg()Lcom/google/android/gms/measurement/internal/zzag;

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzeh;->zzB:Lcom/google/android/gms/measurement/internal/zzeg;

    .line 47
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-static {v3, v4, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    mul-long/2addr v13, v11

    add-long/2addr v9, v13

    cmp-long v6, v9, v1

    if-lez v6, :cond_191

    :cond_190
    goto :goto_195

    :cond_191
    add-int/lit8 v5, v5, 0x1

    goto :goto_156

    :cond_194
    move-wide v9, v3

    .line 36
    :goto_195
    cmp-long v1, v9, v3

    if-eqz v1, :cond_240

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzlg;->zzd:Lcom/google/android/gms/measurement/internal/zzfa;

    .line 48
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 49
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfa;->zza()Z

    move-result v1

    if-eqz v1, :cond_223

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzlg;->zzk:Lcom/google/android/gms/measurement/internal/zzka;

    .line 50
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzka;->zzb:Lcom/google/android/gms/measurement/internal/zzff;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzff;->zza()J

    move-result-wide v1

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzg()Lcom/google/android/gms/measurement/internal/zzag;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzeh;->zzr:Lcom/google/android/gms/measurement/internal/zzeg;

    .line 52
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzlg;->zzi:Lcom/google/android/gms/measurement/internal/zzli;

    .line 53
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 54
    invoke-virtual {v7, v1, v2, v5, v6}, Lcom/google/android/gms/measurement/internal/zzli;->zzw(JJ)Z

    move-result v7

    if-nez v7, :cond_1d1

    add-long/2addr v1, v5

    .line 55
    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    goto :goto_1d2

    .line 63
    :cond_1d1
    nop

    .line 56
    :goto_1d2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzm()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfc;->zzc()V

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v9, v1

    cmp-long v1, v9, v3

    if-gtz v1, :cond_209

    .line 58
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzg()Lcom/google/android/gms/measurement/internal/zzag;

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzeh;->zzw:Lcom/google/android/gms/measurement/internal/zzeg;

    .line 59
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzlg;->zzk:Lcom/google/android/gms/measurement/internal/zzka;

    .line 60
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzka;->zzc:Lcom/google/android/gms/measurement/internal/zzff;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzff;->zzb(J)V

    .line 61
    :cond_209
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "Upload scheduled in approximately ms"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzlg;->zzg:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 62
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 63
    invoke-virtual {v1, v9, v10}, Lcom/google/android/gms/measurement/internal/zzkr;->zzd(J)V

    return-void

    .line 64
    :cond_223
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "No network"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzm()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfc;->zzb()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzlg;->zzg:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 66
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 67
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkr;->zza()V

    return-void

    .line 68
    :cond_240
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "Next upload time is 0"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzm()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfc;->zzc()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzlg;->zzg:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 70
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 71
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkr;->zza()V

    return-void

    .line 13
    :cond_25d
    :goto_25d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "Nothing to upload or uploading impossible"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzm()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfc;->zzc()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzlg;->zzg:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 15
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkr;->zza()V

    return-void
.end method

.method private final zzah(Ljava/lang/String;J)Z
    .registers 44

    .line 1
    move-object/from16 v1, p0

    const-string v2, "_npa"

    const-string v3, "_ai"

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 2
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzam;->zzw()V

    :try_start_e
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzld;

    const/4 v12, 0x0

    invoke-direct {v4, v1, v12}, Lcom/google/android/gms/measurement/internal/zzld;-><init>(Lcom/google/android/gms/measurement/internal/zzlg;Lcom/google/android/gms/measurement/internal/zzlc;)V

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 3
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    const/4 v6, 0x0

    iget-wide v9, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzA:J

    .line 4
    move-wide/from16 v7, p2

    move-object v11, v4

    invoke-virtual/range {v5 .. v11}, Lcom/google/android/gms/measurement/internal/zzam;->zzU(Ljava/lang/String;JJLcom/google/android/gms/measurement/internal/zzld;)V

    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zzld;->zzc:Ljava/util/List;

    if-eqz v5, :cond_d02

    .line 5
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2e

    goto/16 :goto_d02

    .line 9
    :cond_2e
    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zzld;->zza:Lcom/google/android/gms/internal/measurement/zzgd;

    .line 10
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzlb;->zzbB()Lcom/google/android/gms/internal/measurement/zzkx;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzgc;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgc;->zzr()Lcom/google/android/gms/internal/measurement/zzgc;

    move-object v11, v12

    move-object v14, v11

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, -0x1

    const/4 v15, -0x1

    :goto_40
    iget-object v12, v4, Lcom/google/android/gms/measurement/internal/zzld;->zzc:Ljava/util/List;

    .line 11
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12
    :try_end_46
    .catchall {:try_start_e .. :try_end_46} :catchall_d14

    const-string v6, "_fr"

    const-string v7, "_et"

    move/from16 v16, v10

    const-string v10, "_e"

    move/from16 v17, v13

    move-object/from16 v18, v14

    if-ge v8, v12, :cond_52f

    :try_start_54
    iget-object v12, v4, Lcom/google/android/gms/measurement/internal/zzld;->zzc:Ljava/util/List;

    .line 12
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzft;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzlb;->zzbB()Lcom/google/android/gms/internal/measurement/zzkx;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzfs;

    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzc:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 13
    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    iget-object v13, v4, Lcom/google/android/gms/measurement/internal/zzld;->zza:Lcom/google/android/gms/internal/measurement/zzgd;

    .line 14
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzgd;->zzy()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v19, v2

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfs;->zzo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v13, v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzr(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_77
    .catchall {:try_start_54 .. :try_end_77} :catchall_d14

    const-string v13, "_err"

    if-eqz v2, :cond_f5

    .line 15
    :try_start_7b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v2

    .line 16
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzk()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    const-string v6, "Dropping blocked raw event. appId"

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zzld;->zza:Lcom/google/android/gms/internal/measurement/zzgd;

    .line 17
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgd;->zzy()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzn:Lcom/google/android/gms/measurement/internal/zzge;

    .line 18
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzge;->zzj()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v10

    .line 19
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfs;->zzo()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/google/android/gms/measurement/internal/zzep;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 20
    invoke-virtual {v2, v6, v7, v10}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzc:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 21
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    iget-object v6, v4, Lcom/google/android/gms/measurement/internal/zzld;->zza:Lcom/google/android/gms/internal/measurement/zzgd;

    .line 22
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgd;->zzy()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/android/gms/measurement/internal/zzfv;->zzp(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e8

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzc:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 23
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    iget-object v6, v4, Lcom/google/android/gms/measurement/internal/zzld;->zza:Lcom/google/android/gms/internal/measurement/zzgd;

    .line 24
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgd;->zzy()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/android/gms/measurement/internal/zzfv;->zzs(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c3

    goto :goto_e8

    .line 25
    :cond_c3
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfs;->zzo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e8

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzv()Lcom/google/android/gms/measurement/internal/zzlo;

    move-result-object v20

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzF:Lcom/google/android/gms/measurement/internal/zzln;

    iget-object v6, v4, Lcom/google/android/gms/measurement/internal/zzld;->zza:Lcom/google/android/gms/internal/measurement/zzgd;

    .line 27
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgd;->zzy()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0xb

    const-string v24, "_ev"

    .line 28
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfs;->zzo()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    .line 29
    move-object/from16 v21, v2

    invoke-virtual/range {v20 .. v26}, Lcom/google/android/gms/measurement/internal/zzlo;->zzO(Lcom/google/android/gms/measurement/internal/zzln;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 24
    :cond_e8
    :goto_e8
    move-object/from16 v21, v3

    move-object v6, v5

    move v7, v8

    move/from16 v10, v16

    move/from16 v13, v17

    move-object/from16 v14, v18

    const/4 v5, -0x1

    goto/16 :goto_525

    .line 30
    :cond_f5
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfs;->zzo()Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_171

    .line 32
    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/measurement/zzfs;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs;

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    const-string v14, "Renaming ad_impression to _ai"

    invoke-virtual {v2, v14}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzr()Ljava/lang/String;

    move-result-object v2

    .line 35
    const/4 v14, 0x5

    invoke-static {v2, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_16e

    const/4 v2, 0x0

    .line 36
    :goto_123
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfs;->zza()I

    move-result v14

    if-ge v2, v14, :cond_16b

    const-string v14, "ad_platform"

    .line 37
    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/measurement/zzfs;->zzn(I)Lcom/google/android/gms/internal/measurement/zzfx;

    move-result-object v20

    move-object/from16 v21, v3

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gms/internal/measurement/zzfx;->zzg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_166

    .line 38
    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/measurement/zzfs;->zzn(I)Lcom/google/android/gms/internal/measurement/zzfx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfx;->zzh()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_166

    const-string v3, "admob"

    .line 39
    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/measurement/zzfs;->zzn(I)Lcom/google/android/gms/internal/measurement/zzfx;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfx;->zzh()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_166

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v3

    .line 41
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzeu;->zzl()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v3

    const-string v14, "AdMob ad impression logged from app. Potentially duplicative."

    .line 42
    invoke-virtual {v3, v14}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    :cond_166
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v21

    goto :goto_123

    .line 36
    :cond_16b
    move-object/from16 v21, v3

    goto :goto_173

    .line 35
    :cond_16e
    move-object/from16 v21, v3

    goto :goto_173

    .line 31
    :cond_171
    move-object/from16 v21, v3

    .line 42
    :goto_173
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzc:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 43
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    iget-object v3, v4, Lcom/google/android/gms/measurement/internal/zzld;->zza:Lcom/google/android/gms/internal/measurement/zzgd;

    .line 44
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgd;->zzy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfs;->zzo()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v3, v14}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_186
    .catchall {:try_start_7b .. :try_end_186} :catchall_d14

    const-string v3, "_c"

    if-nez v2, :cond_1c2

    :try_start_18a
    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzi:Lcom/google/android/gms/measurement/internal/zzli;

    .line 45
    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 46
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfs;->zzo()Ljava/lang/String;

    move-result-object v14

    .line 47
    invoke-static {v14}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v20
    :try_end_19a
    .catchall {:try_start_18a .. :try_end_19a} :catchall_d14

    packed-switch v20, :pswitch_data_d20

    move/from16 v20, v9

    goto :goto_1ad

    .line 108
    :pswitch_1a0
    nop

    .line 48
    move/from16 v20, v9

    const-string v9, "_ui"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1ad

    const/4 v9, 0x0

    goto :goto_1ae

    :cond_1ad
    :goto_1ad
    const/4 v9, -0x1

    :goto_1ae
    packed-switch v9, :pswitch_data_d26

    move-object/from16 v26, v6

    move/from16 v23, v8

    move-object/from16 v24, v11

    move/from16 v25, v15

    const/4 v2, 0x0

    move-object v15, v5

    goto/16 :goto_39c

    .line 120
    :pswitch_1bd
    const/4 v9, 0x0

    const/4 v14, 0x0

    const/16 v22, 0x0

    goto :goto_1c8

    .line 48
    :cond_1c2
    move/from16 v20, v9

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/16 v22, 0x0

    .line 49
    :goto_1c8
    move/from16 v23, v8

    :try_start_1ca
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfs;->zza()I

    move-result v8
    :try_end_1ce
    .catchall {:try_start_1ca .. :try_end_1ce} :catchall_d14

    move-object/from16 v24, v11

    const-string v11, "_r"

    if-ge v9, v8, :cond_23e

    .line 50
    :try_start_1d4
    invoke-virtual {v12, v9}, Lcom/google/android/gms/internal/measurement/zzfs;->zzn(I)Lcom/google/android/gms/internal/measurement/zzfx;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfx;->zzg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_201

    .line 51
    invoke-virtual {v12, v9}, Lcom/google/android/gms/internal/measurement/zzfs;->zzn(I)Lcom/google/android/gms/internal/measurement/zzfx;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzlb;->zzbB()Lcom/google/android/gms/internal/measurement/zzkx;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzfw;

    .line 52
    move/from16 v25, v15

    const-wide/16 v14, 0x1

    invoke-virtual {v8, v14, v15}, Lcom/google/android/gms/internal/measurement/zzfw;->zzi(J)Lcom/google/android/gms/internal/measurement/zzfw;

    .line 53
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaD()Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzfx;

    .line 54
    invoke-virtual {v12, v9, v8}, Lcom/google/android/gms/internal/measurement/zzfs;->zzk(ILcom/google/android/gms/internal/measurement/zzfx;)Lcom/google/android/gms/internal/measurement/zzfs;

    move-object v15, v5

    move-object/from16 v26, v6

    const/4 v14, 0x1

    goto :goto_232

    :cond_201
    move/from16 v25, v15

    .line 55
    invoke-virtual {v12, v9}, Lcom/google/android/gms/internal/measurement/zzfs;->zzn(I)Lcom/google/android/gms/internal/measurement/zzfx;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfx;->zzg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_22f

    .line 56
    invoke-virtual {v12, v9}, Lcom/google/android/gms/internal/measurement/zzfs;->zzn(I)Lcom/google/android/gms/internal/measurement/zzfx;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzlb;->zzbB()Lcom/google/android/gms/internal/measurement/zzkx;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzfw;

    .line 57
    move-object v15, v5

    move-object/from16 v26, v6

    const-wide/16 v5, 0x1

    invoke-virtual {v8, v5, v6}, Lcom/google/android/gms/internal/measurement/zzfw;->zzi(J)Lcom/google/android/gms/internal/measurement/zzfw;

    .line 58
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaD()Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfx;

    .line 59
    invoke-virtual {v12, v9, v5}, Lcom/google/android/gms/internal/measurement/zzfs;->zzk(ILcom/google/android/gms/internal/measurement/zzfx;)Lcom/google/android/gms/internal/measurement/zzfs;

    const/16 v22, 0x1

    goto :goto_232

    .line 55
    :cond_22f
    move-object v15, v5

    move-object/from16 v26, v6

    .line 54
    :goto_232
    add-int/lit8 v9, v9, 0x1

    move-object v5, v15

    move/from16 v8, v23

    move-object/from16 v11, v24

    move/from16 v15, v25

    move-object/from16 v6, v26

    goto :goto_1c8

    .line 59
    :cond_23e
    move-object/from16 v26, v6

    move/from16 v25, v15

    move-object v15, v5

    if-nez v14, :cond_271

    if-eqz v2, :cond_271

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v5

    .line 61
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v5

    const-string v6, "Marking event as conversion"

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzn:Lcom/google/android/gms/measurement/internal/zzge;

    .line 62
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzge;->zzj()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v8

    .line 63
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfs;->zzo()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzep;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 64
    invoke-virtual {v5, v6, v8}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfx;->zze()Lcom/google/android/gms/internal/measurement/zzfw;

    move-result-object v5

    .line 66
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/measurement/zzfw;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfw;

    .line 67
    const-wide/16 v8, 0x1

    invoke-virtual {v5, v8, v9}, Lcom/google/android/gms/internal/measurement/zzfw;->zzi(J)Lcom/google/android/gms/internal/measurement/zzfw;

    .line 68
    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/measurement/zzfs;->zze(Lcom/google/android/gms/internal/measurement/zzfw;)Lcom/google/android/gms/internal/measurement/zzfs;

    :cond_271
    if-nez v22, :cond_29d

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v5

    .line 70
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v5

    const-string v6, "Marking event as real-time"

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzn:Lcom/google/android/gms/measurement/internal/zzge;

    .line 71
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzge;->zzj()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v8

    .line 72
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfs;->zzo()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzep;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 73
    invoke-virtual {v5, v6, v8}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfx;->zze()Lcom/google/android/gms/internal/measurement/zzfw;

    move-result-object v5

    .line 75
    invoke-virtual {v5, v11}, Lcom/google/android/gms/internal/measurement/zzfw;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfw;

    .line 76
    const-wide/16 v8, 0x1

    invoke-virtual {v5, v8, v9}, Lcom/google/android/gms/internal/measurement/zzfw;->zzi(J)Lcom/google/android/gms/internal/measurement/zzfw;

    .line 77
    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/measurement/zzfs;->zze(Lcom/google/android/gms/internal/measurement/zzfw;)Lcom/google/android/gms/internal/measurement/zzfs;

    :cond_29d
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 78
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zza()J

    move-result-wide v28

    iget-object v6, v4, Lcom/google/android/gms/measurement/internal/zzld;->zza:Lcom/google/android/gms/internal/measurement/zzgd;

    .line 80
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgd;->zzy()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x1

    .line 81
    move-object/from16 v27, v5

    invoke-virtual/range {v27 .. v35}, Lcom/google/android/gms/measurement/internal/zzam;->zzl(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/zzak;

    move-result-object v5

    iget-wide v5, v5, Lcom/google/android/gms/measurement/internal/zzak;->zze:J

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzg()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v8

    iget-object v9, v4, Lcom/google/android/gms/measurement/internal/zzld;->zza:Lcom/google/android/gms/internal/measurement/zzgd;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzgd;->zzy()Ljava/lang/String;

    move-result-object v9

    .line 83
    sget-object v14, Lcom/google/android/gms/measurement/internal/zzeh;->zzo:Lcom/google/android/gms/measurement/internal/zzeg;

    .line 82
    invoke-virtual {v8, v9, v14}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)I

    move-result v8

    int-to-long v8, v8

    cmp-long v5, v5, v8

    if-lez v5, :cond_2d7

    .line 84
    invoke-static {v12, v11}, Lcom/google/android/gms/measurement/internal/zzlg;->zzab(Lcom/google/android/gms/internal/measurement/zzfs;Ljava/lang/String;)V

    goto :goto_2d9

    .line 108
    :cond_2d7
    const/16 v16, 0x1

    .line 85
    :goto_2d9
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfs;->zzo()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzlo;->zzak(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_39b

    if-eqz v2, :cond_39b

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 86
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zza()J

    move-result-wide v28

    iget-object v6, v4, Lcom/google/android/gms/measurement/internal/zzld;->zza:Lcom/google/android/gms/internal/measurement/zzgd;

    .line 88
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgd;->zzy()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x1

    const/16 v34, 0x0

    const/16 v35, 0x0

    .line 89
    move-object/from16 v27, v5

    invoke-virtual/range {v27 .. v35}, Lcom/google/android/gms/measurement/internal/zzam;->zzl(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/zzak;

    move-result-object v5

    iget-wide v5, v5, Lcom/google/android/gms/measurement/internal/zzak;->zzc:J

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzg()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v8

    iget-object v9, v4, Lcom/google/android/gms/measurement/internal/zzld;->zza:Lcom/google/android/gms/internal/measurement/zzgd;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzgd;->zzy()Ljava/lang/String;

    move-result-object v9

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzeh;->zzn:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v8, v9, v11}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)I

    move-result v8

    int-to-long v8, v8

    cmp-long v5, v5, v8

    if-lez v5, :cond_39b

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v5

    .line 92
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzeu;->zzk()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v5

    const-string v6, "Too many conversions. Not logging as conversion. appId"

    iget-object v8, v4, Lcom/google/android/gms/measurement/internal/zzld;->zza:Lcom/google/android/gms/internal/measurement/zzgd;

    .line 93
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzgd;->zzy()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 94
    invoke-virtual {v5, v6, v8}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    .line 95
    :goto_336
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfs;->zza()I

    move-result v11

    if-ge v6, v11, :cond_361

    .line 96
    invoke-virtual {v12, v6}, Lcom/google/android/gms/internal/measurement/zzfs;->zzn(I)Lcom/google/android/gms/internal/measurement/zzfx;

    move-result-object v11

    .line 97
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfx;->zzg()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_352

    .line 98
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzlb;->zzbB()Lcom/google/android/gms/internal/measurement/zzkx;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfw;

    move v9, v6

    goto :goto_35e

    :cond_352
    nop

    .line 99
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfx;->zzg()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_35e

    const/4 v8, 0x1

    .line 98
    :cond_35e
    :goto_35e
    add-int/lit8 v6, v6, 0x1

    goto :goto_336

    .line 99
    :cond_361
    if-eqz v8, :cond_36a

    if-eqz v5, :cond_369

    .line 109
    invoke-virtual {v12, v9}, Lcom/google/android/gms/internal/measurement/zzfs;->zzh(I)Lcom/google/android/gms/internal/measurement/zzfs;

    goto :goto_39c

    :cond_369
    const/4 v5, 0x0

    :cond_36a
    if-eqz v5, :cond_384

    .line 100
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaA()Lcom/google/android/gms/internal/measurement/zzkx;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfw;

    .line 101
    invoke-virtual {v5, v13}, Lcom/google/android/gms/internal/measurement/zzfw;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfw;

    .line 102
    const-wide/16 v13, 0xa

    invoke-virtual {v5, v13, v14}, Lcom/google/android/gms/internal/measurement/zzfw;->zzi(J)Lcom/google/android/gms/internal/measurement/zzfw;

    .line 103
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaD()Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfx;

    .line 104
    invoke-virtual {v12, v9, v5}, Lcom/google/android/gms/internal/measurement/zzfs;->zzk(ILcom/google/android/gms/internal/measurement/zzfx;)Lcom/google/android/gms/internal/measurement/zzfs;

    goto :goto_39c

    .line 105
    :cond_384
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v5

    .line 106
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v5

    const-string v6, "Did not find conversion parameter. appId"

    iget-object v8, v4, Lcom/google/android/gms/measurement/internal/zzld;->zza:Lcom/google/android/gms/internal/measurement/zzgd;

    .line 107
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzgd;->zzy()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 108
    invoke-virtual {v5, v6, v8}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_39b
    nop

    .line 48
    :goto_39c
    if-eqz v2, :cond_458

    new-instance v2, Ljava/util/ArrayList;

    .line 110
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfs;->zzp()Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v8, -0x1

    .line 111
    :goto_3aa
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9
    :try_end_3ae
    .catchall {:try_start_1d4 .. :try_end_3ae} :catchall_d14

    const-string v11, "currency"

    const-string/jumbo v13, "value"

    if-ge v5, v9, :cond_3db

    .line 112
    :try_start_3b5
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfx;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfx;->zzg()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3c7

    move v6, v5

    goto :goto_3d8

    .line 113
    :cond_3c7
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfx;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfx;->zzg()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3d8

    move v8, v5

    .line 112
    :cond_3d8
    :goto_3d8
    add-int/lit8 v5, v5, 0x1

    goto :goto_3aa

    .line 113
    :cond_3db
    const/4 v5, -0x1

    if-ne v6, v5, :cond_3e1

    const/4 v5, -0x1

    goto/16 :goto_459

    .line 114
    :cond_3e1
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfx;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfx;->zzw()Z

    move-result v5

    if-nez v5, :cond_413

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfx;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfx;->zzu()Z

    move-result v5

    if-nez v5, :cond_413

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzl()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    const-string v5, "Value must be specified with a numeric type."

    invoke-virtual {v2, v5}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v12, v6}, Lcom/google/android/gms/internal/measurement/zzfs;->zzh(I)Lcom/google/android/gms/internal/measurement/zzfs;

    .line 129
    invoke-static {v12, v3}, Lcom/google/android/gms/measurement/internal/zzlg;->zzab(Lcom/google/android/gms/internal/measurement/zzfs;Ljava/lang/String;)V

    .line 130
    const/16 v2, 0x12

    invoke-static {v12, v2, v13}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaa(Lcom/google/android/gms/internal/measurement/zzfs;ILjava/lang/String;)V

    const/4 v5, -0x1

    goto :goto_459

    :cond_413
    const/4 v5, -0x1

    if-ne v8, v5, :cond_417

    goto :goto_43f

    .line 115
    :cond_417
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfx;->zzh()Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_43f

    const/4 v8, 0x0

    .line 117
    :goto_429
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_459

    .line 118
    invoke-virtual {v2, v8}, Ljava/lang/String;->codePointAt(I)I

    move-result v9

    .line 119
    invoke-static {v9}, Ljava/lang/Character;->isLetter(I)Z

    move-result v13

    if-eqz v13, :cond_43f

    .line 120
    invoke-static {v9}, Ljava/lang/Character;->charCount(I)I

    move-result v9

    add-int/2addr v8, v9

    goto :goto_429

    .line 121
    :cond_43f
    :goto_43f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v2

    .line 122
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzl()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    const-string v8, "Value parameter discarded. You must also supply a 3-letter ISO_4217 currency code in the currency parameter."

    .line 123
    invoke-virtual {v2, v8}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v12, v6}, Lcom/google/android/gms/internal/measurement/zzfs;->zzh(I)Lcom/google/android/gms/internal/measurement/zzfs;

    .line 125
    invoke-static {v12, v3}, Lcom/google/android/gms/measurement/internal/zzlg;->zzab(Lcom/google/android/gms/internal/measurement/zzfs;Ljava/lang/String;)V

    .line 126
    const/16 v2, 0x13

    invoke-static {v12, v2, v11}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaa(Lcom/google/android/gms/internal/measurement/zzfs;ILjava/lang/String;)V

    goto :goto_459

    .line 48
    :cond_458
    const/4 v5, -0x1

    .line 113
    :cond_459
    :goto_459
    nop

    .line 131
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfs;->zzo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v8, 0x3e8

    if-eqz v2, :cond_4b6

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzi:Lcom/google/android/gms/measurement/internal/zzli;

    .line 132
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 133
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaD()Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzft;

    move-object/from16 v3, v26

    invoke-static {v2, v3}, Lcom/google/android/gms/measurement/internal/zzli;->zzB(Lcom/google/android/gms/internal/measurement/zzft;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;

    move-result-object v2

    if-nez v2, :cond_4b0

    if-eqz v18, :cond_4a5

    .line 134
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/measurement/zzfs;->zzc()J

    move-result-wide v2

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfs;->zzc()J

    move-result-wide v6

    sub-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-gtz v2, :cond_4a5

    .line 135
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaA()Lcom/google/android/gms/internal/measurement/zzkx;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfs;

    .line 136
    invoke-direct {v1, v12, v2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaj(Lcom/google/android/gms/internal/measurement/zzfs;Lcom/google/android/gms/internal/measurement/zzfs;)Z

    move-result v3

    if-eqz v3, :cond_4a5

    .line 137
    move-object v6, v15

    move/from16 v3, v25

    invoke-virtual {v6, v3, v2}, Lcom/google/android/gms/internal/measurement/zzgc;->zzS(ILcom/google/android/gms/internal/measurement/zzfs;)Lcom/google/android/gms/internal/measurement/zzgc;

    move v15, v3

    move/from16 v13, v17

    const/4 v11, 0x0

    const/4 v14, 0x0

    goto/16 :goto_511

    .line 146
    :cond_4a5
    move-object v6, v15

    move/from16 v3, v25

    .line 137
    move v15, v3

    move-object v11, v12

    move-object/from16 v14, v18

    move/from16 v13, v20

    goto/16 :goto_511

    .line 133
    :cond_4b0
    move-object v6, v15

    move/from16 v3, v25

    move/from16 v7, v17

    goto :goto_50b

    .line 146
    :cond_4b6
    move-object v6, v15

    move/from16 v3, v25

    const-string v2, "_vs"

    .line 138
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfs;->zzo()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_509

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzi:Lcom/google/android/gms/measurement/internal/zzli;

    .line 139
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 140
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaD()Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzft;

    invoke-static {v2, v7}, Lcom/google/android/gms/measurement/internal/zzli;->zzB(Lcom/google/android/gms/internal/measurement/zzft;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;

    move-result-object v2

    if-nez v2, :cond_506

    if-eqz v24, :cond_4ff

    .line 141
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/internal/measurement/zzfs;->zzc()J

    move-result-wide v10

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfs;->zzc()J

    move-result-wide v13

    sub-long/2addr v10, v13

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    cmp-long v2, v10, v8

    if-gtz v2, :cond_4ff

    .line 142
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaA()Lcom/google/android/gms/internal/measurement/zzkx;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfs;

    .line 143
    invoke-direct {v1, v2, v12}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaj(Lcom/google/android/gms/internal/measurement/zzfs;Lcom/google/android/gms/internal/measurement/zzfs;)Z

    move-result v7

    if-eqz v7, :cond_4ff

    .line 144
    move/from16 v7, v17

    invoke-virtual {v6, v7, v2}, Lcom/google/android/gms/internal/measurement/zzgc;->zzS(ILcom/google/android/gms/internal/measurement/zzfs;)Lcom/google/android/gms/internal/measurement/zzgc;

    move v15, v3

    move v13, v7

    const/4 v11, 0x0

    const/4 v14, 0x0

    goto :goto_511

    :cond_4ff
    move/from16 v7, v17

    .line 137
    move v13, v7

    move-object v14, v12

    move/from16 v15, v20

    goto :goto_50f

    .line 140
    :cond_506
    move/from16 v7, v17

    goto :goto_50b

    .line 138
    :cond_509
    move/from16 v7, v17

    .line 137
    :goto_50b
    move v15, v3

    move v13, v7

    move-object/from16 v14, v18

    :goto_50f
    move-object/from16 v11, v24

    :goto_511
    iget-object v2, v4, Lcom/google/android/gms/measurement/internal/zzld;->zzc:Ljava/util/List;

    .line 145
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaD()Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzft;

    move/from16 v7, v23

    invoke-interface {v2, v7, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v20, 0x1

    .line 146
    invoke-virtual {v6, v12}, Lcom/google/android/gms/internal/measurement/zzgc;->zzk(Lcom/google/android/gms/internal/measurement/zzfs;)Lcom/google/android/gms/internal/measurement/zzgc;

    move/from16 v10, v16

    .line 24
    :goto_525
    add-int/lit8 v8, v7, 0x1

    move-object v5, v6

    move-object/from16 v2, v19

    move-object/from16 v3, v21

    const/4 v12, 0x0

    goto/16 :goto_40

    .line 48
    :cond_52f
    move-object/from16 v19, v2

    move-object v3, v6

    move/from16 v20, v9

    move-object v6, v5

    const-wide/16 v8, 0x0

    move-wide v11, v8

    move/from16 v5, v20

    const/4 v2, 0x0

    :goto_53b
    if-ge v2, v5, :cond_58d

    .line 147
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/measurement/zzgc;->zze(I)Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v13

    .line 148
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzft;->zzh()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_55e

    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzi:Lcom/google/android/gms/measurement/internal/zzli;

    .line 149
    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 150
    invoke-static {v13, v3}, Lcom/google/android/gms/measurement/internal/zzli;->zzB(Lcom/google/android/gms/internal/measurement/zzft;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;

    move-result-object v14

    if-eqz v14, :cond_55e

    .line 156
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/measurement/zzgc;->zzA(I)Lcom/google/android/gms/internal/measurement/zzgc;

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_58a

    :cond_55e
    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzi:Lcom/google/android/gms/measurement/internal/zzli;

    .line 151
    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 152
    invoke-static {v13, v7}, Lcom/google/android/gms/measurement/internal/zzli;->zzB(Lcom/google/android/gms/internal/measurement/zzft;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;

    move-result-object v13

    if-eqz v13, :cond_589

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfx;->zzw()Z

    move-result v14

    if-eqz v14, :cond_578

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfx;->zzd()J

    move-result-wide v13

    .line 153
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    goto :goto_579

    .line 155
    :cond_578
    const/4 v13, 0x0

    .line 153
    :goto_579
    if-eqz v13, :cond_589

    .line 154
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v14, v14, v8

    if-lez v14, :cond_589

    .line 155
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    add-long/2addr v11, v13

    goto :goto_58a

    :cond_589
    nop

    .line 156
    :goto_58a
    const/4 v13, 0x1

    add-int/2addr v2, v13

    goto :goto_53b

    .line 155
    :cond_58d
    nop

    .line 157
    const/4 v2, 0x0

    invoke-direct {v1, v6, v11, v12, v2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaf(Lcom/google/android/gms/internal/measurement/zzgc;JZ)V

    .line 158
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgc;->zzat()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_59a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_59e
    .catchall {:try_start_3b5 .. :try_end_59e} :catchall_d14

    const-string v5, "_se"

    if-eqz v3, :cond_5c0

    :try_start_5a2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzft;

    const-string v7, "_s"

    .line 159
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzft;->zzh()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59a

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 160
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 161
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgc;->zzaq()Ljava/lang/String;

    move-result-object v3

    .line 162
    invoke-virtual {v2, v3, v5}, Lcom/google/android/gms/measurement/internal/zzam;->zzA(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5c0
    const-string v2, "_sid"

    .line 163
    invoke-static {v6, v2}, Lcom/google/android/gms/measurement/internal/zzli;->zza(Lcom/google/android/gms/internal/measurement/zzgc;Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_5cd

    .line 164
    const/4 v2, 0x1

    invoke-direct {v1, v6, v11, v12, v2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaf(Lcom/google/android/gms/internal/measurement/zzgc;JZ)V

    goto :goto_5ee

    .line 192
    :cond_5cd
    nop

    .line 165
    invoke-static {v6, v5}, Lcom/google/android/gms/measurement/internal/zzli;->zza(Lcom/google/android/gms/internal/measurement/zzgc;Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_5ee

    .line 166
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/measurement/zzgc;->zzB(I)Lcom/google/android/gms/internal/measurement/zzgc;

    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v2

    .line 168
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    const-string v3, "Session engagement user property is in the bundle without session ID. appId"

    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zzld;->zza:Lcom/google/android/gms/internal/measurement/zzgd;

    .line 169
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgd;->zzy()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 170
    invoke-virtual {v2, v3, v5}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 164
    :cond_5ee
    :goto_5ee
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzi:Lcom/google/android/gms/measurement/internal/zzli;

    .line 171
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 172
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v3

    .line 173
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v3

    const-string v5, "Checking account type status for ad personalization signals"

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzks;->zzf:Lcom/google/android/gms/measurement/internal/zzlg;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzlg;->zzc:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 174
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 175
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgc;->zzaq()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzfv;->zzn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_685

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzks;->zzf:Lcom/google/android/gms/measurement/internal/zzlg;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 176
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 177
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgc;->zzaq()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzam;->zzj(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v3

    if-eqz v3, :cond_685

    .line 178
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzh;->zzak()Z

    move-result v3

    if-eqz v3, :cond_685

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 179
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v3

    .line 180
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaq;->zze()Z

    move-result v3

    if-eqz v3, :cond_685

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 181
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v3

    .line 182
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzeu;->zzc()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v3

    const-string v5, "Turning off ad personalization due to account type"

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    .line 183
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgm;->zzd()Lcom/google/android/gms/internal/measurement/zzgl;

    move-result-object v3

    .line 184
    move-object/from16 v5, v19

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/zzgl;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgl;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 185
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v2

    .line 186
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zza()J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Lcom/google/android/gms/internal/measurement/zzgl;->zzg(J)Lcom/google/android/gms/internal/measurement/zzgl;

    .line 187
    const-wide/16 v10, 0x1

    invoke-virtual {v3, v10, v11}, Lcom/google/android/gms/internal/measurement/zzgl;->zze(J)Lcom/google/android/gms/internal/measurement/zzgl;

    .line 188
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaD()Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzgm;

    const/4 v3, 0x0

    .line 189
    :goto_667
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgc;->zzb()I

    move-result v7

    if-ge v3, v7, :cond_682

    .line 190
    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/measurement/zzgc;->zzap(I)Lcom/google/android/gms/internal/measurement/zzgm;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgm;->zzf()Ljava/lang/String;

    move-result-object v7

    .line 191
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_67f

    .line 193
    invoke-virtual {v6, v3, v2}, Lcom/google/android/gms/internal/measurement/zzgc;->zzan(ILcom/google/android/gms/internal/measurement/zzgm;)Lcom/google/android/gms/internal/measurement/zzgc;

    goto :goto_685

    .line 314
    :cond_67f
    add-int/lit8 v3, v3, 0x1

    goto :goto_667

    .line 192
    :cond_682
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/measurement/zzgc;->zzm(Lcom/google/android/gms/internal/measurement/zzgm;)Lcom/google/android/gms/internal/measurement/zzgc;

    .line 193
    :cond_685
    :goto_685
    nop

    .line 194
    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {v6, v2, v3}, Lcom/google/android/gms/internal/measurement/zzgc;->zzai(J)Lcom/google/android/gms/internal/measurement/zzgc;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-virtual {v6, v2, v3}, Lcom/google/android/gms/internal/measurement/zzgc;->zzQ(J)Lcom/google/android/gms/internal/measurement/zzgc;

    const/4 v2, 0x0

    .line 195
    :goto_694
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgc;->zza()I

    move-result v3

    if-ge v2, v3, :cond_6c7

    .line 196
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/measurement/zzgc;->zze(I)Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v3

    .line 197
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzft;->zzd()J

    move-result-wide v10

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgc;->zzd()J

    move-result-wide v12

    cmp-long v5, v10, v12

    if-gez v5, :cond_6b1

    .line 198
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzft;->zzd()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Lcom/google/android/gms/internal/measurement/zzgc;->zzai(J)Lcom/google/android/gms/internal/measurement/zzgc;

    .line 199
    :cond_6b1
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzft;->zzd()J

    move-result-wide v10

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgc;->zzc()J

    move-result-wide v12

    cmp-long v5, v10, v12

    if-lez v5, :cond_6c4

    .line 200
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzft;->zzd()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Lcom/google/android/gms/internal/measurement/zzgc;->zzQ(J)Lcom/google/android/gms/internal/measurement/zzgc;

    :cond_6c4
    add-int/lit8 v2, v2, 0x1

    goto :goto_694

    .line 201
    :cond_6c7
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgc;->zzz()Lcom/google/android/gms/internal/measurement/zzgc;

    .line 202
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgc;->zzo()Lcom/google/android/gms/internal/measurement/zzgc;

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzh:Lcom/google/android/gms/measurement/internal/zzaa;

    .line 203
    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 204
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgc;->zzaq()Ljava/lang/String;

    move-result-object v11

    .line 205
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgc;->zzat()Ljava/util/List;

    move-result-object v12

    .line 206
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgc;->zzau()Ljava/util/List;

    move-result-object v13

    .line 207
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgc;->zzd()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 208
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgc;->zzc()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 209
    invoke-virtual/range {v10 .. v15}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v2

    .line 210
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/measurement/zzgc;->zzf(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzgc;

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzg()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v2

    iget-object v3, v4, Lcom/google/android/gms/measurement/internal/zzld;->zza:Lcom/google/android/gms/internal/measurement/zzgd;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgd;->zzy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzag;->zzw(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a4f

    new-instance v2, Ljava/util/HashMap;

    .line 212
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    .line 213
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzv()Lcom/google/android/gms/measurement/internal/zzlo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzlo;->zzG()Ljava/security/SecureRandom;

    move-result-object v5

    const/4 v7, 0x0

    .line 215
    :goto_718
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgc;->zza()I

    move-result v10

    if-ge v7, v10, :cond_a1b

    .line 216
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/measurement/zzgc;->zze(I)Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzlb;->zzbB()Lcom/google/android/gms/internal/measurement/zzkx;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzfs;

    .line 217
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfs;->zzo()Ljava/lang/String;

    move-result-object v11

    const-string v12, "_ep"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_732
    .catchall {:try_start_5a2 .. :try_end_732} :catchall_d14

    const-string v12, "_efs"

    const-string v13, "_sr"

    if-eqz v11, :cond_7bb

    :try_start_738
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzi:Lcom/google/android/gms/measurement/internal/zzli;

    .line 284
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 285
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaD()Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzft;

    const-string v14, "_en"

    invoke-static {v11, v14}, Lcom/google/android/gms/measurement/internal/zzli;->zzC(Lcom/google/android/gms/internal/measurement/zzft;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 286
    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/measurement/internal/zzas;

    if-nez v14, :cond_770

    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 287
    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    iget-object v15, v4, Lcom/google/android/gms/measurement/internal/zzld;->zza:Lcom/google/android/gms/internal/measurement/zzgd;

    .line 288
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzgd;->zzy()Ljava/lang/String;

    move-result-object v15

    invoke-static {v11}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v8, v17

    check-cast v8, Ljava/lang/String;

    .line 289
    invoke-virtual {v14, v15, v8}, Lcom/google/android/gms/measurement/internal/zzam;->zzn(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v14

    if-eqz v14, :cond_770

    .line 290
    invoke-interface {v2, v11, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_771

    .line 298
    :cond_770
    nop

    .line 290
    :goto_771
    if-eqz v14, :cond_7b0

    iget-object v8, v14, Lcom/google/android/gms/measurement/internal/zzas;->zzi:Ljava/lang/Long;

    if-nez v8, :cond_7b0

    iget-object v8, v14, Lcom/google/android/gms/measurement/internal/zzas;->zzj:Ljava/lang/Long;

    if-eqz v8, :cond_78f

    .line 291
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v17, 0x1

    cmp-long v8, v8, v17

    if-lez v8, :cond_78f

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzi:Lcom/google/android/gms/measurement/internal/zzli;

    .line 292
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    iget-object v8, v14, Lcom/google/android/gms/measurement/internal/zzas;->zzj:Ljava/lang/Long;

    .line 293
    invoke-static {v10, v13, v8}, Lcom/google/android/gms/measurement/internal/zzli;->zzz(Lcom/google/android/gms/internal/measurement/zzfs;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_78f
    iget-object v8, v14, Lcom/google/android/gms/measurement/internal/zzas;->zzk:Ljava/lang/Boolean;

    if-eqz v8, :cond_7a7

    .line 294
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_7a7

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzi:Lcom/google/android/gms/measurement/internal/zzli;

    .line 295
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 296
    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v10, v12, v11}, Lcom/google/android/gms/measurement/internal/zzli;->zzz(Lcom/google/android/gms/internal/measurement/zzfs;Ljava/lang/String;Ljava/lang/Object;)V

    .line 297
    :cond_7a7
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaD()Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzft;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    :cond_7b0
    invoke-virtual {v6, v7, v10}, Lcom/google/android/gms/internal/measurement/zzgc;->zzS(ILcom/google/android/gms/internal/measurement/zzfs;)Lcom/google/android/gms/internal/measurement/zzgc;

    move-object/from16 v21, v5

    move v8, v7

    move-object v7, v6

    const-wide/16 v5, 0x1

    goto/16 :goto_a11

    :cond_7bb
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzc:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 218
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    iget-object v9, v4, Lcom/google/android/gms/measurement/internal/zzld;->zza:Lcom/google/android/gms/internal/measurement/zzgd;

    .line 219
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzgd;->zzy()Ljava/lang/String;

    move-result-object v9

    const-string v11, "measurement.account.time_zone_offset_minutes"

    .line 220
    invoke-virtual {v8, v9, v11}, Lcom/google/android/gms/measurement/internal/zzfv;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 221
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14
    :try_end_7d0
    .catchall {:try_start_738 .. :try_end_7d0} :catchall_d14

    if-nez v14, :cond_7ef

    .line 222
    :try_start_7d2
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8
    :try_end_7d6
    .catch Ljava/lang/NumberFormatException; {:try_start_7d2 .. :try_end_7d6} :catch_7d7
    .catchall {:try_start_7d2 .. :try_end_7d6} :catchall_d14

    goto :goto_7f1

    .line 407
    :catch_7d7
    move-exception v0

    move-object v11, v0

    :try_start_7d9
    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 223
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v8

    .line 224
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzeu;->zzk()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v8

    const-string v14, "Unable to parse timezone offset. appId"

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 225
    invoke-virtual {v8, v14, v9, v11}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v8, 0x0

    goto :goto_7f1

    .line 269
    :cond_7ef
    const-wide/16 v8, 0x0

    .line 226
    :goto_7f1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzv()Lcom/google/android/gms/measurement/internal/zzlo;

    move-result-object v11

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfs;->zzc()J

    move-result-wide v14

    invoke-virtual {v11, v14, v15, v8, v9}, Lcom/google/android/gms/measurement/internal/zzlo;->zzr(JJ)J

    move-result-wide v14

    .line 227
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaD()Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzft;

    move-object/from16 p3, v12

    const-wide/16 v17, 0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-wide/from16 v17, v8

    const-string v8, "_dbg"

    .line 228
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_849

    .line 229
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzft;->zzi()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_81d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_849

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzfx;

    .line 230
    move-object/from16 v21, v9

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfx;->zzg()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_846

    .line 231
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfx;->zzd()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_844

    goto :goto_849

    .line 269
    :cond_844
    const/4 v8, 0x1

    goto :goto_85c

    .line 230
    :cond_846
    move-object/from16 v9, v21

    goto :goto_81d

    .line 231
    :cond_849
    :goto_849
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzc:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 232
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    iget-object v9, v4, Lcom/google/android/gms/measurement/internal/zzld;->zza:Lcom/google/android/gms/internal/measurement/zzgd;

    .line 233
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzgd;->zzy()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfs;->zzo()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Lcom/google/android/gms/measurement/internal/zzfv;->zzc(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    :goto_85c
    if-gtz v8, :cond_887

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v9

    .line 235
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzeu;->zzk()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v9

    const-string v11, "Sample rate must be positive. event, rate"

    .line 236
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfs;->zzo()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v11, v12, v8}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 237
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaD()Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzft;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-virtual {v6, v7, v10}, Lcom/google/android/gms/internal/measurement/zzgc;->zzS(ILcom/google/android/gms/internal/measurement/zzfs;)Lcom/google/android/gms/internal/measurement/zzgc;

    move-object/from16 v21, v5

    move v8, v7

    move-object v7, v6

    const-wide/16 v5, 0x1

    goto/16 :goto_a11

    .line 239
    :cond_887
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfs;->zzo()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/measurement/internal/zzas;

    if-nez v9, :cond_8ea

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 240
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    iget-object v11, v4, Lcom/google/android/gms/measurement/internal/zzld;->zza:Lcom/google/android/gms/internal/measurement/zzgd;

    .line 241
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzgd;->zzy()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfs;->zzo()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lcom/google/android/gms/measurement/internal/zzam;->zzn(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v9

    if-nez v9, :cond_8e7

    .line 242
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v9

    .line 243
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzeu;->zzk()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v9

    const-string v11, "Event being bundled has no eventAggregate. appId, eventName"

    iget-object v12, v4, Lcom/google/android/gms/measurement/internal/zzld;->zza:Lcom/google/android/gms/internal/measurement/zzgd;

    .line 244
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzgd;->zzy()Ljava/lang/String;

    move-result-object v12

    .line 245
    move-wide/from16 v21, v14

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfs;->zzo()Ljava/lang/String;

    move-result-object v14

    .line 246
    invoke-virtual {v9, v11, v12, v14}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v9, Lcom/google/android/gms/measurement/internal/zzas;

    iget-object v11, v4, Lcom/google/android/gms/measurement/internal/zzld;->zza:Lcom/google/android/gms/internal/measurement/zzgd;

    .line 247
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzgd;->zzy()Ljava/lang/String;

    move-result-object v24

    .line 248
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfs;->zzo()Ljava/lang/String;

    move-result-object v25

    const-wide/16 v26, 0x1

    const-wide/16 v28, 0x1

    const-wide/16 v30, 0x1

    .line 249
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfs;->zzc()J

    move-result-wide v32

    const-wide/16 v34, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v23, v9

    invoke-direct/range {v23 .. v39}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_8ec

    .line 241
    :cond_8e7
    move-wide/from16 v21, v14

    goto :goto_8ec

    .line 239
    :cond_8ea
    move-wide/from16 v21, v14

    .line 249
    :goto_8ec
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzi:Lcom/google/android/gms/measurement/internal/zzli;

    .line 250
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 251
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaD()Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzft;

    const-string v12, "_eid"

    invoke-static {v11, v12}, Lcom/google/android/gms/measurement/internal/zzli;->zzC(Lcom/google/android/gms/internal/measurement/zzft;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    if-eqz v11, :cond_903

    const/4 v12, 0x1

    goto :goto_904

    .line 269
    :cond_903
    const/4 v12, 0x0

    .line 252
    :goto_904
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v14, 0x1

    if-ne v8, v14, :cond_93d

    .line 253
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaD()Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzft;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_932

    iget-object v8, v9, Lcom/google/android/gms/measurement/internal/zzas;->zzi:Ljava/lang/Long;

    if-nez v8, :cond_926

    iget-object v8, v9, Lcom/google/android/gms/measurement/internal/zzas;->zzj:Ljava/lang/Long;

    if-nez v8, :cond_926

    iget-object v8, v9, Lcom/google/android/gms/measurement/internal/zzas;->zzk:Ljava/lang/Boolean;

    if-eqz v8, :cond_932

    .line 255
    :cond_926
    const/4 v8, 0x0

    invoke-virtual {v9, v8, v8, v8}, Lcom/google/android/gms/measurement/internal/zzas;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v9

    .line 256
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfs;->zzo()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    :cond_932
    invoke-virtual {v6, v7, v10}, Lcom/google/android/gms/internal/measurement/zzgc;->zzS(ILcom/google/android/gms/internal/measurement/zzfs;)Lcom/google/android/gms/internal/measurement/zzgc;

    move-object/from16 v21, v5

    move v8, v7

    move-object v7, v6

    const-wide/16 v5, 0x1

    goto/16 :goto_a11

    .line 258
    :cond_93d
    invoke-virtual {v5, v8}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v14

    if-nez v14, :cond_97f

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzi:Lcom/google/android/gms/measurement/internal/zzli;

    .line 259
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    int-to-long v14, v8

    .line 260
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v10, v13, v8}, Lcom/google/android/gms/measurement/internal/zzli;->zzz(Lcom/google/android/gms/internal/measurement/zzfs;Ljava/lang/String;Ljava/lang/Object;)V

    .line 261
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaD()Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzft;

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_964

    .line 263
    const/4 v11, 0x0

    invoke-virtual {v9, v11, v8, v11}, Lcom/google/android/gms/measurement/internal/zzas;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v9

    .line 264
    :cond_964
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfs;->zzo()Ljava/lang/String;

    move-result-object v8

    .line 265
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfs;->zzc()J

    move-result-wide v11

    move-wide/from16 v14, v21

    invoke-virtual {v9, v11, v12, v14, v15}, Lcom/google/android/gms/measurement/internal/zzas;->zzb(JJ)Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v9

    .line 266
    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move/from16 v23, v7

    const-wide/16 v5, 0x1

    goto/16 :goto_a0a

    .line 267
    :cond_97f
    move-wide/from16 v14, v21

    move-object/from16 v21, v5

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzas;->zzh:Ljava/lang/Long;

    if-eqz v5, :cond_994

    .line 268
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    move-object/from16 v22, v6

    move/from16 v23, v7

    move-object/from16 v24, v11

    move-object/from16 v25, v12

    goto :goto_9aa

    .line 269
    :cond_994
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzv()Lcom/google/android/gms/measurement/internal/zzlo;

    move-result-object v5

    move-object/from16 v22, v6

    move/from16 v23, v7

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfs;->zzb()J

    move-result-wide v6

    move-object/from16 v24, v11

    move-object/from16 v25, v12

    move-wide/from16 v11, v17

    invoke-virtual {v5, v6, v7, v11, v12}, Lcom/google/android/gms/measurement/internal/zzlo;->zzr(JJ)J

    move-result-wide v17

    .line 268
    :goto_9aa
    cmp-long v5, v17, v14

    if-eqz v5, :cond_9f4

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzi:Lcom/google/android/gms/measurement/internal/zzli;

    .line 270
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 271
    const-wide/16 v5, 0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v11, p3

    invoke-static {v10, v11, v7}, Lcom/google/android/gms/measurement/internal/zzli;->zzz(Lcom/google/android/gms/internal/measurement/zzfs;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzi:Lcom/google/android/gms/measurement/internal/zzli;

    .line 272
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    int-to-long v7, v8

    .line 273
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v10, v13, v7}, Lcom/google/android/gms/measurement/internal/zzli;->zzz(Lcom/google/android/gms/internal/measurement/zzfs;Ljava/lang/String;Ljava/lang/Object;)V

    .line 274
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaD()Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzft;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_9e4

    .line 276
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v8, 0x0

    invoke-virtual {v9, v8, v7, v11}, Lcom/google/android/gms/measurement/internal/zzas;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v9

    .line 277
    :cond_9e4
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfs;->zzo()Ljava/lang/String;

    move-result-object v7

    .line 278
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfs;->zzc()J

    move-result-wide v11

    invoke-virtual {v9, v11, v12, v14, v15}, Lcom/google/android/gms/measurement/internal/zzas;->zzb(JJ)Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v8

    .line 279
    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a0a

    .line 280
    :cond_9f4
    const-wide/16 v5, 0x1

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_a0a

    .line 281
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfs;->zzo()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v11, v24

    const/4 v8, 0x0

    invoke-virtual {v9, v11, v8, v8}, Lcom/google/android/gms/measurement/internal/zzas;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v9

    .line 282
    invoke-interface {v2, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    :cond_a0a
    :goto_a0a
    move-object/from16 v7, v22

    move/from16 v8, v23

    invoke-virtual {v7, v8, v10}, Lcom/google/android/gms/internal/measurement/zzgc;->zzS(ILcom/google/android/gms/internal/measurement/zzfs;)Lcom/google/android/gms/internal/measurement/zzgc;

    .line 298
    :goto_a11
    add-int/lit8 v8, v8, 0x1

    move-object v6, v7

    move v7, v8

    move-object/from16 v5, v21

    const-wide/16 v8, 0x0

    goto/16 :goto_718

    .line 299
    :cond_a1b
    move-object v7, v6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgc;->zza()I

    move-result v6

    if-ge v5, v6, :cond_a2c

    .line 300
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgc;->zzr()Lcom/google/android/gms/internal/measurement/zzgc;

    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/measurement/zzgc;->zzg(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzgc;

    .line 301
    :cond_a2c
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a50

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 302
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 303
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzas;

    invoke-virtual {v5, v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzE(Lcom/google/android/gms/measurement/internal/zzas;)V

    goto :goto_a34

    .line 211
    :cond_a4f
    move-object v7, v6

    .line 303
    :cond_a50
    iget-object v2, v4, Lcom/google/android/gms/measurement/internal/zzld;->zza:Lcom/google/android/gms/internal/measurement/zzgd;

    .line 304
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgd;->zzy()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 305
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 306
    invoke-virtual {v3, v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzj(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v3

    if-nez v3, :cond_a79

    .line 307
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v3

    .line 308
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v3

    const-string v5, "Bundling raw events w/o app info. appId"

    iget-object v6, v4, Lcom/google/android/gms/measurement/internal/zzld;->zza:Lcom/google/android/gms/internal/measurement/zzgd;

    .line 309
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgd;->zzy()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 310
    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_ad5

    .line 311
    :cond_a79
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgc;->zza()I

    move-result v5

    if-lez v5, :cond_ad5

    .line 312
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzh;->zzn()J

    move-result-wide v5

    const-wide/16 v8, 0x0

    cmp-long v10, v5, v8

    if-eqz v10, :cond_a8d

    .line 313
    invoke-virtual {v7, v5, v6}, Lcom/google/android/gms/internal/measurement/zzgc;->zzab(J)Lcom/google/android/gms/internal/measurement/zzgc;

    goto :goto_a90

    .line 314
    :cond_a8d
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgc;->zzv()Lcom/google/android/gms/internal/measurement/zzgc;

    .line 315
    :goto_a90
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzh;->zzp()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-nez v12, :cond_a9b

    goto :goto_a9c

    .line 317
    :cond_a9b
    move-wide v5, v8

    .line 315
    :goto_a9c
    cmp-long v8, v5, v10

    if-eqz v8, :cond_aa4

    .line 316
    invoke-virtual {v7, v5, v6}, Lcom/google/android/gms/internal/measurement/zzgc;->zzac(J)Lcom/google/android/gms/internal/measurement/zzgc;

    goto :goto_aa7

    .line 317
    :cond_aa4
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgc;->zzw()Lcom/google/android/gms/internal/measurement/zzgc;

    .line 318
    :goto_aa7
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzh;->zzF()V

    .line 319
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzh;->zzo()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/measurement/zzgc;->zzI(I)Lcom/google/android/gms/internal/measurement/zzgc;

    .line 320
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgc;->zzd()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzac(J)V

    .line 321
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgc;->zzc()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzaa(J)V

    .line 322
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzh;->zzt()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_aca

    .line 323
    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/measurement/zzgc;->zzW(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgc;

    goto :goto_acd

    .line 324
    :cond_aca
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgc;->zzs()Lcom/google/android/gms/internal/measurement/zzgc;

    .line 323
    :goto_acd
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 325
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 326
    invoke-virtual {v5, v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzD(Lcom/google/android/gms/measurement/internal/zzh;)V

    .line 327
    :cond_ad5
    :goto_ad5
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgc;->zza()I

    move-result v3

    if-lez v3, :cond_c59

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzn:Lcom/google/android/gms/measurement/internal/zzge;

    .line 328
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzge;->zzay()Lcom/google/android/gms/measurement/internal/zzab;

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzc:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 329
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zzld;->zza:Lcom/google/android/gms/internal/measurement/zzgd;

    .line 330
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgd;->zzy()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzfv;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzff;

    move-result-object v3

    const-wide/16 v5, -0x1

    if-eqz v3, :cond_b02

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzff;->zzu()Z

    move-result v8

    if-nez v8, :cond_afa

    goto :goto_b02

    .line 336
    :cond_afa
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzff;->zzc()J

    move-result-wide v8

    .line 337
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/measurement/zzgc;->zzK(J)Lcom/google/android/gms/internal/measurement/zzgc;

    goto :goto_b29

    .line 330
    :cond_b02
    :goto_b02
    iget-object v3, v4, Lcom/google/android/gms/measurement/internal/zzld;->zza:Lcom/google/android/gms/internal/measurement/zzgd;

    .line 331
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgd;->zzG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b12

    .line 332
    invoke-virtual {v7, v5, v6}, Lcom/google/android/gms/internal/measurement/zzgc;->zzK(J)Lcom/google/android/gms/internal/measurement/zzgc;

    goto :goto_b29

    .line 333
    :cond_b12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v3

    .line 334
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzeu;->zzk()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v3

    const-string v8, "Did not find measurement config or missing version info. appId"

    iget-object v9, v4, Lcom/google/android/gms/measurement/internal/zzld;->zza:Lcom/google/android/gms/internal/measurement/zzgd;

    .line 335
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzgd;->zzy()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 336
    invoke-virtual {v3, v8, v9}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 332
    :goto_b29
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 338
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 339
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaD()Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzgd;

    .line 340
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 341
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzkt;->zzW()V

    .line 342
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgd;->zzy()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 344
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgd;->zzbg()Z

    move-result v8

    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    .line 345
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzz()V

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 346
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzge;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object v8

    .line 347
    invoke-interface {v8}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v8

    .line 348
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgd;->zzk()J

    move-result-wide v10

    iget-object v12, v3, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 349
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzge;->zzf()Lcom/google/android/gms/measurement/internal/zzag;

    .line 348
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzag;->zzA()J

    move-result-wide v12

    sub-long v12, v8, v12

    cmp-long v10, v10, v12

    if-ltz v10, :cond_b7d

    .line 350
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgd;->zzk()J

    move-result-wide v10

    iget-object v12, v3, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 351
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzge;->zzf()Lcom/google/android/gms/measurement/internal/zzag;

    .line 350
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzag;->zzA()J

    move-result-wide v12

    add-long/2addr v12, v8

    cmp-long v10, v10, v12

    if-lez v10, :cond_ba0

    :cond_b7d
    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 352
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v10

    .line 353
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzeu;->zzk()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v10

    const-string v11, "Storing bundle outside of the max uploading time span. appId, now, timestamp"

    .line 354
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgd;->zzy()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 355
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 356
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgd;->zzk()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 357
    invoke-virtual {v10, v11, v12, v8, v9}, Lcom/google/android/gms/measurement/internal/zzes;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 358
    :cond_ba0
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zzbx()[B

    move-result-object v8
    :try_end_ba4
    .catchall {:try_start_7d9 .. :try_end_ba4} :catchall_d14

    :try_start_ba4
    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzks;->zzf:Lcom/google/android/gms/measurement/internal/zzlg;

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzlg;->zzi:Lcom/google/android/gms/measurement/internal/zzli;

    .line 359
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 360
    invoke-virtual {v9, v8}, Lcom/google/android/gms/measurement/internal/zzli;->zzy([B)[B

    move-result-object v8
    :try_end_baf
    .catch Ljava/io/IOException; {:try_start_ba4 .. :try_end_baf} :catch_c40
    .catchall {:try_start_ba4 .. :try_end_baf} :catchall_d14

    :try_start_baf
    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 365
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v9

    .line 366
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v9

    const-string v10, "Saving bundle, size"

    array-length v11, v8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v9, Landroid/content/ContentValues;

    .line 367
    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v10, "app_id"

    .line 368
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgd;->zzy()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "bundle_end_timestamp"

    .line 369
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgd;->zzk()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v10, "data"

    .line 370
    invoke-virtual {v9, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v8, "has_realtime"

    .line 371
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 372
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgd;->zzbm()Z

    move-result v8

    if-eqz v8, :cond_bff

    const-string v8, "retry_count"

    .line 373
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgd;->zze()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_bff
    .catchall {:try_start_baf .. :try_end_bff} :catchall_d14

    .line 374
    :cond_bff
    :try_start_bff
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzh()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const-string v10, "queue"

    .line 375
    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    cmp-long v5, v8, v5

    if-nez v5, :cond_c59

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 376
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v5

    .line 377
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v5

    const-string v6, "Failed to insert bundle (got -1). appId"

    .line 378
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgd;->zzy()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_c25
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_bff .. :try_end_c25} :catch_c26
    .catchall {:try_start_bff .. :try_end_c25} :catchall_d14

    goto :goto_c59

    .line 364
    :catch_c26
    move-exception v0

    move-object v5, v0

    :try_start_c28
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 379
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v3

    .line 380
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v3

    const-string v6, "Error storing bundle. appId"

    .line 381
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgd;->zzy()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v6, v7, v5}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_c59

    .line 225
    :catch_c40
    move-exception v0

    move-object v5, v0

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 361
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v3

    .line 362
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v3

    const-string v6, "Data loss. Failed to serialize bundle. appId"

    .line 363
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgd;->zzy()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 364
    invoke-virtual {v3, v6, v7, v5}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 378
    :cond_c59
    :goto_c59
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 382
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzld;->zzb:Ljava/util/List;

    .line 383
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 385
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzkt;->zzW()V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "rowid in ("

    .line 386
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 387
    :goto_c71
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_c8e

    if-eqz v6, :cond_c7e

    const-string v7, ","

    .line 388
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    :cond_c7e
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_c71

    :cond_c8e
    const-string v6, ")"

    .line 390
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzh()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "raw_events"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 392
    const/4 v8, 0x0

    invoke-virtual {v6, v7, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 393
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_cc3

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 394
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v3

    .line 395
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v3

    const-string v6, "Deleted fewer rows from raw events table than expected"

    .line 396
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 397
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 398
    invoke-virtual {v3, v6, v5, v4}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_cc3
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 399
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 400
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzh()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_ccc
    .catchall {:try_start_c28 .. :try_end_ccc} :catchall_d14

    :try_start_ccc
    const-string v5, "delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    .line 401
    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_cda
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ccc .. :try_end_cda} :catch_cdb
    .catchall {:try_start_ccc .. :try_end_cda} :catchall_d14

    goto :goto_cf0

    .line 381
    :catch_cdb
    move-exception v0

    move-object v4, v0

    :try_start_cdd
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 402
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v3

    .line 403
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v3

    const-string v5, "Failed to remove unused event metadata. appId"

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 404
    invoke-virtual {v3, v5, v2, v4}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 401
    :goto_cf0
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 405
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 406
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzC()V
    :try_end_cf8
    .catchall {:try_start_cdd .. :try_end_cf8} :catchall_d14

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 8
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzx()V

    const/4 v2, 0x1

    return v2

    .line 5
    :cond_d02
    :goto_d02
    :try_start_d02
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 6
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzC()V
    :try_end_d0a
    .catchall {:try_start_d02 .. :try_end_d0a} :catchall_d14

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 8
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzx()V

    const/4 v2, 0x0

    return v2

    .line 170
    :catchall_d14
    move-exception v0

    move-object v2, v0

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 8
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 9
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzx()V

    .line 407
    throw v2

    nop

    :pswitch_data_d20
    .packed-switch 0x17333
        :pswitch_1a0
    .end packed-switch

    :pswitch_data_d26
    .packed-switch 0x0
        :pswitch_1bd
    .end packed-switch
.end method

.method private final zzai()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaB()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzB()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzF()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_27

    :cond_25
    const/4 v0, 0x0

    return v0

    :cond_27
    :goto_27
    const/4 v0, 0x1

    return v0
.end method

.method private final zzaj(Lcom/google/android/gms/internal/measurement/zzfs;Lcom/google/android/gms/internal/measurement/zzfs;)Z
    .registers 11

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfs;->zzo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzi:Lcom/google/android/gms/measurement/internal/zzli;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaD()Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzft;

    const-string v2, "_sc"

    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/zzli;->zzB(Lcom/google/android/gms/internal/measurement/zzft;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_23

    move-object v0, v2

    goto :goto_27

    .line 17
    :cond_23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfx;->zzh()Ljava/lang/String;

    move-result-object v0

    .line 4
    :goto_27
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzi:Lcom/google/android/gms/measurement/internal/zzli;

    .line 5
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaD()Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzft;

    const-string v4, "_pc"

    invoke-static {v3, v4}, Lcom/google/android/gms/measurement/internal/zzli;->zzB(Lcom/google/android/gms/internal/measurement/zzft;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;

    move-result-object v3

    if-nez v3, :cond_3b

    goto :goto_3f

    .line 17
    :cond_3b
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfx;->zzh()Ljava/lang/String;

    move-result-object v2

    .line 6
    :goto_3f
    if-eqz v2, :cond_b8

    .line 7
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfs;->zzo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzi:Lcom/google/android/gms/measurement/internal/zzli;

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaD()Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzft;

    const-string v1, "_et"

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzli;->zzB(Lcom/google/android/gms/internal/measurement/zzft;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;

    move-result-object v0

    if-eqz v0, :cond_b6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfx;->zzw()Z

    move-result v2

    if-eqz v2, :cond_b6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfx;->zzd()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_76

    goto :goto_b6

    :cond_76
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfx;->zzd()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzi:Lcom/google/android/gms/measurement/internal/zzli;

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 13
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaD()Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzft;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzli;->zzB(Lcom/google/android/gms/internal/measurement/zzft;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfx;

    move-result-object v0

    if-eqz v0, :cond_99

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfx;->zzd()J

    move-result-wide v6

    cmp-long v4, v6, v4

    if-lez v4, :cond_99

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfx;->zzd()J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_9a

    .line 17
    :cond_99
    nop

    .line 13
    :goto_9a
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzi:Lcom/google/android/gms/measurement/internal/zzli;

    .line 14
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 15
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p2, v1, v0}, Lcom/google/android/gms/measurement/internal/zzli;->zzz(Lcom/google/android/gms/internal/measurement/zzfs;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzi:Lcom/google/android/gms/measurement/internal/zzli;

    .line 16
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 17
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "_fr"

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzli;->zzz(Lcom/google/android/gms/internal/measurement/zzfs;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    :cond_b6
    :goto_b6
    const/4 p1, 0x1

    return p1

    .line 17
    :cond_b8
    const/4 p1, 0x0

    return p1
.end method

.method private static final zzak(Lcom/google/android/gms/measurement/internal/zzq;)Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzq;->zzb:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzq;->zzq:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method private static final zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;
    .registers 3

    .line 1
    if-eqz p0, :cond_21

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkt;->zzY()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2
    return-object p0

    .line 1
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Component not initialized: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :cond_21
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Upload Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static bridge synthetic zzp(Lcom/google/android/gms/measurement/internal/zzlg;)Lcom/google/android/gms/measurement/internal/zzge;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzn:Lcom/google/android/gms/measurement/internal/zzge;

    return-object p0
.end method

.method public static zzt(Landroid/content/Context;)Lcom/google/android/gms/measurement/internal/zzlg;
    .registers 4

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzlg;->zzb:Lcom/google/android/gms/measurement/internal/zzlg;

    if-nez v0, :cond_2d

    const-class v0, Lcom/google/android/gms/measurement/internal/zzlg;

    monitor-enter v0

    :try_start_11
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzb:Lcom/google/android/gms/measurement/internal/zzlg;

    if-nez v1, :cond_28

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzlh;

    .line 3
    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzlh;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/measurement/internal/zzlh;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzlg;

    .line 5
    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/measurement/internal/zzlg;-><init>(Lcom/google/android/gms/measurement/internal/zzlh;Lcom/google/android/gms/measurement/internal/zzge;)V

    sput-object v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzb:Lcom/google/android/gms/measurement/internal/zzlg;

    .line 6
    :cond_28
    monitor-exit v0

    goto :goto_2d

    :catchall_2a
    move-exception p0

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_11 .. :try_end_2c} :catchall_2a

    throw p0

    :cond_2d
    :goto_2d
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzb:Lcom/google/android/gms/measurement/internal/zzlg;

    return-object p0
.end method

.method static bridge synthetic zzy(Lcom/google/android/gms/measurement/internal/zzlg;Lcom/google/android/gms/measurement/internal/zzlh;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaB()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzfm;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzfm;-><init>(Lcom/google/android/gms/measurement/internal/zzlg;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzm:Lcom/google/android/gms/measurement/internal/zzfm;

    .line 2
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzam;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzam;-><init>(Lcom/google/android/gms/measurement/internal/zzlg;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkt;->zzX()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzg()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzc:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzaf;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzag;->zzq(Lcom/google/android/gms/measurement/internal/zzaf;)V

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzka;

    .line 5
    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzka;-><init>(Lcom/google/android/gms/measurement/internal/zzlg;)V

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkt;->zzX()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzk:Lcom/google/android/gms/measurement/internal/zzka;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzaa;

    .line 7
    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzaa;-><init>(Lcom/google/android/gms/measurement/internal/zzlg;)V

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkt;->zzX()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzh:Lcom/google/android/gms/measurement/internal/zzaa;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzio;

    .line 9
    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzio;-><init>(Lcom/google/android/gms/measurement/internal/zzlg;)V

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkt;->zzX()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzj:Lcom/google/android/gms/measurement/internal/zzio;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzkr;

    .line 11
    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzkr;-><init>(Lcom/google/android/gms/measurement/internal/zzlg;)V

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkt;->zzX()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzg:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 13
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzfc;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzfc;-><init>(Lcom/google/android/gms/measurement/internal/zzlg;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzf:Lcom/google/android/gms/measurement/internal/zzfc;

    iget p1, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzr:I

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzs:I

    if-eq p1, v0, :cond_75

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzr:I

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzs:I

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 18
    const-string v2, "Not all upload components initialized"

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_75
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzo:Z

    return-void
.end method


# virtual methods
.method final zzA()V
    .registers 10

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaB()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzB()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzp:Z

    if-nez v0, :cond_12a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzp:Z

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzZ()Z

    move-result v1

    if-eqz v1, :cond_12a

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzx:Ljava/nio/channels/FileChannel;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaB()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    const-wide/16 v2, 0x0

    const-string v4, "Bad channel to read from"

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-eqz v1, :cond_69

    .line 5
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v7

    if-nez v7, :cond_2f

    goto :goto_69

    .line 40
    :cond_2f
    nop

    .line 7
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 8
    :try_start_34
    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 9
    invoke-virtual {v1, v7}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    if-eq v1, v5, :cond_52

    const/4 v7, -0x1

    if-eq v1, v7, :cond_51

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzeu;->zzk()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v7

    const-string v8, "Unexpected data length. Bytes read"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_51
    goto :goto_74

    .line 11
    :cond_52
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 12
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_59} :catch_5a

    goto :goto_74

    .line 32
    :catch_5a
    move-exception v1

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v7

    const-string v8, "Failed to read from channel"

    invoke-virtual {v7, v8, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_74

    .line 6
    :cond_69
    :goto_69
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    :goto_74
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzn:Lcom/google/android/gms/measurement/internal/zzge;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzge;->zzh()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzel;->zzi()I

    move-result v1

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaB()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    if-le v6, v1, :cond_9d

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    .line 18
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 20
    const-string v3, "Panic: can\'t downgrade version. Previous, current version"

    invoke-virtual {v0, v3, v2, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_9d
    if-ge v6, v1, :cond_12a

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzx:Ljava/nio/channels/FileChannel;

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaB()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    if-eqz v7, :cond_109

    .line 22
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v8

    if-nez v8, :cond_b1

    goto :goto_109

    .line 37
    :cond_b1
    nop

    .line 24
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 25
    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 26
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 27
    :try_start_bc
    invoke-virtual {v7, v2, v3}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 28
    invoke-virtual {v7, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 29
    invoke-virtual {v7, v0}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 30
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_e4

    .line 31
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v2, "Error writing to channel. Bytes written"

    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_e4} :catch_fa

    .line 38
    :cond_e4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    .line 40
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Storage version upgraded. Previous, current version"

    invoke-virtual {v0, v3, v2, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 12
    :catch_fa
    move-exception v0

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    const-string v3, "Failed to write to channel"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_114

    .line 23
    :cond_109
    :goto_109
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    .line 33
    :goto_114
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    .line 35
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 37
    const-string v3, "Storage version upgrade failed. Previous, current version"

    invoke-virtual {v0, v3, v2, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 12
    :cond_12a
    return-void
.end method

.method final zzB()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzo:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UploadController is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final zzC(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzgc;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzc:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzk(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 3
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzgc;->zzi(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzgc;

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzc:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzv(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzgc;->zzp()Lcom/google/android/gms/internal/measurement/zzgc;

    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzc:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzy(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_52

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzg()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzeh;->zzar:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/measurement/internal/zzag;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzgc;->zzas()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_52

    .line 12
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_52

    .line 13
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzgc;->zzY(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgc;

    goto :goto_52

    .line 15
    :cond_4f
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzgc;->zzu()Lcom/google/android/gms/internal/measurement/zzgc;

    .line 14
    :cond_52
    :goto_52
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzc:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 16
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 17
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzz(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 18
    const-string v0, "_id"

    invoke-static {p2, v0}, Lcom/google/android/gms/measurement/internal/zzli;->zza(Lcom/google/android/gms/internal/measurement/zzgc;Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_68

    .line 19
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzgc;->zzB(I)Lcom/google/android/gms/internal/measurement/zzgc;

    :cond_68
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzc:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 20
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 21
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzx(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 22
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzgc;->zzq()Lcom/google/android/gms/internal/measurement/zzgc;

    :cond_76
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzc:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 23
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 24
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzu(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 25
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzgc;->zzn()Lcom/google/android/gms/internal/measurement/zzgc;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzC:Ljava/util/Map;

    .line 26
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzlf;

    if-eqz v0, :cond_a7

    iget-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzlf;->zzb:J

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzg()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzeh;->zzT:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v3, p1, v4}, Lcom/google/android/gms/measurement/internal/zzag;->zzi(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_b2

    :cond_a7
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzlf;

    .line 29
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/measurement/internal/zzlf;-><init>(Lcom/google/android/gms/measurement/internal/zzlg;Lcom/google/android/gms/measurement/internal/zzle;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzC:Ljava/util/Map;

    .line 30
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b2
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzlf;->zza:Ljava/lang/String;

    .line 31
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzgc;->zzR(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgc;

    :cond_b7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzc:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 32
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 33
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzw(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c5

    .line 34
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzgc;->zzy()Lcom/google/android/gms/internal/measurement/zzgc;

    :cond_c5
    return-void
.end method

.method final zzD(Lcom/google/android/gms/measurement/internal/zzh;)V
    .registers 14

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaB()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzz()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzs()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_31

    .line 43
    :cond_1c
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzu()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0xcc

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 44
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzlg;->zzI(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    .line 2
    :cond_31
    :goto_31
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzl:Lcom/google/android/gms/measurement/internal/zzkv;

    new-instance v1, Landroid/net/Uri$Builder;

    .line 3
    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzz()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzs()Ljava/lang/String;

    move-result-object v2

    .line 7
    :cond_46
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzeh;->zze:Lcom/google/android/gms/measurement/internal/zzeg;

    .line 8
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzeh;->zzf:Lcom/google/android/gms/measurement/internal/zzeg;

    .line 9
    invoke-virtual {v5, v4}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v5, "config/app/"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual {v3, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 11
    const-string v3, "platform"

    const-string v5, "android"

    invoke-virtual {v2, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzf()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzag;->zzh()J

    const-wide/32 v5, 0x12cc8

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v3, "gmp_version"

    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 14
    const-string v2, "runtime_version"

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 15
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16
    :try_start_9a
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzu()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    .line 17
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "Fetching remote configuration"

    invoke-virtual {v1, v2, v7}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzc:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 19
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 20
    invoke-virtual {v1, v7}, Lcom/google/android/gms/measurement/internal/zzfv;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzff;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzc:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 21
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 22
    invoke-virtual {v2, v7}, Lcom/google/android/gms/measurement/internal/zzfv;->zzh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_fe

    .line 23
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_dd

    .line 24
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v3, "If-Modified-Since"

    .line 25
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v1

    goto :goto_de

    .line 38
    :cond_dd
    nop

    .line 25
    :goto_de
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzc:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 26
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 27
    invoke-virtual {v1, v7}, Lcom/google/android/gms/measurement/internal/zzfv;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_fc

    if-nez v4, :cond_f5

    .line 29
    new-instance v2, Landroidx/collection/ArrayMap;

    invoke-direct {v2}, Landroidx/collection/ArrayMap;-><init>()V

    move-object v4, v2

    :cond_f5
    const-string v2, "If-None-Match"

    .line 30
    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v4

    goto :goto_ff

    .line 28
    :cond_fc
    move-object v10, v4

    goto :goto_ff

    .line 38
    :cond_fe
    move-object v10, v4

    .line 30
    :goto_ff
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzt:Z

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzd:Lcom/google/android/gms/measurement/internal/zzfa;

    .line 31
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    new-instance v11, Lcom/google/android/gms/measurement/internal/zzky;

    invoke-direct {v11, p0}, Lcom/google/android/gms/measurement/internal/zzky;-><init>(Lcom/google/android/gms/measurement/internal/zzlg;)V

    .line 32
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 33
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzkt;->zzW()V

    .line 34
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-static {v11}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v6, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 36
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzge;->zzaB()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzez;

    const/4 v9, 0x0

    .line 37
    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/measurement/internal/zzez;-><init>(Lcom/google/android/gms/measurement/internal/zzfa;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzew;)V

    .line 38
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzo(Ljava/lang/Runnable;)V
    :try_end_128
    .catch Ljava/net/MalformedURLException; {:try_start_9a .. :try_end_128} :catch_129

    return-void

    .line 39
    :catch_129
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    .line 41
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzh;->zzu()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 42
    const-string v2, "Failed to parse config URL. Not fetching. appId"

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method final zzE(Lcom/google/android/gms/measurement/internal/zzaw;Lcom/google/android/gms/measurement/internal/zzq;)V
    .registers 21

    .line 1
    move-object/from16 v1, p0

    move-object/from16 v0, p2

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaB()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzB()V

    .line 5
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    .line 6
    move-object/from16 v3, p1

    iget-wide v10, v3, Lcom/google/android/gms/measurement/internal/zzaw;->zzd:J

    .line 7
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzev;->zzb(Lcom/google/android/gms/measurement/internal/zzaw;)Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v3

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaB()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzD:Lcom/google/android/gms/measurement/internal/zziq;

    const/4 v5, 0x0

    if-eqz v4, :cond_3b

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzE:Ljava/lang/String;

    if-eqz v4, :cond_3a

    .line 9
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_37

    goto :goto_3c

    .line 114
    :cond_37
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzD:Lcom/google/android/gms/measurement/internal/zziq;

    goto :goto_3c

    :cond_3a
    goto :goto_3c

    .line 111
    :cond_3b
    nop

    .line 9
    :goto_3c
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzev;->zzd:Landroid/os/Bundle;

    .line 10
    const/4 v6, 0x0

    invoke-static {v5, v4, v6}, Lcom/google/android/gms/measurement/internal/zzlo;->zzK(Lcom/google/android/gms/measurement/internal/zziq;Landroid/os/Bundle;Z)V

    .line 11
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzev;->zza()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzi:Lcom/google/android/gms/measurement/internal/zzli;

    .line 12
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 13
    invoke-static {v3, v0}, Lcom/google/android/gms/measurement/internal/zzli;->zzA(Lcom/google/android/gms/measurement/internal/zzaw;Lcom/google/android/gms/measurement/internal/zzq;)Z

    move-result v4

    if-nez v4, :cond_52

    return-void

    .line 14
    :cond_52
    iget-boolean v4, v0, Lcom/google/android/gms/measurement/internal/zzq;->zzh:Z

    if-nez v4, :cond_5a

    .line 15
    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzd(Lcom/google/android/gms/measurement/internal/zzq;)Lcom/google/android/gms/measurement/internal/zzh;

    return-void

    .line 16
    :cond_5a
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzq;->zzt:Ljava/util/List;

    if-eqz v4, :cond_99

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzaw;->zza:Ljava/lang/String;

    .line 17
    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_87

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzaw;->zzb:Lcom/google/android/gms/measurement/internal/zzau;

    .line 18
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzau;->zzc()Landroid/os/Bundle;

    move-result-object v4

    .line 19
    const-string v5, "ga_safelisted"

    const-wide/16 v7, 0x1

    invoke-virtual {v4, v5, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzaw;

    iget-object v13, v3, Lcom/google/android/gms/measurement/internal/zzaw;->zza:Ljava/lang/String;

    new-instance v14, Lcom/google/android/gms/measurement/internal/zzau;

    .line 20
    invoke-direct {v14, v4}, Lcom/google/android/gms/measurement/internal/zzau;-><init>(Landroid/os/Bundle;)V

    iget-object v15, v3, Lcom/google/android/gms/measurement/internal/zzaw;->zzc:Ljava/lang/String;

    iget-wide v3, v3, Lcom/google/android/gms/measurement/internal/zzaw;->zzd:J

    move-object v12, v5

    move-wide/from16 v16, v3

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/zzaw;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzau;Ljava/lang/String;J)V

    goto :goto_9a

    .line 112
    :cond_87
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzc()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzaw;->zza:Ljava/lang/String;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzaw;->zzc:Ljava/lang/String;

    .line 114
    const-string v5, "Dropping non-safelisted event. appId, event name, origin"

    invoke-virtual {v0, v5, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzes;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 16
    :cond_99
    move-object v12, v3

    .line 20
    :goto_9a
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 21
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 22
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzw()V

    :try_start_a2
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 23
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 24
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 26
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzkt;->zzW()V

    const-wide/16 v4, 0x0

    cmp-long v4, v10, v4

    const/4 v5, 0x2

    const/4 v13, 0x1

    if-gez v4, :cond_d4

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 27
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v3

    .line 28
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzeu;->zzk()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v3

    const-string v7, "Invalid time querying timed out conditional properties"

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 29
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 30
    invoke-virtual {v3, v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_e4

    .line 54
    :cond_d4
    const-string v7, "active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout"

    new-array v8, v5, [Ljava/lang/String;

    aput-object v2, v8, v6

    .line 32
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v13

    .line 33
    invoke-virtual {v3, v7, v8}, Lcom/google/android/gms/measurement/internal/zzam;->zzt(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 34
    :goto_e4
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_135

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/measurement/internal/zzac;

    if-eqz v7, :cond_133

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v8

    .line 36
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v8

    const-string v9, "User property timed out"

    iget-object v14, v7, Lcom/google/android/gms/measurement/internal/zzac;->zza:Ljava/lang/String;

    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzn:Lcom/google/android/gms/measurement/internal/zzge;

    .line 37
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzge;->zzj()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v15

    iget-object v13, v7, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zzlj;

    .line 38
    iget-object v13, v13, Lcom/google/android/gms/measurement/internal/zzlj;->zzb:Ljava/lang/String;

    invoke-virtual {v15, v13}, Lcom/google/android/gms/measurement/internal/zzep;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget-object v15, v7, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zzlj;

    .line 39
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzlj;->zza()Ljava/lang/Object;

    move-result-object v15

    .line 40
    invoke-virtual {v8, v9, v14, v13, v15}, Lcom/google/android/gms/measurement/internal/zzes;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v8, v7, Lcom/google/android/gms/measurement/internal/zzac;->zzg:Lcom/google/android/gms/measurement/internal/zzaw;

    if-eqz v8, :cond_125

    new-instance v9, Lcom/google/android/gms/measurement/internal/zzaw;

    .line 41
    invoke-direct {v9, v8, v10, v11}, Lcom/google/android/gms/measurement/internal/zzaw;-><init>(Lcom/google/android/gms/measurement/internal/zzaw;J)V

    invoke-virtual {v1, v9, v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzY(Lcom/google/android/gms/measurement/internal/zzaw;Lcom/google/android/gms/measurement/internal/zzq;)V

    :cond_125
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 42
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zzlj;

    .line 43
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzlj;->zzb:Ljava/lang/String;

    invoke-virtual {v8, v2, v7}, Lcom/google/android/gms/measurement/internal/zzam;->zza(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x1

    goto :goto_e8

    .line 34
    :cond_133
    const/4 v13, 0x1

    goto :goto_e8

    .line 43
    :cond_135
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 44
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 45
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 47
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzkt;->zzW()V

    if-gez v4, :cond_161

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 48
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v3

    .line 49
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzeu;->zzk()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v3

    const-string v7, "Invalid time querying expired conditional properties"

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 50
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 51
    invoke-virtual {v3, v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_172

    .line 83
    :cond_161
    const-string v7, "active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live"

    new-array v8, v5, [Ljava/lang/String;

    aput-object v2, v8, v6

    .line 53
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x1

    aput-object v9, v8, v13

    .line 54
    invoke-virtual {v3, v7, v8}, Lcom/google/android/gms/measurement/internal/zzam;->zzt(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 52
    :goto_172
    new-instance v7, Ljava/util/ArrayList;

    .line 55
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 56
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_17f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1d3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/measurement/internal/zzac;

    if-eqz v8, :cond_1d1

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v9

    .line 58
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v9

    const-string v13, "User property expired"

    iget-object v14, v8, Lcom/google/android/gms/measurement/internal/zzac;->zza:Ljava/lang/String;

    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzn:Lcom/google/android/gms/measurement/internal/zzge;

    .line 59
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzge;->zzj()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v15

    iget-object v5, v8, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zzlj;

    .line 60
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzlj;->zzb:Ljava/lang/String;

    invoke-virtual {v15, v5}, Lcom/google/android/gms/measurement/internal/zzep;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v15, v8, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zzlj;

    .line 61
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzlj;->zza()Ljava/lang/Object;

    move-result-object v15

    .line 62
    invoke-virtual {v9, v13, v14, v5, v15}, Lcom/google/android/gms/measurement/internal/zzes;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 63
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    iget-object v9, v8, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zzlj;

    .line 64
    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzlj;->zzb:Ljava/lang/String;

    invoke-virtual {v5, v2, v9}, Lcom/google/android/gms/measurement/internal/zzam;->zzA(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v8, Lcom/google/android/gms/measurement/internal/zzac;->zzk:Lcom/google/android/gms/measurement/internal/zzaw;

    if-eqz v5, :cond_1c3

    .line 65
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1c3
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 66
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zzlj;

    .line 67
    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzlj;->zzb:Ljava/lang/String;

    invoke-virtual {v5, v2, v8}, Lcom/google/android/gms/measurement/internal/zzam;->zza(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x2

    goto :goto_17f

    .line 56
    :cond_1d1
    const/4 v5, 0x2

    goto :goto_17f

    .line 68
    :cond_1d3
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1ec

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/measurement/internal/zzaw;

    new-instance v7, Lcom/google/android/gms/measurement/internal/zzaw;

    .line 69
    invoke-direct {v7, v5, v10, v11}, Lcom/google/android/gms/measurement/internal/zzaw;-><init>(Lcom/google/android/gms/measurement/internal/zzaw;J)V

    invoke-virtual {v1, v7, v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzY(Lcom/google/android/gms/measurement/internal/zzaw;Lcom/google/android/gms/measurement/internal/zzq;)V

    goto :goto_1d7

    :cond_1ec
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 70
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    iget-object v5, v12, Lcom/google/android/gms/measurement/internal/zzaw;->zza:Ljava/lang/String;

    .line 71
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 74
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzkt;->zzW()V

    if-gez v4, :cond_227

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 75
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v4

    .line 76
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzeu;->zzk()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v4

    const-string v6, "Invalid time querying triggered conditional properties"

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 77
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzge;->zzj()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v3

    .line 78
    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzep;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 79
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 80
    invoke-virtual {v4, v6, v2, v3, v5}, Lcom/google/android/gms/measurement/internal/zzes;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_23c

    .line 110
    :cond_227
    const-string v4, "active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    aput-object v2, v7, v6

    const/4 v2, 0x1

    aput-object v5, v7, v2

    .line 82
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v7, v5

    .line 83
    invoke-virtual {v3, v4, v7}, Lcom/google/android/gms/measurement/internal/zzam;->zzt(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 81
    :goto_23c
    new-instance v13, Ljava/util/ArrayList;

    .line 84
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v13, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_249
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2dd

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lcom/google/android/gms/measurement/internal/zzac;

    if-eqz v14, :cond_2da

    iget-object v3, v14, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zzlj;

    new-instance v15, Lcom/google/android/gms/measurement/internal/zzll;

    iget-object v4, v14, Lcom/google/android/gms/measurement/internal/zzac;->zza:Ljava/lang/String;

    .line 86
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, v14, Lcom/google/android/gms/measurement/internal/zzac;->zzb:Ljava/lang/String;

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzlj;->zzb:Ljava/lang/String;

    .line 87
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzlj;->zza()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v3, v15

    move-wide v7, v10

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/measurement/internal/zzll;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 88
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 89
    invoke-virtual {v3, v15}, Lcom/google/android/gms/measurement/internal/zzam;->zzL(Lcom/google/android/gms/measurement/internal/zzll;)Z

    move-result v3

    if-eqz v3, :cond_29e

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v3

    .line 91
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v3

    const-string v4, "User property triggered"

    iget-object v5, v14, Lcom/google/android/gms/measurement/internal/zzac;->zza:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzn:Lcom/google/android/gms/measurement/internal/zzge;

    .line 92
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzge;->zzj()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v6

    iget-object v7, v15, Lcom/google/android/gms/measurement/internal/zzll;->zzc:Ljava/lang/String;

    .line 93
    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzep;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v15, Lcom/google/android/gms/measurement/internal/zzll;->zze:Ljava/lang/Object;

    .line 94
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzes;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2bf

    .line 95
    :cond_29e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v3

    .line 96
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v3

    const-string v4, "Too many active user properties, ignoring"

    iget-object v5, v14, Lcom/google/android/gms/measurement/internal/zzac;->zza:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzn:Lcom/google/android/gms/measurement/internal/zzge;

    .line 97
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzge;->zzj()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v6

    iget-object v7, v15, Lcom/google/android/gms/measurement/internal/zzll;->zzc:Ljava/lang/String;

    .line 98
    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzep;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v15, Lcom/google/android/gms/measurement/internal/zzll;->zze:Ljava/lang/Object;

    .line 99
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzes;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 94
    :goto_2bf
    iget-object v3, v14, Lcom/google/android/gms/measurement/internal/zzac;->zzi:Lcom/google/android/gms/measurement/internal/zzaw;

    if-eqz v3, :cond_2c6

    .line 100
    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2c6
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzlj;

    .line 101
    invoke-direct {v3, v15}, Lcom/google/android/gms/measurement/internal/zzlj;-><init>(Lcom/google/android/gms/measurement/internal/zzll;)V

    iput-object v3, v14, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zzlj;

    const/4 v3, 0x1

    iput-boolean v3, v14, Lcom/google/android/gms/measurement/internal/zzac;->zze:Z

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 102
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 103
    invoke-virtual {v4, v14}, Lcom/google/android/gms/measurement/internal/zzam;->zzK(Lcom/google/android/gms/measurement/internal/zzac;)Z

    goto/16 :goto_249

    .line 85
    :cond_2da
    const/4 v3, 0x1

    goto/16 :goto_249

    .line 104
    :cond_2dd
    invoke-virtual {v1, v12, v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzY(Lcom/google/android/gms/measurement/internal/zzaw;Lcom/google/android/gms/measurement/internal/zzq;)V

    .line 105
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2e4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzaw;

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzaw;

    .line 106
    invoke-direct {v4, v3, v10, v11}, Lcom/google/android/gms/measurement/internal/zzaw;-><init>(Lcom/google/android/gms/measurement/internal/zzaw;J)V

    invoke-virtual {v1, v4, v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzY(Lcom/google/android/gms/measurement/internal/zzaw;Lcom/google/android/gms/measurement/internal/zzq;)V

    goto :goto_2e4

    :cond_2f9
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 107
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 108
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzC()V
    :try_end_301
    .catchall {:try_start_a2 .. :try_end_301} :catchall_30a

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 109
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 110
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzx()V

    return-void

    .line 114
    :catchall_30a
    move-exception v0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 109
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 110
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzx()V

    .line 111
    throw v0
.end method

.method final zzF(Lcom/google/android/gms/measurement/internal/zzaw;Ljava/lang/String;)V
    .registers 40

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 2
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzj(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v15

    if-eqz v15, :cond_c5

    .line 3
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzh;->zzx()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto/16 :goto_c5

    .line 5
    :cond_1d
    invoke-direct {v0, v15}, Lcom/google/android/gms/measurement/internal/zzlg;->zzad(Lcom/google/android/gms/measurement/internal/zzh;)Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_3f

    .line 6
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzaw;->zza:Ljava/lang/String;

    const-string v4, "_ui"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_57

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzk()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Could not find package. appId"

    invoke-virtual {v2, v5, v4}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_57

    .line 8
    :cond_3f
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_57

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 30
    const-string v3, "App version does not match; dropping event. appId"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 9
    :cond_57
    :goto_57
    new-instance v14, Lcom/google/android/gms/measurement/internal/zzq;

    move-object v2, v14

    .line 10
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzh;->zzz()Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzh;->zzx()Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzh;->zzb()J

    move-result-wide v6

    .line 13
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzh;->zzw()Ljava/lang/String;

    move-result-object v8

    .line 14
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzh;->zzm()J

    move-result-wide v9

    .line 15
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzh;->zzj()J

    move-result-wide v11

    const/4 v13, 0x0

    .line 16
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzh;->zzal()Z

    move-result v16

    move-object/from16 v36, v14

    move/from16 v14, v16

    const/16 v16, 0x0

    move-object/from16 v31, v15

    move/from16 v15, v16

    .line 17
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/gms/measurement/internal/zzh;->zzy()Ljava/lang/String;

    move-result-object v16

    .line 18
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/gms/measurement/internal/zzh;->zza()J

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    .line 19
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/gms/measurement/internal/zzh;->zzak()Z

    move-result v22

    const/16 v23, 0x0

    .line 20
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/gms/measurement/internal/zzh;->zzs()Ljava/lang/String;

    move-result-object v24

    .line 21
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/gms/measurement/internal/zzh;->zzr()Ljava/lang/Boolean;

    move-result-object v25

    .line 22
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/gms/measurement/internal/zzh;->zzk()J

    move-result-wide v26

    .line 23
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/gms/measurement/internal/zzh;->zzD()Ljava/util/List;

    move-result-object v28

    const/16 v29, 0x0

    .line 24
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzlg;->zzh(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/gms/measurement/internal/zzai;->zzh()Ljava/lang/String;

    move-result-object v30

    .line 25
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/gms/measurement/internal/zzh;->zzan()Z

    move-result v33

    .line 26
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/gms/measurement/internal/zzh;->zzq()J

    move-result-wide v34

    const-string v31, ""

    const/16 v32, 0x0

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v35}, Lcom/google/android/gms/measurement/internal/zzq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 27
    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzG(Lcom/google/android/gms/measurement/internal/zzaw;Lcom/google/android/gms/measurement/internal/zzq;)V

    return-void

    .line 4
    :cond_c5
    :goto_c5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzc()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "No app data available; dropping event"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final zzG(Lcom/google/android/gms/measurement/internal/zzaw;Lcom/google/android/gms/measurement/internal/zzq;)V
    .registers 11

    .line 1
    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzev;->zzb(Lcom/google/android/gms/measurement/internal/zzaw;)Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzv()Lcom/google/android/gms/measurement/internal/zzlo;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzev;->zzd:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 4
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 5
    iget-object v3, p2, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzi(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzlo;->zzL(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzv()Lcom/google/android/gms/measurement/internal/zzlo;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzg()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzag;->zzd(Ljava/lang/String;)I

    move-result v1

    .line 9
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzlo;->zzN(Lcom/google/android/gms/measurement/internal/zzev;I)V

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzev;->zza()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object p1

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaw;->zza:Ljava/lang/String;

    .line 11
    const-string v1, "_cmp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    goto :goto_6a

    .line 18
    :cond_3d
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaw;->zzb:Lcom/google/android/gms/measurement/internal/zzau;

    .line 12
    const-string v1, "_cis"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13
    const-string v1, "referrer API v2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaw;->zzb:Lcom/google/android/gms/measurement/internal/zzau;

    .line 14
    const-string v1, "gclid"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 15
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6a

    .line 16
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzlj;

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/zzaw;->zzd:J

    const-string v7, "auto"

    const-string v3, "_lgclid"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzlj;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzW(Lcom/google/android/gms/measurement/internal/zzlj;Lcom/google/android/gms/measurement/internal/zzq;)V

    .line 18
    :cond_6a
    :goto_6a
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzE(Lcom/google/android/gms/measurement/internal/zzaw;Lcom/google/android/gms/measurement/internal/zzq;)V

    return-void
.end method

.method final zzH()V
    .registers 2

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzs:I

    return-void
.end method

.method final zzI(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .registers 13

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaB()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzB()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p4, :cond_12

    :try_start_10
    new-array p4, v0, [B

    .line 4
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "onConfigFetched. Response size"

    array-length v3, p4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzam;->zzw()V
    :try_end_2c
    .catchall {:try_start_10 .. :try_end_2c} :catchall_180

    :try_start_2c
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 8
    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzam;->zzj(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v1

    const/16 v2, 0xc8

    const/16 v4, 0x130

    if-eq p2, v2, :cond_42

    const/16 v2, 0xcc

    if-eq p2, v2, :cond_42

    if-ne p2, v4, :cond_46

    move p2, v4

    :cond_42
    if-nez p3, :cond_46

    const/4 v2, 0x1

    goto :goto_47

    .line 46
    :cond_46
    move v2, v0

    .line 8
    :goto_47
    if-nez v1, :cond_5c

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object p2

    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzk()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p2

    const-string p3, "App does not exist in onConfigFetched. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 11
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_160

    .line 52
    :cond_5c
    const/16 v5, 0x194

    if-nez v2, :cond_ba

    if-ne p2, v5, :cond_63

    goto :goto_ba

    .line 37
    :cond_63
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object p4

    invoke-interface {p4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p4

    invoke-virtual {v1, p4, p5}, Lcom/google/android/gms/measurement/internal/zzh;->zzV(J)V

    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 38
    invoke-static {p4}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 39
    invoke-virtual {p4, v1}, Lcom/google/android/gms/measurement/internal/zzam;->zzD(Lcom/google/android/gms/measurement/internal/zzh;)V

    .line 40
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p4

    const-string p5, "Fetching config failed. code, error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, p5, v1, p3}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzc:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 41
    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 42
    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzl(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzk:Lcom/google/android/gms/measurement/internal/zzka;

    .line 43
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzka;->zzd:Lcom/google/android/gms/measurement/internal/zzff;

    .line 44
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/measurement/internal/zzff;->zzb(J)V

    const/16 p1, 0x1f7

    if-eq p2, p1, :cond_a6

    const/16 p1, 0x1ad

    if-ne p2, p1, :cond_b5

    :cond_a6
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzk:Lcom/google/android/gms/measurement/internal/zzka;

    .line 45
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzka;->zzb:Lcom/google/android/gms/measurement/internal/zzff;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzff;->zzb(J)V

    .line 46
    :cond_b5
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzag()V

    goto/16 :goto_160

    .line 52
    :cond_ba
    :goto_ba
    const/4 p3, 0x0

    if-eqz p5, :cond_c6

    const-string v2, "Last-Modified"

    .line 12
    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    goto :goto_c7

    .line 22
    :cond_c6
    move-object v2, p3

    .line 12
    :goto_c7
    if-eqz v2, :cond_d6

    .line 13
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_d6

    .line 14
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_d7

    .line 22
    :cond_d6
    move-object v2, p3

    .line 14
    :goto_d7
    if-eqz p5, :cond_e2

    const-string v6, "ETag"

    .line 15
    invoke-interface {p5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/List;

    goto :goto_e3

    .line 22
    :cond_e2
    move-object p5, p3

    .line 15
    :goto_e3
    if-eqz p5, :cond_f2

    .line 16
    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_f2

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    goto :goto_f3

    .line 22
    :cond_f2
    move-object p5, p3

    .line 16
    :goto_f3
    if-eq p2, v5, :cond_101

    if-ne p2, v4, :cond_f8

    goto :goto_101

    .line 32
    :cond_f8
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzc:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 21
    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 22
    invoke-virtual {p3, p1, p4, v2, p5}, Lcom/google/android/gms/measurement/internal/zzfv;->zzt(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z

    goto :goto_114

    .line 16
    :cond_101
    :goto_101
    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzc:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 17
    invoke-static {p4}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 18
    invoke-virtual {p4, p1}, Lcom/google/android/gms/measurement/internal/zzfv;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzff;

    move-result-object p4

    if-nez p4, :cond_114

    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzc:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 19
    invoke-static {p4}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 20
    invoke-virtual {p4, p1, p3, p3, p3}, Lcom/google/android/gms/measurement/internal/zzfv;->zzt(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z

    .line 23
    :cond_114
    :goto_114
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {v1, p3, p4}, Lcom/google/android/gms/measurement/internal/zzh;->zzM(J)V

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 24
    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 25
    invoke-virtual {p3, v1}, Lcom/google/android/gms/measurement/internal/zzam;->zzD(Lcom/google/android/gms/measurement/internal/zzh;)V

    if-ne p2, v5, :cond_137

    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object p2

    .line 27
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzl()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p2

    const-string p3, "Config not found. Using empty config. appId"

    .line 28
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_148

    .line 29
    :cond_137
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    const-string p3, "Successfully fetched config. Got network response. code, size"

    .line 31
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 32
    invoke-virtual {p1, p3, p2, v3}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    :goto_148
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzd:Lcom/google/android/gms/measurement/internal/zzfa;

    .line 33
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 34
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfa;->zza()Z

    move-result p1

    if-eqz p1, :cond_15d

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzai()Z

    move-result p1

    if-eqz p1, :cond_15d

    .line 36
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzX()V

    goto :goto_160

    .line 35
    :cond_15d
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzag()V

    .line 11
    :goto_160
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 47
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 48
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzam;->zzC()V
    :try_end_168
    .catchall {:try_start_2c .. :try_end_168} :catchall_176

    :try_start_168
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 49
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 50
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzam;->zzx()V
    :try_end_170
    .catchall {:try_start_168 .. :try_end_170} :catchall_180

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzt:Z

    .line 52
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzae()V

    return-void

    .line 53
    :catchall_176
    move-exception p1

    :try_start_177
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 49
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 50
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzam;->zzx()V

    .line 51
    throw p1
    :try_end_180
    .catchall {:try_start_177 .. :try_end_180} :catchall_180

    .line 46
    :catchall_180
    move-exception p1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzt:Z

    .line 52
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzae()V

    .line 53
    throw p1
.end method

.method final zzJ(Z)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzag()V

    return-void
.end method

.method final zzK(ILjava/lang/Throwable;[BLjava/lang/String;)V
    .registers 13

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaB()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzB()V

    const/4 p4, 0x0

    if-nez p3, :cond_f

    :try_start_d
    new-array p3, p4, [B

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzy:Ljava/util/List;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzy:Ljava/util/List;
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_16a

    const/16 v2, 0xc8

    if-eq p1, v2, :cond_23

    const/16 v2, 0xcc

    if-ne p1, v2, :cond_122

    move p1, v2

    :cond_23
    if-nez p2, :cond_122

    :try_start_25
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzk:Lcom/google/android/gms/measurement/internal/zzka;

    .line 4
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzka;->zzc:Lcom/google/android/gms/measurement/internal/zzff;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/measurement/internal/zzff;->zzb(J)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzk:Lcom/google/android/gms/measurement/internal/zzka;

    .line 5
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzka;->zzd:Lcom/google/android/gms/measurement/internal/zzff;

    const-wide/16 v2, 0x0

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/measurement/internal/zzff;->zzb(J)V

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzag()V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object p2

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p2

    const-string v4, "Successful upload. Got network response. code, size"

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    array-length p3, p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, v4, p1, p3}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzam;->zzw()V
    :try_end_5e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_25 .. :try_end_5e} :catch_f6
    .catchall {:try_start_25 .. :try_end_5e} :catchall_16a

    .line 12
    :try_start_5e
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_62
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_bb

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;
    :try_end_6e
    .catchall {:try_start_5e .. :try_end_6e} :catchall_ec

    :try_start_6e
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 13
    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 14
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 15
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 16
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzkt;->zzW()V

    .line 17
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzam;->zzh()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/String;

    .line 18
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, p4
    :try_end_8a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6e .. :try_end_8a} :catch_ae
    .catchall {:try_start_6e .. :try_end_8a} :catchall_ec

    :try_start_8a
    const-string v4, "queue"

    const-string v5, "rowid=?"

    .line 19
    invoke-virtual {v0, v4, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_95

    goto :goto_62

    .line 20
    :cond_95
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v4, "Deleted fewer rows from queue than expected"

    invoke-direct {v0, v4}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8a .. :try_end_9d} :catch_9d
    .catchall {:try_start_8a .. :try_end_9d} :catchall_ec

    .line 23
    :catch_9d
    move-exception v0

    .line 33
    :try_start_9e
    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 21
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object p3

    .line 22
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p3

    const-string v4, "Failed to delete a bundle in a queue table"

    invoke-virtual {p3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    throw v0
    :try_end_ae
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9e .. :try_end_ae} :catch_ae
    .catchall {:try_start_9e .. :try_end_ae} :catchall_ec

    .line 34
    :catch_ae
    move-exception p3

    :try_start_af
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzz:Ljava/util/List;

    if-eqz v0, :cond_ba

    .line 24
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_ba

    goto :goto_62

    .line 33
    :cond_ba
    throw p3

    .line 20
    :cond_bb
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 25
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzam;->zzC()V
    :try_end_c3
    .catchall {:try_start_af .. :try_end_c3} :catchall_ec

    :try_start_c3
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 27
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzam;->zzx()V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzz:Ljava/util/List;

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzd:Lcom/google/android/gms/measurement/internal/zzfa;

    .line 29
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 30
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfa;->zza()Z

    move-result p1

    if-eqz p1, :cond_e2

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzai()Z

    move-result p1

    if-eqz p1, :cond_e2

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzX()V

    goto :goto_e9

    .line 46
    :cond_e2
    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzA:J

    .line 31
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzag()V

    .line 32
    :goto_e9
    iput-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zza:J

    goto :goto_164

    .line 37
    :catchall_ec
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 27
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 28
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzam;->zzx()V

    .line 34
    throw p1
    :try_end_f6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c3 .. :try_end_f6} :catch_f6
    .catchall {:try_start_c3 .. :try_end_f6} :catchall_16a

    .line 47
    :catch_f6
    move-exception p1

    .line 35
    :try_start_f7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p2

    const-string p3, "Database error while trying to delete uploaded bundles"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zza:J

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    const-string p2, "Disable upload, time"

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zza:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_164

    .line 38
    :cond_122
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object p3

    .line 39
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p3

    const-string v1, "Network upload failed. Will retry later. code, error"

    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v1, v2, p2}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzk:Lcom/google/android/gms/measurement/internal/zzka;

    .line 41
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzka;->zzd:Lcom/google/android/gms/measurement/internal/zzff;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/measurement/internal/zzff;->zzb(J)V

    const/16 p2, 0x1f7

    if-eq p1, p2, :cond_14a

    const/16 p2, 0x1ad

    if-ne p1, p2, :cond_159

    :cond_14a
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzk:Lcom/google/android/gms/measurement/internal/zzka;

    .line 42
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzka;->zzb:Lcom/google/android/gms/measurement/internal/zzff;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzff;->zzb(J)V

    :cond_159
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 43
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 44
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzy(Ljava/util/List;)V

    .line 45
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzag()V
    :try_end_164
    .catchall {:try_start_f7 .. :try_end_164} :catchall_16a

    .line 32
    :goto_164
    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzu:Z

    .line 46
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzae()V

    return-void

    .line 45
    :catchall_16a
    move-exception p1

    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzu:Z

    .line 46
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzae()V

    .line 47
    throw p1
.end method

.method final zzL(Lcom/google/android/gms/measurement/internal/zzq;)V
    .registers 25

    .line 1
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "_sysu"

    const-string v4, "_sys"

    const-string v5, "com.android.vending"

    const-string v6, "_pfo"

    const-string v0, "_npa"

    const-string v7, "_uwa"

    const-string v8, "app_id=?"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaB()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzB()V

    .line 3
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzlg;->zzak(Lcom/google/android/gms/measurement/internal/zzq;)Z

    move-result v9

    if-eqz v9, :cond_590

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 6
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 7
    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzam;->zzj(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v9

    const-wide/16 v10, 0x0

    if-eqz v9, :cond_60

    .line 8
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzz()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_60

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzq;->zzb:Ljava/lang/String;

    .line 9
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_60

    .line 10
    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzh;->zzM(J)V

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 11
    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 12
    invoke-virtual {v12, v9}, Lcom/google/android/gms/measurement/internal/zzam;->zzD(Lcom/google/android/gms/measurement/internal/zzh;)V

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzc:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 13
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 14
    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    invoke-virtual {v9, v12}, Lcom/google/android/gms/measurement/internal/zzfv;->zzm(Ljava/lang/String;)V

    .line 15
    :cond_60
    iget-boolean v9, v2, Lcom/google/android/gms/measurement/internal/zzq;->zzh:Z

    if-nez v9, :cond_68

    .line 16
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzlg;->zzd(Lcom/google/android/gms/measurement/internal/zzq;)Lcom/google/android/gms/measurement/internal/zzh;

    return-void

    .line 17
    :cond_68
    iget-wide v12, v2, Lcom/google/android/gms/measurement/internal/zzq;->zzm:J

    cmp-long v9, v12, v10

    if-nez v9, :cond_77

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object v9

    invoke-interface {v9}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v12

    goto :goto_78

    .line 37
    :cond_77
    nop

    .line 18
    :goto_78
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzn:Lcom/google/android/gms/measurement/internal/zzge;

    .line 19
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v9

    .line 20
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzaq;->zzd()V

    .line 21
    iget v9, v2, Lcom/google/android/gms/measurement/internal/zzq;->zzn:I

    const/4 v15, 0x1

    if-eqz v9, :cond_a0

    if-eq v9, v15, :cond_a0

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v16

    .line 23
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzeu;->zzk()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v14

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 24
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 25
    const-string v11, "Incorrect app type, assuming installed app. appId, appType"

    invoke-virtual {v14, v11, v10, v9}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v9, 0x0

    :cond_a0
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 26
    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 27
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzam;->zzw()V

    :try_start_a8
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 28
    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 29
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    .line 30
    invoke-virtual {v10, v11, v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzll;

    move-result-object v10

    move-object v11, v3

    move-object/from16 v20, v4

    if-eqz v10, :cond_c5

    const-string v14, "auto"

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/zzll;->zzb:Ljava/lang/String;

    .line 31
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c3

    goto :goto_c5

    :cond_c3
    move v4, v15

    goto :goto_ff

    .line 32
    :cond_c5
    :goto_c5
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzq;->zzr:Ljava/lang/Boolean;

    if-eqz v3, :cond_f9

    .line 33
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzlj;

    const-string v3, "_npa"

    .line 34
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzq;->zzr:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eq v15, v4, :cond_d8

    const-wide/16 v18, 0x0

    goto :goto_da

    .line 87
    :cond_d8
    const-wide/16 v18, 0x1

    .line 34
    :goto_da
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const-string v19, "auto"

    const/4 v4, 0x0

    move-object v14, v0

    move v4, v15

    move-object v15, v3

    move-wide/from16 v16, v12

    invoke-direct/range {v14 .. v19}, Lcom/google/android/gms/measurement/internal/zzlj;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    if-eqz v10, :cond_f5

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/zzll;->zze:Ljava/lang/Object;

    iget-object v10, v0, Lcom/google/android/gms/measurement/internal/zzlj;->zzd:Ljava/lang/Long;

    .line 35
    invoke-virtual {v3, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ff

    .line 36
    :cond_f5
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzW(Lcom/google/android/gms/measurement/internal/zzlj;Lcom/google/android/gms/measurement/internal/zzq;)V

    goto :goto_ff

    .line 87
    :cond_f9
    move v4, v15

    if-eqz v10, :cond_ff

    .line 37
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzP(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzq;)V

    .line 36
    :cond_ff
    :goto_ff
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 38
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 39
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzj(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v0

    if-eqz v0, :cond_1fc

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzv()Lcom/google/android/gms/measurement/internal/zzlo;

    move-result-object v10

    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/zzq;->zzb:Ljava/lang/String;

    .line 41
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzz()Ljava/lang/String;

    move-result-object v15

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzq;->zzq:Ljava/lang/String;

    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzs()Ljava/lang/String;

    move-result-object v4

    .line 43
    invoke-virtual {v10, v14, v15, v3, v4}, Lcom/google/android/gms/measurement/internal/zzlo;->zzao(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f7

    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v3

    .line 45
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzeu;->zzk()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v3

    const-string v4, "New GMP App Id passed in. Removing cached database data. appId"

    .line 46
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzu()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 47
    invoke-virtual {v3, v4, v10}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 48
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 49
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzu()Ljava/lang/String;

    move-result-object v4

    .line 50
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzkt;->zzW()V

    .line 51
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 52
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_14f
    .catchall {:try_start_a8 .. :try_end_14f} :catchall_586

    .line 53
    :try_start_14f
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzh()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v10, 0x1

    new-array v14, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v4, v14, v10

    const-string v10, "events"

    .line 54
    invoke-virtual {v0, v10, v8, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    const-string/jumbo v15, "user_attributes"

    .line 55
    invoke-virtual {v0, v15, v8, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v10, v15

    const-string v15, "conditional_properties"

    .line 56
    invoke-virtual {v0, v15, v8, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v10, v15

    const-string v15, "apps"

    .line 57
    invoke-virtual {v0, v15, v8, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v10, v15

    const-string v15, "raw_events"

    .line 58
    invoke-virtual {v0, v15, v8, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v10, v15

    const-string v15, "raw_events_metadata"

    .line 59
    invoke-virtual {v0, v15, v8, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v10, v15

    const-string v15, "event_filters"

    .line 60
    invoke-virtual {v0, v15, v8, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v10, v15

    const-string v15, "property_filters"

    .line 61
    invoke-virtual {v0, v15, v8, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v10, v15

    const-string v15, "audience_filter_values"

    .line 62
    invoke-virtual {v0, v15, v8, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v10, v15

    const-string v15, "consent_settings"

    .line 63
    invoke-virtual {v0, v15, v8, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v10, v15

    .line 64
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzph;->zzc()Z

    iget-object v15, v3, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 65
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzge;->zzf()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v15
    :try_end_1a8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14f .. :try_end_1a8} :catch_1dd
    .catchall {:try_start_14f .. :try_end_1a8} :catchall_586

    .line 64
    move-object/from16 v21, v11

    :try_start_1aa
    sget-object v11, Lcom/google/android/gms/measurement/internal/zzeh;->zzat:Lcom/google/android/gms/measurement/internal/zzeg;
    :try_end_1ac
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1aa .. :try_end_1ac} :catch_1d9
    .catchall {:try_start_1aa .. :try_end_1ac} :catchall_586

    move-object/from16 v22, v6

    const/4 v6, 0x0

    :try_start_1af
    invoke-virtual {v15, v6, v11}, Lcom/google/android/gms/measurement/internal/zzag;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v11

    if-eqz v11, :cond_1bd

    const-string v6, "default_event_params"

    .line 66
    invoke-virtual {v0, v6, v8, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v10, v0

    goto :goto_1be

    .line 87
    :cond_1bd
    nop

    .line 66
    :goto_1be
    if-lez v10, :cond_1d5

    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 67
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v6, "Deleted application data. app, records"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v6, v4, v8}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1d3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1af .. :try_end_1d3} :catch_1d7
    .catchall {:try_start_1af .. :try_end_1d3} :catchall_586

    const/4 v0, 0x0

    goto :goto_200

    .line 87
    :cond_1d5
    const/4 v0, 0x0

    goto :goto_200

    .line 201
    :catch_1d7
    move-exception v0

    goto :goto_1e2

    :catch_1d9
    move-exception v0

    move-object/from16 v22, v6

    goto :goto_1e2

    :catch_1dd
    move-exception v0

    move-object/from16 v22, v6

    move-object/from16 v21, v11

    :goto_1e2
    :try_start_1e2
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 69
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v3

    .line 70
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v3

    const-string v6, "Error deleting application data. appId, error"

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 71
    invoke-virtual {v3, v6, v4, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_200

    .line 43
    :cond_1f7
    move-object/from16 v22, v6

    move-object/from16 v21, v11

    goto :goto_200

    .line 39
    :cond_1fc
    move-object/from16 v22, v6

    move-object/from16 v21, v11

    .line 68
    :goto_200
    if-eqz v0, :cond_256

    .line 72
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzb()J

    move-result-wide v3

    const-wide/32 v10, -0x80000000

    cmp-long v3, v3, v10

    if-eqz v3, :cond_219

    .line 73
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzb()J

    move-result-wide v3

    iget-wide v14, v2, Lcom/google/android/gms/measurement/internal/zzq;->zzj:J

    cmp-long v3, v3, v14

    if-eqz v3, :cond_219

    const/4 v15, 0x1

    goto :goto_21a

    .line 87
    :cond_219
    const/4 v15, 0x0

    .line 74
    :goto_21a
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzx()Ljava/lang/String;

    move-result-object v3

    .line 75
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzb()J

    move-result-wide v16

    cmp-long v0, v16, v10

    if-nez v0, :cond_232

    if-eqz v3, :cond_232

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzq;->zzc:Ljava/lang/String;

    .line 76
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_232

    const/4 v0, 0x1

    goto :goto_233

    .line 87
    :cond_232
    const/4 v0, 0x0

    .line 76
    :goto_233
    or-int/2addr v0, v15

    if-eqz v0, :cond_256

    new-instance v0, Landroid/os/Bundle;

    .line 77
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "_pv"

    .line 78
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzaw;

    const-string v15, "_au"

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzau;

    invoke-direct {v4, v0}, Lcom/google/android/gms/measurement/internal/zzau;-><init>(Landroid/os/Bundle;)V

    const-string v17, "auto"

    move-object v14, v3

    move-object/from16 v16, v4

    move-wide/from16 v18, v12

    invoke-direct/range {v14 .. v19}, Lcom/google/android/gms/measurement/internal/zzaw;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzau;Ljava/lang/String;J)V

    .line 80
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzE(Lcom/google/android/gms/measurement/internal/zzaw;Lcom/google/android/gms/measurement/internal/zzq;)V

    .line 81
    :cond_256
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzlg;->zzd(Lcom/google/android/gms/measurement/internal/zzq;)Lcom/google/android/gms/measurement/internal/zzh;

    if-nez v9, :cond_26a

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 82
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 83
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    const-string v4, "_f"

    .line 84
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzam;->zzn(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const/4 v15, 0x0

    goto :goto_278

    .line 196
    :cond_26a
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 85
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 86
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    const-string v4, "_v"

    .line 87
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzam;->zzn(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const/4 v15, 0x1

    .line 84
    :goto_278
    if-nez v0, :cond_556

    const-wide/32 v3, 0x36ee80

    div-long v8, v12, v3
    :try_end_27f
    .catchall {:try_start_1e2 .. :try_end_27f} :catchall_586

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    mul-long/2addr v8, v3

    const-string v3, "_dac"

    const-string v4, "_et"

    const-string v6, "_r"

    const-string v10, "_c"

    if-nez v15, :cond_50b

    .line 101
    :try_start_28d
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzlj;

    const-string v15, "_fot"

    .line 102
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const-string v19, "auto"

    move-object v14, v0

    move-wide/from16 v16, v12

    invoke-direct/range {v14 .. v19}, Lcom/google/android/gms/measurement/internal/zzlj;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzW(Lcom/google/android/gms/measurement/internal/zzlj;Lcom/google/android/gms/measurement/internal/zzq;)V

    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaB()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzm:Lcom/google/android/gms/measurement/internal/zzfm;

    .line 105
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/gms/measurement/internal/zzfm;

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    if-eqz v0, :cond_3a6

    .line 106
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2bc

    goto/16 :goto_3a6

    .line 175
    :cond_2bc
    iget-object v9, v8, Lcom/google/android/gms/measurement/internal/zzfm;->zza:Lcom/google/android/gms/measurement/internal/zzge;

    .line 110
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzge;->zzaB()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v9

    .line 111
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 112
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfm;->zza()Z

    move-result v9

    if-nez v9, :cond_2dc

    iget-object v0, v8, Lcom/google/android/gms/measurement/internal/zzfm;->zza:Lcom/google/android/gms/measurement/internal/zzge;

    .line 113
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzi()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v5, "Install Referrer Reporter is not available"

    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    goto/16 :goto_3b5

    :cond_2dc
    new-instance v9, Lcom/google/android/gms/measurement/internal/zzfl;

    invoke-direct {v9, v8, v0}, Lcom/google/android/gms/measurement/internal/zzfl;-><init>(Lcom/google/android/gms/measurement/internal/zzfm;Ljava/lang/String;)V

    iget-object v0, v8, Lcom/google/android/gms/measurement/internal/zzfm;->zza:Lcom/google/android/gms/measurement/internal/zzge;

    .line 114
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaB()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    new-instance v0, Landroid/content/Intent;

    const-string v11, "com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE"

    .line 116
    invoke-direct {v0, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v11, Landroid/content/ComponentName;

    const-string v14, "com.google.android.finsky.externalreferrer.GetInstallReferrerService"

    .line 117
    invoke-direct {v11, v5, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v11, v8, Lcom/google/android/gms/measurement/internal/zzfm;->zza:Lcom/google/android/gms/measurement/internal/zzge;

    .line 118
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzge;->zzaw()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    if-nez v11, :cond_318

    iget-object v0, v8, Lcom/google/android/gms/measurement/internal/zzfm;->zza:Lcom/google/android/gms/measurement/internal/zzge;

    .line 119
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzm()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v5, "Failed to obtain Package Manager to verify binding conditions for Install Referrer"

    .line 121
    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    goto/16 :goto_3b5

    :cond_318
    nop

    .line 122
    const/4 v14, 0x0

    invoke-virtual {v11, v0, v14}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_396

    .line 123
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_396

    .line 127
    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 128
    iget-object v14, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v14, :cond_3b5

    .line 129
    iget-object v14, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v14, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 130
    iget-object v11, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    if-eqz v11, :cond_386

    .line 131
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_386

    .line 112
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfm;->zza()Z

    move-result v5

    if-eqz v5, :cond_386

    new-instance v5, Landroid/content/Intent;

    .line 135
    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_34b
    .catchall {:try_start_28d .. :try_end_34b} :catchall_586

    .line 136
    :try_start_34b
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v0

    iget-object v11, v8, Lcom/google/android/gms/measurement/internal/zzfm;->zza:Lcom/google/android/gms/measurement/internal/zzge;

    .line 137
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzge;->zzaw()Landroid/content/Context;

    move-result-object v11

    .line 138
    const/4 v14, 0x1

    invoke-virtual {v0, v11, v5, v9, v14}, Lcom/google/android/gms/common/stats/ConnectionTracker;->bindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iget-object v5, v8, Lcom/google/android/gms/measurement/internal/zzfm;->zza:Lcom/google/android/gms/measurement/internal/zzge;

    .line 139
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v5

    .line 140
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v5

    const-string v9, "Install Referrer Service is"

    if-eqz v0, :cond_36b

    const-string v0, "available"

    goto :goto_36d

    .line 141
    :cond_36b
    const-string v0, "not available"

    :goto_36d
    invoke-virtual {v5, v9, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_370
    .catch Ljava/lang/RuntimeException; {:try_start_34b .. :try_end_370} :catch_371
    .catchall {:try_start_34b .. :try_end_370} :catchall_586

    goto :goto_3b5

    .line 182
    :catch_371
    move-exception v0

    :try_start_372
    iget-object v5, v8, Lcom/google/android/gms/measurement/internal/zzfm;->zza:Lcom/google/android/gms/measurement/internal/zzge;

    .line 142
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v5

    .line 143
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v5

    const-string v8, "Exception occurred while binding to Install Referrer Service"

    .line 144
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-virtual {v5, v8, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3b5

    .line 141
    :cond_386
    iget-object v0, v8, Lcom/google/android/gms/measurement/internal/zzfm;->zza:Lcom/google/android/gms/measurement/internal/zzge;

    .line 132
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzk()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v5, "Play Store version 8.3.73 or higher required for Install Referrer"

    .line 134
    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    goto :goto_3b5

    :cond_396
    iget-object v0, v8, Lcom/google/android/gms/measurement/internal/zzfm;->zza:Lcom/google/android/gms/measurement/internal/zzge;

    .line 124
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzi()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v5, "Play Service for fetching Install Referrer is unavailable on device"

    .line 126
    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    goto :goto_3b5

    .line 106
    :cond_3a6
    :goto_3a6
    iget-object v0, v8, Lcom/google/android/gms/measurement/internal/zzfm;->zza:Lcom/google/android/gms/measurement/internal/zzge;

    .line 107
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzm()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v5, "Install Referrer Reporter was called with invalid app package name"

    .line 109
    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    .line 146
    :cond_3b5
    :goto_3b5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaB()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzB()V

    new-instance v5, Landroid/os/Bundle;

    .line 148
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 149
    const-wide/16 v8, 0x1

    invoke-virtual {v5, v10, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 150
    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 151
    const-wide/16 v8, 0x0

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 152
    move-object/from16 v6, v22

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 153
    move-object/from16 v10, v20

    invoke-virtual {v5, v10, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 154
    move-object/from16 v11, v21

    invoke-virtual {v5, v11, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 155
    const-wide/16 v8, 0x1

    invoke-virtual {v5, v4, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 156
    iget-boolean v0, v2, Lcom/google/android/gms/measurement/internal/zzq;->zzp:Z

    if-eqz v0, :cond_3ec

    .line 157
    invoke-virtual {v5, v3, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 158
    :cond_3ec
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 159
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 160
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 162
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkt;->zzW()V

    const-string v4, "first_open_count"

    .line 163
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzam;->zzc(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzn:Lcom/google/android/gms/measurement/internal/zzge;

    .line 164
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaw()Landroid/content/Context;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_428

    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v4, "PackageManager is null, first open report might be inaccurate. appId"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 189
    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_426
    .catchall {:try_start_372 .. :try_end_426} :catchall_586

    goto/16 :goto_4eb

    .line 200
    :cond_428
    :try_start_428
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzn:Lcom/google/android/gms/measurement/internal/zzge;

    .line 166
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaw()Landroid/content/Context;

    move-result-object v0

    .line 167
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_437
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_428 .. :try_end_437} :catch_438
    .catchall {:try_start_428 .. :try_end_437} :catchall_586

    goto :goto_44b

    .line 71
    :catch_438
    move-exception v0

    .line 168
    :try_start_439
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v4

    .line 169
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v4

    const-string v14, "Package info is null, first open report might be inaccurate. appId"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    .line 170
    invoke-virtual {v4, v14, v15, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 167
    :goto_44b
    if-eqz v0, :cond_4a6

    .line 171
    iget-wide v14, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v16, 0x0

    cmp-long v4, v14, v16

    if-eqz v4, :cond_4a6

    .line 172
    iget-wide v14, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    iget-wide v10, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v0, v14, v10

    if-eqz v0, :cond_487

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzg()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzeh;->zzad:Lcom/google/android/gms/measurement/internal/zzeg;

    const/4 v10, 0x0

    invoke-virtual {v0, v10, v4}, Lcom/google/android/gms/measurement/internal/zzag;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v0

    if-eqz v0, :cond_47f

    const-wide/16 v14, 0x0

    cmp-long v0, v8, v14

    if-nez v0, :cond_47d

    .line 174
    const-wide/16 v8, 0x1

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-wide/16 v8, 0x0

    const/4 v15, 0x0

    goto :goto_489

    .line 186
    :cond_47d
    const/4 v15, 0x0

    goto :goto_489

    :cond_47f
    nop

    .line 175
    const-wide/16 v14, 0x1

    invoke-virtual {v5, v7, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v15, 0x0

    goto :goto_489

    :cond_487
    const/4 v10, 0x0

    const/4 v15, 0x1

    .line 174
    :goto_489
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzlj;

    const-string v4, "_fi"

    const/4 v7, 0x1

    if-eq v7, v15, :cond_493

    const-wide/16 v14, 0x0

    goto :goto_495

    .line 186
    :cond_493
    const-wide/16 v14, 0x1

    .line 176
    :goto_495
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const-string v19, "auto"

    move-object v14, v0

    move-object v15, v4

    move-wide/from16 v16, v12

    invoke-direct/range {v14 .. v19}, Lcom/google/android/gms/measurement/internal/zzlj;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 177
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzW(Lcom/google/android/gms/measurement/internal/zzlj;Lcom/google/android/gms/measurement/internal/zzq;)V
    :try_end_4a5
    .catchall {:try_start_439 .. :try_end_4a5} :catchall_586

    goto :goto_4ab

    .line 175
    :cond_4a6
    move-object/from16 v20, v10

    move-object/from16 v21, v11

    const/4 v10, 0x0

    .line 177
    :goto_4ab
    :try_start_4ab
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzn:Lcom/google/android/gms/measurement/internal/zzge;

    .line 178
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaw()Landroid/content/Context;

    move-result-object v0

    .line 179
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3
    :try_end_4ba
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4ab .. :try_end_4ba} :catch_4bb
    .catchall {:try_start_4ab .. :try_end_4ba} :catchall_586

    goto :goto_4ce

    .line 170
    :catch_4bb
    move-exception v0

    .line 180
    :try_start_4bc
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v4

    .line 181
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v4

    const-string v7, "Application info is null, first open report might be inaccurate. appId"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 182
    invoke-virtual {v4, v7, v3, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v10

    .line 179
    :goto_4ce
    if-eqz v3, :cond_4ea

    .line 183
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v4, 0x1

    and-int/2addr v0, v4

    if-eqz v0, :cond_4dd

    .line 184
    move-object/from16 v4, v20

    const-wide/16 v10, 0x1

    invoke-virtual {v5, v4, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 185
    :cond_4dd
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_4ea

    .line 186
    move-object/from16 v3, v21

    const-wide/16 v10, 0x1

    invoke-virtual {v5, v3, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_4ea
    nop

    .line 189
    :goto_4eb
    const-wide/16 v3, 0x0

    cmp-long v0, v8, v3

    if-ltz v0, :cond_4f4

    .line 190
    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 191
    :cond_4f4
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzaw;

    const-string v15, "_f"

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzau;

    invoke-direct {v3, v5}, Lcom/google/android/gms/measurement/internal/zzau;-><init>(Landroid/os/Bundle;)V

    const-string v17, "auto"

    move-object v14, v0

    move-object/from16 v16, v3

    move-wide/from16 v18, v12

    invoke-direct/range {v14 .. v19}, Lcom/google/android/gms/measurement/internal/zzaw;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzau;Ljava/lang/String;J)V

    .line 192
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzG(Lcom/google/android/gms/measurement/internal/zzaw;Lcom/google/android/gms/measurement/internal/zzq;)V

    goto :goto_575

    .line 88
    :cond_50b
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzlj;

    const-string v15, "_fvt"

    .line 89
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const-string v19, "auto"

    move-object v14, v0

    move-wide/from16 v16, v12

    invoke-direct/range {v14 .. v19}, Lcom/google/android/gms/measurement/internal/zzlj;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzW(Lcom/google/android/gms/measurement/internal/zzlj;Lcom/google/android/gms/measurement/internal/zzq;)V

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaB()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzB()V

    new-instance v0, Landroid/os/Bundle;

    .line 93
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 94
    const-wide/16 v7, 0x1

    invoke-virtual {v0, v10, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 95
    invoke-virtual {v0, v6, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 96
    invoke-virtual {v0, v4, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 97
    iget-boolean v4, v2, Lcom/google/android/gms/measurement/internal/zzq;->zzp:Z

    if-eqz v4, :cond_53f

    .line 98
    invoke-virtual {v0, v3, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 99
    :cond_53f
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzaw;

    const-string v15, "_v"

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzau;

    invoke-direct {v4, v0}, Lcom/google/android/gms/measurement/internal/zzau;-><init>(Landroid/os/Bundle;)V

    const-string v17, "auto"

    move-object v14, v3

    move-object/from16 v16, v4

    move-wide/from16 v18, v12

    invoke-direct/range {v14 .. v19}, Lcom/google/android/gms/measurement/internal/zzaw;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzau;Ljava/lang/String;J)V

    .line 100
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzG(Lcom/google/android/gms/measurement/internal/zzaw;Lcom/google/android/gms/measurement/internal/zzq;)V

    goto :goto_575

    .line 193
    :cond_556
    iget-boolean v0, v2, Lcom/google/android/gms/measurement/internal/zzq;->zzi:Z

    if-eqz v0, :cond_575

    new-instance v0, Landroid/os/Bundle;

    .line 194
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 195
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzaw;

    const-string v15, "_cd"

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzau;

    invoke-direct {v4, v0}, Lcom/google/android/gms/measurement/internal/zzau;-><init>(Landroid/os/Bundle;)V

    const-string v17, "auto"

    move-object v14, v3

    move-object/from16 v16, v4

    move-wide/from16 v18, v12

    invoke-direct/range {v14 .. v19}, Lcom/google/android/gms/measurement/internal/zzaw;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzau;Ljava/lang/String;J)V

    .line 196
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzG(Lcom/google/android/gms/measurement/internal/zzaw;Lcom/google/android/gms/measurement/internal/zzq;)V

    .line 192
    :cond_575
    :goto_575
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 197
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 198
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzC()V
    :try_end_57d
    .catchall {:try_start_4bc .. :try_end_57d} :catchall_586

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 199
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 200
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzx()V

    return-void

    .line 37
    :catchall_586
    move-exception v0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 199
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 200
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzx()V

    .line 201
    throw v0

    .line 37
    :cond_590
    return-void
.end method

.method final zzM()V
    .registers 2

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzr:I

    return-void
.end method

.method final zzN(Lcom/google/android/gms/measurement/internal/zzac;)V
    .registers 3

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzac;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzac(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzO(Lcom/google/android/gms/measurement/internal/zzac;Lcom/google/android/gms/measurement/internal/zzq;)V

    :cond_11
    return-void
.end method

.method final zzO(Lcom/google/android/gms/measurement/internal/zzac;Lcom/google/android/gms/measurement/internal/zzq;)V
    .registers 13

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzac;->zza:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zzlj;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zzlj;

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzlj;->zzb:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaB()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzB()V

    .line 7
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzak(Lcom/google/android/gms/measurement/internal/zzq;)Z

    move-result v0

    if-nez v0, :cond_25

    return-void

    .line 8
    :cond_25
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzq;->zzh:Z

    if-eqz v0, :cond_f5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzw()V

    .line 11
    :try_start_31
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzd(Lcom/google/android/gms/measurement/internal/zzq;)Lcom/google/android/gms/measurement/internal/zzh;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzac;->zza:Ljava/lang/String;

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zzlj;

    .line 14
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzlj;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzam;->zzk(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    if-eqz v0, :cond_b9

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzc()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v3, "Removing conditional user property"

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzac;->zza:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzn:Lcom/google/android/gms/measurement/internal/zzge;

    .line 17
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzge;->zzj()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v5

    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zzlj;

    .line 18
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzlj;->zzb:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzep;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 19
    invoke-virtual {v1, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 20
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zzlj;

    .line 21
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzlj;->zzb:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzam;->zza(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzac;->zze:Z

    if-eqz v1, :cond_85

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 22
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zzlj;

    .line 23
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzlj;->zzb:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzA(Ljava/lang/String;Ljava/lang/String;)V

    :cond_85
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzac;->zzk:Lcom/google/android/gms/measurement/internal/zzaw;

    if-eqz v1, :cond_da

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzaw;->zzb:Lcom/google/android/gms/measurement/internal/zzau;

    if-eqz v1, :cond_93

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzc()Landroid/os/Bundle;

    move-result-object v1

    move-object v4, v1

    goto :goto_95

    .line 37
    :cond_93
    const/4 v1, 0x0

    move-object v4, v1

    .line 25
    :goto_95
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzv()Lcom/google/android/gms/measurement/internal/zzlo;

    move-result-object v1

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzac;->zzk:Lcom/google/android/gms/measurement/internal/zzaw;

    .line 26
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzaw;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzaw;->zza:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzb:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzac;->zzk:Lcom/google/android/gms/measurement/internal/zzaw;

    iget-wide v6, p1, Lcom/google/android/gms/measurement/internal/zzaw;->zzd:J

    const/4 v8, 0x1

    const/4 v9, 0x1

    .line 27
    invoke-virtual/range {v1 .. v9}, Lcom/google/android/gms/measurement/internal/zzlo;->zzz(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object p1

    .line 28
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzaw;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzY(Lcom/google/android/gms/measurement/internal/zzaw;Lcom/google/android/gms/measurement/internal/zzq;)V

    goto :goto_da

    .line 29
    :cond_b9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object p2

    .line 30
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzk()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p2

    const-string v0, "Conditional user property doesn\'t exist"

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzac;->zza:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzn:Lcom/google/android/gms/measurement/internal/zzge;

    .line 31
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzge;->zzj()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v2

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zzlj;

    .line 32
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzlj;->zzb:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/measurement/internal/zzep;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 33
    invoke-virtual {p2, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    :cond_da
    :goto_da
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 34
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 35
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzam;->zzC()V
    :try_end_e2
    .catchall {:try_start_31 .. :try_end_e2} :catchall_eb

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 36
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 37
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzam;->zzx()V

    return-void

    .line 33
    :catchall_eb
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 36
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 37
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzam;->zzx()V

    .line 38
    throw p1

    .line 39
    :cond_f5
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzd(Lcom/google/android/gms/measurement/internal/zzq;)Lcom/google/android/gms/measurement/internal/zzh;

    return-void
.end method

.method final zzP(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzq;)V
    .registers 10

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaB()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzB()V

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzak(Lcom/google/android/gms/measurement/internal/zzq;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 4
    :cond_11
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzq;->zzh:Z

    if-nez v0, :cond_19

    .line 5
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzd(Lcom/google/android/gms/measurement/internal/zzq;)Lcom/google/android/gms/measurement/internal/zzh;

    return-void

    :cond_19
    nop

    .line 6
    const-string v0, "_npa"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzq;->zzr:Ljava/lang/Boolean;

    if-eqz v0, :cond_5b

    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzc()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    const-string v0, "Falling back to manifest metadata value for ad personalization"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    .line 35
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzlj;

    .line 36
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    .line 37
    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzq;->zzr:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_49

    const-wide/16 v0, 0x0

    goto :goto_4b

    .line 38
    :cond_49
    const-wide/16 v0, 0x1

    .line 37
    :goto_4b
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "auto"

    const-string v2, "_npa"

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzlj;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzW(Lcom/google/android/gms/measurement/internal/zzlj;Lcom/google/android/gms/measurement/internal/zzq;)V

    return-void

    .line 7
    :cond_5b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzc()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzn:Lcom/google/android/gms/measurement/internal/zzge;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzge;->zzj()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v1

    .line 10
    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzep;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 11
    const-string v2, "Removing user property"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzw()V

    .line 14
    :try_start_7a
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzd(Lcom/google/android/gms/measurement/internal/zzq;)Lcom/google/android/gms/measurement/internal/zzh;

    const-string v0, "_id"

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 16
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 17
    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    .line 18
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "_lair"

    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzA(Ljava/lang/String;Ljava/lang/String;)V

    :cond_97
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 20
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 21
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    .line 22
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 23
    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/measurement/internal/zzam;->zzA(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 24
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 25
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzam;->zzC()V

    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object p2

    .line 27
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzc()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p2

    const-string v0, "User property removed"

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzn:Lcom/google/android/gms/measurement/internal/zzge;

    .line 28
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzge;->zzj()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v1

    .line 29
    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzep;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_c6
    .catchall {:try_start_7a .. :try_end_c6} :catchall_cf

    .line 33
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 31
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 32
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzam;->zzx()V

    return-void

    .line 30
    :catchall_cf
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 31
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 32
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzam;->zzx()V

    .line 33
    throw p1
.end method

.method final zzQ(Lcom/google/android/gms/measurement/internal/zzq;)V
    .registers 9

    .line 1
    const-string v0, "app_id=?"

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzy:Ljava/util/List;

    if-eqz v1, :cond_12

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzz:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzy:Ljava/util/List;

    .line 2
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_12
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 4
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkt;->zzW()V

    .line 8
    :try_start_28
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzam;->zzh()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string v5, "apps"

    .line 9
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    const-string v6, "events"

    .line 10
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string/jumbo v6, "user_attributes"

    .line 11
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "conditional_properties"

    .line 12
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "raw_events"

    .line 13
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "raw_events_metadata"

    .line 14
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "queue"

    .line 15
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "audience_filter_values"

    .line 16
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "main_event_params"

    .line 17
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "default_event_params"

    .line 18
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v5, v0

    if-lez v5, :cond_a2

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v3, "Reset analytics data. app, records"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_28 .. :try_end_8d} :catch_8e

    goto :goto_a2

    .line 25
    :catch_8e
    move-exception v0

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 23
    const-string v3, "Error resetting analytics data. appId, error"

    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    :cond_a2
    :goto_a2
    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/zzq;->zzh:Z

    if-eqz v0, :cond_a9

    .line 25
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzlg;->zzL(Lcom/google/android/gms/measurement/internal/zzq;)V

    :cond_a9
    return-void
.end method

.method public final zzR(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zziq;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaB()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzE:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    if-eqz p2, :cond_14

    goto :goto_15

    :cond_14
    return-void

    :cond_15
    :goto_15
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzE:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzD:Lcom/google/android/gms/measurement/internal/zziq;

    return-void
.end method

.method protected final zzS()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaB()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzz()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzk:Lcom/google/android/gms/measurement/internal/zzka;

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzka;->zzc:Lcom/google/android/gms/measurement/internal/zzff;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzff;->zza()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzk:Lcom/google/android/gms/measurement/internal/zzka;

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzka;->zzc:Lcom/google/android/gms/measurement/internal/zzff;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzff;->zzb(J)V

    .line 6
    :cond_2c
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzag()V

    return-void
.end method

.method final zzT(Lcom/google/android/gms/measurement/internal/zzac;)V
    .registers 3

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzac;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzac(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzU(Lcom/google/android/gms/measurement/internal/zzac;Lcom/google/android/gms/measurement/internal/zzq;)V

    :cond_11
    return-void
.end method

.method final zzU(Lcom/google/android/gms/measurement/internal/zzac;Lcom/google/android/gms/measurement/internal/zzq;)V
    .registers 13

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzac;->zza:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzac;->zzb:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zzlj;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zzlj;

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzlj;->zzb:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaB()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzB()V

    .line 8
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzak(Lcom/google/android/gms/measurement/internal/zzq;)Z

    move-result v0

    if-nez v0, :cond_2a

    return-void

    .line 9
    :cond_2a
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzq;->zzh:Z

    if-nez v0, :cond_32

    .line 10
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzd(Lcom/google/android/gms/measurement/internal/zzq;)Lcom/google/android/gms/measurement/internal/zzh;

    return-void

    :cond_32
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzac;

    .line 11
    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/zzac;-><init>(Lcom/google/android/gms/measurement/internal/zzac;)V

    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/google/android/gms/measurement/internal/zzac;->zze:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 12
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzam;->zzw()V

    :try_start_42
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 14
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzac;->zza:Ljava/lang/String;

    .line 15
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zzlj;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzlj;->zzb:Ljava/lang/String;

    .line 16
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzk(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v1

    if-eqz v1, :cond_82

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzac;->zzb:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzb:Ljava/lang/String;

    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_82

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v2

    .line 19
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzk()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    const-string v3, "Updating a conditional user property with different origin. name, origin, origin (from DB)"

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzn:Lcom/google/android/gms/measurement/internal/zzge;

    .line 20
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzge;->zzj()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zzlj;

    .line 21
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzlj;->zzb:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzep;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzb:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzac;->zzb:Ljava/lang/String;

    .line 22
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzes;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_82
    const/4 v2, 0x1

    if-eqz v1, :cond_b8

    iget-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzac;->zze:Z

    if-eqz v3, :cond_b8

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzac;->zzb:Ljava/lang/String;

    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzb:Ljava/lang/String;

    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/zzac;->zzd:J

    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzd:J

    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/zzac;->zzh:J

    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzh:J

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzac;->zzf:Ljava/lang/String;

    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzf:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzac;->zzi:Lcom/google/android/gms/measurement/internal/zzaw;

    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzi:Lcom/google/android/gms/measurement/internal/zzaw;

    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/zzac;->zze:Z

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzlj;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zzlj;

    .line 26
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzlj;->zzb:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zzlj;

    iget-wide v6, v4, Lcom/google/android/gms/measurement/internal/zzlj;->zzc:J

    .line 27
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzlj;->zza()Ljava/lang/Object;

    move-result-object v8

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zzlj;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzlj;->zzf:Ljava/lang/String;

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/zzlj;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zzlj;

    goto :goto_db

    .line 41
    :cond_b8
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzf:Ljava/lang/String;

    .line 23
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_da

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzlj;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zzlj;

    .line 24
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzlj;->zzb:Ljava/lang/String;

    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzd:J

    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzlj;->zza()Ljava/lang/Object;

    move-result-object v7

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zzlj;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzlj;->zzf:Ljava/lang/String;

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzlj;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zzlj;

    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/zzac;->zze:Z

    move p1, v2

    goto :goto_db

    .line 62
    :cond_da
    nop

    .line 27
    :goto_db
    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzac;->zze:Z

    if-eqz v1, :cond_15a

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zzlj;

    new-instance v9, Lcom/google/android/gms/measurement/internal/zzll;

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzac;->zza:Ljava/lang/String;

    .line 28
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzb:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzlj;->zzb:Ljava/lang/String;

    iget-wide v6, v1, Lcom/google/android/gms/measurement/internal/zzlj;->zzc:J

    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzlj;->zza()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzll;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 30
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 31
    invoke-virtual {v1, v9}, Lcom/google/android/gms/measurement/internal/zzam;->zzL(Lcom/google/android/gms/measurement/internal/zzll;)Z

    move-result v1

    if-eqz v1, :cond_127

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzc()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "User property updated immediately"

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzac;->zza:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzn:Lcom/google/android/gms/measurement/internal/zzge;

    .line 34
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzge;->zzj()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzll;->zzc:Ljava/lang/String;

    .line 35
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzep;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzll;->zze:Ljava/lang/Object;

    .line 36
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzes;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_148

    .line 37
    :cond_127
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "(2)Too many active user properties, ignoring"

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzac;->zza:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzn:Lcom/google/android/gms/measurement/internal/zzge;

    .line 39
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzge;->zzj()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzll;->zzc:Ljava/lang/String;

    .line 40
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzep;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzll;->zze:Ljava/lang/Object;

    .line 41
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzes;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 36
    :goto_148
    if-eqz p1, :cond_15a

    iget-object p1, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzi:Lcom/google/android/gms/measurement/internal/zzaw;

    if-eqz p1, :cond_15a

    .line 42
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzaw;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzi:Lcom/google/android/gms/measurement/internal/zzaw;

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzd:J

    invoke-direct {p1, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzaw;-><init>(Lcom/google/android/gms/measurement/internal/zzaw;J)V

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzY(Lcom/google/android/gms/measurement/internal/zzaw;Lcom/google/android/gms/measurement/internal/zzq;)V

    :cond_15a
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 44
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 45
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzK(Lcom/google/android/gms/measurement/internal/zzac;)Z

    move-result p1

    if-eqz p1, :cond_189

    .line 46
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzc()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    const-string p2, "Conditional property added"

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzac;->zza:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzn:Lcom/google/android/gms/measurement/internal/zzge;

    .line 48
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzge;->zzj()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zzlj;

    .line 49
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzlj;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzep;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zzlj;

    .line 50
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzlj;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 51
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1b0

    .line 52
    :cond_189
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object p1

    .line 53
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    const-string p2, "Too many conditional properties, ignoring"

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzac;->zza:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzn:Lcom/google/android/gms/measurement/internal/zzge;

    .line 54
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzge;->zzj()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zzlj;

    .line 55
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzlj;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzep;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zzlj;

    .line 56
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzlj;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 57
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    :goto_1b0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 58
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 59
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzam;->zzC()V
    :try_end_1b8
    .catchall {:try_start_42 .. :try_end_1b8} :catchall_1c1

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 60
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 61
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzam;->zzx()V

    return-void

    .line 25
    :catchall_1c1
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 60
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 61
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzam;->zzx()V

    .line 62
    throw p1
.end method

.method final zzV(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzai;)V
    .registers 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaB()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzB()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzB:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkt;->zzW()V

    new-instance v1, Landroid/content/ContentValues;

    .line 9
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 10
    const-string v2, "app_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzai;->zzh()Ljava/lang/String;

    move-result-object p2

    const-string v2, "consent_state"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :try_start_33
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzh()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string v2, "consent_settings"

    .line 13
    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {p2, v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p2, v1, v3

    if-nez p2, :cond_58

    iget-object p2, v0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 14
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object p2

    .line 15
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p2

    const-string v1, "Failed to insert/update consent setting (got -1). appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 16
    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_58
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_33 .. :try_end_58} :catch_59

    :cond_58
    return-void

    :catch_59
    move-exception p2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 19
    const-string v1, "Error storing consent setting. appId, error"

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method final zzW(Lcom/google/android/gms/measurement/internal/zzlj;Lcom/google/android/gms/measurement/internal/zzq;)V
    .registers 20

    .line 1
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "_id"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaB()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzB()V

    .line 3
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzak(Lcom/google/android/gms/measurement/internal/zzq;)Z

    move-result v4

    if-nez v4, :cond_19

    return-void

    .line 4
    :cond_19
    iget-boolean v4, v2, Lcom/google/android/gms/measurement/internal/zzq;->zzh:Z

    if-nez v4, :cond_21

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzd(Lcom/google/android/gms/measurement/internal/zzq;)Lcom/google/android/gms/measurement/internal/zzh;

    return-void

    .line 6
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzv()Lcom/google/android/gms/measurement/internal/zzlo;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzlj;->zzb:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzlo;->zzl(Ljava/lang/String;)I

    move-result v9

    const/4 v4, 0x1

    const/16 v5, 0x18

    const/4 v6, 0x0

    if-eqz v9, :cond_57

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzv()Lcom/google/android/gms/measurement/internal/zzlo;

    move-result-object v3

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzlj;->zzb:Ljava/lang/String;

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzg()Lcom/google/android/gms/measurement/internal/zzag;

    .line 9
    invoke-virtual {v3, v7, v5, v4}, Lcom/google/android/gms/measurement/internal/zzlo;->zzD(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v11

    .line 10
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzlj;->zzb:Ljava/lang/String;

    if-eqz v0, :cond_48

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    move v12, v0

    goto :goto_49

    .line 12
    :cond_48
    move v12, v6

    .line 11
    :goto_49
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzv()Lcom/google/android/gms/measurement/internal/zzlo;

    move-result-object v6

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzF:Lcom/google/android/gms/measurement/internal/zzln;

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    const-string v10, "_ev"

    .line 12
    invoke-virtual/range {v6 .. v12}, Lcom/google/android/gms/measurement/internal/zzlo;->zzO(Lcom/google/android/gms/measurement/internal/zzln;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 13
    :cond_57
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzv()Lcom/google/android/gms/measurement/internal/zzlo;

    move-result-object v7

    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/zzlj;->zzb:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzlj;->zza()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzlo;->zzd(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v13

    if-eqz v13, :cond_9d

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzv()Lcom/google/android/gms/measurement/internal/zzlo;

    move-result-object v3

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzlj;->zzb:Ljava/lang/String;

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzg()Lcom/google/android/gms/measurement/internal/zzag;

    .line 16
    invoke-virtual {v3, v7, v5, v4}, Lcom/google/android/gms/measurement/internal/zzlo;->zzD(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v15

    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzlj;->zza()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8d

    .line 18
    instance-of v3, v0, Ljava/lang/String;

    if-nez v3, :cond_82

    instance-of v3, v0, Ljava/lang/CharSequence;

    if-eqz v3, :cond_8d

    .line 19
    :cond_82
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    move/from16 v16, v6

    goto :goto_8f

    .line 21
    :cond_8d
    move/from16 v16, v6

    .line 20
    :goto_8f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzv()Lcom/google/android/gms/measurement/internal/zzlo;

    move-result-object v10

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzF:Lcom/google/android/gms/measurement/internal/zzln;

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    const-string v14, "_ev"

    .line 21
    invoke-virtual/range {v10 .. v16}, Lcom/google/android/gms/measurement/internal/zzlo;->zzO(Lcom/google/android/gms/measurement/internal/zzln;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 22
    :cond_9d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzv()Lcom/google/android/gms/measurement/internal/zzlo;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzlj;->zzb:Ljava/lang/String;

    .line 23
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzlj;->zza()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzlo;->zzB(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_ae

    return-void

    .line 24
    :cond_ae
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzlj;->zzb:Ljava/lang/String;

    const-string v6, "_sid"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_124

    .line 25
    iget-wide v8, v0, Lcom/google/android/gms/measurement/internal/zzlj;->zzc:J

    iget-object v11, v0, Lcom/google/android/gms/measurement/internal/zzlj;->zzf:Ljava/lang/String;

    .line 26
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 27
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 28
    const-string v7, "_sno"

    invoke-virtual {v6, v5, v7}, Lcom/google/android/gms/measurement/internal/zzam;->zzp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzll;

    move-result-object v6

    if-eqz v6, :cond_de

    iget-object v7, v6, Lcom/google/android/gms/measurement/internal/zzll;->zze:Ljava/lang/Object;

    .line 29
    instance-of v10, v7, Ljava/lang/Long;

    if-eqz v10, :cond_de

    .line 38
    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_112

    .line 72
    :cond_de
    if-eqz v6, :cond_ef

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v7

    .line 31
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzeu;->zzk()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v7

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzll;->zze:Ljava/lang/Object;

    .line 32
    const-string v10, "Retrieved last session number from database does not contain a valid (long) value"

    invoke-virtual {v7, v10, v6}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_ef
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 33
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 34
    const-string v7, "_s"

    invoke-virtual {v6, v5, v7}, Lcom/google/android/gms/measurement/internal/zzam;->zzn(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v5

    if-eqz v5, :cond_110

    iget-wide v5, v5, Lcom/google/android/gms/measurement/internal/zzas;->zzc:J

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v7

    .line 36
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v7

    .line 37
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v12, "Backfill the session number. Last used session number"

    invoke-virtual {v7, v12, v10}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_112

    .line 73
    :cond_110
    const-wide/16 v5, 0x0

    .line 38
    :goto_112
    new-instance v12, Lcom/google/android/gms/measurement/internal/zzlj;

    const-wide/16 v13, 0x1

    add-long/2addr v5, v13

    .line 39
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v7, "_sno"

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/measurement/internal/zzlj;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v1, v12, v2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzW(Lcom/google/android/gms/measurement/internal/zzlj;Lcom/google/android/gms/measurement/internal/zzq;)V

    :cond_124
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzll;

    .line 41
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    .line 42
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzlj;->zzf:Ljava/lang/String;

    .line 43
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Ljava/lang/String;

    iget-object v10, v0, Lcom/google/android/gms/measurement/internal/zzlj;->zzb:Ljava/lang/String;

    iget-wide v11, v0, Lcom/google/android/gms/measurement/internal/zzlj;->zzc:J

    move-object v7, v5

    move-object v13, v4

    invoke-direct/range {v7 .. v13}, Lcom/google/android/gms/measurement/internal/zzll;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzn:Lcom/google/android/gms/measurement/internal/zzge;

    .line 46
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzge;->zzj()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v6

    iget-object v7, v5, Lcom/google/android/gms/measurement/internal/zzll;->zzc:Ljava/lang/String;

    .line 47
    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzep;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 48
    const-string v7, "Setting user property"

    invoke-virtual {v0, v7, v6, v4}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 49
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 50
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzw()V

    :try_start_162
    iget-object v0, v5, Lcom/google/android/gms/measurement/internal/zzll;->zzc:Ljava/lang/String;

    .line 51
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18d

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 52
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 53
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    .line 54
    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzll;

    move-result-object v0

    if-eqz v0, :cond_18d

    iget-object v3, v5, Lcom/google/android/gms/measurement/internal/zzll;->zze:Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzll;->zze:Ljava/lang/Object;

    .line 55
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18d

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 56
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 57
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    const-string v4, "_lair"

    .line 58
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzam;->zzA(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_18d
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzd(Lcom/google/android/gms/measurement/internal/zzq;)Lcom/google/android/gms/measurement/internal/zzh;

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 60
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 61
    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzam;->zzL(Lcom/google/android/gms/measurement/internal/zzll;)Z

    move-result v0

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 62
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 63
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzC()V

    if-nez v0, :cond_1ce

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v3, "Too many unique user properties are set. Ignoring user property"

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzn:Lcom/google/android/gms/measurement/internal/zzge;

    .line 66
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzge;->zzj()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v4

    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/zzll;->zzc:Ljava/lang/String;

    .line 67
    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzep;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzll;->zze:Ljava/lang/Object;

    .line 68
    invoke-virtual {v0, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzv()Lcom/google/android/gms/measurement/internal/zzlo;

    move-result-object v6

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzF:Lcom/google/android/gms/measurement/internal/zzln;

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    const/16 v9, 0x9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 70
    invoke-virtual/range {v6 .. v12}, Lcom/google/android/gms/measurement/internal/zzlo;->zzO(Lcom/google/android/gms/measurement/internal/zzln;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1ce
    .catchall {:try_start_162 .. :try_end_1ce} :catchall_1d7

    :cond_1ce
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 71
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 72
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzx()V

    return-void

    .line 37
    :catchall_1d7
    move-exception v0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 71
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 72
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzx()V

    .line 73
    throw v0
.end method

.method final zzX()V
    .registers 23

    .line 1
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaB()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzB()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzv:Z

    const/4 v3, 0x0

    :try_start_10
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzn:Lcom/google/android/gms/measurement/internal/zzge;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzay()Lcom/google/android/gms/measurement/internal/zzab;

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzn:Lcom/google/android/gms/measurement/internal/zzge;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzt()Lcom/google/android/gms/measurement/internal/zzjy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjy;->zzj()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_34

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzk()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v2, "Upload data called on the client side before use of service was decided"

    .line 7
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_10 .. :try_end_2e} :catchall_54b

    iput-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzv:Z

    .line 8
    :goto_30
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzae()V

    return-void

    .line 9
    :cond_34
    :try_start_34
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v2, "Upload called in the client side when service should be used"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_34 .. :try_end_47} :catchall_54b

    iput-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzv:Z

    goto :goto_30

    .line 8
    :cond_4a
    :try_start_4a
    iget-wide v4, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zza:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_58

    .line 171
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzag()V
    :try_end_55
    .catchall {:try_start_4a .. :try_end_55} :catchall_54b

    iput-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzv:Z

    goto :goto_30

    .line 10
    :cond_58
    :try_start_58
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaB()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzy:Ljava/util/List;

    if-eqz v0, :cond_73

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v2, "Uploading requested multiple times"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V
    :try_end_70
    .catchall {:try_start_58 .. :try_end_70} :catchall_54b

    iput-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzv:Z

    goto :goto_30

    .line 8
    :cond_73
    :try_start_73
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzd:Lcom/google/android/gms/measurement/internal/zzfa;

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->zza()Z

    move-result v0

    if-nez v0, :cond_91

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v2, "Network not connected, ignoring upload request"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    .line 15
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzag()V
    :try_end_8e
    .catchall {:try_start_73 .. :try_end_8e} :catchall_54b

    iput-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzv:Z

    goto :goto_30

    .line 16
    :cond_91
    :try_start_91
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzg()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzeh;->zzR:Lcom/google/android/gms/measurement/internal/zzeg;

    const/4 v9, 0x0

    invoke-virtual {v0, v9, v8}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)I

    move-result v0

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzg()Lcom/google/android/gms/measurement/internal/zzag;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzag;->zzz()J

    move-result-wide v10

    sub-long v10, v4, v10

    move v8, v3

    :goto_ae
    if-ge v8, v0, :cond_b9

    .line 19
    invoke-direct {v1, v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzlg;->zzah(Ljava/lang/String;J)Z

    move-result v12

    if-eqz v12, :cond_b9

    add-int/lit8 v8, v8, 0x1

    goto :goto_ae

    :cond_b9
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzk:Lcom/google/android/gms/measurement/internal/zzka;

    .line 20
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzka;->zzc:Lcom/google/android/gms/measurement/internal/zzff;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzff;->zza()J

    move-result-wide v10

    cmp-long v0, v10, v6

    if-eqz v0, :cond_dc

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzc()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v6, "Uploading events. Elapsed time since last upload attempt (ms)"

    sub-long v7, v4, v10

    .line 23
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 24
    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_dc
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 25
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzr()Ljava/lang/String;

    move-result-object v6

    .line 27
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v7, -0x1

    if-nez v0, :cond_4bb

    iget-wide v10, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzA:J

    cmp-long v0, v10, v7

    if-nez v0, :cond_13e

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 28
    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;
    :try_end_f8
    .catchall {:try_start_91 .. :try_end_f8} :catchall_54b

    .line 29
    :try_start_f8
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzam;->zzh()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v11, "select rowid from raw_events order by rowid desc limit 1;"

    .line 30
    invoke-virtual {v0, v11, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_102
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f8 .. :try_end_102} :catch_11e
    .catchall {:try_start_f8 .. :try_end_102} :catchall_11c

    .line 31
    :try_start_102
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_106
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_102 .. :try_end_106} :catch_11a
    .catchall {:try_start_102 .. :try_end_106} :catchall_117

    if-nez v0, :cond_10f

    if-eqz v11, :cond_10e

    .line 32
    :goto_10a
    :try_start_10a
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_10d
    .catchall {:try_start_10a .. :try_end_10d} :catchall_54b

    :cond_10d
    goto :goto_133

    .line 60
    :cond_10e
    goto :goto_133

    :cond_10f
    nop

    .line 33
    :try_start_110
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7
    :try_end_114
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_110 .. :try_end_114} :catch_11a
    .catchall {:try_start_110 .. :try_end_114} :catchall_117

    if-eqz v11, :cond_10d

    .line 32
    goto :goto_10a

    .line 36
    :catchall_117
    move-exception v0

    move-object v9, v11

    goto :goto_138

    :catch_11a
    move-exception v0

    goto :goto_120

    .line 32
    :catchall_11c
    move-exception v0

    goto :goto_138

    .line 173
    :catch_11e
    move-exception v0

    move-object v11, v9

    :goto_120
    :try_start_120
    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 34
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v10

    .line 35
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v10

    const-string v12, "Error querying raw events"

    invoke-virtual {v10, v12, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_12f
    .catchall {:try_start_120 .. :try_end_12f} :catchall_136

    if-eqz v11, :cond_132

    .line 32
    goto :goto_10a

    .line 166
    :cond_132
    nop

    .line 32
    :goto_133
    :try_start_133
    iput-wide v7, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzA:J

    goto :goto_13e

    .line 166
    :catchall_136
    move-exception v0

    move-object v9, v11

    .line 32
    :goto_138
    if-eqz v9, :cond_13d

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 36
    :cond_13d
    throw v0

    .line 37
    :cond_13e
    :goto_13e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzg()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzeh;->zzg:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)I

    move-result v0

    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzg()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzeh;->zzh:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v7, v6, v8}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)I

    move-result v7

    .line 39
    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 40
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 41
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 42
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzkt;->zzW()V

    if-lez v0, :cond_165

    move v10, v2

    goto :goto_166

    .line 60
    :cond_165
    move v10, v3

    .line 43
    :goto_166
    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    if-lez v7, :cond_16d

    move v10, v2

    goto :goto_16e

    .line 60
    :cond_16d
    move v10, v3

    .line 44
    :goto_16e
    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 45
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_174
    .catchall {:try_start_133 .. :try_end_174} :catchall_54b

    .line 46
    :try_start_174
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzam;->zzh()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    const-string v12, "queue"

    const-string v13, "rowid"

    const-string v14, "data"

    const-string v15, "retry_count"

    filled-new-array {v13, v14, v15}, [Ljava/lang/String;

    move-result-object v13

    const-string v14, "app_id=?"

    new-array v15, v2, [Ljava/lang/String;

    aput-object v6, v15, v3

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "rowid"

    .line 47
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    .line 48
    invoke-virtual/range {v11 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_198
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_174 .. :try_end_198} :catch_28e
    .catchall {:try_start_174 .. :try_end_198} :catchall_28a

    .line 49
    :try_start_198
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1ab

    .line 50
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_1a2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_198 .. :try_end_1a2} :catch_286
    .catchall {:try_start_198 .. :try_end_1a2} :catchall_282

    if-eqz v11, :cond_1a7

    .line 51
    :try_start_1a4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_1a7
    .catchall {:try_start_1a4 .. :try_end_1a7} :catchall_54b

    .line 84
    :cond_1a7
    move-wide/from16 v20, v4

    goto/16 :goto_2ae

    .line 132
    :cond_1ab
    :try_start_1ab
    new-instance v12, Ljava/util/ArrayList;

    .line 52
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move v13, v3

    :goto_1b1
    nop

    .line 53
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14
    :try_end_1b6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1ab .. :try_end_1b6} :catch_286
    .catchall {:try_start_1ab .. :try_end_1b6} :catchall_282

    .line 54
    :try_start_1b6
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iget-object v9, v8, Lcom/google/android/gms/measurement/internal/zzks;->zzf:Lcom/google/android/gms/measurement/internal/zzlg;

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzlg;->zzi:Lcom/google/android/gms/measurement/internal/zzli;

    .line 55
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;
    :try_end_1c1
    .catch Ljava/io/IOException; {:try_start_1b6 .. :try_end_1c1} :catch_252
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b6 .. :try_end_1c1} :catch_286
    .catchall {:try_start_1b6 .. :try_end_1c1} :catchall_282

    :try_start_1c1
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 56
    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    .line 57
    invoke-direct {v0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 58
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v10, 0x400

    new-array v10, v10, [B
    :try_end_1d4
    .catch Ljava/io/IOException; {:try_start_1c1 .. :try_end_1d4} :catch_23d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c1 .. :try_end_1d4} :catch_286
    .catchall {:try_start_1c1 .. :try_end_1d4} :catchall_282

    .line 59
    :goto_1d4
    move-wide/from16 v20, v4

    :try_start_1d6
    invoke-virtual {v0, v10}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_233

    .line 61
    invoke-virtual {v0}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 62
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V

    .line 63
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_1e6
    .catch Ljava/io/IOException; {:try_start_1d6 .. :try_end_1e6} :catch_23b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1d6 .. :try_end_1e6} :catch_280
    .catchall {:try_start_1d6 .. :try_end_1e6} :catchall_282

    .line 64
    :try_start_1e6
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1f2

    array-length v2, v0
    :try_end_1ed
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1e6 .. :try_end_1ed} :catch_280
    .catchall {:try_start_1e6 .. :try_end_1ed} :catchall_282

    add-int/2addr v2, v13

    if-le v2, v7, :cond_1f2

    goto/16 :goto_278

    .line 65
    :cond_1f2
    :try_start_1f2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgd;->zzu()Lcom/google/android/gms/internal/measurement/zzgc;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/gms/measurement/internal/zzli;->zzl(Lcom/google/android/gms/internal/measurement/zzmh;[B)Lcom/google/android/gms/internal/measurement/zzmh;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzgc;
    :try_end_1fc
    .catch Ljava/io/IOException; {:try_start_1f2 .. :try_end_1fc} :catch_21e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1f2 .. :try_end_1fc} :catch_280
    .catchall {:try_start_1f2 .. :try_end_1fc} :catchall_282

    .line 69
    const/4 v3, 0x2

    :try_start_1fd
    invoke-interface {v11, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_20a

    .line 70
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/measurement/zzgc;->zzaf(I)Lcom/google/android/gms/internal/measurement/zzgc;

    .line 71
    :cond_20a
    array-length v0, v0

    add-int/2addr v13, v0

    .line 72
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaD()Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgd;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_268

    .line 75
    :catch_21e
    move-exception v0

    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 66
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v2

    .line 67
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    const-string v3, "Failed to merge queued bundle. appId"

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 68
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_232
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1fd .. :try_end_232} :catch_280
    .catchall {:try_start_1fd .. :try_end_232} :catchall_282

    goto :goto_268

    .line 79
    :cond_233
    nop

    .line 60
    const/4 v5, 0x0

    :try_start_235
    invoke-virtual {v3, v10, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_238
    .catch Ljava/io/IOException; {:try_start_235 .. :try_end_238} :catch_23b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_235 .. :try_end_238} :catch_280
    .catchall {:try_start_235 .. :try_end_238} :catchall_282

    move-wide/from16 v4, v20

    goto :goto_1d4

    .line 78
    :catch_23b
    move-exception v0

    goto :goto_240

    :catch_23d
    move-exception v0

    move-wide/from16 v20, v4

    :goto_240
    :try_start_240
    iget-object v2, v9, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 73
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v2

    .line 74
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    const-string v3, "Failed to ungzip content"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    throw v0
    :try_end_250
    .catch Ljava/io/IOException; {:try_start_240 .. :try_end_250} :catch_250
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_240 .. :try_end_250} :catch_280
    .catchall {:try_start_240 .. :try_end_250} :catchall_282

    .line 151
    :catch_250
    move-exception v0

    goto :goto_255

    :catch_252
    move-exception v0

    move-wide/from16 v20, v4

    :goto_255
    :try_start_255
    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 76
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v2

    .line 77
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    const-string v3, "Failed to unzip queued bundle. appId"

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 78
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    :goto_268
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_26c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_255 .. :try_end_26c} :catch_280
    .catchall {:try_start_255 .. :try_end_26c} :catchall_282

    if-eqz v0, :cond_278

    if-le v13, v7, :cond_271

    goto :goto_278

    :cond_271
    move-wide/from16 v4, v20

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v9, 0x0

    goto/16 :goto_1b1

    .line 64
    :cond_278
    :goto_278
    if-eqz v11, :cond_27d

    .line 51
    :try_start_27a
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_27d
    .catchall {:try_start_27a .. :try_end_27d} :catchall_54b

    :cond_27d
    nop

    .line 84
    move-object v0, v12

    goto :goto_2ae

    .line 83
    :catch_280
    move-exception v0

    goto :goto_292

    :catchall_282
    move-exception v0

    move-object v9, v11

    goto/16 :goto_4b5

    :catch_286
    move-exception v0

    move-wide/from16 v20, v4

    goto :goto_292

    .line 51
    :catchall_28a
    move-exception v0

    const/4 v9, 0x0

    goto/16 :goto_4b5

    .line 36
    :catch_28e
    move-exception v0

    move-wide/from16 v20, v4

    const/4 v11, 0x0

    :goto_292
    :try_start_292
    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 80
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v2

    .line 81
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    const-string v3, "Error querying bundles. appId"

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_2a9
    .catchall {:try_start_292 .. :try_end_2a9} :catchall_4b3

    if-eqz v11, :cond_2ae

    .line 51
    :try_start_2ab
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 84
    :cond_2ae
    :goto_2ae
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_53e

    .line 85
    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/zzlg;->zzh(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v2

    .line 86
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzah;->zza:Lcom/google/android/gms/measurement/internal/zzah;

    .line 85
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzai;->zzi(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v2

    if-eqz v2, :cond_315

    .line 87
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2c4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 88
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzgd;

    .line 89
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgd;->zzK()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2c4

    .line 90
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgd;->zzK()Ljava/lang/String;

    move-result-object v2

    goto :goto_2e4

    .line 132
    :cond_2e3
    const/4 v2, 0x0

    .line 90
    :goto_2e4
    if-eqz v2, :cond_315

    const/4 v3, 0x0

    .line 91
    :goto_2e7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_315

    .line 92
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzgd;

    .line 93
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgd;->zzK()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_302

    goto :goto_312

    .line 94
    :cond_302
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgd;->zzK()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_312

    .line 95
    const/4 v2, 0x0

    invoke-interface {v0, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_315

    .line 93
    :cond_312
    :goto_312
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e7

    .line 96
    :cond_315
    :goto_315
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgb;->zza()Lcom/google/android/gms/internal/measurement/zzga;

    move-result-object v2

    .line 97
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    .line 98
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzg()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzag;->zzt(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_33e

    .line 100
    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/zzlg;->zzh(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v5

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzah;->zza:Lcom/google/android/gms/measurement/internal/zzah;

    invoke-virtual {v5, v7}, Lcom/google/android/gms/measurement/internal/zzai;->zzi(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v5

    if-eqz v5, :cond_33e

    const/4 v5, 0x1

    goto :goto_33f

    .line 132
    :cond_33e
    const/4 v5, 0x0

    .line 101
    :goto_33f
    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/zzlg;->zzh(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzah;->zza:Lcom/google/android/gms/measurement/internal/zzah;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzai;->zzi(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v7

    .line 102
    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/zzlg;->zzh(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v8

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzah;->zzb:Lcom/google/android/gms/measurement/internal/zzah;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzai;->zzi(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v8

    .line 103
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqr;->zzc()Z

    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzg()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v9

    sget-object v10, Lcom/google/android/gms/measurement/internal/zzeh;->zzao:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v9, v6, v10}, Lcom/google/android/gms/measurement/internal/zzag;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v9

    const/4 v10, 0x0

    :goto_361
    if-ge v10, v3, :cond_3df

    .line 105
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/Pair;

    iget-object v11, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzgd;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzlb;->zzbB()Lcom/google/android/gms/internal/measurement/zzkx;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzgc;

    .line 106
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    iget-object v12, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Long;

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzg()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzag;->zzh()J

    const-wide/32 v12, 0x12cc8

    invoke-virtual {v11, v12, v13}, Lcom/google/android/gms/internal/measurement/zzgc;->zzam(J)Lcom/google/android/gms/internal/measurement/zzgc;

    .line 108
    move-wide/from16 v12, v20

    invoke-virtual {v11, v12, v13}, Lcom/google/android/gms/internal/measurement/zzgc;->zzal(J)Lcom/google/android/gms/internal/measurement/zzgc;

    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzn:Lcom/google/android/gms/measurement/internal/zzge;

    .line 109
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzge;->zzay()Lcom/google/android/gms/measurement/internal/zzab;

    .line 110
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Lcom/google/android/gms/internal/measurement/zzgc;->zzag(Z)Lcom/google/android/gms/internal/measurement/zzgc;

    if-nez v5, :cond_3a0

    .line 111
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzgc;->zzq()Lcom/google/android/gms/internal/measurement/zzgc;

    :cond_3a0
    if-nez v7, :cond_3a8

    .line 112
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzgc;->zzx()Lcom/google/android/gms/internal/measurement/zzgc;

    .line 113
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzgc;->zzt()Lcom/google/android/gms/internal/measurement/zzgc;

    :cond_3a8
    if-nez v8, :cond_3ad

    .line 114
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzgc;->zzn()Lcom/google/android/gms/internal/measurement/zzgc;

    .line 115
    :cond_3ad
    invoke-virtual {v1, v6, v11}, Lcom/google/android/gms/measurement/internal/zzlg;->zzC(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzgc;)V

    if-nez v9, :cond_3b5

    .line 116
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzgc;->zzy()Lcom/google/android/gms/internal/measurement/zzgc;

    .line 117
    :cond_3b5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzg()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v14

    sget-object v15, Lcom/google/android/gms/measurement/internal/zzeh;->zzV:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v14, v6, v15}, Lcom/google/android/gms/measurement/internal/zzag;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v14

    if-eqz v14, :cond_3d7

    .line 118
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaD()Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/measurement/zzgd;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzjk;->zzbx()[B

    move-result-object v14

    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzi:Lcom/google/android/gms/measurement/internal/zzli;

    .line 119
    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 120
    invoke-virtual {v15, v14}, Lcom/google/android/gms/measurement/internal/zzli;->zzd([B)J

    move-result-wide v14

    invoke-virtual {v11, v14, v15}, Lcom/google/android/gms/internal/measurement/zzgc;->zzJ(J)Lcom/google/android/gms/internal/measurement/zzgc;

    .line 121
    :cond_3d7
    invoke-virtual {v2, v11}, Lcom/google/android/gms/internal/measurement/zzga;->zza(Lcom/google/android/gms/internal/measurement/zzgc;)Lcom/google/android/gms/internal/measurement/zzga;

    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v20, v12

    goto :goto_361

    .line 122
    :cond_3df
    move-wide/from16 v12, v20

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzr()Ljava/lang/String;

    move-result-object v0

    .line 123
    const/4 v5, 0x2

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_400

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzi:Lcom/google/android/gms/measurement/internal/zzli;

    .line 124
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 125
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaD()Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzgb;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzli;->zzm(Lcom/google/android/gms/internal/measurement/zzgb;)Ljava/lang/String;

    move-result-object v9

    goto :goto_401

    .line 132
    :cond_400
    const/4 v9, 0x0

    .line 125
    :goto_401
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzi:Lcom/google/android/gms/measurement/internal/zzli;

    .line 126
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 127
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaD()Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgb;

    .line 128
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjk;->zzbx()[B

    move-result-object v14

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzl:Lcom/google/android/gms/measurement/internal/zzkv;

    .line 129
    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v5
    :try_end_416
    .catchall {:try_start_2ab .. :try_end_416} :catchall_54b

    .line 130
    :try_start_416
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v7, 0x1

    xor-int/2addr v0, v7

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzy:Ljava/util/List;

    if-eqz v0, :cond_431

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v4, "Set uploading progress before finishing the previous upload"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    goto :goto_438

    .line 8
    :cond_431
    new-instance v0, Ljava/util/ArrayList;

    .line 132
    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzy:Ljava/util/List;

    .line 131
    :goto_438
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzk:Lcom/google/android/gms/measurement/internal/zzka;

    .line 133
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzka;->zzd:Lcom/google/android/gms/measurement/internal/zzff;

    invoke-virtual {v0, v12, v13}, Lcom/google/android/gms/measurement/internal/zzff;->zzb(J)V

    const-string v0, "?"

    if-lez v3, :cond_44c

    .line 134
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzga;->zzb(I)Lcom/google/android/gms/internal/measurement/zzgd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgd;->zzy()Ljava/lang/String;

    move-result-object v0

    .line 135
    :cond_44c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v2

    .line 136
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    const-string v3, "Uploading data. app, uncompressed size, data"

    array-length v4, v14

    .line 137
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4, v9}, Lcom/google/android/gms/measurement/internal/zzes;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzu:Z

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzd:Lcom/google/android/gms/measurement/internal/zzfa;

    .line 138
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 139
    new-instance v13, Ljava/net/URL;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzku;->zza()Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-direct {v13, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzku;->zzb()Ljava/util/Map;

    move-result-object v15

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzkx;

    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/measurement/internal/zzkx;-><init>(Lcom/google/android/gms/measurement/internal/zzlg;Ljava/lang/String;)V

    .line 141
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 142
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzkt;->zzW()V

    .line 143
    invoke-static {v13}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-static {v14}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v11, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 146
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzge;->zzaB()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzez;

    .line 147
    move-object v10, v3

    move-object v12, v6

    move-object/from16 v16, v0

    invoke-direct/range {v10 .. v16}, Lcom/google/android/gms/measurement/internal/zzez;-><init>(Lcom/google/android/gms/measurement/internal/zzfa;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzew;)V

    .line 148
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzgb;->zzo(Ljava/lang/Runnable;)V
    :try_end_499
    .catch Ljava/net/MalformedURLException; {:try_start_416 .. :try_end_499} :catch_49b
    .catchall {:try_start_416 .. :try_end_499} :catchall_54b

    goto/16 :goto_53e

    .line 83
    :catch_49b
    move-exception v0

    .line 149
    :try_start_49c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v2, "Failed to parse upload URL. Not uploading. appId"

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzku;->zza()Ljava/lang/String;

    move-result-object v4

    .line 151
    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_53e

    .line 166
    :catchall_4b3
    move-exception v0

    move-object v9, v11

    .line 51
    :goto_4b5
    if-eqz v9, :cond_4ba

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 83
    :cond_4ba
    throw v0

    .line 32
    :cond_4bb
    move-wide v12, v4

    iput-wide v7, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzA:J

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 152
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzg()Lcom/google/android/gms/measurement/internal/zzag;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzag;->zzz()J

    move-result-wide v3

    sub-long v4, v12, v3

    .line 154
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 155
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzkt;->zzW()V
    :try_end_4d2
    .catchall {:try_start_49c .. :try_end_4d2} :catchall_54b

    .line 156
    :try_start_4d2
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzh()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v3, "select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    .line 157
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v6, v5

    .line 158
    invoke-virtual {v0, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_4e6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4d2 .. :try_end_4e6} :catch_511
    .catchall {:try_start_4d2 .. :try_end_4e6} :catchall_50e

    .line 159
    :try_start_4e6
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_500

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 160
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v4, "No expired configs for apps with pending events"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    if-eqz v3, :cond_4fe

    .line 162
    goto :goto_524

    .line 170
    :cond_4fe
    const/4 v9, 0x0

    goto :goto_52a

    :cond_500
    nop

    .line 163
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9
    :try_end_506
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4e6 .. :try_end_506} :catch_50c
    .catchall {:try_start_4e6 .. :try_end_506} :catchall_543

    if-eqz v3, :cond_52a

    .line 162
    :try_start_508
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_50b
    .catchall {:try_start_508 .. :try_end_50b} :catchall_54b

    goto :goto_52a

    .line 166
    :catch_50c
    move-exception v0

    goto :goto_513

    .line 162
    :catchall_50e
    move-exception v0

    const/4 v9, 0x0

    goto :goto_545

    .line 68
    :catch_511
    move-exception v0

    const/4 v3, 0x0

    :goto_513
    :try_start_513
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 164
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v2

    .line 165
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    const-string v4, "Error selecting expired configs"

    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_522
    .catchall {:try_start_513 .. :try_end_522} :catchall_543

    if-eqz v3, :cond_529

    .line 162
    :goto_524
    :try_start_524
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    const/4 v9, 0x0

    goto :goto_52a

    .line 166
    :cond_529
    const/4 v9, 0x0

    .line 167
    :cond_52a
    :goto_52a
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_53e

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 168
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 169
    invoke-virtual {v0, v9}, Lcom/google/android/gms/measurement/internal/zzam;->zzj(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v0

    if-eqz v0, :cond_53e

    .line 170
    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzD(Lcom/google/android/gms/measurement/internal/zzh;)V
    :try_end_53e
    .catchall {:try_start_524 .. :try_end_53e} :catchall_54b

    .line 148
    :cond_53e
    :goto_53e
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzv:Z

    goto/16 :goto_30

    .line 166
    :catchall_543
    move-exception v0

    move-object v9, v3

    .line 162
    :goto_545
    if-eqz v9, :cond_54a

    :try_start_547
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 166
    :cond_54a
    throw v0
    :try_end_54b
    .catchall {:try_start_547 .. :try_end_54b} :catchall_54b

    .line 162
    :catchall_54b
    move-exception v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzv:Z

    .line 8
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzae()V

    .line 173
    throw v0
.end method

.method final zzY(Lcom/google/android/gms/measurement/internal/zzaw;Lcom/google/android/gms/measurement/internal/zzq;)V
    .registers 38

    .line 1
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "metadata_fingerprint"

    const-string v5, "app_id"

    const-string v6, "raw_events"

    const-string v7, "_sno"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaB()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzB()V

    .line 6
    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzi:Lcom/google/android/gms/measurement/internal/zzli;

    .line 7
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 8
    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/measurement/internal/zzli;->zzA(Lcom/google/android/gms/measurement/internal/zzaw;Lcom/google/android/gms/measurement/internal/zzq;)Z

    move-result v11

    if-nez v11, :cond_32

    return-void

    .line 9
    :cond_32
    iget-boolean v11, v3, Lcom/google/android/gms/measurement/internal/zzq;->zzh:Z

    if-eqz v11, :cond_b39

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzc:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 10
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 11
    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzaw;->zza:Ljava/lang/String;

    invoke-virtual {v11, v10, v12}, Lcom/google/android/gms/measurement/internal/zzfv;->zzr(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    const-string v15, "_err"

    const/4 v14, 0x0

    if-eqz v11, :cond_df

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v3

    .line 13
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzeu;->zzk()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v3

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzn:Lcom/google/android/gms/measurement/internal/zzge;

    .line 14
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzge;->zzj()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v5

    .line 15
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzaw;->zza:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzep;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 16
    const-string v6, "Dropping blocked event. appId"

    invoke-virtual {v3, v6, v4, v5}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzc:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 17
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 18
    invoke-virtual {v3, v10}, Lcom/google/android/gms/measurement/internal/zzfv;->zzp(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_97

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzc:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 19
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 20
    invoke-virtual {v3, v10}, Lcom/google/android/gms/measurement/internal/zzfv;->zzs(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7a

    goto :goto_97

    .line 30
    :cond_7a
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzaw;->zza:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_de

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzv()Lcom/google/android/gms/measurement/internal/zzlo;

    move-result-object v11

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzF:Lcom/google/android/gms/measurement/internal/zzln;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzaw;->zza:Ljava/lang/String;

    const/16 v14, 0xb

    const-string v15, "_ev"

    const/16 v17, 0x0

    .line 32
    move-object v13, v10

    move-object/from16 v16, v2

    invoke-virtual/range {v11 .. v17}, Lcom/google/android/gms/measurement/internal/zzlo;->zzO(Lcom/google/android/gms/measurement/internal/zzln;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 20
    :cond_97
    :goto_97
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 21
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 22
    invoke-virtual {v2, v10}, Lcom/google/android/gms/measurement/internal/zzam;->zzj(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v2

    if-eqz v2, :cond_de

    .line 23
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzh;->zzl()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzh;->zzc()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 25
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzg()Lcom/google/android/gms/measurement/internal/zzag;

    .line 27
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzeh;->zzz:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v5, v14}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_de

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzeu;->zzc()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v3

    const-string v4, "Fetching config for blocked app"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzD(Lcom/google/android/gms/measurement/internal/zzh;)V

    :cond_de
    return-void

    .line 33
    :cond_df
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzev;->zzb(Lcom/google/android/gms/measurement/internal/zzaw;)Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v2

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzv()Lcom/google/android/gms/measurement/internal/zzlo;

    move-result-object v11

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzg()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v12

    invoke-virtual {v12, v10}, Lcom/google/android/gms/measurement/internal/zzag;->zzd(Ljava/lang/String;)I

    move-result v12

    .line 36
    invoke-virtual {v11, v2, v12}, Lcom/google/android/gms/measurement/internal/zzlo;->zzN(Lcom/google/android/gms/measurement/internal/zzev;I)V

    .line 37
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpn;->zzc()Z

    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzg()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v11

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzeh;->zzaA:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v11, v14, v12}, Lcom/google/android/gms/measurement/internal/zzag;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v11

    if-eqz v11, :cond_110

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzg()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v11

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzeh;->zzQ:Lcom/google/android/gms/measurement/internal/zzeg;

    const/16 v13, 0xa

    const/16 v14, 0x23

    invoke-virtual {v11, v10, v12, v13, v14}, Lcom/google/android/gms/measurement/internal/zzag;->zzf(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;II)I

    move-result v11

    goto :goto_111

    .line 76
    :cond_110
    const/4 v11, 0x0

    .line 39
    :goto_111
    new-instance v12, Ljava/util/TreeSet;

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzev;->zzd:Landroid/os/Bundle;

    .line 40
    invoke-virtual {v13}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 41
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_120
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_163

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 42
    const-string v14, "items"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_15c

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzv()Lcom/google/android/gms/measurement/internal/zzlo;

    move-result-object v14

    move-object/from16 v17, v12

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzev;->zzd:Landroid/os/Bundle;

    .line 44
    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v12

    .line 45
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpn;->zzc()Z

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzg()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v13

    move-object/from16 v18, v15

    sget-object v15, Lcom/google/android/gms/measurement/internal/zzeh;->zzaA:Lcom/google/android/gms/measurement/internal/zzeg;

    move-wide/from16 v28, v8

    const/4 v8, 0x0

    invoke-virtual {v13, v8, v15}, Lcom/google/android/gms/measurement/internal/zzag;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v9

    .line 47
    invoke-virtual {v14, v12, v11, v9}, Lcom/google/android/gms/measurement/internal/zzlo;->zzM([Landroid/os/Parcelable;IZ)V

    move-object/from16 v12, v17

    move-object/from16 v15, v18

    move-wide/from16 v8, v28

    goto :goto_120

    .line 42
    :cond_15c
    move-wide/from16 v28, v8

    move-object/from16 v17, v12

    move-object/from16 v18, v15

    goto :goto_120

    .line 48
    :cond_163
    move-wide/from16 v28, v8

    move-object/from16 v18, v15

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzev;->zza()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v2

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzeu;->zzr()Ljava/lang/String;

    move-result-object v8

    .line 50
    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_191

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v8

    .line 52
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v8

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzn:Lcom/google/android/gms/measurement/internal/zzge;

    .line 53
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzge;->zzj()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v11

    .line 54
    invoke-virtual {v11, v2}, Lcom/google/android/gms/measurement/internal/zzep;->zzc(Lcom/google/android/gms/measurement/internal/zzaw;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "Logging event"

    invoke-virtual {v8, v12, v11}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    :cond_191
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpk;->zzc()Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzg()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v8

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzeh;->zzax:Lcom/google/android/gms/measurement/internal/zzeg;

    const/4 v14, 0x0

    invoke-virtual {v8, v14, v11}, Lcom/google/android/gms/measurement/internal/zzag;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)Z

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 56
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 57
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzam;->zzw()V

    .line 58
    :try_start_1a6
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzlg;->zzd(Lcom/google/android/gms/measurement/internal/zzq;)Lcom/google/android/gms/measurement/internal/zzh;

    const-string v8, "ecommerce_purchase"

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzaw;->zza:Ljava/lang/String;

    .line 59
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_1b1
    .catchall {:try_start_1a6 .. :try_end_1b1} :catchall_b2e

    const-string v11, "refund"

    if-nez v8, :cond_1cb

    :try_start_1b5
    const-string v8, "purchase"

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzaw;->zza:Ljava/lang/String;

    .line 60
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1cb

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzaw;->zza:Ljava/lang/String;

    .line 61
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c9

    const/4 v8, 0x1

    goto :goto_1cc

    .line 76
    :cond_1c9
    const/4 v8, 0x0

    goto :goto_1cc

    :cond_1cb
    const/4 v8, 0x1

    .line 61
    :goto_1cc
    const-string v12, "_iap"

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzaw;->zza:Ljava/lang/String;

    .line 62
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1e3

    if-eqz v8, :cond_1da

    const/4 v8, 0x1

    goto :goto_1e3

    :cond_1da
    move-object/from16 v33, v4

    move-object/from16 v34, v5

    move-object/from16 v4, v18

    const/4 v5, 0x1

    goto/16 :goto_38f

    :cond_1e3
    :goto_1e3
    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzaw;->zzb:Lcom/google/android/gms/measurement/internal/zzau;

    const-string v13, "currency"

    .line 63
    invoke-virtual {v12, v13}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_1eb
    .catchall {:try_start_1b5 .. :try_end_1eb} :catchall_b2e

    const-string/jumbo v13, "value"

    if-eqz v8, :cond_254

    :try_start_1f0
    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzaw;->zzb:Lcom/google/android/gms/measurement/internal/zzau;

    .line 64
    invoke-virtual {v8, v13}, Lcom/google/android/gms/measurement/internal/zzau;->zzd(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    const-wide v19, 0x412e848000000000L    # 1000000.0

    mul-double v16, v16, v19

    const-wide/16 v21, 0x0

    cmpl-double v8, v16, v21

    if-nez v8, :cond_214

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzaw;->zzb:Lcom/google/android/gms/measurement/internal/zzau;

    .line 65
    invoke-virtual {v8, v13}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    long-to-double v13, v14

    mul-double v16, v13, v19

    :cond_214
    const-wide/high16 v13, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v8, v16, v13

    if-gtz v8, :cond_22e

    const-wide/high16 v13, -0x3c20000000000000L    # -9.223372036854776E18

    cmpl-double v8, v16, v13

    if-ltz v8, :cond_22e

    .line 74
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v13

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzaw;->zza:Ljava/lang/String;

    .line 75
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_25e

    neg-long v13, v13

    goto :goto_25e

    .line 66
    :cond_22e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v2

    .line 67
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzk()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    const-string v3, "Data lost. Currency value is too big. appId"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 68
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 69
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 70
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 71
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzC()V
    :try_end_24b
    .catchall {:try_start_1f0 .. :try_end_24b} :catchall_b2e

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 72
    :goto_24d
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 73
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzx()V

    return-void

    :cond_254
    :try_start_254
    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzaw;->zzb:Lcom/google/android/gms/measurement/internal/zzau;

    .line 76
    invoke-virtual {v8, v13}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 77
    :cond_25e
    :goto_25e
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_388

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 78
    invoke-virtual {v12, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    const-string v11, "[A-Z]{3}"

    .line 79
    invoke-virtual {v8, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_380

    const-string v11, "_ltv_"

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 80
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 81
    invoke-virtual {v11, v10, v8}, Lcom/google/android/gms/measurement/internal/zzam;->zzp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzll;

    move-result-object v11

    if-eqz v11, :cond_2c3

    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/zzll;->zze:Ljava/lang/Object;

    .line 82
    instance-of v12, v11, Ljava/lang/Long;

    if-nez v12, :cond_291

    move-object/from16 v15, v18

    const/4 v9, 0x0

    goto :goto_2c6

    .line 94
    :cond_291
    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    new-instance v19, Lcom/google/android/gms/measurement/internal/zzll;

    iget-object v15, v2, Lcom/google/android/gms/measurement/internal/zzaw;->zzc:Ljava/lang/String;

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v16

    add-long/2addr v11, v13

    .line 96
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v11, v19

    move-object v12, v10

    const/4 v14, 0x0

    move-object v13, v15

    move v9, v14

    const/4 v15, 0x0

    move-object v14, v8

    move-object/from16 v8, v18

    move-wide/from16 v15, v16

    move-object/from16 v17, v20

    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/measurement/internal/zzll;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    move-object/from16 v33, v4

    move-object/from16 v34, v5

    move-object v4, v8

    move-object/from16 v8, v19

    const/4 v5, 0x1

    goto/16 :goto_344

    .line 81
    :cond_2c3
    move-object/from16 v15, v18

    const/4 v9, 0x0

    .line 82
    :goto_2c6
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 83
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzg()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v12

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzeh;->zzE:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v12, v10, v9}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    .line 85
    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 87
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzkt;->zzW()V
    :try_end_2e0
    .catchall {:try_start_254 .. :try_end_2e0} :catchall_b2e

    .line 88
    :try_start_2e0
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzam;->zzh()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12
    :try_end_2e4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2e0 .. :try_end_2e4} :catch_30c
    .catchall {:try_start_2e0 .. :try_end_2e4} :catchall_b2e

    move-object/from16 v18, v15

    :try_start_2e6
    const-string v15, "delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like \'_ltv_%\' order by set_timestamp desc limit ?,10);"
    :try_end_2e8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2e6 .. :try_end_2e8} :catch_306
    .catchall {:try_start_2e6 .. :try_end_2e8} :catchall_b2e

    move-object/from16 v33, v4

    const/4 v4, 0x3

    :try_start_2eb
    new-array v4, v4, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v10, v4, v16
    :try_end_2f1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2eb .. :try_end_2f1} :catch_304
    .catchall {:try_start_2eb .. :try_end_2f1} :catchall_b2e

    move-object/from16 v34, v5

    const/4 v5, 0x1

    :try_start_2f4
    aput-object v10, v4, v5

    .line 89
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/16 v16, 0x2

    aput-object v9, v4, v16

    .line 90
    invoke-virtual {v12, v15, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_301
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2f4 .. :try_end_301} :catch_302
    .catchall {:try_start_2f4 .. :try_end_301} :catchall_b2e

    goto :goto_328

    .line 370
    :catch_302
    move-exception v0

    goto :goto_314

    :catch_304
    move-exception v0

    goto :goto_309

    :catch_306
    move-exception v0

    move-object/from16 v33, v4

    :goto_309
    move-object/from16 v34, v5

    goto :goto_313

    :catch_30c
    move-exception v0

    move-object/from16 v33, v4

    move-object/from16 v34, v5

    move-object/from16 v18, v15

    :goto_313
    const/4 v5, 0x1

    :goto_314
    move-object v4, v0

    :try_start_315
    iget-object v9, v11, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 91
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v9

    .line 92
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v9

    const-string v11, "Error pruning currencies. appId"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v9, v11, v12, v4}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    :goto_328
    new-instance v19, Lcom/google/android/gms/measurement/internal/zzll;

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzaw;->zzc:Ljava/lang/String;

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object v9

    invoke-interface {v9}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v15

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v11, v19

    move-object v12, v10

    move-object v13, v4

    move-object v14, v8

    move-object/from16 v4, v18

    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/measurement/internal/zzll;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    move-object/from16 v8, v19

    :goto_344
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 97
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 98
    invoke-virtual {v9, v8}, Lcom/google/android/gms/measurement/internal/zzam;->zzL(Lcom/google/android/gms/measurement/internal/zzll;)Z

    move-result v9

    if-nez v9, :cond_38f

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v9

    .line 100
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v9

    const-string v11, "Too many unique user properties are set. Ignoring user property. appId"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzn:Lcom/google/android/gms/measurement/internal/zzge;

    .line 101
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzge;->zzj()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v13

    iget-object v14, v8, Lcom/google/android/gms/measurement/internal/zzll;->zzc:Ljava/lang/String;

    .line 102
    invoke-virtual {v13, v14}, Lcom/google/android/gms/measurement/internal/zzep;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzll;->zze:Ljava/lang/Object;

    .line 103
    invoke-virtual {v9, v11, v12, v13, v8}, Lcom/google/android/gms/measurement/internal/zzes;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzv()Lcom/google/android/gms/measurement/internal/zzlo;

    move-result-object v11

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzF:Lcom/google/android/gms/measurement/internal/zzln;

    const/16 v14, 0x9

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 105
    move-object v13, v10

    invoke-virtual/range {v11 .. v17}, Lcom/google/android/gms/measurement/internal/zzlo;->zzO(Lcom/google/android/gms/measurement/internal/zzln;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_38f

    .line 79
    :cond_380
    move-object/from16 v33, v4

    move-object/from16 v34, v5

    move-object/from16 v4, v18

    const/4 v5, 0x1

    goto :goto_38f

    .line 77
    :cond_388
    move-object/from16 v33, v4

    move-object/from16 v34, v5

    move-object/from16 v4, v18

    const/4 v5, 0x1

    .line 105
    :cond_38f
    :goto_38f
    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzaw;->zza:Ljava/lang/String;

    .line 106
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzlo;->zzak(Ljava/lang/String;)Z

    move-result v8

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzaw;->zza:Ljava/lang/String;

    .line 107
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzv()Lcom/google/android/gms/measurement/internal/zzlo;

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzaw;->zzb:Lcom/google/android/gms/measurement/internal/zzau;

    if-nez v9, :cond_3a5

    const-wide/16 v12, 0x0

    goto :goto_3c6

    .line 175
    :cond_3a5
    new-instance v11, Lcom/google/android/gms/measurement/internal/zzat;

    .line 109
    invoke-direct {v11, v9}, Lcom/google/android/gms/measurement/internal/zzat;-><init>(Lcom/google/android/gms/measurement/internal/zzau;)V

    const-wide/16 v12, 0x0

    .line 110
    :goto_3ac
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3c5

    .line 111
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzat;->zza()Ljava/lang/String;

    move-result-object v14

    .line 112
    invoke-virtual {v9, v14}, Lcom/google/android/gms/measurement/internal/zzau;->zzf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 113
    instance-of v15, v14, [Landroid/os/Parcelable;

    if-eqz v15, :cond_3c4

    .line 114
    check-cast v14, [Landroid/os/Parcelable;

    array-length v14, v14

    int-to-long v14, v14

    add-long/2addr v12, v14

    goto :goto_3ac

    :cond_3c4
    goto :goto_3ac

    :cond_3c5
    nop

    .line 108
    :goto_3c6
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 115
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zza()J

    move-result-wide v14

    const-wide/16 v22, 0x1

    add-long v18, v12, v22

    const/4 v9, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 117
    move-wide v12, v14

    move-object/from16 v30, v6

    const-wide/16 v5, 0x0

    move-object v14, v10

    move-wide/from16 v15, v18

    move/from16 v17, v9

    move/from16 v18, v8

    move/from16 v19, v20

    move/from16 v20, v4

    invoke-virtual/range {v11 .. v21}, Lcom/google/android/gms/measurement/internal/zzam;->zzm(JLjava/lang/String;JZZZZZ)Lcom/google/android/gms/measurement/internal/zzak;

    move-result-object v9

    iget-wide v11, v9, Lcom/google/android/gms/measurement/internal/zzak;->zzb:J

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzg()Lcom/google/android/gms/measurement/internal/zzag;

    sget-object v13, Lcom/google/android/gms/measurement/internal/zzeh;->zzk:Lcom/google/android/gms/measurement/internal/zzeg;

    .line 119
    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-long v13, v13

    sub-long/2addr v11, v13

    cmp-long v13, v11, v5

    const-wide/16 v16, 0x3e8

    if-lez v13, :cond_42f

    rem-long v11, v11, v16

    cmp-long v2, v11, v22

    if-nez v2, :cond_423

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v2

    .line 121
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    const-string v3, "Data loss. Too many events logged. appId, count"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v9, Lcom/google/android/gms/measurement/internal/zzak;->zzb:J

    .line 122
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 123
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_423
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 124
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 125
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzC()V
    :try_end_42b
    .catchall {:try_start_315 .. :try_end_42b} :catchall_b2e

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    goto/16 :goto_24d

    .line 73
    :cond_42f
    if-eqz v8, :cond_485

    :try_start_431
    iget-wide v11, v9, Lcom/google/android/gms/measurement/internal/zzak;->zza:J

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzg()Lcom/google/android/gms/measurement/internal/zzag;

    sget-object v13, Lcom/google/android/gms/measurement/internal/zzeh;->zzm:Lcom/google/android/gms/measurement/internal/zzeg;

    .line 127
    invoke-virtual {v13, v15}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-long v13, v13

    sub-long/2addr v11, v13

    cmp-long v13, v11, v5

    if-lez v13, :cond_485

    rem-long v11, v11, v16

    cmp-long v3, v11, v22

    if-nez v3, :cond_465

    .line 362
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v3

    .line 363
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v3

    const-string v4, "Data loss. Too many public events logged. appId, count"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iget-wide v6, v9, Lcom/google/android/gms/measurement/internal/zzak;->zza:J

    .line 364
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 365
    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 366
    :cond_465
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzv()Lcom/google/android/gms/measurement/internal/zzlo;

    move-result-object v11

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzF:Lcom/google/android/gms/measurement/internal/zzln;

    const/16 v14, 0x10

    const-string v15, "_ev"

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzaw;->zza:Ljava/lang/String;

    const/16 v17, 0x0

    .line 367
    move-object v13, v10

    move-object/from16 v16, v2

    invoke-virtual/range {v11 .. v17}, Lcom/google/android/gms/measurement/internal/zzlo;->zzO(Lcom/google/android/gms/measurement/internal/zzln;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 368
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 369
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzC()V
    :try_end_481
    .catchall {:try_start_431 .. :try_end_481} :catchall_b2e

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    goto/16 :goto_24d

    .line 73
    :cond_485
    const v11, 0xf4240

    if-eqz v4, :cond_4ce

    :try_start_48a
    iget-wide v12, v9, Lcom/google/android/gms/measurement/internal/zzak;->zzd:J

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzg()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v4

    iget-object v14, v3, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    sget-object v15, Lcom/google/android/gms/measurement/internal/zzeh;->zzl:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v4, v14, v15}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)I

    move-result v4

    .line 129
    invoke-static {v11, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 130
    const/4 v14, 0x0

    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-long v14, v4

    sub-long/2addr v12, v14

    cmp-long v4, v12, v5

    if-lez v4, :cond_4ce

    cmp-long v2, v12, v22

    if-nez v2, :cond_4c2

    .line 356
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v2

    .line 357
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    const-string v3, "Too many error events logged. appId, count"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v9, Lcom/google/android/gms/measurement/internal/zzak;->zzd:J

    .line 358
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 359
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4c2
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 360
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 361
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzC()V
    :try_end_4ca
    .catchall {:try_start_48a .. :try_end_4ca} :catchall_b2e

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    goto/16 :goto_24d

    .line 73
    :cond_4ce
    :try_start_4ce
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzaw;->zzb:Lcom/google/android/gms/measurement/internal/zzau;

    .line 131
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzau;->zzc()Landroid/os/Bundle;

    move-result-object v4

    .line 132
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzv()Lcom/google/android/gms/measurement/internal/zzlo;

    move-result-object v9

    const-string v12, "_o"

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzaw;->zzc:Ljava/lang/String;

    invoke-virtual {v9, v4, v12, v13}, Lcom/google/android/gms/measurement/internal/zzlo;->zzP(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzv()Lcom/google/android/gms/measurement/internal/zzlo;

    move-result-object v9

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzlo;->zzaf(Ljava/lang/String;)Z

    move-result v9
    :try_end_4e7
    .catchall {:try_start_4ce .. :try_end_4e7} :catchall_b2e

    const-string v15, "_r"

    if-eqz v9, :cond_4ff

    .line 134
    :try_start_4eb
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzv()Lcom/google/android/gms/measurement/internal/zzlo;

    move-result-object v9

    const-string v12, "_dbg"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v9, v4, v12, v13}, Lcom/google/android/gms/measurement/internal/zzlo;->zzP(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzv()Lcom/google/android/gms/measurement/internal/zzlo;

    move-result-object v9

    invoke-virtual {v9, v4, v15, v13}, Lcom/google/android/gms/measurement/internal/zzlo;->zzP(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4ff
    const-string v9, "_s"

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzaw;->zza:Ljava/lang/String;

    .line 136
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_525

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 137
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 138
    iget-object v12, v3, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    .line 139
    invoke-virtual {v9, v12, v7}, Lcom/google/android/gms/measurement/internal/zzam;->zzp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzll;

    move-result-object v9

    if-eqz v9, :cond_525

    iget-object v12, v9, Lcom/google/android/gms/measurement/internal/zzll;->zze:Ljava/lang/Object;

    .line 140
    instance-of v12, v12, Ljava/lang/Long;

    if-eqz v12, :cond_525

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzv()Lcom/google/android/gms/measurement/internal/zzlo;

    move-result-object v12

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzll;->zze:Ljava/lang/Object;

    invoke-virtual {v12, v4, v7, v9}, Lcom/google/android/gms/measurement/internal/zzlo;->zzP(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_525
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 142
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 143
    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 145
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzkt;->zzW()V
    :try_end_533
    .catchall {:try_start_4eb .. :try_end_533} :catchall_b2e

    .line 146
    :try_start_533
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzam;->zzh()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    iget-object v12, v7, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 147
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzge;->zzf()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v12

    sget-object v13, Lcom/google/android/gms/measurement/internal/zzeh;->zzp:Lcom/google/android/gms/measurement/internal/zzeg;

    .line 148
    invoke-virtual {v12, v10, v13}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)I

    move-result v12

    .line 149
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11
    :try_end_547
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_533 .. :try_end_547} :catch_56e
    .catchall {:try_start_533 .. :try_end_547} :catchall_b2e

    .line 150
    const/4 v12, 0x0

    :try_start_548
    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v11
    :try_end_54c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_548 .. :try_end_54c} :catch_568
    .catchall {:try_start_548 .. :try_end_54c} :catchall_b2e

    .line 148
    :try_start_54c
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;
    :try_end_555
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_54c .. :try_end_555} :catch_56e
    .catchall {:try_start_54c .. :try_end_555} :catchall_b2e

    const/16 v31, 0x0

    :try_start_557
    aput-object v10, v13, v31

    const/4 v14, 0x1

    aput-object v11, v13, v14
    :try_end_55c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_557 .. :try_end_55c} :catch_566
    .catchall {:try_start_557 .. :try_end_55c} :catchall_b2e

    .line 151
    move-object/from16 v14, v30

    :try_start_55e
    invoke-virtual {v9, v14, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7
    :try_end_562
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_55e .. :try_end_562} :catch_564
    .catchall {:try_start_55e .. :try_end_562} :catchall_b2e

    int-to-long v11, v7

    goto :goto_588

    .line 92
    :catch_564
    move-exception v0

    goto :goto_573

    :catch_566
    move-exception v0

    goto :goto_56b

    :catch_568
    move-exception v0

    move/from16 v31, v12

    :goto_56b
    move-object/from16 v14, v30

    goto :goto_573

    :catch_56e
    move-exception v0

    move-object/from16 v14, v30

    const/16 v31, 0x0

    :goto_573
    move-object v9, v0

    :try_start_574
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 152
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v7

    .line 153
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v7

    const-string v11, "Error deleting over the limit events. appId"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 154
    invoke-virtual {v7, v11, v12, v9}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-wide v11, v5

    .line 151
    :goto_588
    cmp-long v7, v11, v5

    if-lez v7, :cond_5a1

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v7

    .line 156
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzeu;->zzk()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v7

    const-string v9, "Data lost. Too many events stored on disk, deleted. appId"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 157
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 158
    invoke-virtual {v7, v9, v13, v11}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5a1
    new-instance v7, Lcom/google/android/gms/measurement/internal/zzar;

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzn:Lcom/google/android/gms/measurement/internal/zzge;

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzaw;->zzc:Ljava/lang/String;

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzaw;->zza:Ljava/lang/String;

    iget-wide v5, v2, Lcom/google/android/gms/measurement/internal/zzaw;->zzd:J

    const-wide/16 v18, 0x0

    .line 159
    move-object v11, v7

    move-object v2, v14

    move-object v14, v10

    move-object/from16 v30, v2

    move-object/from16 v32, v15

    const/4 v2, 0x0

    move-object v15, v9

    move-wide/from16 v16, v5

    move-object/from16 v20, v4

    invoke-direct/range {v11 .. v20}, Lcom/google/android/gms/measurement/internal/zzar;-><init>(Lcom/google/android/gms/measurement/internal/zzge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 160
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    iget-object v5, v7, Lcom/google/android/gms/measurement/internal/zzar;->zzb:Ljava/lang/String;

    .line 161
    invoke-virtual {v4, v10, v5}, Lcom/google/android/gms/measurement/internal/zzam;->zzn(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v4

    if-nez v4, :cond_63e

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 162
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 163
    invoke-virtual {v4, v10}, Lcom/google/android/gms/measurement/internal/zzam;->zzf(Ljava/lang/String;)J

    move-result-wide v4

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzg()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/google/android/gms/measurement/internal/zzag;->zzb(Ljava/lang/String;)I

    move-result v6

    int-to-long v11, v6

    cmp-long v4, v4, v11

    if-ltz v4, :cond_620

    if-eqz v8, :cond_620

    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v2

    .line 167
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    const-string v3, "Too many event names used, ignoring event. appId, name, supported count"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzn:Lcom/google/android/gms/measurement/internal/zzge;

    .line 168
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzge;->zzj()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v5

    iget-object v6, v7, Lcom/google/android/gms/measurement/internal/zzar;->zzb:Ljava/lang/String;

    .line 169
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzep;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzg()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/google/android/gms/measurement/internal/zzag;->zzb(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 171
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzes;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzv()Lcom/google/android/gms/measurement/internal/zzlo;

    move-result-object v11

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzF:Lcom/google/android/gms/measurement/internal/zzln;

    const/16 v14, 0x8

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 173
    move-object v13, v10

    invoke-virtual/range {v11 .. v17}, Lcom/google/android/gms/measurement/internal/zzlo;->zzO(Lcom/google/android/gms/measurement/internal/zzln;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_61c
    .catchall {:try_start_574 .. :try_end_61c} :catchall_b2e

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    goto/16 :goto_24d

    .line 73
    :cond_620
    :try_start_620
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzas;

    iget-object v13, v7, Lcom/google/android/gms/measurement/internal/zzar;->zzb:Ljava/lang/String;

    iget-wide v5, v7, Lcom/google/android/gms/measurement/internal/zzar;->zzd:J

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    .line 165
    move-object v11, v4

    move-object v12, v10

    move-wide/from16 v20, v5

    invoke-direct/range {v11 .. v27}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_64c

    .line 215
    :cond_63e
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzn:Lcom/google/android/gms/measurement/internal/zzge;

    iget-wide v8, v4, Lcom/google/android/gms/measurement/internal/zzas;->zzf:J

    .line 174
    invoke-virtual {v7, v5, v8, v9}, Lcom/google/android/gms/measurement/internal/zzar;->zza(Lcom/google/android/gms/measurement/internal/zzge;J)Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v7

    iget-wide v5, v7, Lcom/google/android/gms/measurement/internal/zzar;->zzd:J

    .line 175
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzas;->zzc(J)Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v4

    .line 165
    :goto_64c
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 176
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 177
    invoke-virtual {v5, v4}, Lcom/google/android/gms/measurement/internal/zzam;->zzE(Lcom/google/android/gms/measurement/internal/zzas;)V

    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaB()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzB()V

    .line 180
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v7, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    .line 182
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, v7, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    .line 183
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 184
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgd;->zzu()Lcom/google/android/gms/internal/measurement/zzgc;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzgc;->zzad(I)Lcom/google/android/gms/internal/measurement/zzgc;

    const-string v6, "android"

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/measurement/zzgc;->zzZ(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgc;

    .line 185
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_68e

    .line 186
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/measurement/zzgc;->zzD(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgc;

    .line 187
    :cond_68e
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzq;->zzd:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_69b

    .line 188
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzq;->zzd:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/measurement/zzgc;->zzF(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgc;

    .line 189
    :cond_69b
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzq;->zzc:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6a8

    .line 190
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzq;->zzc:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/measurement/zzgc;->zzG(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgc;

    .line 191
    :cond_6a8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqr;->zzc()Z

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzq;->zzx:Ljava/lang/String;

    .line 192
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6d2

    .line 193
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzg()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v6

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzeh;->zzam:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v6, v2, v8}, Lcom/google/android/gms/measurement/internal/zzag;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v6

    if-nez v6, :cond_6cd

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzg()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v6

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzeh;->zzao:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v6, v8, v9}, Lcom/google/android/gms/measurement/internal/zzag;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v6

    if-eqz v6, :cond_6d2

    .line 195
    :cond_6cd
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzq;->zzx:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/measurement/zzgc;->zzah(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgc;

    .line 196
    :cond_6d2
    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzq;->zzj:J

    const-wide/32 v10, -0x80000000

    cmp-long v6, v8, v10

    if-eqz v6, :cond_6df

    long-to-int v6, v8

    .line 197
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/measurement/zzgc;->zzH(I)Lcom/google/android/gms/internal/measurement/zzgc;

    .line 198
    :cond_6df
    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzq;->zze:J

    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/internal/measurement/zzgc;->zzV(J)Lcom/google/android/gms/internal/measurement/zzgc;

    .line 199
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzq;->zzb:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6f1

    .line 200
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzq;->zzb:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/measurement/zzgc;->zzU(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgc;

    .line 201
    :cond_6f1
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    .line 202
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/zzlg;->zzh(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v6

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzq;->zzv:Ljava/lang/String;

    .line 203
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzai;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/zzai;->zzc(Lcom/google/android/gms/measurement/internal/zzai;)Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v6

    .line 204
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzai;->zzh()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/measurement/zzgc;->zzL(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgc;

    .line 205
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgc;->zzar()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_725

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzq;->zzq:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_725

    .line 206
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzq;->zzq:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/measurement/zzgc;->zzC(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgc;

    .line 207
    :cond_725
    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzq;->zzf:J

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-eqz v6, :cond_730

    .line 208
    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/internal/measurement/zzgc;->zzM(J)Lcom/google/android/gms/internal/measurement/zzgc;

    .line 209
    :cond_730
    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzq;->zzs:J

    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/internal/measurement/zzgc;->zzP(J)Lcom/google/android/gms/internal/measurement/zzgc;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzi:Lcom/google/android/gms/measurement/internal/zzli;

    .line 210
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    iget-object v8, v6, Lcom/google/android/gms/measurement/internal/zzli;->zzf:Lcom/google/android/gms/measurement/internal/zzlg;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzlg;->zzn:Lcom/google/android/gms/measurement/internal/zzge;

    .line 211
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzge;->zzaw()Landroid/content/Context;

    move-result-object v8

    .line 212
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "com.google.android.gms.measurement"

    .line 213
    invoke-static {v9}, Lcom/google/android/gms/internal/measurement/zzhq;->zza(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    sget-object v10, Lcom/google/android/gms/measurement/internal/zzay;->zza:Lcom/google/android/gms/measurement/internal/zzay;

    .line 214
    invoke-static {v8, v9, v10}, Lcom/google/android/gms/internal/measurement/zzhf;->zza(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Runnable;)Lcom/google/android/gms/internal/measurement/zzhf;

    move-result-object v8

    if-nez v8, :cond_759

    .line 215
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v8

    goto :goto_75d

    :cond_759
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhf;->zzc()Ljava/util/Map;

    move-result-object v8

    :goto_75d
    if-eqz v8, :cond_7e4

    .line 216
    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_768

    move-object v14, v2

    goto/16 :goto_7e5

    .line 327
    :cond_768
    new-instance v14, Ljava/util/ArrayList;

    .line 217
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzeh;->zzP:Lcom/google/android/gms/measurement/internal/zzeg;

    .line 218
    invoke-virtual {v9, v2}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 219
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_781
    :goto_781
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7de

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 220
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "measurement.id."

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11
    :try_end_799
    .catchall {:try_start_620 .. :try_end_799} :catchall_b2e

    if-eqz v11, :cond_781

    .line 221
    :try_start_79b
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_781

    .line 222
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v10

    if-lt v10, v9, :cond_781

    iget-object v10, v6, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 224
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v10

    .line 225
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzeu;->zzk()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v10

    const-string v11, "Too many experiment IDs. Number of IDs"

    .line 226
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7cb
    .catch Ljava/lang/NumberFormatException; {:try_start_79b .. :try_end_7cb} :catch_7cc
    .catchall {:try_start_79b .. :try_end_7cb} :catchall_b2e

    goto :goto_7de

    .line 348
    :catch_7cc
    move-exception v0

    move-object v10, v0

    :try_start_7ce
    iget-object v11, v6, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 227
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v11

    .line 228
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzeu;->zzk()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v11

    const-string v12, "Experiment ID NumberFormatException"

    invoke-virtual {v11, v12, v10}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_781

    .line 229
    :cond_7de
    :goto_7de
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7e5

    :cond_7e4
    move-object v14, v2

    .line 216
    :cond_7e5
    :goto_7e5
    if-eqz v14, :cond_7ea

    .line 230
    invoke-virtual {v4, v14}, Lcom/google/android/gms/internal/measurement/zzgc;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzgc;

    .line 231
    :cond_7ea
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    .line 232
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/zzlg;->zzh(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v6

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzq;->zzv:Ljava/lang/String;

    .line 233
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzai;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/zzai;->zzc(Lcom/google/android/gms/measurement/internal/zzai;)Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v6

    .line 234
    sget-object v8, Lcom/google/android/gms/measurement/internal/zzah;->zza:Lcom/google/android/gms/measurement/internal/zzah;

    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/zzai;->zzi(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v8

    if-eqz v8, :cond_838

    .line 235
    iget-boolean v8, v3, Lcom/google/android/gms/measurement/internal/zzq;->zzo:Z

    if-eqz v8, :cond_838

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzk:Lcom/google/android/gms/measurement/internal/zzka;

    .line 236
    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    .line 237
    invoke-virtual {v8, v9, v6}, Lcom/google/android/gms/measurement/internal/zzka;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzai;)Landroid/util/Pair;

    move-result-object v8

    .line 238
    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_838

    .line 239
    iget-boolean v9, v3, Lcom/google/android/gms/measurement/internal/zzq;->zzo:Z

    if-eqz v9, :cond_838

    .line 240
    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/measurement/zzgc;->zzae(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgc;

    .line 241
    iget-object v9, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v9, :cond_838

    .line 242
    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/zzgc;->zzX(Z)Lcom/google/android/gms/internal/measurement/zzgc;

    :cond_838
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzn:Lcom/google/android/gms/measurement/internal/zzge;

    .line 243
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v8

    .line 244
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgy;->zzv()V

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/zzgc;->zzN(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgc;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzn:Lcom/google/android/gms/measurement/internal/zzge;

    .line 245
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v8

    .line 246
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgy;->zzv()V

    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/zzgc;->zzY(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgc;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzn:Lcom/google/android/gms/measurement/internal/zzge;

    .line 247
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v8

    .line 248
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzaq;->zzb()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/zzgc;->zzak(I)Lcom/google/android/gms/internal/measurement/zzgc;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzn:Lcom/google/android/gms/measurement/internal/zzge;

    .line 249
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzge;->zzg()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v8

    .line 250
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzaq;->zzc()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/zzgc;->zzao(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgc;

    .line 251
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpw;->zzc()Z

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzg()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v8

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzeh;->zzaE:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v8, v2, v9}, Lcom/google/android/gms/measurement/internal/zzag;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v8

    if-eqz v8, :cond_883

    .line 253
    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzq;->zzz:J

    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/internal/measurement/zzgc;->zzaj(J)Lcom/google/android/gms/internal/measurement/zzgc;

    :cond_883
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzn:Lcom/google/android/gms/measurement/internal/zzge;

    .line 254
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzge;->zzJ()Z

    move-result v8

    if-eqz v8, :cond_897

    .line 255
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgc;->zzaq()Ljava/lang/String;

    .line 256
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_897

    .line 257
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/measurement/zzgc;->zzO(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgc;

    :cond_897
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 258
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 259
    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzam;->zzj(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v8

    if-nez v8, :cond_90a

    new-instance v8, Lcom/google/android/gms/measurement/internal/zzh;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzn:Lcom/google/android/gms/measurement/internal/zzge;

    .line 260
    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzh;-><init>(Lcom/google/android/gms/measurement/internal/zzge;Ljava/lang/String;)V

    .line 261
    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/zzlg;->zzw(Lcom/google/android/gms/measurement/internal/zzai;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzI(Ljava/lang/String;)V

    .line 262
    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzq;->zzk:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzW(Ljava/lang/String;)V

    .line 263
    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzq;->zzb:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzX(Ljava/lang/String;)V

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzah;->zza:Lcom/google/android/gms/measurement/internal/zzah;

    .line 264
    invoke-virtual {v6, v9}, Lcom/google/android/gms/measurement/internal/zzai;->zzi(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v9

    if-eqz v9, :cond_8d3

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzk:Lcom/google/android/gms/measurement/internal/zzka;

    .line 265
    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    iget-boolean v11, v3, Lcom/google/android/gms/measurement/internal/zzq;->zzo:Z

    .line 266
    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzka;->zzf(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    .line 267
    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzaf(Ljava/lang/String;)V

    :cond_8d3
    nop

    .line 268
    const-wide/16 v9, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzh;->zzab(J)V

    .line 269
    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzh;->zzac(J)V

    .line 270
    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzh;->zzaa(J)V

    .line 271
    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzq;->zzc:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzK(Ljava/lang/String;)V

    .line 272
    iget-wide v9, v3, Lcom/google/android/gms/measurement/internal/zzq;->zzj:J

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzh;->zzL(J)V

    .line 273
    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzq;->zzd:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzJ(Ljava/lang/String;)V

    .line 274
    iget-wide v9, v3, Lcom/google/android/gms/measurement/internal/zzq;->zze:J

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzh;->zzY(J)V

    .line 275
    iget-wide v9, v3, Lcom/google/android/gms/measurement/internal/zzq;->zzf:J

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzh;->zzT(J)V

    .line 276
    iget-boolean v9, v3, Lcom/google/android/gms/measurement/internal/zzq;->zzh:Z

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzad(Z)V

    .line 277
    iget-wide v9, v3, Lcom/google/android/gms/measurement/internal/zzq;->zzs:J

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzh;->zzU(J)V

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 278
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 279
    invoke-virtual {v9, v8}, Lcom/google/android/gms/measurement/internal/zzam;->zzD(Lcom/google/android/gms/measurement/internal/zzh;)V

    :cond_90a
    sget-object v9, Lcom/google/android/gms/measurement/internal/zzah;->zzb:Lcom/google/android/gms/measurement/internal/zzah;

    .line 280
    invoke-virtual {v6, v9}, Lcom/google/android/gms/measurement/internal/zzai;->zzi(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v6

    if-eqz v6, :cond_929

    .line 281
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzh;->zzv()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_929

    .line 282
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzh;->zzv()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/measurement/zzgc;->zzE(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgc;

    .line 283
    :cond_929
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzh;->zzy()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_940

    .line 284
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzh;->zzy()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/measurement/zzgc;->zzT(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgc;

    :cond_940
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 285
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 286
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    invoke-virtual {v6, v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzu(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    move/from16 v13, v31

    .line 287
    :goto_94d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v13, v6, :cond_983

    .line 288
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgm;->zzd()Lcom/google/android/gms/internal/measurement/zzgl;

    move-result-object v6

    .line 289
    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/measurement/internal/zzll;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzll;->zzc:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/measurement/zzgl;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgl;

    .line 290
    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/measurement/internal/zzll;

    iget-wide v8, v8, Lcom/google/android/gms/measurement/internal/zzll;->zzd:J

    invoke-virtual {v6, v8, v9}, Lcom/google/android/gms/internal/measurement/zzgl;->zzg(J)Lcom/google/android/gms/internal/measurement/zzgl;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzi:Lcom/google/android/gms/measurement/internal/zzli;

    .line 291
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 292
    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/measurement/internal/zzll;

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzll;->zze:Ljava/lang/Object;

    invoke-virtual {v8, v6, v9}, Lcom/google/android/gms/measurement/internal/zzli;->zzu(Lcom/google/android/gms/internal/measurement/zzgl;Ljava/lang/Object;)V

    .line 293
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/measurement/zzgc;->zzl(Lcom/google/android/gms/internal/measurement/zzgl;)Lcom/google/android/gms/internal/measurement/zzgc;
    :try_end_980
    .catchall {:try_start_7ce .. :try_end_980} :catchall_b2e

    add-int/lit8 v13, v13, 0x1

    goto :goto_94d

    :cond_983
    :try_start_983
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 294
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 295
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaD()Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzgd;

    .line 296
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 297
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzkt;->zzW()V

    .line 298
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgd;->zzy()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 300
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zzbx()[B

    move-result-object v8

    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzks;->zzf:Lcom/google/android/gms/measurement/internal/zzlg;

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzlg;->zzi:Lcom/google/android/gms/measurement/internal/zzli;

    .line 301
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 302
    invoke-virtual {v9, v8}, Lcom/google/android/gms/measurement/internal/zzli;->zzd([B)J

    move-result-wide v9

    new-instance v11, Landroid/content/ContentValues;

    .line 303
    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 304
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgd;->zzy()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v13, v34

    invoke-virtual {v11, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object/from16 v14, v33

    invoke-virtual {v11, v14, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v12, "metadata"

    .line 306
    invoke-virtual {v11, v12, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_9c9
    .catch Ljava/io/IOException; {:try_start_983 .. :try_end_9c9} :catch_ae4
    .catchall {:try_start_983 .. :try_end_9c9} :catchall_b2e

    .line 307
    :try_start_9c9
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzh()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const-string v12, "raw_events_metadata"

    .line 308
    const/4 v15, 0x4

    invoke-virtual {v8, v12, v2, v11, v15}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_9d3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9c9 .. :try_end_9d3} :catch_aca
    .catch Ljava/io/IOException; {:try_start_9c9 .. :try_end_9d3} :catch_ae4
    .catchall {:try_start_9c9 .. :try_end_9d3} :catchall_b2e

    :try_start_9d3
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 318
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    iget-object v4, v7, Lcom/google/android/gms/measurement/internal/zzar;->zzf:Lcom/google/android/gms/measurement/internal/zzau;

    new-instance v6, Lcom/google/android/gms/measurement/internal/zzat;

    .line 319
    invoke-direct {v6, v4}, Lcom/google/android/gms/measurement/internal/zzat;-><init>(Lcom/google/android/gms/measurement/internal/zzau;)V

    .line 320
    :goto_9df
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9f7

    .line 321
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzat;->zza()Ljava/lang/String;

    move-result-object v4

    .line 322
    move-object/from16 v8, v32

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9f4

    move/from16 v31, v5

    goto :goto_a38

    :cond_9f4
    move-object/from16 v32, v8

    goto :goto_9df

    .line 355
    :cond_9f7
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zzc:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 323
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    iget-object v6, v7, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    iget-object v8, v7, Lcom/google/android/gms/measurement/internal/zzar;->zzb:Ljava/lang/String;

    .line 324
    invoke-virtual {v4, v6, v8}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 325
    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 326
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zza()J

    move-result-wide v16

    iget-object v6, v7, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, v6

    invoke-virtual/range {v15 .. v23}, Lcom/google/android/gms/measurement/internal/zzam;->zzl(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/zzak;

    move-result-object v6

    if-eqz v4, :cond_a37

    iget-wide v11, v6, Lcom/google/android/gms/measurement/internal/zzak;->zze:J

    .line 327
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzg()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v4

    iget-object v6, v7, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzeh;->zzo:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v4, v6, v8}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)I

    move-result v4

    int-to-long v5, v4

    cmp-long v4, v11, v5

    if-gez v4, :cond_a37

    const/16 v31, 0x1

    goto :goto_a38

    :cond_a37
    nop

    .line 328
    :goto_a38
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 329
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzkt;->zzW()V

    .line 330
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v7, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    .line 331
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzks;->zzf:Lcom/google/android/gms/measurement/internal/zzlg;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzlg;->zzi:Lcom/google/android/gms/measurement/internal/zzli;

    .line 332
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 333
    invoke-virtual {v4, v7}, Lcom/google/android/gms/measurement/internal/zzli;->zzj(Lcom/google/android/gms/measurement/internal/zzar;)Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzjk;->zzbx()[B

    move-result-object v4

    new-instance v5, Landroid/content/ContentValues;

    .line 334
    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    iget-object v6, v7, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    .line 335
    invoke-virtual {v5, v13, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "name"

    iget-object v8, v7, Lcom/google/android/gms/measurement/internal/zzar;->zzb:Ljava/lang/String;

    .line 336
    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "timestamp"

    iget-wide v11, v7, Lcom/google/android/gms/measurement/internal/zzar;->zzd:J

    .line 337
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 338
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v14, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "data"

    .line 339
    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v4, "realtime"

    .line 340
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_a87
    .catchall {:try_start_9d3 .. :try_end_a87} :catchall_b2e

    .line 341
    :try_start_a87
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzh()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 342
    move-object/from16 v6, v30

    invoke-virtual {v4, v6, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v8, -0x1

    cmp-long v2, v4, v8

    if-nez v2, :cond_aad

    iget-object v2, v3, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 343
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v2

    .line 344
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    const-string v4, "Failed to insert raw event (got -1). appId"

    iget-object v5, v7, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 345
    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_aac
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a87 .. :try_end_aac} :catch_ab2
    .catchall {:try_start_a87 .. :try_end_aac} :catchall_b2e

    goto :goto_afb

    .line 355
    :cond_aad
    const-wide/16 v2, 0x0

    :try_start_aaf
    iput-wide v2, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zza:J

    goto :goto_afb

    .line 313
    :catch_ab2
    move-exception v0

    move-object v2, v0

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 346
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v3

    .line 347
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v3

    const-string v4, "Error storing raw event. appId"

    iget-object v5, v7, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 348
    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_ac9
    .catchall {:try_start_aaf .. :try_end_ac9} :catchall_b2e

    goto :goto_afb

    .line 317
    :catch_aca
    move-exception v0

    move-object v2, v0

    :try_start_acc
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 309
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v3

    .line 310
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v3

    const-string v5, "Error storing raw event metadata. appId"

    .line 311
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgd;->zzy()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 312
    invoke-virtual {v3, v5, v6, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 313
    throw v2
    :try_end_ae4
    .catch Ljava/io/IOException; {:try_start_acc .. :try_end_ae4} :catch_ae4
    .catchall {:try_start_acc .. :try_end_ae4} :catchall_b2e

    .line 154
    :catch_ae4
    move-exception v0

    move-object v2, v0

    .line 314
    :try_start_ae6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v3

    .line 315
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v3

    const-string v5, "Data loss. Failed to insert raw event metadata. appId"

    .line 316
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgc;->zzaq()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 317
    invoke-virtual {v3, v5, v4, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 345
    :goto_afb
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 349
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 350
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzC()V
    :try_end_b03
    .catchall {:try_start_ae6 .. :try_end_b03} :catchall_b2e

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 72
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 73
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzx()V

    .line 351
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzag()V

    .line 352
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v2

    .line 353
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    .line 354
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long v3, v3, v28

    const-wide/32 v5, 0x7a120

    add-long/2addr v3, v5

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 355
    const-string v4, "Background event processing time, ms"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 371
    :catchall_b2e
    move-exception v0

    move-object v2, v0

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 72
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 73
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzx()V

    .line 370
    throw v2

    .line 371
    :cond_b39
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzlg;->zzd(Lcom/google/android/gms/measurement/internal/zzq;)Lcom/google/android/gms/measurement/internal/zzh;

    return-void
.end method

.method final zzZ()Z
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaB()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzw:Ljava/nio/channels/FileLock;

    const/4 v1, 0x1

    const-string v2, "Storage concurrent access okay"

    if-eqz v0, :cond_21

    .line 2
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_21

    .line 14
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    return v1

    .line 2
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzf()Lcom/google/android/gms/measurement/internal/zzag;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzn:Lcom/google/android/gms/measurement/internal/zzge;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaw()Landroid/content/Context;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    .line 6
    const-string v4, "google_app_measurement.db"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_39
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    .line 7
    invoke-direct {v0, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzx:Ljava/nio/channels/FileChannel;

    .line 8
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzw:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_5a

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    return v1

    .line 10
    :cond_5a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v1, "Storage concurrent data access panic"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V
    :try_end_67
    .catch Ljava/io/FileNotFoundException; {:try_start_39 .. :try_end_67} :catch_86
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_67} :catch_77
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_39 .. :try_end_67} :catch_68

    goto :goto_94

    .line 12
    :catch_68
    move-exception v0

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzk()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "Storage lock already acquired"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_94

    .line 13
    :catch_77
    move-exception v0

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "Failed to access storage lock file"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_94

    .line 14
    :catch_86
    move-exception v0

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "Failed to acquire storage lock"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    :goto_94
    const/4 v0, 0x0

    return v0
.end method

.method final zza()J
    .registers 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzk:Lcom/google/android/gms/measurement/internal/zzka;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzkt;->zzW()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzka;->zze:Lcom/google/android/gms/measurement/internal/zzff;

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzff;->zza()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-nez v5, :cond_37

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzge;->zzv()Lcom/google/android/gms/measurement/internal/zzlo;

    move-result-object v3

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzlo;->zzG()Ljava/security/SecureRandom;

    move-result-object v3

    const v4, 0x5265c00

    invoke-virtual {v3, v4}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v3

    int-to-long v3, v3

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzka;->zze:Lcom/google/android/gms/measurement/internal/zzff;

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    .line 5
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzff;->zzb(J)V

    goto :goto_38

    :cond_37
    nop

    :goto_38
    add-long/2addr v0, v3

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final zzaA()Lcom/google/android/gms/measurement/internal/zzeu;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzn:Lcom/google/android/gms/measurement/internal/zzge;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzge;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    return-object v0
.end method

.method public final zzaB()Lcom/google/android/gms/measurement/internal/zzgb;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzn:Lcom/google/android/gms/measurement/internal/zzge;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzge;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaB()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    return-object v0
.end method

.method public final zzaw()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzn:Lcom/google/android/gms/measurement/internal/zzge;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaw()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final zzax()Lcom/google/android/gms/common/util/Clock;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzn:Lcom/google/android/gms/measurement/internal/zzge;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzge;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public final zzay()Lcom/google/android/gms/measurement/internal/zzab;
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method final zzd(Lcom/google/android/gms/measurement/internal/zzq;)Lcom/google/android/gms/measurement/internal/zzh;
    .registers 13

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaB()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzB()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzq;->zzw:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzC:Ljava/util/Map;

    .line 6
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzlf;

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzq;->zzw:Ljava/lang/String;

    invoke-direct {v3, p0, v4, v1}, Lcom/google/android/gms/measurement/internal/zzlf;-><init>(Lcom/google/android/gms/measurement/internal/zzlg;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzle;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 8
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzj(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v0

    .line 9
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    .line 10
    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzh(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzq;->zzv:Ljava/lang/String;

    .line 11
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzai;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzai;->zzc(Lcom/google/android/gms/measurement/internal/zzai;)Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v2

    .line 12
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzah;->zza:Lcom/google/android/gms/measurement/internal/zzah;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzai;->zzi(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v3

    if-eqz v3, :cond_57

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzk:Lcom/google/android/gms/measurement/internal/zzka;

    .line 13
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    iget-boolean v5, p1, Lcom/google/android/gms/measurement/internal/zzq;->zzo:Z

    .line 14
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzka;->zzf(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_59

    .line 24
    :cond_57
    const-string v3, ""

    .line 14
    :goto_59
    if-nez v0, :cond_82

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzh;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzn:Lcom/google/android/gms/measurement/internal/zzge;

    .line 15
    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/zzh;-><init>(Lcom/google/android/gms/measurement/internal/zzge;Ljava/lang/String;)V

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzah;->zzb:Lcom/google/android/gms/measurement/internal/zzah;

    .line 16
    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/zzai;->zzi(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 17
    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzw(Lcom/google/android/gms/measurement/internal/zzai;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzh;->zzI(Ljava/lang/String;)V

    :cond_73
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzah;->zza:Lcom/google/android/gms/measurement/internal/zzah;

    .line 18
    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/zzai;->zzi(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 19
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzh;->zzaf(Ljava/lang/String;)V

    goto/16 :goto_113

    .line 66
    :cond_80
    goto/16 :goto_113

    :cond_82
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzah;->zza:Lcom/google/android/gms/measurement/internal/zzah;

    .line 20
    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/zzai;->zzi(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v4

    if-eqz v4, :cond_f8

    if-eqz v3, :cond_f8

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzB()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f8

    .line 25
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzh;->zzaf(Ljava/lang/String;)V

    .line 26
    iget-boolean v3, p1, Lcom/google/android/gms/measurement/internal/zzq;->zzo:Z

    if-eqz v3, :cond_f7

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzk:Lcom/google/android/gms/measurement/internal/zzka;

    .line 27
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    .line 28
    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzka;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzai;)Landroid/util/Pair;

    move-result-object v3

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 29
    const-string v4, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f7

    .line 30
    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzw(Lcom/google/android/gms/measurement/internal/zzai;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzh;->zzI(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 31
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 32
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    .line 33
    const-string v4, "_id"

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzam;->zzp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzll;

    move-result-object v2

    if-eqz v2, :cond_f7

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 34
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 35
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    .line 36
    const-string v4, "_lair"

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzam;->zzp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzll;

    move-result-object v2

    if-nez v2, :cond_f7

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v7

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzll;

    .line 38
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    const-string v5, "auto"

    const-string v6, "_lair"

    .line 39
    const-wide/16 v9, 0x1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/measurement/internal/zzll;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 40
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 41
    invoke-virtual {v3, v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzL(Lcom/google/android/gms/measurement/internal/zzll;)Z

    goto :goto_113

    :cond_f7
    goto :goto_113

    .line 22
    :cond_f8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzv()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_112

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzah;->zzb:Lcom/google/android/gms/measurement/internal/zzah;

    .line 23
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzai;->zzi(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v3

    if-eqz v3, :cond_112

    .line 24
    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzw(Lcom/google/android/gms/measurement/internal/zzai;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzh;->zzI(Ljava/lang/String;)V

    goto :goto_113

    :cond_112
    nop

    .line 42
    :goto_113
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzq;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzh;->zzX(Ljava/lang/String;)V

    .line 43
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzq;->zzq:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzh;->zzG(Ljava/lang/String;)V

    .line 44
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzq;->zzk:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12a

    .line 45
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzq;->zzk:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzh;->zzW(Ljava/lang/String;)V

    .line 46
    :cond_12a
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzq;->zze:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_135

    .line 47
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzh;->zzY(J)V

    .line 48
    :cond_135
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzq;->zzc:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_142

    .line 49
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzq;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzh;->zzK(Ljava/lang/String;)V

    .line 50
    :cond_142
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzq;->zzj:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzh;->zzL(J)V

    .line 51
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzq;->zzd:Ljava/lang/String;

    if-eqz v2, :cond_14e

    .line 52
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzh;->zzJ(Ljava/lang/String;)V

    .line 53
    :cond_14e
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzq;->zzf:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzh;->zzT(J)V

    .line 54
    iget-boolean v2, p1, Lcom/google/android/gms/measurement/internal/zzq;->zzh:Z

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzh;->zzad(Z)V

    .line 55
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzq;->zzg:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_165

    .line 56
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzq;->zzg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzh;->zzZ(Ljava/lang/String;)V

    .line 57
    :cond_165
    iget-boolean v2, p1, Lcom/google/android/gms/measurement/internal/zzq;->zzo:Z

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzh;->zzH(Z)V

    .line 58
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzq;->zzr:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzh;->zzae(Ljava/lang/Boolean;)V

    .line 59
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzq;->zzs:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzh;->zzU(J)V

    .line 60
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqr;->zzc()Z

    .line 61
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzg()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzeh;->zzam:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/measurement/internal/zzag;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v2

    if-nez v2, :cond_191

    .line 62
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzg()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzeh;->zzao:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzag;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v2

    if-eqz v2, :cond_196

    .line 63
    :cond_191
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzq;->zzx:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzh;->zzah(Ljava/lang/String;)V

    .line 64
    :cond_196
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzop;->zzc()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzg()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzeh;->zzal:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/measurement/internal/zzag;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v2

    if-eqz v2, :cond_1ab

    .line 67
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzq;->zzt:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzh;->zzag(Ljava/util/List;)V

    goto :goto_1bd

    .line 65
    :cond_1ab
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzop;->zzc()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzg()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzeh;->zzak:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/measurement/internal/zzag;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v2

    if-eqz v2, :cond_1bd

    .line 66
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzh;->zzag(Ljava/util/List;)V

    .line 68
    :cond_1bd
    :goto_1bd
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzra;->zzc()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzg()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzeh;->zzaq:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/measurement/internal/zzag;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v2

    if-eqz v2, :cond_1d1

    .line 69
    iget-boolean v2, p1, Lcom/google/android/gms/measurement/internal/zzq;->zzy:Z

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzh;->zzai(Z)V

    .line 70
    :cond_1d1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpw;->zzc()Z

    .line 71
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzg()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzeh;->zzaE:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/measurement/internal/zzag;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v1

    if-eqz v1, :cond_1e5

    .line 72
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzq;->zzz:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzh;->zzaj(J)V

    .line 73
    :cond_1e5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzam()Z

    move-result p1

    if-eqz p1, :cond_1f3

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 74
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 75
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzD(Lcom/google/android/gms/measurement/internal/zzh;)V

    :cond_1f3
    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/measurement/internal/zzaa;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzh:Lcom/google/android/gms/measurement/internal/zzaa;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    return-object v0
.end method

.method public final zzg()Lcom/google/android/gms/measurement/internal/zzag;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzn:Lcom/google/android/gms/measurement/internal/zzge;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzge;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzf()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    return-object v0
.end method

.method final zzh(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzai;
    .registers 8

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzai;->zza:Lcom/google/android/gms/measurement/internal/zzai;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaB()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzB()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzB:Ljava/util/Map;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzai;

    if-nez v0, :cond_71

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkt;->zzW()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzh()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "select consent_state from consent_settings where app_id=? limit 1;"

    .line 10
    const/4 v5, 0x0

    :try_start_31
    invoke-virtual {v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_35
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_31 .. :try_end_35} :catch_5a
    .catchall {:try_start_31 .. :try_end_35} :catchall_58

    .line 11
    :try_start_35
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 13
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_3f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_35 .. :try_end_3f} :catch_56
    .catchall {:try_start_35 .. :try_end_3f} :catchall_54

    if-eqz v5, :cond_4c

    .line 12
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_4c

    .line 19
    :cond_45
    if-eqz v5, :cond_4a

    .line 12
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 18
    :cond_4a
    const-string v0, "G1"

    :cond_4c
    :goto_4c
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v0

    .line 19
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzV(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzai;)V

    goto :goto_72

    .line 17
    :catchall_54
    move-exception p1

    goto :goto_6b

    :catch_56
    move-exception p1

    goto :goto_5b

    .line 16
    :catchall_58
    move-exception p1

    goto :goto_6b

    .line 12
    :catch_5a
    move-exception p1

    :goto_5b
    :try_start_5b
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v1, "Database error"

    invoke-virtual {v0, v1, v4, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    throw p1
    :try_end_6b
    .catchall {:try_start_5b .. :try_end_6b} :catchall_54

    :goto_6b
    if-eqz v5, :cond_70

    .line 12
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 17
    :cond_70
    throw p1

    .line 12
    :cond_71
    nop

    .line 19
    :goto_72
    return-object v0
.end method

.method public final zzi()Lcom/google/android/gms/measurement/internal/zzam;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    return-object v0
.end method

.method public final zzj()Lcom/google/android/gms/measurement/internal/zzep;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzn:Lcom/google/android/gms/measurement/internal/zzge;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzj()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v0

    return-object v0
.end method

.method public final zzl()Lcom/google/android/gms/measurement/internal/zzfa;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzd:Lcom/google/android/gms/measurement/internal/zzfa;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    return-object v0
.end method

.method public final zzm()Lcom/google/android/gms/measurement/internal/zzfc;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzf:Lcom/google/android/gms/measurement/internal/zzfc;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network broadcast receiver not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzo()Lcom/google/android/gms/measurement/internal/zzfv;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzc:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    return-object v0
.end method

.method final zzq()Lcom/google/android/gms/measurement/internal/zzge;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzn:Lcom/google/android/gms/measurement/internal/zzge;

    return-object v0
.end method

.method public final zzr()Lcom/google/android/gms/measurement/internal/zzio;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzj:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    return-object v0
.end method

.method public final zzs()Lcom/google/android/gms/measurement/internal/zzka;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzk:Lcom/google/android/gms/measurement/internal/zzka;

    return-object v0
.end method

.method public final zzu()Lcom/google/android/gms/measurement/internal/zzli;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzi:Lcom/google/android/gms/measurement/internal/zzli;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzal(Lcom/google/android/gms/measurement/internal/zzkt;)Lcom/google/android/gms/measurement/internal/zzkt;

    return-object v0
.end method

.method public final zzv()Lcom/google/android/gms/measurement/internal/zzlo;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzn:Lcom/google/android/gms/measurement/internal/zzge;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzge;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzv()Lcom/google/android/gms/measurement/internal/zzlo;

    move-result-object v0

    return-object v0
.end method

.method final zzw(Lcom/google/android/gms/measurement/internal/zzai;)Ljava/lang/String;
    .registers 6

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzah;->zzb:Lcom/google/android/gms/measurement/internal/zzah;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzi(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result p1

    if-eqz p1, :cond_2b

    const/16 p1, 0x10

    new-array p1, p1, [B

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzv()Lcom/google/android/gms/measurement/internal/zzlo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzlo;->zzG()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/math/BigInteger;

    .line 3
    invoke-direct {v3, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 p1, 0x0

    aput-object v3, v2, p1

    const-string p1, "%032x"

    invoke-static {v0, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2b
    const/4 p1, 0x0

    return-object p1
.end method

.method final zzx(Lcom/google/android/gms/measurement/internal/zzq;)Ljava/lang/String;
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaB()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzkz;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzkz;-><init>(Lcom/google/android/gms/measurement/internal/zzlg;Lcom/google/android/gms/measurement/internal/zzq;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzh(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    :try_start_d
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    const-wide/16 v2, 0x7530

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_17
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d .. :try_end_17} :catch_1c
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_17} :catch_1a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_d .. :try_end_17} :catch_18

    return-object v0

    :catch_18
    move-exception v0

    goto :goto_1d

    :catch_1a
    move-exception v0

    goto :goto_1d

    :catch_1c
    move-exception v0

    .line 4
    :goto_1d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzq;->zza:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    const-string v2, "Failed to get app instance id. appId"

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method final zzz(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaB()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzq:Ljava/util/List;

    if-nez v0, :cond_12

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzq:Ljava/util/List;

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlg;->zzq:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
