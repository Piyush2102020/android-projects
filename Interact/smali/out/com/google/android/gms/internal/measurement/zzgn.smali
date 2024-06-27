.class final synthetic Lcom/google/android/gms/internal/measurement/zzgn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@21.2.2"


# static fields
.field static final synthetic zza:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzla;->zza()[I

    const/4 v0, 0x7

    new-array v1, v0, [I

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzgn;->zza:[I

    const/4 v2, 0x1

    const/4 v3, 0x3

    :try_start_a
    aput v2, v1, v3
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_c} :catch_d

    goto :goto_e

    :catch_d
    move-exception v1

    :goto_e
    const/4 v1, 0x2

    const/4 v4, 0x4

    :try_start_10
    sget-object v5, Lcom/google/android/gms/internal/measurement/zzgn;->zza:[I

    aput v1, v5, v4
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v5

    :goto_16
    :try_start_16
    sget-object v5, Lcom/google/android/gms/internal/measurement/zzgn;->zza:[I

    aput v3, v5, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_1a} :catch_1b

    goto :goto_1c

    :catch_1b
    move-exception v1

    :goto_1c
    const/4 v1, 0x5

    :try_start_1d
    sget-object v3, Lcom/google/android/gms/internal/measurement/zzgn;->zza:[I

    aput v4, v3, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v3

    :goto_23
    const/4 v3, 0x6

    :try_start_24
    sget-object v4, Lcom/google/android/gms/internal/measurement/zzgn;->zza:[I

    aput v1, v4, v3
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_28} :catch_29

    goto :goto_2a

    :catch_29
    move-exception v1

    :goto_2a
    :try_start_2a
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzgn;->zza:[I

    const/4 v4, 0x0

    aput v3, v1, v4
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2f} :catch_30

    goto :goto_31

    :catch_30
    move-exception v1

    :goto_31
    :try_start_31
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzgn;->zza:[I

    aput v0, v1, v2
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_35} :catch_36

    return-void

    :catch_36
    move-exception v0

    return-void
.end method
