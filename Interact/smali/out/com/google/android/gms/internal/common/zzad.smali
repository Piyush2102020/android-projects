.class public final Lcom/google/android/gms/internal/common/zzad;
.super Lcom/google/android/gms/internal/common/zzaa;
.source "com.google.android.gms:play-services-basement@@18.1.0"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/common/zzaa;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .registers 2

    .line 2
    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/common/zzaa;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzad;
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/common/zzaa;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzaa;

    return-object p0
.end method

.method public final zzc(Ljava/util/Iterator;)Lcom/google/android/gms/internal/common/zzad;
    .registers 3

    .line 1
    nop

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3
    invoke-super {p0, v0}, Lcom/google/android/gms/internal/common/zzaa;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzaa;

    goto :goto_1

    :cond_f
    return-object p0
.end method
