.class final Lcom/google/android/gms/internal/measurement/zzlx;
.super Lcom/google/android/gms/internal/measurement/zzjl;
.source "com.google.android.gms:play-services-measurement-base@@21.2.2"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lcom/google/android/gms/internal/measurement/zzlh;
.implements Lcom/google/android/gms/internal/measurement/zzmp;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzlx;


# instance fields
.field private zzb:[J

.field private zzc:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzlx;

    const/4 v1, 0x0

    new-array v2, v1, [J

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/internal/measurement/zzlx;-><init>([JIZ)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzlx;->zza:Lcom/google/android/gms/internal/measurement/zzlx;

    return-void
.end method

.method constructor <init>()V
    .registers 4

    .line 1
    const/16 v0, 0xa

    new-array v0, v0, [J

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzlx;-><init>([JIZ)V

    return-void
.end method

.method private constructor <init>([JIZ)V
    .registers 4

    .line 2
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/zzjl;-><init>(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzlx;->zzb:[J

    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzlx;->zzc:I

    return-void
.end method

.method public static zzf()Lcom/google/android/gms/internal/measurement/zzlx;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzlx;->zza:Lcom/google/android/gms/internal/measurement/zzlx;

    return-object v0
.end method

.method private final zzh(I)Ljava/lang/String;
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzlx;->zzc:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Size:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final zzi(I)V
    .registers 3

    .line 1
    if-ltz p1, :cond_7

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzlx;->zzc:I

    if-ge p1, v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzlx;->zzh(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final synthetic add(ILjava/lang/Object;)V
    .registers 8

    .line 1
    check-cast p2, Ljava/lang/Long;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjl;->zzbW()V

    if-ltz p1, :cond_44

    iget p2, p0, Lcom/google/android/gms/internal/measurement/zzlx;->zzc:I

    if-gt p1, p2, :cond_44

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzlx;->zzb:[J

    .line 5
    array-length v3, v2

    if-ge p2, v3, :cond_1b

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr p2, p1

    .line 6
    invoke-static {v2, p1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_33

    .line 11
    :cond_1b
    mul-int/lit8 p2, p2, 0x3

    div-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, 0x1

    .line 7
    new-array p2, p2, [J

    .line 8
    const/4 v3, 0x0

    invoke-static {v2, v3, p2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzlx;->zzb:[J

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lcom/google/android/gms/internal/measurement/zzlx;->zzc:I

    sub-int/2addr v4, p1

    .line 9
    invoke-static {v2, p1, p2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzlx;->zzb:[J

    .line 6
    :goto_33
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzlx;->zzb:[J

    .line 10
    aput-wide v0, p2, p1

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzlx;->zzc:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzlx;->zzc:I

    .line 11
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzlx;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzlx;->modCount:I

    return-void

    .line 3
    :cond_44
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzlx;->zzh(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final bridge synthetic add(Ljava/lang/Object;)Z
    .registers 4

    .line 12
    check-cast p1, Ljava/lang/Long;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzlx;->zzg(J)V

    const/4 p1, 0x1

    return p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjl;->zzbW()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzlj;->zzd:[B

    if-eqz p1, :cond_46

    .line 3
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzlx;

    if-nez v0, :cond_10

    .line 4
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/zzjl;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 5
    :cond_10
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzlx;

    iget v0, p1, Lcom/google/android/gms/internal/measurement/zzlx;->zzc:I

    const/4 v1, 0x0

    if-nez v0, :cond_18

    return v1

    :cond_18
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzlx;->zzc:I

    const v3, 0x7fffffff

    sub-int/2addr v3, v2

    if-lt v3, v0, :cond_40

    .line 6
    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlx;->zzb:[J

    .line 7
    array-length v3, v0

    if-le v2, v3, :cond_2c

    .line 8
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlx;->zzb:[J

    .line 11
    :cond_2c
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzlx;->zzb:[J

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzlx;->zzb:[J

    iget v4, p0, Lcom/google/android/gms/internal/measurement/zzlx;->zzc:I

    iget p1, p1, Lcom/google/android/gms/internal/measurement/zzlx;->zzc:I

    .line 9
    invoke-static {v0, v1, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzlx;->zzc:I

    .line 10
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzlx;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzlx;->modCount:I

    return v0

    .line 5
    :cond_40
    new-instance p1, Ljava/lang/OutOfMemoryError;

    .line 6
    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1

    .line 8
    :cond_46
    nop

    .line 11
    const/4 p1, 0x0

    throw p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzlx;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_9

    const/4 p1, 0x1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 10

    .line 1
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzlx;

    if-nez v1, :cond_d

    .line 2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/zzjl;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_d
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzlx;

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzlx;->zzc:I

    .line 4
    iget v2, p1, Lcom/google/android/gms/internal/measurement/zzlx;->zzc:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_17

    return v3

    .line 5
    :cond_17
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzlx;->zzb:[J

    move v1, v3

    :goto_1a
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzlx;->zzc:I

    if-ge v1, v2, :cond_2c

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzlx;->zzb:[J

    .line 6
    aget-wide v4, v2, v1

    aget-wide v6, p1, v1

    cmp-long v2, v4, v6

    if-eqz v2, :cond_29

    return v3

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_2c
    return v0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzlx;->zzi(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlx;->zzb:[J

    .line 2
    aget-wide v1, v0, p1

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .registers 8

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_2
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzlx;->zzc:I

    if-ge v0, v2, :cond_19

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzlx;->zzb:[J

    aget-wide v3, v2, v0

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzlj;->zzd:[B

    const/16 v2, 0x20

    ushr-long v5, v3, v2

    xor-long v2, v3, v5

    long-to-int v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_19
    return v1
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .registers 9

    .line 1
    instance-of v0, p1, Ljava/lang/Long;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    .line 2
    :cond_6
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzlx;->zzc:I

    const/4 v0, 0x0

    :goto_f
    if-ge v0, p1, :cond_1d

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzlx;->zzb:[J

    .line 3
    aget-wide v5, v4, v0

    cmp-long v4, v5, v2

    if-nez v4, :cond_1a

    return v0

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1d
    return v1
.end method

.method public final bridge synthetic remove(I)Ljava/lang/Object;
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjl;->zzbW()V

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzlx;->zzi(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlx;->zzb:[J

    .line 3
    aget-wide v1, v0, p1

    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzlx;->zzc:I

    add-int/lit8 v4, v3, -0x1

    if-ge p1, v4, :cond_18

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    .line 4
    invoke-static {v0, v4, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_18
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzlx;->zzc:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzlx;->zzc:I

    .line 5
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzlx;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzlx;->modCount:I

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected final removeRange(II)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjl;->zzbW()V

    if-lt p2, p1, :cond_1a

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlx;->zzb:[J

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzlx;->zzc:I

    sub-int/2addr v1, p2

    .line 3
    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzlx;->zzc:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzlx;->zzc:I

    .line 4
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzlx;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzlx;->modCount:I

    return-void

    .line 1
    :cond_1a
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 2
    const-string/jumbo p2, "toIndex < fromIndex"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 1
    check-cast p2, Ljava/lang/Long;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjl;->zzbW()V

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzlx;->zzi(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzlx;->zzb:[J

    .line 5
    aget-wide v2, p2, p1

    .line 6
    aput-wide v0, p2, p1

    .line 2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzlx;->zzc:I

    return v0
.end method

.method public final zza(I)J
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzlx;->zzi(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlx;->zzb:[J

    .line 2
    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public final bridge synthetic zzd(I)Lcom/google/android/gms/internal/measurement/zzli;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzlx;->zze(I)Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object p1

    return-object p1
.end method

.method public final zze(I)Lcom/google/android/gms/internal/measurement/zzlh;
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzlx;->zzc:I

    if-lt p1, v0, :cond_13

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzlx;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzlx;->zzb:[J

    .line 2
    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzlx;->zzc:I

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzlx;-><init>([JIZ)V

    return-object v0

    .line 1
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final zzg(J)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjl;->zzbW()V

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzlx;->zzc:I

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzlx;->zzb:[J

    .line 2
    array-length v2, v1

    if-ne v0, v2, :cond_18

    mul-int/lit8 v2, v0, 0x3

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    .line 3
    new-array v2, v2, [J

    .line 4
    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/zzlx;->zzb:[J

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlx;->zzb:[J

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzlx;->zzc:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzlx;->zzc:I

    .line 5
    aput-wide p1, v0, v1

    return-void
.end method