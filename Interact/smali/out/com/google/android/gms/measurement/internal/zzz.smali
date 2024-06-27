.class final Lcom/google/android/gms/measurement/internal/zzz;
.super Lcom/google/android/gms/measurement/internal/zzy;
.source "com.google.android.gms:play-services-measurement@@21.2.2"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzaa;

.field private final zzh:Lcom/google/android/gms/internal/measurement/zzet;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzaa;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzet;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzz;->zza:Lcom/google/android/gms/measurement/internal/zzaa;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/measurement/internal/zzy;-><init>(Ljava/lang/String;I)V

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/internal/measurement/zzet;

    return-void
.end method


# virtual methods
.method final zza()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/internal/measurement/zzet;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzet;->zza()I

    move-result v0

    return v0
.end method

.method final zzb()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method final zzc()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method final zzd(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/zzgm;Z)Z
    .registers 15

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzov;->zzc()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzz;->zza:Lcom/google/android/gms/measurement/internal/zzaa;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzf()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzb:Ljava/lang/String;

    .line 3
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzeh;->zzW:Lcom/google/android/gms/measurement/internal/zzeg;

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzag;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/internal/measurement/zzet;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzet;->zzg()Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/internal/measurement/zzet;

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzet;->zzh()Z

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/internal/measurement/zzet;

    .line 7
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzet;->zzi()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v1, :cond_31

    if-nez v2, :cond_31

    if-eqz v3, :cond_2f

    move v1, v5

    goto :goto_32

    .line 52
    :cond_2f
    move v1, v4

    goto :goto_32

    :cond_31
    move v1, v5

    .line 7
    :goto_32
    const/4 v2, 0x0

    if-eqz p4, :cond_64

    if-nez v1, :cond_64

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzz;->zza:Lcom/google/android/gms/measurement/internal/zzaa;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 67
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    iget p2, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzc:I

    .line 69
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/internal/measurement/zzet;

    .line 70
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzet;->zzj()Z

    move-result p3

    if-eqz p3, :cond_5c

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/internal/measurement/zzet;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzet;->zza()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_5d

    .line 71
    :cond_5c
    nop

    .line 70
    :goto_5d
    nop

    .line 71
    const-string p3, "Property filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID"

    invoke-virtual {p1, p3, p2, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v5

    :cond_64
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/internal/measurement/zzet;

    .line 8
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzet;->zzb()Lcom/google/android/gms/internal/measurement/zzem;

    move-result-object v6

    .line 9
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzem;->zzg()Z

    move-result v7

    .line 10
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzgm;->zzr()Z

    move-result v8

    if-eqz v8, :cond_af

    .line 11
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzem;->zzi()Z

    move-result v8

    if-nez v8, :cond_9d

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzz;->zza:Lcom/google/android/gms/measurement/internal/zzaa;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 12
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v6

    .line 13
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzeu;->zzk()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzz;->zza:Lcom/google/android/gms/measurement/internal/zzaa;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 14
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzge;->zzj()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v7

    .line 15
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzgm;->zzf()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzep;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 16
    const-string v8, "No number filter for long property. property"

    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1a0

    .line 17
    :cond_9d
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzgm;->zzb()J

    move-result-wide v8

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzem;->zzc()Lcom/google/android/gms/internal/measurement/zzer;

    move-result-object v2

    invoke-static {v8, v9, v2}, Lcom/google/android/gms/measurement/internal/zzz;->zzh(JLcom/google/android/gms/internal/measurement/zzer;)Ljava/lang/Boolean;

    move-result-object v2

    .line 18
    invoke-static {v2, v7}, Lcom/google/android/gms/measurement/internal/zzz;->zzj(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_1a0

    .line 19
    :cond_af
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzgm;->zzq()Z

    move-result v8

    if-eqz v8, :cond_f0

    .line 20
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzem;->zzi()Z

    move-result v8

    if-nez v8, :cond_de

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzz;->zza:Lcom/google/android/gms/measurement/internal/zzaa;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 21
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v6

    .line 22
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzeu;->zzk()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzz;->zza:Lcom/google/android/gms/measurement/internal/zzaa;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 23
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzge;->zzj()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v7

    .line 24
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzgm;->zzf()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzep;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 25
    const-string v8, "No number filter for double property. property"

    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1a0

    .line 26
    :cond_de
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzgm;->zza()D

    move-result-wide v8

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzem;->zzc()Lcom/google/android/gms/internal/measurement/zzer;

    move-result-object v2

    invoke-static {v8, v9, v2}, Lcom/google/android/gms/measurement/internal/zzz;->zzg(DLcom/google/android/gms/internal/measurement/zzer;)Ljava/lang/Boolean;

    move-result-object v2

    .line 27
    invoke-static {v2, v7}, Lcom/google/android/gms/measurement/internal/zzz;->zzj(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_1a0

    .line 28
    :cond_f0
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzgm;->zzt()Z

    move-result v8

    if-eqz v8, :cond_17f

    .line 29
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzem;->zzk()Z

    move-result v8

    if-nez v8, :cond_166

    .line 30
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzem;->zzi()Z

    move-result v8

    if-nez v8, :cond_125

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzz;->zza:Lcom/google/android/gms/measurement/internal/zzaa;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 31
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v6

    .line 32
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzeu;->zzk()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzz;->zza:Lcom/google/android/gms/measurement/internal/zzaa;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 33
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzge;->zzj()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v7

    .line 34
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzgm;->zzf()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzep;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 35
    const-string v8, "No string or number filter defined. property"

    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1a0

    .line 36
    :cond_125
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzgm;->zzg()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzli;->zzx(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_140

    .line 37
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzgm;->zzg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzem;->zzc()Lcom/google/android/gms/internal/measurement/zzer;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/google/android/gms/measurement/internal/zzz;->zzi(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzer;)Ljava/lang/Boolean;

    move-result-object v2

    .line 38
    invoke-static {v2, v7}, Lcom/google/android/gms/measurement/internal/zzz;->zzj(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1a0

    :cond_140
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzz;->zza:Lcom/google/android/gms/measurement/internal/zzaa;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 39
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v6

    .line 40
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzeu;->zzk()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzz;->zza:Lcom/google/android/gms/measurement/internal/zzaa;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 41
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzge;->zzj()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v7

    .line 42
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzgm;->zzf()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzep;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 43
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzgm;->zzg()Ljava/lang/String;

    move-result-object v8

    .line 44
    const-string v9, "Invalid user property value for Numeric number filter. property, value"

    invoke-virtual {v6, v9, v7, v8}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1a0

    .line 45
    :cond_166
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzgm;->zzg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzem;->zzd()Lcom/google/android/gms/internal/measurement/zzey;

    move-result-object v6

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzz;->zza:Lcom/google/android/gms/measurement/internal/zzaa;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 46
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v8

    .line 45
    invoke-static {v2, v6, v8}, Lcom/google/android/gms/measurement/internal/zzz;->zzf(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzey;Lcom/google/android/gms/measurement/internal/zzeu;)Ljava/lang/Boolean;

    move-result-object v2

    .line 47
    invoke-static {v2, v7}, Lcom/google/android/gms/measurement/internal/zzz;->zzj(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1a0

    :cond_17f
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzz;->zza:Lcom/google/android/gms/measurement/internal/zzaa;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 48
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v6

    .line 49
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzeu;->zzk()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzz;->zza:Lcom/google/android/gms/measurement/internal/zzaa;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 50
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzge;->zzj()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v7

    .line 51
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzgm;->zzf()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzep;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 52
    const-string v8, "User property has no value, property"

    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    :goto_1a0
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzz;->zza:Lcom/google/android/gms/measurement/internal/zzaa;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 53
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v6

    .line 54
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v6

    if-nez v2, :cond_1b1

    const-string v7, "null"

    goto :goto_1b2

    .line 66
    :cond_1b1
    move-object v7, v2

    .line 54
    :goto_1b2
    nop

    .line 55
    const-string v8, "Property filter result"

    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v2, :cond_1bb

    return v4

    .line 56
    :cond_1bb
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzd:Ljava/lang/Boolean;

    if-eqz v3, :cond_1cb

    .line 57
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1ca

    goto :goto_1cb

    .line 66
    :cond_1ca
    return v5

    .line 57
    :cond_1cb
    :goto_1cb
    if-eqz p4, :cond_1d5

    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/internal/measurement/zzet;

    .line 58
    invoke-virtual {p4}, Lcom/google/android/gms/internal/measurement/zzet;->zzg()Z

    move-result p4

    if-eqz p4, :cond_1d7

    :cond_1d5
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzz;->zze:Ljava/lang/Boolean;

    .line 59
    :cond_1d7
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_21e

    if-eqz v1, :cond_21e

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzgm;->zzs()Z

    move-result p4

    if-eqz p4, :cond_21e

    .line 60
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzgm;->zzc()J

    move-result-wide p3

    if-eqz p1, :cond_1ef

    .line 61
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    :cond_1ef
    if-eqz v0, :cond_208

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/internal/measurement/zzet;

    .line 62
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzet;->zzg()Z

    move-result p1

    if-eqz p1, :cond_208

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/internal/measurement/zzet;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzet;->zzh()Z

    move-result p1

    if-nez p1, :cond_208

    if-eqz p2, :cond_208

    .line 63
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    goto :goto_209

    .line 66
    :cond_208
    nop

    .line 63
    :goto_209
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzh:Lcom/google/android/gms/internal/measurement/zzet;

    .line 64
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzet;->zzh()Z

    move-result p1

    if-eqz p1, :cond_218

    .line 65
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzg:Ljava/lang/Long;

    goto :goto_21e

    .line 66
    :cond_218
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzz;->zzf:Ljava/lang/Long;

    .line 65
    :cond_21e
    :goto_21e
    return v5
.end method
