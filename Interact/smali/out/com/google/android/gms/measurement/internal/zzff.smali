.class public final Lcom/google/android/gms/measurement/internal/zzff;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.2.2"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzfj;

.field private final zzb:Ljava/lang/String;

.field private final zzc:J

.field private zzd:Z

.field private zze:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzfj;Ljava/lang/String;J)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzff;->zza:Lcom/google/android/gms/measurement/internal/zzfj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzff;->zzb:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzff;->zzc:J

    return-void
.end method


# virtual methods
.method public final zza()J
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzff;->zzd:Z

    if-nez v0, :cond_17

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzff;->zzd:Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzff;->zza:Lcom/google/android/gms/measurement/internal/zzfj;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfj;->zza()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzff;->zzb:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzff;->zzc:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzff;->zze:J

    :cond_17
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzff;->zze:J

    return-wide v0
.end method

.method public final zzb(J)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzff;->zza:Lcom/google/android/gms/measurement/internal/zzfj;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfj;->zza()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzff;->zzb:Ljava/lang/String;

    .line 2
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzff;->zze:J

    return-void
.end method
