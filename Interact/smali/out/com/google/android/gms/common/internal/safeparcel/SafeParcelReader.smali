.class public Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBigDecimal(Landroid/os/Parcel;I)Ljava/math/BigDecimal;
    .registers 5
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_d
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    add-int/2addr v0, p1

    .line 5
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    new-instance p0, Ljava/math/BigDecimal;

    new-instance p1, Ljava/math/BigInteger;

    .line 6
    invoke-direct {p1, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-direct {p0, p1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object p0
.end method

.method public static createBigDecimalArray(Landroid/os/Parcel;I)[Ljava/math/BigDecimal;
    .registers 10
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_d
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4
    new-array v2, v1, [Ljava/math/BigDecimal;

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v1, :cond_2d

    .line 5
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 6
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    new-instance v6, Ljava/math/BigDecimal;

    new-instance v7, Ljava/math/BigInteger;

    .line 7
    invoke-direct {v7, v4}, Ljava/math/BigInteger;-><init>([B)V

    invoke-direct {v6, v7, v5}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    aput-object v6, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_2d
    add-int/2addr v0, p1

    .line 8
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v2
.end method

.method public static createBigInteger(Landroid/os/Parcel;I)Ljava/math/BigInteger;
    .registers 4
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_d
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    add-int/2addr v0, p1

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    new-instance p0, Ljava/math/BigInteger;

    .line 5
    invoke-direct {p0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object p0
.end method

.method public static createBigIntegerArray(Landroid/os/Parcel;I)[Ljava/math/BigInteger;
    .registers 8
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_d
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4
    new-array v2, v1, [Ljava/math/BigInteger;

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v1, :cond_24

    new-instance v4, Ljava/math/BigInteger;

    .line 5
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>([B)V

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_24
    add-int/2addr v0, p1

    .line 6
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v2
.end method

.method public static createBooleanArray(Landroid/os/Parcel;I)[Z
    .registers 4
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_d
    invoke-virtual {p0}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v1

    add-int/2addr v0, p1

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static createBooleanList(Landroid/os/Parcel;I)Ljava/util/ArrayList;
    .registers 8
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_d

    const/4 p0, 0x0

    return-object p0

    :cond_d
    new-instance v1, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_18
    if-ge v4, v2, :cond_2d

    .line 5
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_22

    const/4 v5, 0x1

    goto :goto_23

    :cond_22
    move v5, v3

    :goto_23
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_2d
    add-int/2addr v0, p1

    .line 6
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static createBundle(Landroid/os/Parcel;I)Landroid/os/Bundle;
    .registers 4
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_d
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    add-int/2addr v0, p1

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static createByteArray(Landroid/os/Parcel;I)[B
    .registers 4
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_d
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    add-int/2addr v0, p1

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static createByteArrayArray(Landroid/os/Parcel;I)[[B
    .registers 7
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_d
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4
    new-array v2, v1, [[B

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v1, :cond_1f

    .line 5
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_1f
    add-int/2addr v0, p1

    .line 6
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v2
.end method

.method public static createByteArraySparseArray(Landroid/os/Parcel;I)Landroid/util/SparseArray;
    .registers 8
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_d
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-instance v2, Landroid/util/SparseArray;

    .line 4
    invoke-direct {v2, v1}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v1, :cond_27

    .line 5
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 6
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 7
    invoke-virtual {v2, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_27
    add-int/2addr v0, p1

    .line 8
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v2
.end method

.method public static createCharArray(Landroid/os/Parcel;I)[C
    .registers 4
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_d
    invoke-virtual {p0}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v1

    add-int/2addr v0, p1

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static createDoubleArray(Landroid/os/Parcel;I)[D
    .registers 4
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_d
    invoke-virtual {p0}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object v1

    add-int/2addr v0, p1

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static createDoubleList(Landroid/os/Parcel;I)Ljava/util/ArrayList;
    .registers 8
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_d

    const/4 p0, 0x0

    return-object p0

    :cond_d
    new-instance v1, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_27

    .line 5
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_27
    add-int/2addr v0, p1

    .line 6
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static createDoubleSparseArray(Landroid/os/Parcel;I)Landroid/util/SparseArray;
    .registers 9
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_d

    const/4 p0, 0x0

    return-object p0

    :cond_d
    new-instance v1, Landroid/util/SparseArray;

    .line 3
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_2b

    .line 5
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 6
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    .line 7
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_2b
    add-int/2addr v0, p1

    .line 8
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static createFloatArray(Landroid/os/Parcel;I)[F
    .registers 4
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_d
    invoke-virtual {p0}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v1

    add-int/2addr v0, p1

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static createFloatList(Landroid/os/Parcel;I)Ljava/util/ArrayList;
    .registers 7
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_d

    const/4 p0, 0x0

    return-object p0

    :cond_d
    new-instance v1, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_27

    .line 5
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_27
    add-int/2addr v0, p1

    .line 6
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static createFloatSparseArray(Landroid/os/Parcel;I)Landroid/util/SparseArray;
    .registers 8
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_d

    const/4 p0, 0x0

    return-object p0

    :cond_d
    new-instance v1, Landroid/util/SparseArray;

    .line 3
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_2b

    .line 5
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 6
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    .line 7
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_2b
    add-int/2addr v0, p1

    .line 8
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static createIBinderArray(Landroid/os/Parcel;I)[Landroid/os/IBinder;
    .registers 4
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_d
    invoke-virtual {p0}, Landroid/os/Parcel;->createBinderArray()[Landroid/os/IBinder;

    move-result-object v1

    add-int/2addr v0, p1

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static createIBinderList(Landroid/os/Parcel;I)Ljava/util/ArrayList;
    .registers 4
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Ljava/util/ArrayList<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_d
    invoke-virtual {p0}, Landroid/os/Parcel;->createBinderArrayList()Ljava/util/ArrayList;

    move-result-object v1

    add-int/2addr v0, p1

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static createIBinderSparseArray(Landroid/os/Parcel;I)Landroid/util/SparseArray;
    .registers 8
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Landroid/util/SparseArray<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_d
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-instance v2, Landroid/util/SparseArray;

    .line 4
    invoke-direct {v2, v1}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v1, :cond_27

    .line 5
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 6
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 7
    invoke-virtual {v2, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_27
    add-int/2addr v0, p1

    .line 8
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v2
.end method

.method public static createIntArray(Landroid/os/Parcel;I)[I
    .registers 4
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_d
    invoke-virtual {p0}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    add-int/2addr v0, p1

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static createIntegerList(Landroid/os/Parcel;I)Ljava/util/ArrayList;
    .registers 7
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_d

    const/4 p0, 0x0

    return-object p0

    :cond_d
    new-instance v1, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_27

    .line 5
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_27
    add-int/2addr v0, p1

    .line 6
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static createLongArray(Landroid/os/Parcel;I)[J
    .registers 4
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_d
    invoke-virtual {p0}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v1

    add-int/2addr v0, p1

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static createLongList(Landroid/os/Parcel;I)Ljava/util/ArrayList;
    .registers 8
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_d

    const/4 p0, 0x0

    return-object p0

    :cond_d
    new-instance v1, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_27

    .line 5
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_27
    add-int/2addr v0, p1

    .line 6
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static createParcel(Landroid/os/Parcel;I)Landroid/os/Parcel;
    .registers 4
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_d
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4
    invoke-virtual {v1, p0, v0, p1}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    add-int/2addr v0, p1

    .line 5
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static createParcelArray(Landroid/os/Parcel;I)[Landroid/os/Parcel;
    .registers 10
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    if-nez p1, :cond_d

    return-object v1

    .line 3
    :cond_d
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4
    new-array v3, v2, [Landroid/os/Parcel;

    const/4 v4, 0x0

    :goto_14
    if-ge v4, v2, :cond_34

    .line 5
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2e

    .line 6
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    .line 7
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    .line 8
    invoke-virtual {v7, p0, v6, v5}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 9
    aput-object v7, v3, v4

    add-int/2addr v6, v5

    .line 10
    invoke-virtual {p0, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_31

    :cond_2e
    nop

    .line 11
    aput-object v1, v3, v4

    .line 10
    :goto_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 11
    :cond_34
    add-int/2addr v0, p1

    .line 12
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v3
.end method

.method public static createParcelList(Landroid/os/Parcel;I)Ljava/util/ArrayList;
    .registers 10
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Ljava/util/ArrayList<",
            "Landroid/os/Parcel;",
            ">;"
        }
    .end annotation

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    if-nez p1, :cond_d

    return-object v1

    .line 3
    :cond_d
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v2, :cond_39

    .line 5
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_32

    .line 6
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    .line 7
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    .line 8
    invoke-virtual {v7, p0, v6, v5}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 9
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v6, v5

    .line 10
    invoke-virtual {p0, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_36

    :cond_32
    nop

    .line 11
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    :goto_36
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 11
    :cond_39
    add-int/2addr v0, p1

    .line 12
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v3
.end method

.method public static createParcelSparseArray(Landroid/os/Parcel;I)Landroid/util/SparseArray;
    .registers 11
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcel;",
            ">;"
        }
    .end annotation

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    if-nez p1, :cond_d

    return-object v1

    .line 3
    :cond_d
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    new-instance v3, Landroid/util/SparseArray;

    .line 4
    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v2, :cond_3d

    .line 5
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 6
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_36

    .line 7
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    .line 8
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v8

    .line 9
    invoke-virtual {v8, p0, v7, v6}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 10
    invoke-virtual {v3, v5, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/2addr v7, v6

    .line 11
    invoke-virtual {p0, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_3a

    :cond_36
    nop

    .line 12
    invoke-virtual {v3, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 11
    :goto_3a
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 12
    :cond_3d
    add-int/2addr v0, p1

    .line 13
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v3
.end method

.method public static createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    .registers 4
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I
    .param p2, "creator"    # Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    .end local p2    # "creator":Landroid/os/Parcelable$Creator;
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_d
    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Parcelable;

    add-int/2addr v0, p1

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object p2
.end method

.method public static createSparseBooleanArray(Landroid/os/Parcel;I)Landroid/util/SparseBooleanArray;
    .registers 4
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_d
    invoke-virtual {p0}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object v1

    add-int/2addr v0, p1

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static createSparseIntArray(Landroid/os/Parcel;I)Landroid/util/SparseIntArray;
    .registers 8
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_d

    const/4 p0, 0x0

    return-object p0

    :cond_d
    new-instance v1, Landroid/util/SparseIntArray;

    .line 3
    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_27

    .line 5
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 6
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 7
    invoke-virtual {v1, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_27
    add-int/2addr v0, p1

    .line 8
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static createSparseLongArray(Landroid/os/Parcel;I)Landroid/util/SparseLongArray;
    .registers 9
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_d
    new-instance v1, Landroid/util/SparseLongArray;

    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_27

    .line 5
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 6
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 7
    invoke-virtual {v1, v4, v5, v6}, Landroid/util/SparseLongArray;->append(IJ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_27
    add-int/2addr v0, p1

    .line 8
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static createString(Landroid/os/Parcel;I)Ljava/lang/String;
    .registers 4
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_d
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    add-int/2addr v0, p1

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static createStringArray(Landroid/os/Parcel;I)[Ljava/lang/String;
    .registers 4
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_d
    invoke-virtual {p0}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    add-int/2addr v0, p1

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static createStringList(Landroid/os/Parcel;I)Ljava/util/ArrayList;
    .registers 4
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_d
    invoke-virtual {p0}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    add-int/2addr v0, p1

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static createStringSparseArray(Landroid/os/Parcel;I)Landroid/util/SparseArray;
    .registers 8
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_d

    const/4 p0, 0x0

    return-object p0

    :cond_d
    new-instance v1, Landroid/util/SparseArray;

    .line 3
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_27

    .line 5
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 6
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_27
    add-int/2addr v0, p1

    .line 8
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static createTypedArray(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;
    .registers 4
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I
    .param p2, "c"    # Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    .end local p2    # "c":Landroid/os/Parcelable$Creator;
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_d
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p2

    add-int/2addr v0, p1

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object p2
.end method

.method public static createTypedList(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    .registers 4
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I
    .param p2, "c"    # Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    .end local p2    # "c":Landroid/os/Parcelable$Creator;
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_d
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    add-int/2addr v0, p1

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object p2
.end method

.method public static createTypedSparseArray(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/util/SparseArray;
    .registers 10
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I
    .param p2, "c"    # Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)",
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    .end local p2    # "c":Landroid/os/Parcelable$Creator;
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    if-nez p1, :cond_d

    return-object v1

    .line 3
    :cond_d
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    new-instance v3, Landroid/util/SparseArray;

    .line 4
    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v2, :cond_2f

    .line 5
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 6
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_28

    .line 7
    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_29

    .line 8
    :cond_28
    move-object v6, v1

    :goto_29
    invoke-virtual {v3, v5, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_2f
    add-int/2addr v0, p1

    .line 9
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v3
.end method

.method public static ensureAtEnd(Landroid/os/Parcel;I)V
    .registers 5
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "end"    # I

    .line 1
    nop

    .end local p0    # "parcel":Landroid/os/Parcel;
    .end local p1    # "end":I
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ne v0, p1, :cond_8

    .line 2
    return-void

    .line 1
    :cond_8
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Overread allowed size end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0
.end method

.method public static getFieldId(I)I
    .registers 1

    int-to-char p0, p0

    return p0
.end method

.method public static readBoolean(Landroid/os/Parcel;I)Z
    .registers 3
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->zzb(Landroid/os/Parcel;II)V

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public static readBooleanObject(Landroid/os/Parcel;I)Ljava/lang/Boolean;
    .registers 4
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v0

    if-nez v0, :cond_9

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_9
    const/4 v1, 0x4

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->zza(Landroid/os/Parcel;III)V

    .line 3
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static readByte(Landroid/os/Parcel;I)B
    .registers 3
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->zzb(Landroid/os/Parcel;II)V

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    int-to-byte p0, p0

    return p0
.end method

.method public static readChar(Landroid/os/Parcel;I)C
    .registers 3
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->zzb(Landroid/os/Parcel;II)V

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    int-to-char p0, p0

    return p0
.end method

.method public static readDouble(Landroid/os/Parcel;I)D
    .registers 3
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    const/16 v0, 0x8

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->zzb(Landroid/os/Parcel;II)V

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide p0

    return-wide p0
.end method

.method public static readDoubleObject(Landroid/os/Parcel;I)Ljava/lang/Double;
    .registers 4
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v0

    if-nez v0, :cond_9

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_9
    const/16 v1, 0x8

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->zza(Landroid/os/Parcel;III)V

    .line 3
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static readFloat(Landroid/os/Parcel;I)F
    .registers 3
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->zzb(Landroid/os/Parcel;II)V

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result p0

    return p0
.end method

.method public static readFloatObject(Landroid/os/Parcel;I)Ljava/lang/Float;
    .registers 4
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v0

    if-nez v0, :cond_9

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_9
    const/4 v1, 0x4

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->zza(Landroid/os/Parcel;III)V

    .line 3
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static readHeader(Landroid/os/Parcel;)I
    .registers 1
    .param p0, "p"    # Landroid/os/Parcel;

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    return p0
.end method

.method public static readIBinder(Landroid/os/Parcel;I)Landroid/os/IBinder;
    .registers 4
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_d
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    add-int/2addr v0, p1

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static readInt(Landroid/os/Parcel;I)I
    .registers 3
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->zzb(Landroid/os/Parcel;II)V

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    return p0
.end method

.method public static readIntegerObject(Landroid/os/Parcel;I)Ljava/lang/Integer;
    .registers 4
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v0

    if-nez v0, :cond_9

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_9
    const/4 v1, 0x4

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->zza(Landroid/os/Parcel;III)V

    .line 3
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static readList(Landroid/os/Parcel;ILjava/util/List;Ljava/lang/ClassLoader;)V
    .registers 5
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I
    .param p2, "list"    # Ljava/util/List;
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    .end local p2    # "list":Ljava/util/List;
    .end local p3    # "loader":Ljava/lang/ClassLoader;
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_c

    return-void

    .line 3
    :cond_c
    invoke-virtual {p0, p2, p3}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    add-int/2addr v0, p1

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method public static readLong(Landroid/os/Parcel;I)J
    .registers 3
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    const/16 v0, 0x8

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->zzb(Landroid/os/Parcel;II)V

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide p0

    return-wide p0
.end method

.method public static readLongObject(Landroid/os/Parcel;I)Ljava/lang/Long;
    .registers 4
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v0

    if-nez v0, :cond_9

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_9
    const/16 v1, 0x8

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->zza(Landroid/os/Parcel;III)V

    .line 3
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static readPendingIntent(Landroid/os/Parcel;I)Landroid/app/PendingIntent;
    .registers 4
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_d
    invoke-static {p0}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v1

    add-int/2addr v0, p1

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static readShort(Landroid/os/Parcel;I)S
    .registers 3
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->zzb(Landroid/os/Parcel;II)V

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    int-to-short p0, p0

    return p0
.end method

.method public static readSize(Landroid/os/Parcel;I)I
    .registers 4
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    const/high16 v0, -0x10000

    and-int v1, p1, v0

    if-eq v1, v0, :cond_b

    shr-int/lit8 p0, p1, 0x10

    int-to-char p0, p0

    return p0

    :cond_b
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    return p0
.end method

.method public static skipUnknownField(Landroid/os/Parcel;I)V
    .registers 3
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "header"    # I

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    .end local p1    # "header":I
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method public static validateObjectHeader(Landroid/os/Parcel;)I
    .registers 6
    .param p0, "p"    # Landroid/os/Parcel;

    .line 1
    nop

    .end local p0    # "p":Landroid/os/Parcel;
    invoke-static {p0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 2
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    move-result v3

    const/16 v4, 0x4f45

    if-ne v3, v4, :cond_3e

    .line 4
    add-int/2addr v1, v2

    if-lt v1, v2, :cond_1f

    .line 5
    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    if-gt v1, v0, :cond_1f

    .line 6
    return v1

    .line 5
    :cond_1f
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Size read is invalid start="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " end="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    .line 3
    :cond_3e
    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException;

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Expected object header. Got 0x"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v1
.end method

.method private static zza(Landroid/os/Parcel;III)V
    .registers 7

    .line 1
    if-ne p2, p3, :cond_3

    return-void

    :cond_3
    new-instance p1, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " got "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " (0x"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw p1
.end method

.method private static zzb(Landroid/os/Parcel;II)V
    .registers 7

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    if-ne p1, p2, :cond_7

    .line 2
    return-void

    .line 1
    :cond_7
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " got "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (0x"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0
.end method
