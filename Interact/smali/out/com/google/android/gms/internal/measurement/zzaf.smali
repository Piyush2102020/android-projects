.class public final Lcom/google/android/gms/internal/measurement/zzaf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@21.2.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzap;


# instance fields
.field private final zza:Z


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_9

    const/4 p1, 0x0

    :goto_6
    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzaf;->zza:Z

    return-void

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_6
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzaf;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 2
    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzaf;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzaf;->zza:Z

    .line 3
    iget-boolean p1, p1, Lcom/google/android/gms/internal/measurement/zzaf;->zza:Z

    if-ne v1, p1, :cond_13

    return v0

    :cond_13
    return v2
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzaf;->zza:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzaf;->zza:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzbU(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzg;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/zzap;
    .registers 6

    .line 1
    const-string/jumbo p2, "toString"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_15

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzat;

    iget-boolean p2, p0, Lcom/google/android/gms/internal/measurement/zzaf;->zza:Z

    .line 3
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzat;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 1
    :cond_15
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzaf;->zza:Z

    .line 4
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p3, v1

    const/4 v0, 0x1

    aput-object p1, p3, v0

    .line 5
    const-string p1, "%s.%s is not a function."

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final zzd()Lcom/google/android/gms/internal/measurement/zzap;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaf;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzaf;->zza:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzaf;-><init>(Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public final zzg()Ljava/lang/Boolean;
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzaf;->zza:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final zzh()Ljava/lang/Double;
    .registers 3

    .line 1
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzaf;->zza:Z

    if-eq v0, v1, :cond_8

    const-wide/16 v0, 0x0

    goto :goto_a

    :cond_8
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_a
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public final zzi()Ljava/lang/String;
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzaf;->zza:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzl()Ljava/util/Iterator;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
