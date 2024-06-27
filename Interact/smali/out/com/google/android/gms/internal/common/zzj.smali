.class abstract Lcom/google/android/gms/internal/common/zzj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.1.0"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation runtime Lorg/jspecify/nullness/NullMarked;
.end annotation


# instance fields
.field private zza:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private zzb:I


# direct methods
.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/common/zzj;->zzb:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 5

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/common/zzj;->zzb:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_23

    add-int/lit8 v2, v0, -0x1

    if-eqz v0, :cond_21

    const/4 v0, 0x0

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_2a

    :pswitch_e
    iput v1, p0, Lcom/google/android/gms/internal/common/zzj;->zzb:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/common/zzj;->zza()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/common/zzj;->zza:Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/common/zzj;->zzb:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_20

    iput v3, p0, Lcom/google/android/gms/internal/common/zzj;->zzb:I

    return v3

    :pswitch_1e
    return v0

    .line 3
    :pswitch_1f
    return v3

    .line 2
    :cond_20
    return v0

    .line 1
    :cond_21
    const/4 v0, 0x0

    throw v0

    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 3
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_e
        :pswitch_1e
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/common/zzj;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/common/zzj;->zzb:I

    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzj;->zza:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/common/zzj;->zza:Ljava/lang/Object;

    return-object v0

    .line 1
    :cond_f
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 2
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected abstract zza()Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end method

.method protected final zzb()Ljava/lang/Object;
    .registers 2
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/common/zzj;->zzb:I

    const/4 v0, 0x0

    return-object v0
.end method
