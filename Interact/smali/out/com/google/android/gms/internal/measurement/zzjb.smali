.class public abstract Lcom/google/android/gms/internal/measurement/zzjb;
.super Lcom/google/android/gms/internal/measurement/zziw;
.source "com.google.android.gms:play-services-measurement-base@@21.2.2"

# interfaces
.implements Ljava/util/Set;


# instance fields
.field private transient zza:Lcom/google/android/gms/internal/measurement/zzja;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zziw;-><init>()V

    return-void
.end method

.method static zzf(I)I
    .registers 6

    .line 1
    const/4 v0, 0x2

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const v0, 0x2ccccccc

    if-ge p0, v0, :cond_1f

    add-int/lit8 v0, p0, -0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    :goto_10
    add-int/2addr v0, v0

    int-to-double v1, v0

    const-wide v3, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v1, v3

    int-to-double v3, p0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1e

    goto :goto_10

    :cond_1e
    return v0

    :cond_1f
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p0, v0, :cond_24

    .line 3
    return v0

    .line 2
    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 3
    const-string v0, "collection too large"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs zzi(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzjb;
    .registers 7
    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1
    const/16 p0, 0xf

    new-array p1, p0, [Ljava/lang/Object;

    const-string p2, "_in"

    const/4 p3, 0x0

    aput-object p2, p1, p3

    const/4 p2, 0x1

    const-string p4, "_xa"

    aput-object p4, p1, p2

    const/4 p2, 0x2

    const-string p4, "_xu"

    aput-object p4, p1, p2

    const/4 p2, 0x3

    const-string p4, "_aq"

    aput-object p4, p1, p2

    const/4 p2, 0x4

    const-string p4, "_aa"

    aput-object p4, p1, p2

    const/4 p2, 0x5

    const-string p4, "_ai"

    aput-object p4, p1, p2

    const/4 p2, 0x6

    const/16 p4, 0x9

    invoke-static {p6, p3, p1, p2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzjb;->zzk(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzjb;

    move-result-object p0

    return-object p0
.end method

.method private static varargs zzk(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzjb;
    .registers 14

    .line 4
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_7a

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzf(I)I

    move-result v1

    .line 5
    new-array v5, v1, [Ljava/lang/Object;

    add-int/lit8 v6, v1, -0x1

    move v2, v0

    move v4, v2

    move v7, v4

    goto :goto_1e

    .line 1
    :pswitch_10
    aget-object p0, p1, v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/google/android/gms/internal/measurement/zzjg;

    .line 3
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/measurement/zzjg;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 1
    :pswitch_1b
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzjf;->zza:Lcom/google/android/gms/internal/measurement/zzjf;

    return-object p0

    .line 5
    :goto_1e
    if-ge v2, p0, :cond_48

    .line 6
    aget-object v3, p1, v2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/measurement/zzjd;->zza(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 7
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v8

    .line 8
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/zzit;->zza(I)I

    move-result v9

    :goto_2d
    and-int v10, v9, v6

    .line 9
    aget-object v11, v5, v10

    if-nez v11, :cond_3c

    add-int/lit8 v9, v7, 0x1

    .line 11
    aput-object v3, p1, v7

    .line 12
    aput-object v3, v5, v10

    add-int/2addr v4, v8

    move v7, v9

    goto :goto_45

    .line 10
    :cond_3c
    invoke-virtual {v11, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_45

    add-int/lit8 v9, v9, 0x1

    goto :goto_2d

    .line 12
    :cond_45
    :goto_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 10
    :cond_48
    nop

    .line 13
    const/4 v2, 0x0

    invoke-static {p1, v7, p0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    const/4 p0, 0x1

    if-ne v7, p0, :cond_5b

    aget-object p0, p1, v0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/google/android/gms/internal/measurement/zzjg;

    .line 15
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/measurement/zzjg;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_5b
    div-int/lit8 v1, v1, 0x2

    .line 16
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzjb;->zzf(I)I

    move-result p0

    if-ge p0, v1, :cond_68

    .line 17
    invoke-static {v7, p1}, Lcom/google/android/gms/internal/measurement/zzjb;->zzk(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzjb;

    move-result-object p0

    return-object p0

    :cond_68
    const/16 p0, 0xa

    if-ge v7, p0, :cond_72

    .line 18
    invoke-static {p1, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    goto :goto_73

    .line 17
    :cond_72
    move-object v3, p1

    .line 19
    :goto_73
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzjf;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/zzjf;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    return-object p0

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_10
    .end packed-switch
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzjb;

    const/4 v2, 0x0

    if-eqz v1, :cond_24

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzj()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 2
    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzjb;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzjb;->zzj()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ne v1, v3, :cond_23

    goto :goto_24

    .line 7
    :cond_23
    return v2

    .line 4
    :cond_24
    :goto_24
    if-ne p1, p0, :cond_27

    goto :goto_43

    .line 5
    :cond_27
    instance-of v1, p1, Ljava/util/Set;

    if-eqz v1, :cond_42

    .line 6
    check-cast p1, Ljava/util/Set;

    :try_start_2d
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    .line 7
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v1, v3, :cond_42

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1
    :try_end_3b
    .catch Ljava/lang/NullPointerException; {:try_start_2d .. :try_end_3b} :catch_41
    .catch Ljava/lang/ClassCastException; {:try_start_2d .. :try_end_3b} :catch_3f

    if-nez p1, :cond_3e

    goto :goto_42

    :cond_3e
    return v0

    :catch_3f
    move-exception p1

    goto :goto_42

    :catch_41
    move-exception p1

    :cond_42
    :goto_42
    move v0, v2

    .line 4
    :goto_43
    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 1
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_18

    :cond_17
    move v3, v1

    :goto_18
    add-int/2addr v2, v3

    goto :goto_6

    :cond_1a
    return v2
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzd()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object v0

    return-object v0
.end method

.method public abstract zzd()Lcom/google/android/gms/internal/measurement/zzjh;
.end method

.method public final zzg()Lcom/google/android/gms/internal/measurement/zzja;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zzja;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzh()Lcom/google/android/gms/internal/measurement/zzja;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zzja;

    :cond_a
    return-object v0
.end method

.method zzh()Lcom/google/android/gms/internal/measurement/zzja;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zziw;->toArray()[Ljava/lang/Object;

    move-result-object v0

    sget v1, Lcom/google/android/gms/internal/measurement/zzja;->zzd:I

    .line 2
    array-length v1, v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzja;->zzg([Ljava/lang/Object;I)Lcom/google/android/gms/internal/measurement/zzja;

    move-result-object v0

    return-object v0
.end method

.method zzj()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
