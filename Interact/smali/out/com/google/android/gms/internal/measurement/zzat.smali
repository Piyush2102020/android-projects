.class public final Lcom/google/android/gms/internal/measurement/zzat;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@21.2.2"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lcom/google/android/gms/internal/measurement/zzap;


# instance fields
.field private final zza:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzat;->zza:Ljava/lang/String;

    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "StringValue cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/measurement/zzat;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzat;->zza:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzat;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzat;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzat;->zza:Ljava/lang/String;

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzat;->zza:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzat;->zza:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzas;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzas;-><init>(Lcom/google/android/gms/internal/measurement/zzat;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzat;->zza:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzbU(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzg;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/zzap;
    .registers 25

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "charAt"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "concat"

    const-string v7, "indexOf"

    const-string v8, "replace"

    const-string/jumbo v9, "substring"

    const-string v10, "split"

    const-string v11, "slice"

    const-string v12, "match"

    const-string v13, "lastIndexOf"

    const-string/jumbo v14, "toLocaleUpperCase"

    const-string v15, "search"

    const-string/jumbo v2, "toLowerCase"

    const-string/jumbo v0, "toLocaleLowerCase"

    const-string/jumbo v3, "toString"

    move-object/from16 v16, v4

    const-string v4, "hasOwnProperty"

    move-object/from16 v17, v14

    const-string/jumbo v14, "toUpperCase"

    move-object/from16 v18, v14

    if-nez v5, :cond_11f

    .line 2
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_118

    .line 3
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_111

    .line 4
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10a

    .line 5
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_103

    .line 6
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_fc

    .line 7
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f5

    .line 8
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ee

    .line 9
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e7

    .line 10
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e0

    .line 11
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d9

    .line 12
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c9

    .line 14
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c1

    .line 15
    move-object/from16 v5, v18

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_bb

    .line 16
    move-object/from16 v14, v17

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_b7

    .line 17
    move-object/from16 v17, v4

    const-string/jumbo v4, "trim"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a5

    goto/16 :goto_125

    .line 119
    :cond_a5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 120
    const-string v1, "%s is not a String function"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_b7
    move-object/from16 v17, v4

    goto/16 :goto_125

    .line 15
    :cond_bb
    move-object/from16 v14, v17

    move-object/from16 v17, v4

    goto/16 :goto_125

    .line 14
    :cond_c1
    move-object/from16 v14, v17

    move-object/from16 v5, v18

    move-object/from16 v17, v4

    goto/16 :goto_125

    .line 13
    :cond_c9
    move-object/from16 v14, v17

    move-object/from16 v5, v18

    move-object/from16 v17, v4

    goto/16 :goto_125

    .line 12
    :cond_d1
    move-object/from16 v14, v17

    move-object/from16 v5, v18

    move-object/from16 v17, v4

    goto/16 :goto_125

    .line 11
    :cond_d9
    move-object/from16 v14, v17

    move-object/from16 v5, v18

    move-object/from16 v17, v4

    goto :goto_125

    .line 10
    :cond_e0
    move-object/from16 v14, v17

    move-object/from16 v5, v18

    move-object/from16 v17, v4

    goto :goto_125

    .line 9
    :cond_e7
    move-object/from16 v14, v17

    move-object/from16 v5, v18

    move-object/from16 v17, v4

    goto :goto_125

    .line 8
    :cond_ee
    move-object/from16 v14, v17

    move-object/from16 v5, v18

    move-object/from16 v17, v4

    goto :goto_125

    .line 7
    :cond_f5
    move-object/from16 v14, v17

    move-object/from16 v5, v18

    move-object/from16 v17, v4

    goto :goto_125

    .line 6
    :cond_fc
    move-object/from16 v14, v17

    move-object/from16 v5, v18

    move-object/from16 v17, v4

    goto :goto_125

    .line 5
    :cond_103
    move-object/from16 v14, v17

    move-object/from16 v5, v18

    move-object/from16 v17, v4

    goto :goto_125

    .line 4
    :cond_10a
    move-object/from16 v14, v17

    move-object/from16 v5, v18

    move-object/from16 v17, v4

    goto :goto_125

    .line 3
    :cond_111
    move-object/from16 v14, v17

    move-object/from16 v5, v18

    move-object/from16 v17, v4

    goto :goto_125

    .line 2
    :cond_118
    move-object/from16 v14, v17

    move-object/from16 v5, v18

    move-object/from16 v17, v4

    goto :goto_125

    .line 1
    :cond_11f
    move-object/from16 v14, v17

    move-object/from16 v5, v18

    move-object/from16 v17, v4

    .line 18
    :goto_125
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    move-object/from16 v19, v3

    sparse-switch v4, :sswitch_data_710

    move-object/from16 v4, v16

    move-object/from16 v3, v17

    move-object/from16 v6, v19

    goto/16 :goto_1f8

    .line 27
    :sswitch_136
    nop

    .line 18
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b2

    const/4 v1, 0x3

    goto/16 :goto_1a1

    :sswitch_140
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b2

    const/4 v1, 0x6

    goto :goto_1a1

    :sswitch_148
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b2

    const/16 v1, 0xa

    goto :goto_1a1

    :sswitch_151
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b2

    const/16 v1, 0x9

    goto :goto_1a1

    :sswitch_15a
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b2

    const/16 v1, 0x8

    goto :goto_1a1

    :sswitch_163
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b2

    const/4 v1, 0x5

    goto :goto_1a1

    :sswitch_16b
    const-string/jumbo v4, "trim"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b2

    const/16 v1, 0x10

    goto :goto_1a1

    :sswitch_177
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b2

    const/16 v1, 0xf

    goto :goto_1a1

    :sswitch_180
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b2

    const/4 v1, 0x4

    goto :goto_1a1

    :sswitch_188
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b2

    const/16 v1, 0xb

    goto :goto_1a1

    :sswitch_191
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b2

    const/4 v1, 0x7

    goto :goto_1a1

    :sswitch_199
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b2

    const/16 v1, 0xd

    :goto_1a1
    move-object/from16 v4, v16

    goto :goto_1cd

    :sswitch_1a4
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b2

    move-object/from16 v4, v16

    move-object/from16 v3, v17

    move-object/from16 v6, v19

    const/4 v1, 0x1

    goto :goto_1f9

    :cond_1b2
    move-object/from16 v4, v16

    goto :goto_1d2

    :sswitch_1b5
    move-object/from16 v4, v16

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d2

    move-object/from16 v3, v17

    move-object/from16 v6, v19

    const/4 v1, 0x0

    goto :goto_1f9

    :sswitch_1c3
    move-object/from16 v4, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d2

    const/16 v1, 0xc

    :goto_1cd
    move-object/from16 v3, v17

    move-object/from16 v6, v19

    goto :goto_1f9

    :cond_1d2
    :goto_1d2
    move-object/from16 v3, v17

    move-object/from16 v6, v19

    goto :goto_1f8

    :sswitch_1d7
    move-object/from16 v4, v16

    move-object/from16 v6, v19

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e6

    const/16 v1, 0xe

    move-object/from16 v3, v17

    goto :goto_1f9

    :cond_1e6
    move-object/from16 v3, v17

    goto :goto_1f8

    :sswitch_1e9
    move-object/from16 v4, v16

    move-object/from16 v6, v19

    move-object/from16 v3, v17

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f8

    .line 120
    nop

    .line 18
    const/4 v1, 0x2

    goto :goto_1f9

    :cond_1f8
    :goto_1f8
    const/4 v1, -0x1

    :goto_1f9
    const-string/jumbo v17, "undefined"

    move-object/from16 v20, v3

    move-object/from16 v19, v4

    const-wide/16 v3, 0x0

    packed-switch v1, :pswitch_data_756

    move-object/from16 v6, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 119
    const-string v1, "Command not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :pswitch_20f
    nop

    .line 117
    move-object/from16 v0, p3

    const/4 v1, 0x0

    invoke-static {v5, v1, v0}, Lcom/google/android/gms/internal/measurement/zzh;->zzh(Ljava/lang/String;ILjava/util/List;)V

    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/google/android/gms/internal/measurement/zzat;->zza:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzat;

    .line 118
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzat;-><init>(Ljava/lang/String;)V

    goto/16 :goto_70f

    :pswitch_225
    const/4 v1, 0x0

    move-object/from16 v6, p0

    move-object/from16 v0, p3

    .line 115
    invoke-static {v5, v1, v0}, Lcom/google/android/gms/internal/measurement/zzh;->zzh(Ljava/lang/String;ILjava/util/List;)V

    iget-object v0, v6, Lcom/google/android/gms/internal/measurement/zzat;->zza:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzat;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 116
    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzat;-><init>(Ljava/lang/String;)V

    goto/16 :goto_70f

    :pswitch_23c
    const/4 v1, 0x0

    move-object/from16 v0, p3

    move-object v2, v6

    move-object/from16 v6, p0

    .line 114
    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/measurement/zzh;->zzh(Ljava/lang/String;ILjava/util/List;)V

    goto/16 :goto_6c5

    :pswitch_247
    const/4 v1, 0x0

    move-object/from16 v6, p0

    move-object/from16 v0, p3

    .line 112
    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/measurement/zzh;->zzh(Ljava/lang/String;ILjava/util/List;)V

    iget-object v0, v6, Lcom/google/android/gms/internal/measurement/zzat;->zza:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzat;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 113
    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzat;-><init>(Ljava/lang/String;)V

    goto/16 :goto_70f

    :pswitch_25e
    const/4 v1, 0x0

    move-object/from16 v6, p0

    move-object v2, v0

    move-object/from16 v0, p3

    .line 110
    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/measurement/zzh;->zzh(Ljava/lang/String;ILjava/util/List;)V

    iget-object v0, v6, Lcom/google/android/gms/internal/measurement/zzat;->zza:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzat;

    .line 111
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzat;-><init>(Ljava/lang/String;)V

    goto/16 :goto_70f

    :pswitch_274
    const/4 v1, 0x0

    move-object/from16 v6, p0

    move-object/from16 v0, p3

    .line 108
    invoke-static {v14, v1, v0}, Lcom/google/android/gms/internal/measurement/zzh;->zzh(Ljava/lang/String;ILjava/util/List;)V

    iget-object v0, v6, Lcom/google/android/gms/internal/measurement/zzat;->zza:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzat;

    .line 109
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzat;-><init>(Ljava/lang/String;)V

    goto/16 :goto_70f

    :pswitch_289
    move-object/from16 v6, p0

    move-object/from16 v0, p3

    .line 100
    const/4 v1, 0x2

    invoke-static {v9, v1, v0}, Lcom/google/android/gms/internal/measurement/zzh;->zzj(Ljava/lang/String;ILjava/util/List;)V

    iget-object v1, v6, Lcom/google/android/gms/internal/measurement/zzat;->zza:Ljava/lang/String;

    .line 101
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2b4

    .line 102
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzap;

    move-object/from16 v2, p2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/internal/measurement/zzap;->zzh()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzh;->zza(D)D

    move-result-wide v3

    double-to-int v3, v3

    goto :goto_2b7

    .line 107
    :cond_2b4
    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 103
    :goto_2b7
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_2d6

    .line 104
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzap;->zzh()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/zzh;->zza(D)D

    move-result-wide v4

    double-to-int v0, v4

    goto :goto_2da

    .line 107
    :cond_2d6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 104
    :goto_2da
    nop

    .line 105
    const/4 v2, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 106
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzat;

    .line 107
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/measurement/zzat;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    goto/16 :goto_70f

    :pswitch_308
    move-object/from16 v6, p0

    move-object/from16 v2, p2

    move-object/from16 v0, p3

    .line 84
    const/4 v1, 0x2

    invoke-static {v10, v1, v0}, Lcom/google/android/gms/internal/measurement/zzh;->zzj(Ljava/lang/String;ILjava/util/List;)V

    iget-object v1, v6, Lcom/google/android/gms/internal/measurement/zzat;->zza:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_32b

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzae;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/zzap;

    const/4 v2, 0x0

    aput-object v6, v0, v2

    .line 85
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzae;-><init>(Ljava/util/List;)V

    goto/16 :goto_70f

    :cond_32b
    new-instance v3, Ljava/util/ArrayList;

    .line 86
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 87
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_33b

    .line 88
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3b8

    .line 99
    :cond_33b
    nop

    .line 89
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/internal/measurement/zzap;->zzi()Ljava/lang/String;

    move-result-object v4

    .line 90
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x1

    if-le v5, v7, :cond_369

    .line 91
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzap;->zzh()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/measurement/zzh;->zzd(D)J

    move-result-wide v7

    goto :goto_36c

    .line 98
    :cond_369
    const-wide/32 v7, 0x7fffffff

    .line 91
    :goto_36c
    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-nez v0, :cond_379

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzae;

    .line 92
    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/zzae;-><init>()V

    goto/16 :goto_70f

    :cond_379
    invoke-static {v4}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    long-to-int v2, v7

    const/4 v5, 0x1

    add-int/2addr v2, v5

    .line 93
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 94
    array-length v1, v0

    .line 95
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3a0

    if-lez v1, :cond_3a0

    .line 96
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    add-int/lit8 v2, v1, -0x1

    .line 97
    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3a2

    move v2, v1

    goto :goto_3a2

    .line 98
    :cond_3a0
    move v2, v1

    const/4 v14, 0x0

    .line 97
    :cond_3a2
    :goto_3a2
    int-to-long v4, v1

    cmp-long v1, v4, v7

    if-lez v1, :cond_3a9

    add-int/lit8 v2, v2, -0x1

    :cond_3a9
    :goto_3a9
    if-ge v14, v2, :cond_3b8

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzat;

    .line 98
    aget-object v4, v0, v14

    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/measurement/zzat;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_3a9

    .line 88
    :cond_3b8
    :goto_3b8
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzae;

    .line 99
    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/measurement/zzae;-><init>(Ljava/util/List;)V

    goto/16 :goto_70f

    .line 98
    :pswitch_3bf
    move-object/from16 v6, p0

    move-object/from16 v2, p2

    move-object/from16 v0, p3

    .line 73
    const/4 v1, 0x2

    invoke-static {v11, v1, v0}, Lcom/google/android/gms/internal/measurement/zzh;->zzj(Ljava/lang/String;ILjava/util/List;)V

    iget-object v1, v6, Lcom/google/android/gms/internal/measurement/zzat;->zza:Ljava/lang/String;

    .line 74
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3e5

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/internal/measurement/zzap;->zzh()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    goto :goto_3e6

    .line 77
    :cond_3e5
    move-wide v7, v3

    .line 75
    :goto_3e6
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/measurement/zzh;->zza(D)D

    move-result-wide v7

    cmpg-double v5, v7, v3

    if-gez v5, :cond_3f9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    int-to-double v9, v5

    add-double/2addr v9, v7

    .line 76
    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    goto :goto_402

    .line 81
    :cond_3f9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    int-to-double v9, v5

    .line 77
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    .line 78
    :goto_402
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v9, 0x1

    if-le v5, v9, :cond_41c

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzap;->zzh()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    goto :goto_421

    .line 81
    :cond_41c
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    int-to-double v9, v0

    .line 79
    :goto_421
    invoke-static {v9, v10}, Lcom/google/android/gms/internal/measurement/zzh;->zza(D)D

    move-result-wide v9

    cmpg-double v0, v9, v3

    if-gez v0, :cond_434

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    int-to-double v11, v0

    add-double/2addr v11, v9

    .line 80
    invoke-static {v11, v12, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    goto :goto_43d

    .line 83
    :cond_434
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    int-to-double v2, v0

    .line 81
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 80
    :goto_43d
    double-to-int v0, v7

    double-to-int v2, v2

    sub-int/2addr v2, v0

    .line 82
    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v2, v0

    new-instance v3, Lcom/google/android/gms/internal/measurement/zzat;

    .line 83
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzat;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    goto/16 :goto_70f

    .line 77
    :pswitch_452
    move-object/from16 v6, p0

    move-object/from16 v2, p2

    move-object/from16 v0, p3

    .line 66
    const/4 v1, 0x1

    invoke-static {v15, v1, v0}, Lcom/google/android/gms/internal/measurement/zzh;->zzj(Ljava/lang/String;ILjava/util/List;)V

    .line 67
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_472

    .line 68
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzap;->zzi()Ljava/lang/String;

    move-result-object v17

    goto :goto_473

    .line 72
    :cond_472
    nop

    .line 68
    :goto_473
    iget-object v0, v6, Lcom/google/android/gms/internal/measurement/zzat;->zza:Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 69
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_493

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzah;

    .line 71
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    int-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_70f

    :cond_493
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzah;

    .line 72
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_70f

    :pswitch_4a0
    move-object/from16 v6, p0

    move-object/from16 v2, p2

    move-object/from16 v0, p3

    .line 52
    const/4 v1, 0x2

    invoke-static {v8, v1, v0}, Lcom/google/android/gms/internal/measurement/zzh;->zzj(Ljava/lang/String;ILjava/util/List;)V

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzap;->zzf:Lcom/google/android/gms/internal/measurement/zzap;

    .line 53
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4d5

    .line 54
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/internal/measurement/zzap;->zzi()Ljava/lang/String;

    move-result-object v17

    .line 55
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_4d5

    .line 56
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v1

    move-object/from16 v0, v17

    goto :goto_4d7

    .line 65
    :cond_4d5
    move-object/from16 v0, v17

    .line 56
    :goto_4d7
    iget-object v3, v6, Lcom/google/android/gms/internal/measurement/zzat;->zza:Ljava/lang/String;

    .line 57
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_6c5

    .line 58
    instance-of v5, v1, Lcom/google/android/gms/internal/measurement/zzai;

    if-eqz v5, :cond_508

    .line 59
    check-cast v1, Lcom/google/android/gms/internal/measurement/zzai;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/android/gms/internal/measurement/zzap;

    new-instance v7, Lcom/google/android/gms/internal/measurement/zzat;

    invoke-direct {v7, v0}, Lcom/google/android/gms/internal/measurement/zzat;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    aput-object v7, v5, v8

    int-to-double v7, v4

    new-instance v9, Lcom/google/android/gms/internal/measurement/zzah;

    .line 60
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-direct {v9, v7}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    const/4 v7, 0x1

    aput-object v9, v5, v7

    const/4 v7, 0x2

    aput-object v6, v5, v7

    .line 61
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 62
    invoke-virtual {v1, v2, v5}, Lcom/google/android/gms/internal/measurement/zzai;->zza(Lcom/google/android/gms/internal/measurement/zzg;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v1

    :cond_508
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzat;

    .line 63
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 64
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzap;->zzi()Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/measurement/zzat;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    goto/16 :goto_70f

    :pswitch_534
    move-object/from16 v6, p0

    move-object/from16 v2, p2

    move-object/from16 v0, p3

    .line 46
    const/4 v1, 0x1

    invoke-static {v12, v1, v0}, Lcom/google/android/gms/internal/measurement/zzh;->zzj(Ljava/lang/String;ILjava/util/List;)V

    iget-object v1, v6, Lcom/google/android/gms/internal/measurement/zzat;->zza:Ljava/lang/String;

    .line 47
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_549

    const-string v0, ""

    goto :goto_559

    .line 51
    :cond_549
    nop

    .line 47
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzap;->zzi()Ljava/lang/String;

    move-result-object v0

    :goto_559
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 48
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_581

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzae;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/gms/internal/measurement/zzap;

    new-instance v3, Lcom/google/android/gms/internal/measurement/zzat;

    .line 50
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzat;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    aput-object v3, v2, v0

    .line 51
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzae;-><init>(Ljava/util/List;)V

    goto/16 :goto_70f

    :cond_581
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzap;->zzg:Lcom/google/android/gms/internal/measurement/zzap;

    goto/16 :goto_70f

    .line 47
    :pswitch_585
    move-object/from16 v6, p0

    move-object/from16 v2, p2

    move-object/from16 v0, p3

    .line 39
    const/4 v1, 0x2

    invoke-static {v13, v1, v0}, Lcom/google/android/gms/internal/measurement/zzh;->zzj(Ljava/lang/String;ILjava/util/List;)V

    iget-object v1, v6, Lcom/google/android/gms/internal/measurement/zzat;->zza:Ljava/lang/String;

    .line 40
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_59a

    move-object/from16 v3, v17

    goto :goto_5ac

    .line 42
    :cond_59a
    nop

    .line 41
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/internal/measurement/zzap;->zzi()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v3, v17

    .line 42
    :goto_5ac
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_5b6

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    goto :goto_5ca

    .line 44
    :cond_5b6
    nop

    .line 42
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzap;->zzh()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 43
    :goto_5ca
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_5d3

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_5d7

    .line 44
    :cond_5d3
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/zzh;->zza(D)D

    move-result-wide v4

    .line 43
    :goto_5d7
    double-to-int v0, v4

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzah;

    .line 45
    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    move-object v1, v2

    goto/16 :goto_70f

    .line 41
    :pswitch_5e9
    move-object/from16 v6, p0

    move-object/from16 v2, p2

    move-object/from16 v0, p3

    .line 33
    const/4 v1, 0x2

    invoke-static {v7, v1, v0}, Lcom/google/android/gms/internal/measurement/zzh;->zzj(Ljava/lang/String;ILjava/util/List;)V

    iget-object v1, v6, Lcom/google/android/gms/internal/measurement/zzat;->zza:Ljava/lang/String;

    .line 34
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_5fe

    move-object/from16 v5, v17

    goto :goto_610

    .line 36
    :cond_5fe
    nop

    .line 35
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/internal/measurement/zzap;->zzi()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v5, v17

    .line 36
    :goto_610
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x2

    if-ge v7, v8, :cond_618

    goto :goto_62c

    .line 38
    :cond_618
    nop

    .line 36
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzap;->zzh()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 37
    :goto_62c
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzh;->zza(D)D

    move-result-wide v2

    double-to-int v0, v2

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzah;

    .line 38
    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    move-object v1, v2

    goto/16 :goto_70f

    .line 35
    :pswitch_642
    move-object/from16 v6, p0

    move-object/from16 v2, p2

    move-object/from16 v0, p3

    .line 28
    move-object/from16 v1, v20

    const/4 v3, 0x1

    invoke-static {v1, v3, v0}, Lcom/google/android/gms/internal/measurement/zzh;->zzh(Ljava/lang/String;ILjava/util/List;)V

    iget-object v1, v6, Lcom/google/android/gms/internal/measurement/zzat;->zza:Ljava/lang/String;

    .line 29
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v0

    .line 30
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzap;->zzi()Ljava/lang/String;

    move-result-object v2

    const-string v3, "length"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66b

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzaf;->zzk:Lcom/google/android/gms/internal/measurement/zzap;

    goto/16 :goto_70f

    .line 31
    :cond_66b
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzap;->zzh()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 32
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    cmpl-double v0, v2, v4

    if-nez v0, :cond_688

    double-to-int v0, v2

    if-ltz v0, :cond_688

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_688

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzaf;->zzk:Lcom/google/android/gms/internal/measurement/zzap;

    goto/16 :goto_70f

    :cond_688
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzaf;->zzl:Lcom/google/android/gms/internal/measurement/zzap;

    goto/16 :goto_70f

    .line 23
    :pswitch_68c
    move-object/from16 v6, p0

    move-object/from16 v2, p2

    move-object/from16 v0, p3

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6c5

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v3, v6, Lcom/google/android/gms/internal/measurement/zzat;->zza:Ljava/lang/String;

    .line 24
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x0

    .line 25
    :goto_6a0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v14, v3, :cond_6ba

    .line 26
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/internal/measurement/zzap;->zzi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v14, 0x1

    goto :goto_6a0

    :cond_6ba
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzat;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzat;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_70f

    .line 21
    :cond_6c5
    :goto_6c5
    move-object v1, v6

    goto :goto_70f

    .line 18
    :pswitch_6c7
    move-object/from16 v6, p0

    move-object/from16 v2, p2

    move-object/from16 v0, p3

    .line 19
    move-object/from16 v3, v19

    const/4 v1, 0x1

    invoke-static {v3, v1, v0}, Lcom/google/android/gms/internal/measurement/zzh;->zzj(Ljava/lang/String;ILjava/util/List;)V

    .line 20
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6f2

    .line 21
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzap;)Lcom/google/android/gms/internal/measurement/zzap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzap;->zzh()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzh;->zza(D)D

    move-result-wide v0

    double-to-int v14, v0

    goto :goto_6f4

    .line 22
    :cond_6f2
    const/4 v1, 0x0

    move v14, v1

    .line 21
    :goto_6f4
    iget-object v0, v6, Lcom/google/android/gms/internal/measurement/zzat;->zza:Ljava/lang/String;

    if-ltz v14, :cond_70d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v14, v1, :cond_6ff

    goto :goto_70d

    :cond_6ff
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzat;

    .line 22
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzat;-><init>(Ljava/lang/String;)V

    goto :goto_70f

    .line 21
    :cond_70d
    :goto_70d
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzap;->zzm:Lcom/google/android/gms/internal/measurement/zzap;

    :goto_70f
    return-object v1

    :sswitch_data_710
    .sparse-switch
        -0x6aaca37f -> :sswitch_1e9
        -0x69e9ad94 -> :sswitch_1d7
        -0x57513364 -> :sswitch_1c3
        -0x5128e1d7 -> :sswitch_1b5
        -0x50c088ec -> :sswitch_1a4
        -0x43ce226a -> :sswitch_199
        -0x36059a58 -> :sswitch_191
        -0x2b53be43 -> :sswitch_188
        -0x1bdda92d -> :sswitch_180
        -0x17d0ad49 -> :sswitch_177
        0x367422 -> :sswitch_16b
        0x62dd9c5 -> :sswitch_163
        0x6873d92 -> :sswitch_15a
        0x6891b1a -> :sswitch_151
        0x1f9f6e51 -> :sswitch_148
        0x413cb2b4 -> :sswitch_140
        0x73d44649 -> :sswitch_136
    .end sparse-switch

    :pswitch_data_756
    .packed-switch 0x0
        :pswitch_6c7
        :pswitch_68c
        :pswitch_642
        :pswitch_5e9
        :pswitch_585
        :pswitch_534
        :pswitch_4a0
        :pswitch_452
        :pswitch_3bf
        :pswitch_308
        :pswitch_289
        :pswitch_274
        :pswitch_25e
        :pswitch_247
        :pswitch_23c
        :pswitch_225
        :pswitch_20f
    .end packed-switch
.end method

.method public final zzd()Lcom/google/android/gms/internal/measurement/zzap;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzat;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzat;->zza:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzat;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final zzg()Ljava/lang/Boolean;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzat;->zza:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final zzh()Ljava/lang/Double;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzat;->zza:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzat;->zza:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_15} :catch_16

    return-object v0

    :catch_16
    move-exception v0

    .line 4
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public final zzi()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzat;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final zzl()Ljava/util/Iterator;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzar;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzar;-><init>(Lcom/google/android/gms/internal/measurement/zzat;)V

    return-object v0
.end method
