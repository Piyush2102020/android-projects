.class public final Lcom/google/android/gms/measurement/internal/zzel;
.super Lcom/google/android/gms/measurement/internal/zzf;
.source "com.google.android.gms:play-services-measurement-impl@@21.2.2"


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private zzc:I

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:J

.field private final zzg:J

.field private zzh:Ljava/util/List;

.field private zzi:Ljava/lang/String;

.field private zzj:I

.field private zzk:Ljava/lang/String;

.field private zzl:Ljava/lang/String;

.field private zzm:Ljava/lang/String;

.field private zzn:J

.field private zzo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzge;J)V
    .registers 6

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzf;-><init>(Lcom/google/android/gms/measurement/internal/zzge;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzn:J

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzo:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzg:J

    return-void
.end method


# virtual methods
.method protected final zzd()V
    .registers 12
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "appId",
            "appStore",
            "appName",
            "gmpAppId",
            "gaAppId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaw()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzge;->zzaw()Landroid/content/Context;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, -0x80000000

    const-string v3, ""

    const/4 v4, 0x0

    const-string v5, "Unknown"

    const-string/jumbo v6, "unknown"

    if-nez v1, :cond_36

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 5
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v7

    .line 6
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v7

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 7
    const-string v9, "PackageManager is null, app identity information might be inaccurate. appId"

    invoke-virtual {v7, v9, v8}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v8, v5

    goto/16 :goto_a2

    .line 8
    :cond_36
    :try_start_36
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_3a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_36 .. :try_end_3a} :catch_3b

    goto :goto_4f

    .line 66
    :catch_3b
    move-exception v7

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 9
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v7

    .line 10
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v7

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 11
    const-string v9, "Error retrieving app installer package name. appId"

    invoke-virtual {v7, v9, v8}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    :goto_4f
    if-nez v6, :cond_54

    const-string v6, "manual_install"

    goto :goto_5e

    .line 20
    :cond_54
    nop

    .line 12
    const-string v7, "com.android.vending"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5e

    move-object v6, v3

    .line 8
    :cond_5e
    :goto_5e
    :try_start_5e
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 13
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzge;->zzaw()Landroid/content/Context;

    move-result-object v7

    .line 14
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    if-eqz v7, :cond_89

    .line 15
    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 16
    invoke-virtual {v1, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 17
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7f

    .line 18
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_7e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5e .. :try_end_7e} :catch_8b

    goto :goto_80

    .line 17
    :cond_7f
    move-object v8, v5

    .line 19
    :goto_80
    :try_start_80
    iget-object v5, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 20
    iget v2, v7, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_84
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_80 .. :try_end_84} :catch_85

    goto :goto_a2

    .line 23
    :catch_85
    move-exception v7

    move-object v7, v5

    move-object v5, v8

    goto :goto_8d

    .line 20
    :cond_89
    move-object v8, v5

    goto :goto_a2

    .line 11
    :catch_8b
    move-exception v7

    move-object v7, v5

    :goto_8d
    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 21
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v8

    .line 22
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v8

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 23
    const-string v10, "Error retrieving package info. appId, appName"

    invoke-virtual {v8, v10, v9, v5}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v8, v5

    move-object v5, v7

    .line 7
    :goto_a2
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzel;->zza:Ljava/lang/String;

    iput-object v6, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzd:Ljava/lang/String;

    iput-object v5, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzb:Ljava/lang/String;

    iput v2, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzc:I

    iput-object v8, p0, Lcom/google/android/gms/measurement/internal/zzel;->zze:Ljava/lang/String;

    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzf:J

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 24
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzge;->zzw()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_cc

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 25
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzge;->zzx()Ljava/lang/String;

    move-result-object v2

    const-string v5, "am"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cc

    const/4 v2, 0x1

    goto :goto_cd

    .line 43
    :cond_cc
    move v2, v4

    .line 25
    :goto_cd
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 26
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzge;->zza()I

    move-result v5

    packed-switch v5, :pswitch_data_256

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 44
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v6

    .line 45
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzeu;->zzi()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v6

    const-string v7, "App measurement disabled due to denied storage consent"

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    goto/16 :goto_166

    .line 41
    :pswitch_e7
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 42
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v6

    .line 43
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzeu;->zzi()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v6

    const-string v7, "App measurement disabled via the global data collection setting"

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    goto :goto_166

    .line 38
    :pswitch_f7
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 39
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v6

    .line 40
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzeu;->zzl()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v6

    .line 41
    const-string v7, "App measurement deactivated via resources. This method is being deprecated. Please refer to https://firebase.google.com/support/guides/disable-analytics"

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    goto :goto_166

    .line 36
    :pswitch_107
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 37
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v6

    .line 38
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v6

    const-string v7, "App measurement disabled via the init parameters"

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    goto :goto_166

    .line 34
    :pswitch_117
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 35
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v6

    .line 36
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzeu;->zzi()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v6

    const-string v7, "App measurement disabled via the manifest"

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    goto :goto_166

    .line 32
    :pswitch_127
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 33
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v6

    .line 34
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzeu;->zzi()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v6

    const-string v7, "App measurement disabled by setAnalyticsCollectionEnabled(false)"

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    goto :goto_166

    .line 30
    :pswitch_137
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 31
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v6

    .line 32
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v6

    const-string v7, "App measurement deactivated via the init parameters"

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    goto :goto_166

    .line 28
    :pswitch_147
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 29
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v6

    .line 30
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzeu;->zzi()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v6

    const-string v7, "App measurement deactivated via the manifest"

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    goto :goto_166

    .line 58
    :pswitch_157
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 27
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v6

    .line 28
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v6

    const-string v7, "App measurement collection enabled"

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    .line 45
    :goto_166
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzk:Ljava/lang/String;

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzl:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 46
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzge;->zzay()Lcom/google/android/gms/measurement/internal/zzab;

    if-eqz v2, :cond_179

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 47
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzge;->zzw()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzl:Ljava/lang/String;

    :cond_179
    :try_start_179
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 48
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzge;->zzaw()Landroid/content/Context;

    move-result-object v2

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 49
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzge;->zzz()Ljava/lang/String;

    move-result-object v6

    const-string v7, "google_app_id"

    .line 50
    invoke-static {v2, v7, v6}, Lcom/google/android/gms/measurement/internal/zzip;->zzc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_192

    goto :goto_193

    .line 58
    :cond_192
    move-object v3, v2

    .line 51
    :goto_193
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzk:Ljava/lang/String;

    .line 52
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 53
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzge;->zzaw()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 54
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzge;->zzz()Ljava/lang/String;

    move-result-object v3

    .line 55
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 57
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1b5

    goto :goto_1b9

    .line 58
    :cond_1b5
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzfw;->zza(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 57
    :goto_1b9
    const-string v2, "admob_app_id"

    .line 59
    invoke-static {v2, v6, v3}, Lcom/google/android/gms/measurement/internal/zzfw;->zzb(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzl:Ljava/lang/String;

    :cond_1c1
    if-nez v5, :cond_1f6

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 60
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v2

    .line 61
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    const-string v3, "App measurement enabled for app package, google app id"

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzel;->zza:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzk:Ljava/lang/String;

    .line 62
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1dc

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzl:Ljava/lang/String;

    goto :goto_1de

    .line 75
    :cond_1dc
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzk:Ljava/lang/String;

    .line 63
    :goto_1de
    invoke-virtual {v2, v3, v5, v6}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1e1
    .catch Ljava/lang/IllegalStateException; {:try_start_179 .. :try_end_1e1} :catch_1e2

    goto :goto_1f6

    .line 12
    :catch_1e2
    move-exception v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 64
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v3

    .line 65
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v3

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 66
    const-string v5, "Fetching Google App Id failed with exception. appId"

    invoke-virtual {v3, v5, v0, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    :cond_1f6
    :goto_1f6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzh:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 67
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzay()Lcom/google/android/gms/measurement/internal/zzab;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 68
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzf()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    .line 69
    const-string v2, "analytics.safelisted_events"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzag;->zzp(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_20d

    goto :goto_242

    .line 70
    :cond_20d
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_223

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 71
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzl()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v2, "Safelisted event list is empty. Ignoring"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    goto :goto_244

    .line 73
    :cond_223
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_227
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_242

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 74
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzge;->zzv()Lcom/google/android/gms/measurement/internal/zzlo;

    move-result-object v5

    .line 75
    const-string v6, "safelisted event"

    invoke-virtual {v5, v6, v3}, Lcom/google/android/gms/measurement/internal/zzlo;->zzac(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_227

    goto :goto_244

    .line 69
    :cond_242
    :goto_242
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzh:Ljava/util/List;

    :goto_244
    if-eqz v1, :cond_253

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 76
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaw()Landroid/content/Context;

    move-result-object v0

    .line 77
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/InstantApps;->isInstantApp(Landroid/content/Context;)Z

    move-result v0

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzj:I

    return-void

    :cond_253
    iput v4, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzj:I

    return-void

    :pswitch_data_256
    .packed-switch 0x0
        :pswitch_157
        :pswitch_147
        :pswitch_137
        :pswitch_127
        :pswitch_117
        :pswitch_107
        :pswitch_f7
        :pswitch_e7
    .end packed-switch
.end method

.method protected final zzf()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method final zzh()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zza()V

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzj:I

    return v0
.end method

.method final zzi()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zza()V

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzc:I

    return v0
.end method

.method final zzj(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzq;
    .registers 42

    .line 1
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 2
    new-instance v36, Lcom/google/android/gms/measurement/internal/zzq;

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzel;->zzl()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzel;->zzm()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzf;->zza()V

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzel;->zzb:Ljava/lang/String;

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzf;->zza()V

    iget v0, v1, Lcom/google/android/gms/measurement/internal/zzel;->zzc:I

    int-to-long v6, v0

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzf;->zza()V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzel;->zzd:Ljava/lang/String;

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzel;->zzd:Ljava/lang/String;

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzf()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzag;->zzh()J

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzf;->zza()V

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    iget-wide v9, v1, Lcom/google/android/gms/measurement/internal/zzel;->zzf:J

    const-wide/16 v11, 0x0

    cmp-long v0, v9, v11

    const/4 v2, 0x0

    if-nez v0, :cond_d9

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzel;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzv()Lcom/google/android/gms/measurement/internal/zzlo;

    move-result-object v9

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaw()Landroid/content/Context;

    move-result-object v0

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzge;->zzaw()Landroid/content/Context;

    move-result-object v10

    .line 13
    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 18
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzlo;->zzF()Ljava/security/MessageDigest;

    move-result-object v14

    const-wide/16 v15, -0x1

    if-nez v14, :cond_78

    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v9, "Could not get MD5 instance"

    invoke-virtual {v0, v9}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    move-wide v9, v15

    goto :goto_d5

    .line 47
    :cond_78
    if-eqz v13, :cond_d4

    .line 13
    :try_start_7a
    invoke-virtual {v9, v0, v10}, Lcom/google/android/gms/measurement/internal/zzlo;->zzah(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_bf

    .line 21
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    iget-object v10, v9, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 22
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzge;->zzaw()Landroid/content/Context;

    move-result-object v10

    .line 23
    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/16 v13, 0x40

    invoke-virtual {v0, v10, v13}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 24
    iget-object v10, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v10, :cond_af

    iget-object v10, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v10, v10

    if-lez v10, :cond_af

    .line 27
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzlo;->zzp([B)J

    move-result-wide v9

    move-wide v15, v9

    goto :goto_c0

    :cond_af
    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzk()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v10, "Could not get signatures"

    invoke-virtual {v0, v10}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V
    :try_end_be
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7a .. :try_end_be} :catch_c2

    goto :goto_c0

    :cond_bf
    move-wide v15, v11

    .line 28
    :goto_c0
    move-wide v9, v15

    goto :goto_d5

    .line 49
    :catch_c2
    move-exception v0

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 29
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v9

    .line 30
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v9

    const-string v10, "Package name not found"

    invoke-virtual {v9, v10, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    move-wide v9, v11

    goto :goto_d5

    .line 26
    :cond_d4
    move-wide v9, v11

    .line 20
    :goto_d5
    iput-wide v9, v1, Lcom/google/android/gms/measurement/internal/zzel;->zzf:J

    move-wide v13, v9

    goto :goto_da

    .line 26
    :cond_d9
    move-wide v13, v9

    .line 20
    :goto_da
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzel;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzJ()Z

    move-result v15

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzm()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object v0

    .line 33
    iget-boolean v0, v0, Lcom/google/android/gms/measurement/internal/zzfj;->zzl:Z

    const/4 v9, 0x1

    xor-int/lit8 v16, v0, 0x1

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzel;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzJ()Z

    move-result v0

    const/4 v10, 0x0

    if-nez v0, :cond_fb

    move-object/from16 v20, v10

    goto/16 :goto_18f

    .line 36
    :cond_fb
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzrg;->zzc()Z

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzf()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    .line 36
    sget-object v11, Lcom/google/android/gms/measurement/internal/zzeh;->zzac:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v0, v10, v11}, Lcom/google/android/gms/measurement/internal/zzag;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v0

    if-eqz v0, :cond_11f

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 50
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v11, "Disabled IID for tests."

    invoke-virtual {v0, v11}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    move-object/from16 v20, v10

    goto/16 :goto_18f

    :cond_11f
    :try_start_11f
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 38
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaw()Landroid/content/Context;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v11, "com.google.firebase.analytics.FirebaseAnalytics"

    .line 40
    invoke-virtual {v0, v11}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_12f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_11f .. :try_end_12f} :catch_18c

    if-nez v0, :cond_134

    move-object/from16 v20, v10

    goto :goto_18f

    :cond_134
    :try_start_134
    const-string v11, "getInstance"

    new-array v12, v9, [Ljava/lang/Class;

    const-class v19, Landroid/content/Context;

    aput-object v19, v12, v2

    .line 41
    invoke-virtual {v0, v11, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    new-array v12, v9, [Ljava/lang/Object;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 42
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzge;->zzaw()Landroid/content/Context;

    move-result-object v9

    aput-object v9, v12, v2

    .line 43
    invoke-virtual {v11, v10, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9
    :try_end_14e
    .catch Ljava/lang/Exception; {:try_start_134 .. :try_end_14e} :catch_179

    if-nez v9, :cond_153

    move-object/from16 v20, v10

    goto :goto_18f

    :cond_153
    :try_start_153
    const-string v11, "getFirebaseInstanceId"

    new-array v12, v2, [Ljava/lang/Class;

    .line 46
    invoke-virtual {v0, v11, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v11, v2, [Ljava/lang/Object;

    .line 47
    invoke-virtual {v0, v9, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_163
    .catch Ljava/lang/Exception; {:try_start_153 .. :try_end_163} :catch_166

    move-object/from16 v20, v0

    goto :goto_18f

    .line 45
    :catch_166
    move-exception v0

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 48
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzl()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v9, "Failed to retrieve Firebase Instance Id"

    invoke-virtual {v0, v9}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    move-object/from16 v20, v10

    goto :goto_18f

    .line 92
    :catch_179
    move-exception v0

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 44
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzm()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v9, "Failed to obtain Firebase Analytics instance"

    invoke-virtual {v0, v9}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    move-object/from16 v20, v10

    goto :goto_18f

    .line 92
    :catch_18c
    move-exception v0

    move-object/from16 v20, v10

    .line 35
    :goto_18f
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzel;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 52
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzm()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object v9

    .line 53
    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzfj;->zzc:Lcom/google/android/gms/measurement/internal/zzff;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzff;->zza()J

    move-result-wide v11

    const-wide/16 v17, 0x0

    cmp-long v9, v11, v17

    if-nez v9, :cond_1a8

    iget-wide v11, v0, Lcom/google/android/gms/measurement/internal/zzge;->zzc:J

    move-object/from16 v21, v3

    move-wide/from16 v22, v11

    goto :goto_1b2

    .line 64
    :cond_1a8
    move-object/from16 v21, v3

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzge;->zzc:J

    .line 54
    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    move-wide/from16 v22, v2

    .line 55
    :goto_1b2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzf;->zza()V

    iget v11, v1, Lcom/google/android/gms/measurement/internal/zzel;->zzj:I

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 56
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzf()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzag;->zzr()Z

    move-result v24

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 58
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzm()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfj;->zza()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 60
    const-string v2, "deferred_analytics_collection"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v25

    .line 61
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzf;->zza()V

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzel;->zzl:Ljava/lang/String;

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 62
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzf()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    .line 63
    const-string v2, "google_analytics_default_allow_ad_personalization_signals"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzag;->zzk(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_1eb

    move-object/from16 v26, v10

    goto :goto_1f7

    .line 64
    :cond_1eb
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object/from16 v26, v0

    .line 63
    :goto_1f7
    iget-wide v2, v1, Lcom/google/android/gms/measurement/internal/zzel;->zzg:J

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzel;->zzh:Ljava/util/List;

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 65
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzm()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzc()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzh()Ljava/lang/String;

    move-result-object v30

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzel;->zzi:Ljava/lang/String;

    if-nez v0, :cond_219

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 67
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzv()Lcom/google/android/gms/measurement/internal/zzlo;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzlo;->zzC()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/measurement/internal/zzel;->zzi:Ljava/lang/String;

    :cond_219
    move-object/from16 v27, v9

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzel;->zzi:Ljava/lang/String;

    .line 69
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqr;->zzc()Z

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 70
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzf()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    .line 71
    move-wide/from16 v31, v2

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzeh;->zzan:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v0, v10, v2}, Lcom/google/android/gms/measurement/internal/zzag;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v0

    if-eqz v0, :cond_26b

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    iget-wide v2, v1, Lcom/google/android/gms/measurement/internal/zzel;->zzn:J

    const-wide/16 v17, 0x0

    cmp-long v0, v2, v17

    if-nez v0, :cond_23e

    move/from16 v33, v11

    goto :goto_25f

    .line 79
    :cond_23e
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 73
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    .line 74
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    move/from16 v33, v11

    iget-wide v10, v1, Lcom/google/android/gms/measurement/internal/zzel;->zzn:J

    sub-long/2addr v2, v10

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzel;->zzm:Ljava/lang/String;

    if-eqz v0, :cond_25f

    const-wide/32 v10, 0x5265c00

    cmp-long v0, v2, v10

    if-lez v0, :cond_25f

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzel;->zzo:Ljava/lang/String;

    if-nez v0, :cond_25f

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzel;->zzo()V

    .line 72
    :cond_25f
    :goto_25f
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzel;->zzm:Ljava/lang/String;

    if-nez v0, :cond_266

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzel;->zzo()V

    :cond_266
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzel;->zzm:Ljava/lang/String;

    move-object/from16 v34, v0

    goto :goto_271

    .line 75
    :cond_26b
    move/from16 v33, v11

    const-wide/16 v17, 0x0

    const/16 v34, 0x0

    .line 76
    :goto_271
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 77
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzf()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 78
    const-string v2, "google_analytics_sgtm_upload_enabled"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzag;->zzk(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_284

    const/16 v35, 0x0

    goto :goto_28a

    .line 79
    :cond_284
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move/from16 v35, v0

    .line 80
    :goto_28a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpw;->zzc()Z

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 81
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzf()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzeh;->zzaD:Lcom/google/android/gms/measurement/internal/zzeg;

    .line 82
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/measurement/internal/zzag;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v0

    if-eqz v0, :cond_2e8

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 83
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzv()Lcom/google/android/gms/measurement/internal/zzlo;

    move-result-object v2

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzel;->zzl()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 85
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaw()Landroid/content/Context;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_2b3

    goto :goto_2e5

    .line 93
    :cond_2b3
    :try_start_2b3
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 87
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaw()Landroid/content/Context;

    move-result-object v0

    .line 88
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0
    :try_end_2bd
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2b3 .. :try_end_2bd} :catch_2cb

    const/4 v10, 0x0

    :try_start_2be
    invoke-virtual {v0, v3, v10}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_2c7

    .line 89
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_2c6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2be .. :try_end_2c6} :catch_2c9

    goto :goto_2e2

    :cond_2c7
    move v2, v10

    goto :goto_2e2

    .line 26
    :catch_2c9
    move-exception v0

    goto :goto_2cd

    :catch_2cb
    move-exception v0

    const/4 v10, 0x0

    :goto_2cd
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 90
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzay()Lcom/google/android/gms/measurement/internal/zzab;

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 91
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzi()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v2, "PackageManager failed to find running app: app_id"

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    move v2, v10

    .line 89
    :goto_2e2
    int-to-long v2, v2

    move-wide/from16 v17, v2

    .line 86
    :goto_2e5
    move-wide/from16 v37, v17

    goto :goto_2ea

    .line 89
    :cond_2e8
    move-wide/from16 v37, v17

    .line 86
    :goto_2ea
    const-wide/32 v2, 0x12cc8

    move-object/from16 v39, v9

    move-object/from16 v28, v27

    move-wide v9, v2

    const-wide/16 v17, 0x0

    const/16 v29, 0x0

    .line 93
    move-object/from16 v2, v36

    move-object/from16 v3, v21

    move-object/from16 v27, v12

    move/from16 v21, v33

    move-wide v11, v13

    move-object/from16 v13, p1

    move v14, v15

    move/from16 v15, v16

    move-object/from16 v16, v20

    move-wide/from16 v19, v22

    move/from16 v22, v24

    move/from16 v23, v25

    move-object/from16 v24, v27

    move-object/from16 v25, v26

    move-wide/from16 v26, v31

    move-object/from16 v31, v39

    move-object/from16 v32, v34

    move/from16 v33, v35

    move-wide/from16 v34, v37

    invoke-direct/range {v2 .. v35}, Lcom/google/android/gms/measurement/internal/zzq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V

    return-object v36
.end method

.method final zzk()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzl:Ljava/lang/String;

    return-object v0
.end method

.method final zzl()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzel;->zza:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzel;->zza:Ljava/lang/String;

    return-object v0
.end method

.method final zzm()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzk:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzk:Ljava/lang/String;

    return-object v0
.end method

.method final zzn()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzh:Ljava/util/List;

    return-object v0
.end method

.method final zzo()V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzm()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzc()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzah;->zzb:Lcom/google/android/gms/measurement/internal/zzah;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzai;->zzi(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzc()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v3, "Analytics Storage consent is not granted"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_4a

    .line 15
    :cond_28
    const/16 v0, 0x10

    new-array v0, v0, [B

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 7
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzge;->zzv()Lcom/google/android/gms/measurement/internal/zzlo;

    move-result-object v3

    .line 8
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzlo;->zzG()Ljava/security/SecureRandom;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v2, [Ljava/lang/Object;

    new-instance v5, Ljava/math/BigInteger;

    .line 9
    invoke-direct {v5, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v5, v4, v1

    const-string v0, "%032x"

    invoke-static {v3, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 6
    :goto_4a
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 10
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v3

    .line 11
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzeu;->zzc()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    if-nez v0, :cond_5b

    const-string v4, "null"

    goto :goto_5d

    .line 15
    :cond_5b
    const-string v4, "not null"

    .line 11
    :goto_5d
    aput-object v4, v2, v1

    .line 12
    const-string v1, "Resetting session stitching token to %s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {v3, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzm:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzn:J

    return-void
.end method

.method final zzp(Ljava/lang/String;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzo:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v1, 0x1

    :cond_c
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzo:Ljava/lang/String;

    return v1
.end method