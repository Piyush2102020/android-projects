.class final Lcom/google/android/gms/measurement/internal/zzht;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.2.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Landroid/os/Bundle;

.field final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzij;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzij;Landroid/os/Bundle;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzht;->zzb:Lcom/google/android/gms/measurement/internal/zzij;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzht;->zza:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 28

    .line 1
    move-object/from16 v1, p0

    const-string v0, "creation_timestamp"

    const-string v2, "app_id"

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzht;->zzb:Lcom/google/android/gms/measurement/internal/zzij;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzht;->zza:Landroid/os/Bundle;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzf;->zza()V

    .line 3
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-string v5, "name"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzij;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 5
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzge;->zzJ()Z

    move-result v5

    if-nez v5, :cond_35

    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    .line 8
    const-string v2, "Conditional property not cleared since app measurement is disabled"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    return-void

    :cond_35
    const-string v11, ""

    .line 9
    new-instance v15, Lcom/google/android/gms/measurement/internal/zzlj;

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v6, v15

    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/measurement/internal/zzlj;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    :try_start_40
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 10
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzge;->zzv()Lcom/google/android/gms/measurement/internal/zzlo;

    move-result-object v6

    .line 11
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v5, "expired_event_name"

    .line 12
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v5, "expired_event_params"

    .line 13
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    const-string v10, ""

    .line 14
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    const/4 v13, 0x1

    const/4 v14, 0x1

    .line 15
    invoke-virtual/range {v6 .. v14}, Lcom/google/android/gms/measurement/internal/zzlo;->zzz(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v26
    :try_end_62
    .catch Ljava/lang/IllegalArgumentException; {:try_start_40 .. :try_end_62} :catch_9b

    .line 16
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzac;

    .line 17
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 18
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 19
    const-string v0, "active"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    .line 20
    const-string/jumbo v0, "trigger_event_name"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 21
    const-string/jumbo v0, "trigger_timeout"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v21

    .line 22
    const-string/jumbo v0, "time_to_live"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v24

    const-string v14, ""

    const/16 v20, 0x0

    const/16 v23, 0x0

    move-object v12, v5

    invoke-direct/range {v12 .. v26}, Lcom/google/android/gms/measurement/internal/zzac;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzlj;JZLjava/lang/String;Lcom/google/android/gms/measurement/internal/zzaw;JLcom/google/android/gms/measurement/internal/zzaw;JLcom/google/android/gms/measurement/internal/zzaw;)V

    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/zze;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzt()Lcom/google/android/gms/measurement/internal/zzjy;

    move-result-object v0

    .line 24
    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzjy;->zzE(Lcom/google/android/gms/measurement/internal/zzac;)V

    return-void

    :catch_9b
    move-exception v0

    return-void
.end method