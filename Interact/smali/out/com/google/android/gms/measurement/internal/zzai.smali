.class public final Lcom/google/android/gms/measurement/internal/zzai;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.2.2"


# static fields
.field public static final zza:Lcom/google/android/gms/measurement/internal/zzai;


# instance fields
.field private final zzb:Ljava/util/EnumMap;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzai;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/google/android/gms/measurement/internal/zzai;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzai;->zza:Lcom/google/android/gms/measurement/internal/zzai;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/android/gms/measurement/internal/zzah;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzai;->zzb:Ljava/util/EnumMap;

    .line 2
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzah;->zza:Lcom/google/android/gms/measurement/internal/zzah;

    invoke-virtual {v0, v1, p1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/google/android/gms/measurement/internal/zzah;->zzb:Lcom/google/android/gms/measurement/internal/zzah;

    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/EnumMap;)V
    .registers 4

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/android/gms/measurement/internal/zzah;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzai;->zzb:Ljava/util/EnumMap;

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public static zza(Landroid/os/Bundle;)Lcom/google/android/gms/measurement/internal/zzai;
    .registers 7

    .line 1
    if-nez p0, :cond_5

    sget-object p0, Lcom/google/android/gms/measurement/internal/zzai;->zza:Lcom/google/android/gms/measurement/internal/zzai;

    return-object p0

    :cond_5
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/android/gms/measurement/internal/zzah;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzah;->values()[Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_26

    aget-object v4, v1, v3

    .line 3
    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zzah;->zzd:Ljava/lang/String;

    .line 4
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzai;->zzn(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    .line 5
    invoke-virtual {v0, v4, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_26
    new-instance p0, Lcom/google/android/gms/measurement/internal/zzai;

    .line 6
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzai;-><init>(Ljava/util/EnumMap;)V

    return-object p0
.end method

.method public static zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzai;
    .registers 6

    .line 1
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/android/gms/measurement/internal/zzah;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    if-eqz p0, :cond_30

    const/4 v1, 0x0

    .line 2
    :goto_a
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzah;->zzc:[Lcom/google/android/gms/measurement/internal/zzah;

    array-length v2, v2

    const/4 v2, 0x2

    if-ge v1, v2, :cond_30

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzah;->zzc:[Lcom/google/android/gms/measurement/internal/zzah;

    .line 3
    aget-object v2, v2, v1

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2d

    .line 4
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_36

    :pswitch_24
    goto :goto_2a

    :pswitch_25
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2a

    :pswitch_28
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_2a
    :pswitch_2a
    invoke-virtual {v0, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_30
    new-instance p0, Lcom/google/android/gms/measurement/internal/zzai;

    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzai;-><init>(Ljava/util/EnumMap;)V

    return-object p0

    :pswitch_data_36
    .packed-switch 0x2d
        :pswitch_2a
        :pswitch_24
        :pswitch_24
        :pswitch_28
        :pswitch_25
    .end packed-switch
.end method

.method public static zzg(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 6

    .line 1
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzah;->values()[Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_25

    aget-object v3, v0, v2

    .line 2
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzah;->zzd:Ljava/lang/String;

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 3
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzah;->zzd:Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_22

    .line 4
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzai;->zzn(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_21

    goto :goto_22

    :cond_21
    return-object v3

    :cond_22
    :goto_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_25
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zzj(II)Z
    .registers 2

    if-gt p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method static final zzm(Ljava/lang/Boolean;)I
    .registers 1

    .line 1
    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x2

    return p0
.end method

.method private static zzn(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 3

    .line 1
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-string v1, "granted"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 2
    :cond_f
    const-string v1, "denied"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_1a
    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 9

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/measurement/internal/zzai;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2
    :cond_6
    check-cast p1, Lcom/google/android/gms/measurement/internal/zzai;

    .line 3
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzah;->values()[Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_e
    if-ge v3, v2, :cond_30

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzai;->zzb:Ljava/util/EnumMap;

    .line 4
    invoke-virtual {v5, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzai;->zzm(Ljava/lang/Boolean;)I

    move-result v5

    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzai;->zzb:Ljava/util/EnumMap;

    .line 5
    invoke-virtual {v6, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzai;->zzm(Ljava/lang/Boolean;)I

    move-result v4

    if-eq v5, v4, :cond_2d

    return v1

    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_30
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzai;->zzb:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/16 v1, 0x11

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    mul-int/lit8 v1, v1, 0x1f

    .line 2
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzm(Ljava/lang/Boolean;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_c

    :cond_20
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "settings: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzah;->values()[Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v1

    .line 3
    array-length v2, v1

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_48

    .line 4
    aget-object v4, v1, v3

    if-eqz v3, :cond_18

    .line 5
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_18
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzah;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzai;->zzb:Ljava/util/EnumMap;

    .line 8
    invoke-virtual {v5, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    if-nez v4, :cond_35

    .line 9
    const-string/jumbo v4, "uninitialized"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_45

    :cond_35
    nop

    .line 10
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v5, 0x1

    if-eq v5, v4, :cond_40

    const-string v4, "denied"

    goto :goto_42

    :cond_40
    const-string v4, "granted"

    :goto_42
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :goto_45
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 10
    :cond_48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/measurement/internal/zzai;)Lcom/google/android/gms/measurement/internal/zzai;
    .registers 10

    .line 1
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/android/gms/measurement/internal/zzah;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzah;->values()[Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_e
    if-ge v4, v2, :cond_41

    aget-object v5, v1, v4

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzai;->zzb:Ljava/util/EnumMap;

    .line 3
    invoke-virtual {v6, v5}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    iget-object v7, p1, Lcom/google/android/gms/measurement/internal/zzai;->zzb:Ljava/util/EnumMap;

    invoke-virtual {v7, v5}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    if-nez v6, :cond_26

    move-object v6, v7

    goto :goto_3b

    .line 5
    :cond_26
    if-eqz v7, :cond_3b

    .line 4
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_36

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_36

    const/4 v6, 0x1

    goto :goto_37

    :cond_36
    move v6, v3

    :goto_37
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 5
    :cond_3b
    :goto_3b
    invoke-virtual {v0, v5, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 4
    :cond_41
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzai;

    .line 6
    invoke-direct {p1, v0}, Lcom/google/android/gms/measurement/internal/zzai;-><init>(Ljava/util/EnumMap;)V

    return-object p1
.end method

.method public final zzd(Lcom/google/android/gms/measurement/internal/zzai;)Lcom/google/android/gms/measurement/internal/zzai;
    .registers 8

    .line 1
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/android/gms/measurement/internal/zzah;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzah;->values()[Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_29

    aget-object v4, v1, v3

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzai;->zzb:Ljava/util/EnumMap;

    .line 3
    invoke-virtual {v5, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    if-nez v5, :cond_23

    .line 4
    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzai;->zzb:Ljava/util/EnumMap;

    invoke-virtual {v5, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    .line 5
    :cond_23
    invoke-virtual {v0, v4, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_29
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzai;

    .line 6
    invoke-direct {p1, v0}, Lcom/google/android/gms/measurement/internal/zzai;-><init>(Ljava/util/EnumMap;)V

    return-object p1
.end method

.method public final zze()Ljava/lang/Boolean;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzai;->zzb:Ljava/util/EnumMap;

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzah;->zza:Lcom/google/android/gms/measurement/internal/zzah;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final zzf()Ljava/lang/Boolean;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzai;->zzb:Ljava/util/EnumMap;

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzah;->zzb:Lcom/google/android/gms/measurement/internal/zzah;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final zzh()Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "G1"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzah;->zzc:[Lcom/google/android/gms/measurement/internal/zzah;

    array-length v2, v1

    const/4 v2, 0x0

    :goto_b
    const/4 v3, 0x2

    if-ge v2, v3, :cond_2e

    aget-object v3, v1, v2

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzai;->zzb:Ljava/util/EnumMap;

    .line 3
    invoke-virtual {v4, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    if-nez v3, :cond_1d

    const/16 v3, 0x2d

    goto :goto_28

    .line 4
    :cond_1d
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_26

    const/16 v3, 0x31

    goto :goto_28

    :cond_26
    const/16 v3, 0x30

    .line 3
    :goto_28
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 4
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzi(Lcom/google/android/gms/measurement/internal/zzah;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzai;->zzb:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_13

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    return p1

    :cond_13
    :goto_13
    const/4 p1, 0x1

    return p1
.end method

.method public final zzk(Lcom/google/android/gms/measurement/internal/zzai;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzai;->zzb:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/measurement/internal/zzah;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/measurement/internal/zzah;

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzl(Lcom/google/android/gms/measurement/internal/zzai;[Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result p1

    return p1
.end method

.method public final varargs zzl(Lcom/google/android/gms/measurement/internal/zzai;[Lcom/google/android/gms/measurement/internal/zzah;)Z
    .registers 9

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_25

    aget-object v3, p2, v2

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzai;->zzb:Ljava/util/EnumMap;

    .line 2
    invoke-virtual {v4, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 3
    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzai;->zzb:Ljava/util/EnumMap;

    invoke-virtual {v5, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v4, v5, :cond_22

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v3, v4, :cond_20

    goto :goto_22

    :cond_20
    const/4 p1, 0x1

    return p1

    :cond_22
    :goto_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_25
    return v1
.end method
