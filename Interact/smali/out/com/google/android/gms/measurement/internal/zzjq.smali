.class final Lcom/google/android/gms/measurement/internal/zzjq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.2.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzq;

.field final synthetic zzd:Lcom/google/android/gms/internal/measurement/zzcf;

.field final synthetic zze:Lcom/google/android/gms/measurement/internal/zzjy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzjy;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzq;Lcom/google/android/gms/internal/measurement/zzcf;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zze:Lcom/google/android/gms/measurement/internal/zzjy;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zza:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzc:Lcom/google/android/gms/measurement/internal/zzq;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzd:Lcom/google/android/gms/internal/measurement/zzcf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zze:Lcom/google/android/gms/measurement/internal/zzjy;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzjy;->zzh(Lcom/google/android/gms/measurement/internal/zzjy;)Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v2

    if-nez v2, :cond_2e

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "Failed to get conditional properties; not connected to service"

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zza:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzb:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_20} :catch_4f
    .catchall {:try_start_5 .. :try_end_20} :catchall_4d

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zze:Lcom/google/android/gms/measurement/internal/zzjy;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 5
    :goto_24
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzge;->zzv()Lcom/google/android/gms/measurement/internal/zzlo;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzd:Lcom/google/android/gms/internal/measurement/zzcf;

    .line 6
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzlo;->zzR(Lcom/google/android/gms/internal/measurement/zzcf;Ljava/util/ArrayList;)V

    return-void

    :cond_2e
    :try_start_2e
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzc:Lcom/google/android/gms/measurement/internal/zzq;

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zza:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzb:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzc:Lcom/google/android/gms/measurement/internal/zzq;

    .line 8
    invoke-interface {v2, v1, v3, v4}, Lcom/google/android/gms/measurement/internal/zzek;->zzf(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzq;)Ljava/util/List;

    move-result-object v1

    .line 9
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzlo;->zzH(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_41} :catch_4f
    .catchall {:try_start_2e .. :try_end_41} :catchall_4d

    :try_start_41
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zze:Lcom/google/android/gms/measurement/internal/zzjy;

    .line 10
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzjy;->zzp(Lcom/google/android/gms/measurement/internal/zzjy;)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_46} :catch_4b
    .catchall {:try_start_41 .. :try_end_46} :catchall_6a

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zze:Lcom/google/android/gms/measurement/internal/zzjy;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    goto :goto_24

    .line 14
    :catch_4b
    move-exception v1

    goto :goto_50

    .line 6
    :catchall_4d
    move-exception v1

    goto :goto_6b

    :catch_4f
    move-exception v1

    :goto_50
    :try_start_50
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zze:Lcom/google/android/gms/measurement/internal/zzjy;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v2

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    const-string v3, "Failed to get conditional properties; remote exception"

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zza:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzb:Ljava/lang/String;

    .line 13
    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_65
    .catchall {:try_start_50 .. :try_end_65} :catchall_6a

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zze:Lcom/google/android/gms/measurement/internal/zzjy;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    goto :goto_24

    .line 14
    :catchall_6a
    move-exception v1

    .line 6
    :goto_6b
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zze:Lcom/google/android/gms/measurement/internal/zzjy;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzge;->zzv()Lcom/google/android/gms/measurement/internal/zzlo;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzd:Lcom/google/android/gms/internal/measurement/zzcf;

    .line 6
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzlo;->zzR(Lcom/google/android/gms/internal/measurement/zzcf;Ljava/util/ArrayList;)V

    .line 14
    throw v1
.end method
