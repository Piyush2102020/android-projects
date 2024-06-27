.class public final Lcom/google/firebase/analytics/connector/internal/zzc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-api@@21.2.2"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Lcom/google/android/gms/internal/measurement/zzjb;

.field private static final zzc:Lcom/google/android/gms/internal/measurement/zzja;

.field private static final zzd:Lcom/google/android/gms/internal/measurement/zzja;

.field private static final zze:Lcom/google/android/gms/internal/measurement/zzja;

.field private static final zzf:Lcom/google/android/gms/internal/measurement/zzja;

.field private static final zzg:Lcom/google/android/gms/internal/measurement/zzja;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 1
    const-string v0, "_ac"

    const-string v1, "campaign_details"

    const-string v2, "_ug"

    const-string v3, "_iapx"

    const-string v4, "_exp_set"

    const-string v5, "_exp_clear"

    const-string v6, "_exp_activate"

    const-string v7, "_exp_timeout"

    const-string v8, "_exp_expire"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v15

    const-string v9, "_in"

    const-string v10, "_xa"

    const-string v11, "_xu"

    const-string v12, "_aq"

    const-string v13, "_aa"

    const-string v14, "_ai"

    invoke-static/range {v9 .. v15}, Lcom/google/android/gms/internal/measurement/zzjb;->zzi(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzjb;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/analytics/connector/internal/zzc;->zzb:Lcom/google/android/gms/internal/measurement/zzjb;

    const-string v1, "_e"

    const-string v2, "_f"

    const-string v3, "_iap"

    const-string v4, "_s"

    const-string v5, "_au"

    const-string v6, "_ui"

    const-string v7, "_cd"

    .line 2
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/zzja;->zzj(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzja;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/analytics/connector/internal/zzc;->zzc:Lcom/google/android/gms/internal/measurement/zzja;

    .line 3
    const-string v0, "auto"

    const-string v1, "app"

    const-string v2, "am"

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzja;->zzi(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzja;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/analytics/connector/internal/zzc;->zzd:Lcom/google/android/gms/internal/measurement/zzja;

    .line 4
    const-string v0, "_r"

    const-string v1, "_dbg"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzja;->zzh(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzja;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/analytics/connector/internal/zzc;->zze:Lcom/google/android/gms/internal/measurement/zzja;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzix;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzix;-><init>()V

    .line 5
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzhd;->zza:[Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzix;->zza([Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzix;

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzhd;->zzb:[Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzix;->zza([Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzix;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzix;->zzb()Lcom/google/android/gms/internal/measurement/zzja;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/analytics/connector/internal/zzc;->zzf:Lcom/google/android/gms/internal/measurement/zzja;

    .line 9
    const-string v0, "^_ltv_[A-Z]{3}$"

    const-string v1, "^_cc[1-5]{1}$"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzja;->zzh(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzja;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/analytics/connector/internal/zzc;->zzg:Lcom/google/android/gms/internal/measurement/zzja;

    return-void
.end method

.method public static zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 8

    .line 1
    const-string v0, "_cmp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_a

    return v0

    .line 2
    :cond_a
    invoke-static {p0}, Lcom/google/firebase/analytics/connector/internal/zzc;->zzd(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_12

    return v1

    :cond_12
    if-nez p2, :cond_15

    return v1

    :cond_15
    sget-object p1, Lcom/google/firebase/analytics/connector/internal/zzc;->zze:Lcom/google/android/gms/internal/measurement/zzja;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v3, v1

    :cond_1c
    if-ge v3, v2, :cond_2d

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 3
    check-cast v4, Ljava/lang/String;

    .line 4
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    add-int/lit8 v3, v3, 0x1

    if-eqz v4, :cond_1c

    return v1

    .line 5
    :cond_2d
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_70

    :cond_34
    goto :goto_54

    .line 8
    :sswitch_35
    nop

    .line 5
    const-string p1, "fiam"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    const/4 p0, 0x2

    goto :goto_55

    :sswitch_40
    const-string p1, "fdl"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    move p0, v0

    goto :goto_55

    :sswitch_4a
    const-string p1, "fcm"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    move p0, v1

    goto :goto_55

    :goto_54
    const/4 p0, -0x1

    :goto_55
    const-string p1, "_cis"

    packed-switch p0, :pswitch_data_7e

    return v1

    .line 6
    :pswitch_5b
    const-string p0, "fiam_integration"

    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :pswitch_61
    nop

    .line 7
    const-string p0, "fdl_integration"

    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :pswitch_68
    nop

    .line 8
    const-string p0, "fcm_integration"

    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    nop

    :sswitch_data_70
    .sparse-switch
        0x18b50 -> :sswitch_4a
        0x18b6e -> :sswitch_40
        0x2ff42f -> :sswitch_35
    .end sparse-switch

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_68
        :pswitch_61
        :pswitch_5b
    .end packed-switch
.end method

.method public static zzb(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 6

    .line 1
    sget-object v0, Lcom/google/firebase/analytics/connector/internal/zzc;->zzc:Lcom/google/android/gms/internal/measurement/zzja;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/zzja;->contains(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    return v0

    :cond_a
    if-eqz p1, :cond_24

    sget-object p0, Lcom/google/firebase/analytics/connector/internal/zzc;->zze:Lcom/google/android/gms/internal/measurement/zzja;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    move v2, v0

    :cond_13
    if-ge v2, v1, :cond_24

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 2
    check-cast v3, Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    add-int/lit8 v2, v2, 0x1

    if-eqz v3, :cond_13

    return v0

    :cond_24
    const/4 p0, 0x1

    return p0
.end method

.method public static zzc(Ljava/lang/String;)Z
    .registers 2

    .line 1
    sget-object v0, Lcom/google/firebase/analytics/connector/internal/zzc;->zzb:Lcom/google/android/gms/internal/measurement/zzjb;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/zzjb;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static zzd(Ljava/lang/String;)Z
    .registers 2

    .line 1
    sget-object v0, Lcom/google/firebase/analytics/connector/internal/zzc;->zzd:Lcom/google/android/gms/internal/measurement/zzja;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/zzja;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static zze(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 1
    const-string v0, "_ce1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "fcm"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_51

    const-string v0, "_ce2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_51

    .line 2
    :cond_15
    nop

    .line 3
    const-string v0, "_ln"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2e

    const-string p1, "fiam"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2d

    goto :goto_2e

    :cond_2d
    return v3

    :cond_2e
    :goto_2e
    return v2

    :cond_2f
    sget-object p0, Lcom/google/firebase/analytics/connector/internal/zzc;->zzf:Lcom/google/android/gms/internal/measurement/zzja;

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzja;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_38

    return v3

    :cond_38
    sget-object p0, Lcom/google/firebase/analytics/connector/internal/zzc;->zzg:Lcom/google/android/gms/internal/measurement/zzja;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v3

    :cond_3f
    if-ge v1, v0, :cond_50

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 6
    check-cast v4, Ljava/lang/String;

    .line 7
    invoke-virtual {p1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    add-int/lit8 v1, v1, 0x1

    if-eqz v4, :cond_3f

    return v3

    :cond_50
    return v2

    .line 2
    :cond_51
    :goto_51
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_61

    const-string p1, "frc"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_60

    goto :goto_61

    :cond_60
    return v3

    :cond_61
    :goto_61
    return v2
.end method
