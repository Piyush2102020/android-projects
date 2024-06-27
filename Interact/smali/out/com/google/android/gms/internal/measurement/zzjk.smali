.class public abstract Lcom/google/android/gms/internal/measurement/zzjk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@21.2.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzmi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/measurement/zzjk<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/measurement/zzjj<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/zzmi;"
    }
.end annotation


# instance fields
.field protected zzb:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzb:I

    return-void
.end method

.method protected static zzbw(Ljava/lang/Iterable;Ljava/util/List;)V
    .registers 7

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzlj;->zzd:[B

    if-eqz p0, :cond_cc

    .line 2
    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/zzlq;

    const-string v1, " is null."

    const-string v2, "Element at index "

    if-eqz v0, :cond_64

    .line 3
    check-cast p0, Lcom/google/android/gms/internal/measurement/zzlq;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzlq;->zzh()Ljava/util/List;

    move-result-object p0

    .line 4
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzlq;

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_54

    .line 10
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzlq;->size()I

    move-result p0

    sub-int/2addr p0, p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 11
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzlq;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_46
    if-lt v1, p1, :cond_4e

    .line 12
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/zzlq;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_46

    .line 25
    :cond_4e
    new-instance p1, Ljava/lang/NullPointerException;

    .line 13
    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_54
    instance-of v4, v3, Lcom/google/android/gms/internal/measurement/zzka;

    if-eqz v4, :cond_5e

    .line 8
    check-cast v3, Lcom/google/android/gms/internal/measurement/zzka;

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/measurement/zzlq;->zzi(Lcom/google/android/gms/internal/measurement/zzka;)V

    goto :goto_1d

    .line 9
    :cond_5e
    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/measurement/zzlq;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 14
    :cond_64
    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/zzmp;

    if-nez v0, :cond_c6

    .line 15
    instance-of v0, p1, Ljava/util/ArrayList;

    if-eqz v0, :cond_82

    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_82

    .line 16
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move-object v4, p0

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 17
    :cond_82
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 18
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_c1

    .line 20
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 21
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_b3
    if-lt v1, v0, :cond_bb

    .line 22
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_b3

    .line 19
    :cond_bb
    new-instance p1, Ljava/lang/NullPointerException;

    .line 23
    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_c1
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8a

    .line 9
    :cond_c5
    return-void

    .line 24
    :cond_c6
    check-cast p0, Ljava/util/Collection;

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 23
    :cond_cc
    nop

    .line 25
    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method zzbu(Lcom/google/android/gms/internal/measurement/zzmt;)I
    .registers 2

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzbv()Lcom/google/android/gms/internal/measurement/zzka;
    .registers 6

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjk;->zzbz()I

    move-result v0

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzka;->zzb:Lcom/google/android/gms/internal/measurement/zzka;

    .line 2
    new-array v1, v0, [B

    .line 3
    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/measurement/zzki;->zzz([BII)Lcom/google/android/gms/internal/measurement/zzki;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzjk;->zzbQ(Lcom/google/android/gms/internal/measurement/zzki;)V

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzki;->zzA()V

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzjx;

    .line 6
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzjx;-><init>([B)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_18} :catch_19

    .line 8
    return-object v0

    .line 6
    :catch_19
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Serializing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to a ByteString threw an IOException (should never happen)."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final zzbx()[B
    .registers 6

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjk;->zzbz()I

    move-result v0

    new-array v1, v0, [B

    .line 2
    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/measurement/zzki;->zzz([BII)Lcom/google/android/gms/internal/measurement/zzki;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzjk;->zzbQ(Lcom/google/android/gms/internal/measurement/zzki;)V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzki;->zzA()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_12

    .line 6
    return-object v1

    .line 4
    :catch_12
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Serializing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to a byte array threw an IOException (should never happen)."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
