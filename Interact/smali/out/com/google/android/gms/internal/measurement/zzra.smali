.class public final Lcom/google/android/gms/internal/measurement/zzra;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.2.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzim;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzra;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/measurement/zzim;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzra;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzra;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzra;->zza:Lcom/google/android/gms/internal/measurement/zzra;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzrc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzrc;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzir;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzim;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzir;->zza(Lcom/google/android/gms/internal/measurement/zzim;)Lcom/google/android/gms/internal/measurement/zzim;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzra;->zzb:Lcom/google/android/gms/internal/measurement/zzim;

    return-void
.end method

.method public static zzc()Z
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzra;->zza:Lcom/google/android/gms/internal/measurement/zzra;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzra;->zzb()Lcom/google/android/gms/internal/measurement/zzrb;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzrb;->zza()Z

    const/4 v0, 0x1

    return v0
.end method

.method public static zzd()Z
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzra;->zza:Lcom/google/android/gms/internal/measurement/zzra;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzra;->zzb()Lcom/google/android/gms/internal/measurement/zzrb;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzrb;->zzb()Z

    move-result v0

    return v0
.end method

.method public static zze()Z
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzra;->zza:Lcom/google/android/gms/internal/measurement/zzra;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzra;->zzb()Lcom/google/android/gms/internal/measurement/zzrb;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzrb;->zzc()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzra;->zzb()Lcom/google/android/gms/internal/measurement/zzrb;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/measurement/zzrb;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzra;->zzb:Lcom/google/android/gms/internal/measurement/zzim;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzim;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzrb;

    return-object v0
.end method
