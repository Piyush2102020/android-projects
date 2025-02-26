.class public final Lcom/google/android/gms/common/images/Size;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.1.0"


# instance fields
.field private final zaa:I

.field private final zab:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/images/Size;->zaa:I

    iput p2, p0, Lcom/google/android/gms/common/images/Size;->zab:I

    return-void
.end method

.method public static parseSize(Ljava/lang/String;)Lcom/google/android/gms/common/images/Size;
    .registers 4
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1
    nop

    .end local p0    # "string":Ljava/lang/String;
    if-eqz p0, :cond_37

    .line 2
    const/16 v0, 0x2a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_11

    .line 3
    const/16 v0, 0x78

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    :cond_11
    if-ltz v0, :cond_32

    .line 4
    :try_start_13
    new-instance v1, Lcom/google/android/gms/common/images/Size;

    .line 5
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/images/Size;-><init>(II)V
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_2b} :catch_2c

    return-object v1

    .line 7
    :catch_2c
    move-exception v0

    invoke-static {p0}, Lcom/google/android/gms/common/images/Size;->zaa(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object p0

    throw p0

    .line 4
    :cond_32
    invoke-static {p0}, Lcom/google/android/gms/common/images/Size;->zaa(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object p0

    throw p0

    .line 1
    :cond_37
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "string must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zaa(Ljava/lang/String;)Ljava/lang/NumberFormatException;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Size: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/common/images/Size;
    .end local p1    # "obj":Ljava/lang/Object;
    const/4 v0, 0x0

    if-nez p1, :cond_5

    return v0

    :cond_5
    const/4 v1, 0x1

    if-ne p0, p1, :cond_9

    return v1

    :cond_9
    instance-of v2, p1, Lcom/google/android/gms/common/images/Size;

    if-eqz v2, :cond_1c

    .line 2
    check-cast p1, Lcom/google/android/gms/common/images/Size;

    iget v2, p0, Lcom/google/android/gms/common/images/Size;->zaa:I

    iget v3, p1, Lcom/google/android/gms/common/images/Size;->zaa:I

    if-ne v2, v3, :cond_1c

    iget v2, p0, Lcom/google/android/gms/common/images/Size;->zab:I

    iget p1, p1, Lcom/google/android/gms/common/images/Size;->zab:I

    if-ne v2, p1, :cond_1c

    return v1

    :cond_1c
    return v0
.end method

.method public getHeight()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/images/Size;->zab:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/images/Size;->zaa:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/google/android/gms/common/images/Size;->zab:I

    iget v1, p0, Lcom/google/android/gms/common/images/Size;->zaa:I

    shl-int/lit8 v2, v1, 0x10

    ushr-int/lit8 v1, v1, 0x10

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/common/images/Size;
    iget v0, p0, Lcom/google/android/gms/common/images/Size;->zaa:I

    iget v1, p0, Lcom/google/android/gms/common/images/Size;->zab:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "x"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
