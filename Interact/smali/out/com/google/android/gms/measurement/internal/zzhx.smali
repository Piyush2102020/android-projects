.class final Lcom/google/android/gms/measurement/internal/zzhx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.2.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/measurement/zzcf;

.field final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzij;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzij;Lcom/google/android/gms/internal/measurement/zzcf;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhx;->zzb:Lcom/google/android/gms/measurement/internal/zzij;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzhx;->zza:Lcom/google/android/gms/internal/measurement/zzcf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhx;->zzb:Lcom/google/android/gms/measurement/internal/zzij;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zze;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzu()Lcom/google/android/gms/measurement/internal/zzko;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqo;->zzc()Z

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzge;->zzf()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v1

    .line 2
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzeh;->zzau:Lcom/google/android/gms/measurement/internal/zzeg;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzag;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v1

    if-eqz v1, :cond_7a

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzge;->zzm()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfj;->zzc()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v1

    .line 8
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzah;->zzb:Lcom/google/android/gms/measurement/internal/zzah;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzi(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v1

    if-nez v1, :cond_3d

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzl()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    .line 18
    const-string v1, "Analytics storage consent denied; will not get session id"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_8a

    .line 20
    :cond_3d
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzge;->zzm()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzge;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    .line 11
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfj;->zzk(J)Z

    move-result v1

    if-nez v1, :cond_78

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzge;->zzm()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object v1

    .line 13
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfj;->zzk:Lcom/google/android/gms/measurement/internal/zzff;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzff;->zza()J

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-nez v1, :cond_67

    move-object v0, v3

    goto :goto_8a

    :cond_67
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzm()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object v0

    .line 15
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfj;->zzk:Lcom/google/android/gms/measurement/internal/zzff;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzff;->zza()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_8a

    :cond_78
    move-object v0, v3

    goto :goto_8a

    :cond_7a
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzl()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v1, "getSessionId has been disabled."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    move-object v0, v3

    .line 18
    :goto_8a
    if-eqz v0, :cond_9e

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhx;->zzb:Lcom/google/android/gms/measurement/internal/zzij;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzij;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzge;->zzv()Lcom/google/android/gms/measurement/internal/zzlo;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhx;->zza:Lcom/google/android/gms/internal/measurement/zzcf;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzlo;->zzV(Lcom/google/android/gms/internal/measurement/zzcf;J)V

    return-void

    :cond_9e
    :try_start_9e
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhx;->zza:Lcom/google/android/gms/internal/measurement/zzcf;

    .line 20
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/measurement/zzcf;->zze(Landroid/os/Bundle;)V
    :try_end_a3
    .catch Landroid/os/RemoteException; {:try_start_9e .. :try_end_a3} :catch_a4

    return-void

    .line 5
    :catch_a4
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhx;->zzb:Lcom/google/android/gms/measurement/internal/zzij;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzij;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "getSessionId failed with exception"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
