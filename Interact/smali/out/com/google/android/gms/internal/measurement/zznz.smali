.class final Lcom/google/android/gms/internal/measurement/zznz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@21.2.2"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Lcom/google/android/gms/internal/measurement/zznw;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznu;->zzx()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznu;->zzy()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2
    sget v0, Lcom/google/android/gms/internal/measurement/zzjm;->zza:I

    :cond_e
    new-instance v0, Lcom/google/android/gms/internal/measurement/zznx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zznx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zznz;->zzb:Lcom/google/android/gms/internal/measurement/zznw;

    return-void
.end method

.method static bridge synthetic zza([BII)I
    .registers 7

    .line 1
    sub-int/2addr p2, p1

    add-int/lit8 v0, p1, -0x1

    aget-byte v0, p0, v0

    const/16 v1, -0x41

    const/16 v2, -0xc

    const/4 v3, -0x1

    packed-switch p2, :pswitch_data_3a

    .line 3
    new-instance p0, Ljava/lang/AssertionError;

    .line 4
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 2
    :pswitch_13
    aget-byte p2, p0, p1

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    if-gt v0, v2, :cond_38

    if-gt p2, v1, :cond_38

    if-le p0, v1, :cond_20

    goto :goto_38

    :cond_20
    shl-int/lit8 p1, p2, 0x8

    shl-int/lit8 p0, p0, 0x10

    xor-int/2addr p1, v0

    xor-int v0, p1, p0

    goto :goto_39

    .line 3
    :pswitch_28
    aget-byte p0, p0, p1

    if-gt v0, v2, :cond_34

    if-le p0, v1, :cond_30

    move v0, v3

    goto :goto_39

    :cond_30
    shl-int/lit8 p0, p0, 0x8

    xor-int/2addr v0, p0

    goto :goto_39

    .line 4
    :cond_34
    move v0, v3

    goto :goto_39

    .line 2
    :pswitch_36
    if-le v0, v2, :cond_39

    :cond_38
    :goto_38
    move v0, v3

    :cond_39
    :goto_39
    return v0

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_36
        :pswitch_28
        :pswitch_13
    .end packed-switch
.end method

.method static zzb(Ljava/lang/CharSequence;[BII)I
    .registers 11

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    add-int v2, p2, p3

    const/16 v3, 0x80

    if-ge v1, v0, :cond_1b

    add-int v4, v1, p2

    if-ge v4, v2, :cond_1b

    .line 2
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-ge v5, v3, :cond_1b

    int-to-byte v2, v5

    .line 3
    aput-byte v2, p1, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1b
    if-ne v1, v0, :cond_20

    add-int/2addr p2, v0

    goto/16 :goto_101

    :cond_20
    add-int/2addr p2, v1

    :goto_21
    if-ge v1, v0, :cond_100

    .line 4
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    if-ge p3, v3, :cond_33

    if-ge p2, v2, :cond_33

    add-int/lit8 v4, p2, 0x1

    int-to-byte p3, p3

    .line 16
    aput-byte p3, p1, p2

    move p2, v4

    goto/16 :goto_b8

    :cond_33
    const/16 v4, 0x800

    if-ge p3, v4, :cond_4d

    add-int/lit8 v4, v2, -0x2

    if-gt p2, v4, :cond_4d

    add-int/lit8 v4, p2, 0x1

    ushr-int/lit8 v5, p3, 0x6

    or-int/lit16 v5, v5, 0x3c0

    int-to-byte v5, v5

    .line 14
    aput-byte v5, p1, p2

    add-int/lit8 p2, v4, 0x1

    and-int/lit8 p3, p3, 0x3f

    or-int/2addr p3, v3

    int-to-byte p3, p3

    .line 15
    aput-byte p3, p1, v4

    goto :goto_b8

    :cond_4d
    const v4, 0xdfff

    const v5, 0xd800

    if-lt p3, v5, :cond_57

    if-le p3, v4, :cond_78

    :cond_57
    add-int/lit8 v6, v2, -0x3

    if-gt p2, v6, :cond_78

    add-int/lit8 v4, p2, 0x1

    ushr-int/lit8 v5, p3, 0xc

    or-int/lit16 v5, v5, 0x1e0

    int-to-byte v5, v5

    .line 11
    aput-byte v5, p1, p2

    add-int/lit8 p2, v4, 0x1

    ushr-int/lit8 v5, p3, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v3

    int-to-byte v5, v5

    .line 12
    aput-byte v5, p1, v4

    add-int/lit8 v4, p2, 0x1

    and-int/lit8 p3, p3, 0x3f

    or-int/2addr p3, v3

    int-to-byte p3, p3

    .line 13
    aput-byte p3, p1, p2

    move p2, v4

    goto :goto_b8

    :cond_78
    add-int/lit8 v6, v2, -0x4

    if-gt p2, v6, :cond_c5

    add-int/lit8 v4, v1, 0x1

    .line 5
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-eq v4, v5, :cond_bd

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_bc

    .line 6
    invoke-static {p3, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p3

    add-int/lit8 v1, p2, 0x1

    ushr-int/lit8 v5, p3, 0x12

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    .line 7
    aput-byte v5, p1, p2

    add-int/lit8 p2, v1, 0x1

    ushr-int/lit8 v5, p3, 0xc

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v3

    int-to-byte v5, v5

    .line 8
    aput-byte v5, p1, v1

    add-int/lit8 v1, p2, 0x1

    ushr-int/lit8 v5, p3, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v3

    int-to-byte v5, v5

    .line 9
    aput-byte v5, p1, p2

    add-int/lit8 p2, v1, 0x1

    and-int/lit8 p3, p3, 0x3f

    or-int/2addr p3, v3

    int-to-byte p3, p3

    .line 10
    aput-byte p3, p1, v1

    move v1, v4

    .line 16
    :goto_b8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_21

    .line 5
    :cond_bc
    move v1, v4

    :cond_bd
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzny;

    add-int/lit8 v1, v1, -0x1

    .line 17
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/zzny;-><init>(II)V

    throw p0

    .line 10
    :cond_c5
    if-lt p3, v5, :cond_e1

    if-gt p3, v4, :cond_e1

    add-int/lit8 p1, v1, 0x1

    .line 18
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eq p1, v2, :cond_db

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-static {p3, p0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result p0

    if-nez p0, :cond_e1

    :cond_db
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzny;

    .line 20
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/zzny;-><init>(II)V

    throw p0

    :cond_e1
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed writing "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p3, " at index "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_100
    nop

    .line 3
    :goto_101
    return p2
.end method

.method static zzc(Ljava/lang/CharSequence;)I
    .registers 9

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_13

    .line 2
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x80

    if-ge v3, v4, :cond_14

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 7
    :cond_13
    nop

    .line 2
    :cond_14
    move v3, v0

    :goto_15
    if-ge v2, v0, :cond_5a

    .line 3
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x800

    if-ge v4, v5, :cond_27

    rsub-int/lit8 v4, v4, 0x7f

    ushr-int/lit8 v4, v4, 0x1f

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 4
    :cond_27
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    :goto_2b
    if-ge v2, v4, :cond_59

    .line 5
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ge v6, v5, :cond_39

    rsub-int/lit8 v6, v6, 0x7f

    ushr-int/lit8 v6, v6, 0x1f

    add-int/2addr v1, v6

    goto :goto_56

    :cond_39
    add-int/lit8 v1, v1, 0x2

    const v7, 0xd800

    if-lt v6, v7, :cond_56

    const v7, 0xdfff

    if-gt v6, v7, :cond_56

    .line 6
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    const/high16 v7, 0x10000

    if-lt v6, v7, :cond_50

    .line 8
    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    .line 6
    :cond_50
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzny;

    .line 8
    invoke-direct {p0, v2, v4}, Lcom/google/android/gms/internal/measurement/zzny;-><init>(II)V

    throw p0

    .line 5
    :cond_56
    :goto_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 8
    :cond_59
    add-int/2addr v3, v1

    :cond_5a
    if-lt v3, v0, :cond_5d

    .line 7
    return v3

    .line 8
    :cond_5d
    int-to-long v0, v3

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UTF-8 length does not fit in int: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v3, 0x100000000L

    add-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static zzd([B)Z
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznz;->zzb:Lcom/google/android/gms/internal/measurement/zznw;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/gms/internal/measurement/zznw;->zzb([BII)Z

    move-result p0

    return p0
.end method

.method static zze([BII)Z
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznz;->zzb:Lcom/google/android/gms/internal/measurement/zznw;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zznw;->zzb([BII)Z

    move-result p0

    return p0
.end method
