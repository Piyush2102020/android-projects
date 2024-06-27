.class Lcom/google/android/gms/internal/measurement/zzjx;
.super Lcom/google/android/gms/internal/measurement/zzjw;
.source "com.google.android.gms:play-services-measurement-base@@21.2.2"


# instance fields
.field protected final zza:[B


# direct methods
.method constructor <init>([B)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjw;-><init>()V

    if-eqz p1, :cond_8

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjx;->zza:[B

    return-void

    :cond_8
    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 10

    .line 1
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzka;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjx;->zzd()I

    move-result v1

    .line 2
    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzka;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzka;->zzd()I

    move-result v3

    if-eq v1, v3, :cond_18

    return v2

    :cond_18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjx;->zzd()I

    move-result v1

    if-nez v1, :cond_1f

    return v0

    .line 3
    :cond_1f
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzjx;

    if-eqz v1, :cond_b1

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzjx;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzka;->zzk()I

    move-result v1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzka;->zzk()I

    move-result v3

    if-eqz v1, :cond_35

    if-eqz v3, :cond_35

    if-ne v1, v3, :cond_34

    goto :goto_35

    .line 14
    :cond_34
    return v2

    .line 5
    :cond_35
    :goto_35
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjx;->zzd()I

    move-result v1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzka;->zzd()I

    move-result v3

    if-gt v1, v3, :cond_93

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzka;->zzd()I

    move-result v3

    if-gt v1, v3, :cond_70

    .line 10
    instance-of v3, p1, Lcom/google/android/gms/internal/measurement/zzjx;

    if-eqz v3, :cond_62

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzjx;->zza:[B

    .line 11
    iget-object v4, p1, Lcom/google/android/gms/internal/measurement/zzjx;->zza:[B

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzjx;->zzc()I

    move p1, v2

    move v5, p1

    :goto_52
    if-ge p1, v1, :cond_61

    .line 13
    aget-byte v6, v3, p1

    aget-byte v7, v4, v5

    if-eq v6, v7, :cond_5c

    move v0, v2

    goto :goto_6f

    :cond_5c
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_52

    :cond_61
    goto :goto_6f

    :cond_62
    nop

    .line 14
    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/measurement/zzka;->zzf(II)Lcom/google/android/gms/internal/measurement/zzka;

    move-result-object p1

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/internal/measurement/zzjx;->zzf(II)Lcom/google/android/gms/internal/measurement/zzka;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzka;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 13
    :goto_6f
    return v0

    .line 8
    :cond_70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzka;->zzd()I

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ran off end of other: 0, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_93
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjx;->zzd()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Length too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_b1
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public zza(I)B
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjx;->zza:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method zzb(I)B
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjx;->zza:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method protected zzc()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public zzd()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjx;->zza:[B

    array-length v0, v0

    return v0
.end method

.method protected final zze(III)I
    .registers 5

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzjx;->zza:[B

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p3}, Lcom/google/android/gms/internal/measurement/zzlj;->zzb(I[BII)I

    move-result p1

    return p1
.end method

.method public final zzf(II)Lcom/google/android/gms/internal/measurement/zzka;
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjx;->zzd()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/measurement/zzjx;->zzj(III)I

    move-result p1

    if-nez p1, :cond_e

    sget-object p1, Lcom/google/android/gms/internal/measurement/zzka;->zzb:Lcom/google/android/gms/internal/measurement/zzka;

    return-object p1

    :cond_e
    new-instance p2, Lcom/google/android/gms/internal/measurement/zzju;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjx;->zza:[B

    .line 2
    invoke-direct {p2, v1, v0, p1}, Lcom/google/android/gms/internal/measurement/zzju;-><init>([BII)V

    return-object p2
.end method

.method protected final zzg(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjx;->zza:[B

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjx;->zzd()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method final zzh(Lcom/google/android/gms/internal/measurement/zzjq;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjx;->zza:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjx;->zzd()I

    move-result v1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzkf;

    .line 1
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lcom/google/android/gms/internal/measurement/zzkf;->zzc([BII)V

    return-void
.end method

.method public final zzi()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjx;->zza:[B

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjx;->zzd()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zznz;->zze([BII)Z

    move-result v0

    return v0
.end method
