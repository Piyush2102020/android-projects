.class final Lcom/google/android/gms/internal/measurement/zzjg;
.super Lcom/google/android/gms/internal/measurement/zzjb;
.source "com.google.android.gms:play-services-measurement-base@@21.2.2"


# instance fields
.field final transient zza:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjb;-><init>()V

    if-eqz p1, :cond_8

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zza:Ljava/lang/Object;

    return-void

    :cond_8
    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zza:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zza:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zza:Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzjc;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public final size()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zza:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zza([Ljava/lang/Object;I)I
    .registers 4

    .line 1
    const/4 p2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zza:Ljava/lang/Object;

    aput-object v0, p1, p2

    const/4 p1, 0x1

    return p1
.end method

.method public final zzd()Lcom/google/android/gms/internal/measurement/zzjh;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zza:Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzjc;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method