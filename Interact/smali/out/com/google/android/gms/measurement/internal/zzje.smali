.class final Lcom/google/android/gms/measurement/internal/zzje;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.2.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzq;

.field final synthetic zzb:Lcom/google/android/gms/internal/measurement/zzcf;

.field final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzjy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzjy;Lcom/google/android/gms/measurement/internal/zzq;Lcom/google/android/gms/internal/measurement/zzcf;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzc:Lcom/google/android/gms/measurement/internal/zzjy;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzje;->zza:Lcom/google/android/gms/measurement/internal/zzq;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzb:Lcom/google/android/gms/internal/measurement/zzcf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 1
    const-string v0, "Failed to get app instance id"

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzc:Lcom/google/android/gms/measurement/internal/zzjy;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzge;->zzm()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfj;->zzc()Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v2

    .line 3
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzah;->zzb:Lcom/google/android/gms/measurement/internal/zzah;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzai;->zzi(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v2

    if-nez v2, :cond_4e

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzc:Lcom/google/android/gms/measurement/internal/zzjy;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzl()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    const-string v3, "Analytics storage consent denied; will not get app instance id"

    .line 6
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzc:Lcom/google/android/gms/measurement/internal/zzjy;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zze;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzge;->zzq()Lcom/google/android/gms/measurement/internal/zzij;

    move-result-object v2

    .line 8
    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzij;->zzO(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzc:Lcom/google/android/gms/measurement/internal/zzjy;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzge;->zzm()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object v2

    .line 10
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzfj;->zze:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzfi;->zzb(Ljava/lang/String;)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_40} :catch_9b
    .catchall {:try_start_3 .. :try_end_40} :catchall_99

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzc:Lcom/google/android/gms/measurement/internal/zzjy;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 11
    :goto_44
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzv()Lcom/google/android/gms/measurement/internal/zzlo;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzb:Lcom/google/android/gms/internal/measurement/zzcf;

    .line 12
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzlo;->zzW(Lcom/google/android/gms/internal/measurement/zzcf;Ljava/lang/String;)V

    return-void

    :cond_4e
    :try_start_4e
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzc:Lcom/google/android/gms/measurement/internal/zzjy;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzjy;->zzh(Lcom/google/android/gms/measurement/internal/zzjy;)Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v3

    if-nez v3, :cond_68

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v2

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_63} :catch_9b
    .catchall {:try_start_4e .. :try_end_63} :catchall_99

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzc:Lcom/google/android/gms/measurement/internal/zzjy;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    goto :goto_44

    .line 12
    :cond_68
    :try_start_68
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzje;->zza:Lcom/google/android/gms/measurement/internal/zzq;

    .line 15
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzje;->zza:Lcom/google/android/gms/measurement/internal/zzq;

    .line 16
    invoke-interface {v3, v2}, Lcom/google/android/gms/measurement/internal/zzek;->zzd(Lcom/google/android/gms/measurement/internal/zzq;)Ljava/lang/String;

    move-result-object v1
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_73} :catch_9b
    .catchall {:try_start_68 .. :try_end_73} :catchall_99

    if-eqz v1, :cond_8d

    :try_start_75
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzc:Lcom/google/android/gms/measurement/internal/zzjy;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zze;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzge;->zzq()Lcom/google/android/gms/measurement/internal/zzij;

    move-result-object v2

    .line 18
    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzij;->zzO(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzc:Lcom/google/android/gms/measurement/internal/zzjy;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 19
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzge;->zzm()Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object v2

    .line 20
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzfj;->zze:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzfi;->zzb(Ljava/lang/String;)V

    :cond_8d
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzc:Lcom/google/android/gms/measurement/internal/zzjy;

    .line 21
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzjy;->zzp(Lcom/google/android/gms/measurement/internal/zzjy;)V
    :try_end_92
    .catch Landroid/os/RemoteException; {:try_start_75 .. :try_end_92} :catch_97
    .catchall {:try_start_75 .. :try_end_92} :catchall_b0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzc:Lcom/google/android/gms/measurement/internal/zzjy;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    goto :goto_44

    .line 24
    :catch_97
    move-exception v2

    goto :goto_9c

    .line 12
    :catchall_99
    move-exception v0

    goto :goto_b1

    :catch_9b
    move-exception v2

    :goto_9c
    :try_start_9c
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzc:Lcom/google/android/gms/measurement/internal/zzjy;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 22
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v3

    .line 23
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_ab
    .catchall {:try_start_9c .. :try_end_ab} :catchall_b0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzc:Lcom/google/android/gms/measurement/internal/zzjy;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    goto :goto_44

    .line 24
    :catchall_b0
    move-exception v0

    .line 12
    :goto_b1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzc:Lcom/google/android/gms/measurement/internal/zzjy;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzge;->zzv()Lcom/google/android/gms/measurement/internal/zzlo;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzb:Lcom/google/android/gms/internal/measurement/zzcf;

    .line 12
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzlo;->zzW(Lcom/google/android/gms/internal/measurement/zzcf;Ljava/lang/String;)V

    .line 24
    throw v0
.end method
