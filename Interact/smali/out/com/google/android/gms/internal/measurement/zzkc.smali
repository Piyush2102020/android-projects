.class final Lcom/google/android/gms/internal/measurement/zzkc;
.super Lcom/google/android/gms/internal/measurement/zzke;
.source "com.google.android.gms:play-services-measurement-base@@21.2.2"


# instance fields
.field private final zzb:[B

.field private zzc:I

.field private zzd:I

.field private zze:I


# direct methods
.method synthetic constructor <init>([BIIZLcom/google/android/gms/internal/measurement/zzkb;)V
    .registers 6

    .line 1
    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzke;-><init>(Lcom/google/android/gms/internal/measurement/zzkd;)V

    const p2, 0x7fffffff

    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzkc;->zze:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkc;->zzb:[B

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzkc;->zzc:I

    return-void
.end method


# virtual methods
.method public final zza(I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzll;
        }
    .end annotation

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzkc;->zze:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzkc;->zze:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzkc;->zzc:I

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzkc;->zzd:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzkc;->zzc:I

    if-lez v1, :cond_14

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzkc;->zzd:I

    sub-int/2addr v1, v1

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzkc;->zzc:I

    goto :goto_16

    :cond_14
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzkc;->zzd:I

    :goto_16
    return p1
.end method
