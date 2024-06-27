.class abstract Lcom/google/android/gms/measurement/internal/zzy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@21.2.2"


# instance fields
.field final zzb:Ljava/lang/String;

.field final zzc:I

.field zzd:Ljava/lang/Boolean;

.field zze:Ljava/lang/Boolean;

.field zzf:Ljava/lang/Long;

.field zzg:Ljava/lang/Long;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzy;->zzb:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/measurement/internal/zzy;->zzc:I

    return-void
.end method

.method private static zzd(Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeu;)Ljava/lang/Boolean;
    .registers 9

    .line 1
    const/4 v0, 0x7

    const/4 v1, 0x0

    if-ne p1, v0, :cond_e

    if-eqz p4, :cond_d

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_11

    .line 8
    :cond_d
    return-object v1

    :cond_e
    if-nez p3, :cond_11

    return-object v1

    .line 1
    :cond_11
    :goto_11
    if-nez p2, :cond_1c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1c

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    :cond_1c
    add-int/lit8 p1, p1, -0x1

    packed-switch p1, :pswitch_data_7a

    .line 8
    return-object v1

    .line 2
    :pswitch_22
    if-nez p4, :cond_25

    return-object v1

    .line 3
    :cond_25
    invoke-interface {p4, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 4
    :pswitch_2e
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 5
    :pswitch_37
    invoke-virtual {p0, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 6
    :pswitch_40
    invoke-virtual {p0, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 7
    :pswitch_49
    invoke-virtual {p0, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 6
    :pswitch_52
    if-nez p5, :cond_55

    return-object v1

    :cond_55
    const/4 p1, 0x1

    if-eq p1, p2, :cond_5b

    const/16 p1, 0x42

    goto :goto_5c

    .line 8
    :cond_5b
    const/4 p1, 0x0

    .line 6
    :goto_5c
    :try_start_5c
    invoke-static {p5, p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 8
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_6c
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_5c .. :try_end_6c} :catch_6d

    return-object p0

    :catch_6d
    move-exception p0

    if-eqz p6, :cond_79

    invoke-virtual {p6}, Lcom/google/android/gms/measurement/internal/zzeu;->zzk()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p0

    .line 9
    const-string p1, "Invalid regular expression in REGEXP audience filter. expression"

    invoke-virtual {p0, p1, p5}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_79
    return-object v1

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_52
        :pswitch_49
        :pswitch_40
        :pswitch_37
        :pswitch_2e
        :pswitch_22
    .end packed-switch
.end method

.method static zze(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/zzer;D)Ljava/lang/Boolean;
    .registers 10

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzer;->zzg()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_115

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzer;->zzm()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_13

    goto/16 :goto_115

    .line 4
    :cond_13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzer;->zzm()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_28

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzer;->zzk()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzer;->zzj()Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_2f

    .line 14
    :cond_27
    return-object v1

    .line 6
    :cond_28
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzer;->zzh()Z

    move-result v0

    if-nez v0, :cond_2f

    return-object v1

    .line 7
    :cond_2f
    :goto_2f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzer;->zzm()I

    move-result v0

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzer;->zzm()I

    move-result v4

    if-ne v4, v3, :cond_66

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzer;->zze()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzli;->zzx(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzer;->zzd()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzli;->zzx(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4e

    goto :goto_65

    :cond_4e
    :try_start_4e
    new-instance v4, Ljava/math/BigDecimal;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzer;->zze()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/math/BigDecimal;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzer;->zzd()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/lang/NumberFormatException; {:try_start_4e .. :try_end_60} :catch_63

    move-object p1, v4

    move-object v4, v1

    goto :goto_7c

    .line 6
    :catch_63
    move-exception p0

    return-object v1

    .line 10
    :cond_65
    :goto_65
    return-object v1

    .line 13
    :cond_66
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzer;->zzc()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzli;->zzx(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_71

    return-object v1

    :cond_71
    :try_start_71
    new-instance v4, Ljava/math/BigDecimal;

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzer;->zzc()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_7a
    .catch Ljava/lang/NumberFormatException; {:try_start_71 .. :try_end_7a} :catch_113

    move-object p1, v1

    move-object v5, p1

    .line 12
    :goto_7c
    if-ne v0, v3, :cond_81

    if-eqz p1, :cond_83

    goto :goto_85

    .line 21
    :cond_81
    if-nez v4, :cond_85

    :cond_83
    goto/16 :goto_112

    .line 12
    :cond_85
    :goto_85
    add-int/lit8 v0, v0, -0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_116

    :goto_8b
    goto/16 :goto_112

    .line 22
    :pswitch_8d
    if-eqz p1, :cond_a5

    .line 15
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-ltz p1, :cond_9c

    invoke-virtual {p0, v5}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-gtz p0, :cond_9c

    goto :goto_9d

    :cond_9c
    move v2, v3

    :goto_9d
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_112

    :pswitch_a3
    if-nez v4, :cond_a7

    :cond_a5
    goto/16 :goto_112

    :cond_a7
    const-wide/16 v0, 0x0

    cmpl-double p1, p2, v0

    if-eqz p1, :cond_e5

    new-instance p1, Ljava/math/BigDecimal;

    .line 16
    invoke-direct {p1, p2, p3}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance v0, Ljava/math/BigDecimal;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    .line 17
    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-lez p1, :cond_df

    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p2, p3}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance p2, Ljava/math/BigDecimal;

    invoke-direct {p2, v1}, Ljava/math/BigDecimal;-><init>(I)V

    .line 18
    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-gez p0, :cond_df

    goto :goto_e0

    .line 16
    :cond_df
    move v2, v3

    :goto_e0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_112

    .line 20
    :cond_e5
    invoke-virtual {p0, v4}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-nez p0, :cond_ec

    goto :goto_ed

    :cond_ec
    move v2, v3

    :goto_ed
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_112

    :pswitch_f2
    if-nez v4, :cond_f5

    goto :goto_112

    .line 21
    :cond_f5
    invoke-virtual {p0, v4}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-lez p0, :cond_fc

    goto :goto_fd

    :cond_fc
    move v2, v3

    :goto_fd
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 12
    :pswitch_102
    if-nez v4, :cond_105

    goto :goto_8b

    .line 22
    :cond_105
    invoke-virtual {p0, v4}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-gez p0, :cond_10c

    goto :goto_10d

    :cond_10c
    move v2, v3

    :goto_10d
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 12
    :goto_112
    return-object v1

    .line 6
    :catch_113
    move-exception p0

    return-object v1

    .line 3
    :cond_115
    :goto_115
    return-object v1

    :pswitch_data_116
    .packed-switch 0x1
        :pswitch_102
        :pswitch_f2
        :pswitch_a3
        :pswitch_8d
    .end packed-switch
.end method

.method static zzf(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzey;Lcom/google/android/gms/measurement/internal/zzeu;)Ljava/lang/Boolean;
    .registers 13

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    if-nez p0, :cond_7

    return-object v0

    .line 2
    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzey;->zzi()Z

    move-result v1

    if-eqz v1, :cond_91

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzey;->zzj()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    goto/16 :goto_91

    .line 3
    :cond_16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzey;->zzj()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_25

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzey;->zza()I

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_2c

    .line 9
    :cond_24
    return-object v0

    .line 5
    :cond_25
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzey;->zzh()Z

    move-result v1

    if-nez v1, :cond_2c

    return-object v0

    .line 6
    :cond_2c
    :goto_2c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzey;->zzj()I

    move-result v4

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzey;->zzf()Z

    move-result v5

    const/4 v1, 0x2

    if-nez v5, :cond_48

    if-eq v4, v1, :cond_48

    if-ne v4, v2, :cond_3c

    goto :goto_48

    .line 9
    :cond_3c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzey;->zzd()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto :goto_4d

    .line 8
    :cond_48
    :goto_48
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzey;->zzd()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    .line 10
    :goto_4d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzey;->zza()I

    move-result v2

    if-nez v2, :cond_55

    move-object v7, v0

    goto :goto_85

    .line 11
    :cond_55
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzey;->zze()Ljava/util/List;

    move-result-object p1

    if-nez v5, :cond_84

    new-instance v2, Ljava/util/ArrayList;

    .line 12
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_68
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 14
    invoke-virtual {v3, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_68

    .line 15
    :cond_7e
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    move-object v7, p1

    goto :goto_85

    .line 11
    :cond_84
    move-object v7, p1

    .line 10
    :goto_85
    if-ne v4, v1, :cond_89

    move-object v8, v6

    goto :goto_8a

    .line 16
    :cond_89
    move-object v8, v0

    :goto_8a
    move-object v3, p0

    move-object v9, p2

    invoke-static/range {v3 .. v9}, Lcom/google/android/gms/measurement/internal/zzy;->zzd(Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeu;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 2
    :cond_91
    :goto_91
    return-object v0
.end method

.method static zzg(DLcom/google/android/gms/internal/measurement/zzer;)Ljava/lang/Boolean;
    .registers 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-static {p0, p1}, Ljava/lang/Math;->ulp(D)D

    move-result-wide p0

    invoke-static {v0, p2, p0, p1}, Lcom/google/android/gms/measurement/internal/zzy;->zze(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/zzer;D)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    move-exception p0

    const/4 p0, 0x0

    return-object p0
.end method

.method static zzh(JLcom/google/android/gms/internal/measurement/zzer;)Ljava/lang/Boolean;
    .registers 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(J)V

    const-wide/16 p0, 0x0

    invoke-static {v0, p2, p0, p1}, Lcom/google/android/gms/measurement/internal/zzy;->zze(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/zzer;D)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    move-exception p0

    const/4 p0, 0x0

    return-object p0
.end method

.method static zzi(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzer;)Ljava/lang/Boolean;
    .registers 6

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/zzli;->zzx(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    :try_start_8
    new-instance v0, Ljava/math/BigDecimal;

    .line 2
    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, p1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzy;->zze(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/zzer;D)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    move-exception p0

    return-object v1
.end method

.method static zzj(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;
    .registers 2

    .line 1
    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eq p0, p1, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method abstract zza()I
.end method

.method abstract zzb()Z
.end method

.method abstract zzc()Z
.end method
