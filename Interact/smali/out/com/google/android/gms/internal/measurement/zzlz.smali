.class final Lcom/google/android/gms/internal/measurement/zzlz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@21.2.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzmg;


# instance fields
.field private final zza:[Lcom/google/android/gms/internal/measurement/zzmg;


# direct methods
.method varargs constructor <init>([Lcom/google/android/gms/internal/measurement/zzmg;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zza:[Lcom/google/android/gms/internal/measurement/zzmg;

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzmf;
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zza:[Lcom/google/android/gms/internal/measurement/zzmg;

    const/4 v1, 0x0

    :goto_3
    const/4 v2, 0x2

    if-ge v1, v2, :cond_16

    aget-object v2, v0, v1

    .line 1
    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/measurement/zzmg;->zzc(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2
    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/measurement/zzmg;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object p1

    return-object p1

    .line 3
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2
    :cond_16
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "No factory is available for message type: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzc(Ljava/lang/Class;)Z
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlz;->zza:[Lcom/google/android/gms/internal/measurement/zzmg;

    const/4 v1, 0x0

    move v2, v1

    :goto_4
    const/4 v3, 0x2

    if-ge v2, v3, :cond_14

    aget-object v3, v0, v2

    .line 1
    invoke-interface {v3, p1}, Lcom/google/android/gms/internal/measurement/zzmg;->zzc(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 p1, 0x1

    return p1

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_14
    return v1
.end method
