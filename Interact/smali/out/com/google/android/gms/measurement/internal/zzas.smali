.class final Lcom/google/android/gms/measurement/internal/zzas;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.2.2"


# instance fields
.field final zza:Ljava/lang/String;

.field final zzb:Ljava/lang/String;

.field final zzc:J

.field final zzd:J

.field final zze:J

.field final zzf:J

.field final zzg:J

.field final zzh:Ljava/lang/Long;

.field final zzi:Ljava/lang/Long;

.field final zzj:Ljava/lang/Long;

.field final zzk:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V
    .registers 31

    .line 1
    move-object v0, p0

    move-wide/from16 v1, p3

    move-wide/from16 v3, p5

    move-wide/from16 v5, p7

    move-wide/from16 v7, p11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    const-wide/16 v9, 0x0

    cmp-long v11, v1, v9

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-ltz v11, :cond_1c

    move v11, v12

    goto :goto_1d

    .line 6
    :cond_1c
    move v11, v13

    .line 3
    :goto_1d
    invoke-static {v11}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    cmp-long v11, v3, v9

    if-ltz v11, :cond_26

    move v11, v12

    goto :goto_27

    .line 6
    :cond_26
    move v11, v13

    .line 4
    :goto_27
    invoke-static {v11}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    cmp-long v11, v5, v9

    if-ltz v11, :cond_30

    move v11, v12

    goto :goto_31

    .line 6
    :cond_30
    move v11, v13

    .line 5
    :goto_31
    invoke-static {v11}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    cmp-long v9, v7, v9

    if-ltz v9, :cond_39

    goto :goto_3a

    .line 6
    :cond_39
    move v12, v13

    :goto_3a
    invoke-static {v12}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    move-object v9, p1

    iput-object v9, v0, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    move-object/from16 v9, p2

    iput-object v9, v0, Lcom/google/android/gms/measurement/internal/zzas;->zzb:Ljava/lang/String;

    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzas;->zzc:J

    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/zzas;->zzd:J

    iput-wide v5, v0, Lcom/google/android/gms/measurement/internal/zzas;->zze:J

    move-wide/from16 v1, p9

    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzas;->zzf:J

    iput-wide v7, v0, Lcom/google/android/gms/measurement/internal/zzas;->zzg:J

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzas;->zzh:Ljava/lang/Long;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzas;->zzi:Ljava/lang/Long;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzas;->zzj:Ljava/lang/Long;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzas;->zzk:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method final zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzas;
    .registers 23

    .line 1
    move-object/from16 v0, p0

    if-eqz p3, :cond_7

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    :cond_7
    new-instance v18, Lcom/google/android/gms/measurement/internal/zzas;

    move-object/from16 v1, v18

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzas;->zzb:Ljava/lang/String;

    iget-wide v4, v0, Lcom/google/android/gms/measurement/internal/zzas;->zzc:J

    iget-wide v6, v0, Lcom/google/android/gms/measurement/internal/zzas;->zzd:J

    iget-wide v8, v0, Lcom/google/android/gms/measurement/internal/zzas;->zze:J

    iget-wide v10, v0, Lcom/google/android/gms/measurement/internal/zzas;->zzf:J

    iget-wide v12, v0, Lcom/google/android/gms/measurement/internal/zzas;->zzg:J

    iget-object v14, v0, Lcom/google/android/gms/measurement/internal/zzas;->zzh:Ljava/lang/Long;

    .line 2
    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    invoke-direct/range {v1 .. v17}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    return-object v18
.end method

.method final zzb(JJ)Lcom/google/android/gms/measurement/internal/zzas;
    .registers 24

    move-object/from16 v0, p0

    move-wide/from16 v12, p1

    .line 1
    new-instance v18, Lcom/google/android/gms/measurement/internal/zzas;

    move-object/from16 v1, v18

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzas;->zzb:Ljava/lang/String;

    iget-wide v4, v0, Lcom/google/android/gms/measurement/internal/zzas;->zzc:J

    iget-wide v6, v0, Lcom/google/android/gms/measurement/internal/zzas;->zzd:J

    iget-wide v8, v0, Lcom/google/android/gms/measurement/internal/zzas;->zze:J

    iget-wide v10, v0, Lcom/google/android/gms/measurement/internal/zzas;->zzf:J

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    iget-object v15, v0, Lcom/google/android/gms/measurement/internal/zzas;->zzi:Ljava/lang/Long;

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzas;->zzj:Ljava/lang/Long;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzas;->zzk:Ljava/lang/Boolean;

    move-object/from16 v17, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v17}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    return-object v18
.end method

.method final zzc(J)Lcom/google/android/gms/measurement/internal/zzas;
    .registers 22

    move-object/from16 v0, p0

    move-wide/from16 v10, p1

    .line 1
    new-instance v18, Lcom/google/android/gms/measurement/internal/zzas;

    move-object/from16 v1, v18

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzas;->zzb:Ljava/lang/String;

    iget-wide v4, v0, Lcom/google/android/gms/measurement/internal/zzas;->zzc:J

    iget-wide v6, v0, Lcom/google/android/gms/measurement/internal/zzas;->zzd:J

    iget-wide v8, v0, Lcom/google/android/gms/measurement/internal/zzas;->zze:J

    iget-wide v12, v0, Lcom/google/android/gms/measurement/internal/zzas;->zzg:J

    iget-object v14, v0, Lcom/google/android/gms/measurement/internal/zzas;->zzh:Ljava/lang/Long;

    iget-object v15, v0, Lcom/google/android/gms/measurement/internal/zzas;->zzi:Ljava/lang/Long;

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzas;->zzj:Ljava/lang/Long;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzas;->zzk:Ljava/lang/Boolean;

    move-object/from16 v17, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v17}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    return-object v18
.end method
