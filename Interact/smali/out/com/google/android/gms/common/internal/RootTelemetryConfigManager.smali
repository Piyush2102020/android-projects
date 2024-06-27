.class public final Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.1.0"


# static fields
.field private static zza:Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;

.field private static final zzb:Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;


# instance fields
.field private zzc:Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;->zza:Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;

    new-instance v0, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;-><init>(IZZII)V

    sput-object v0, Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;->zzb:Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;
    .registers 2

    const-class v0, Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;->zza:Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;

    if-nez v1, :cond_e

    new-instance v1, Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;

    invoke-direct {v1}, Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;-><init>()V

    sput-object v1, Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;->zza:Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;

    :cond_e
    sget-object v1, Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;->zza:Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getConfig()Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;->zzc:Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    return-object v0
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;)V
    .registers 4

    monitor-enter p0

    .line 1
    if-nez p1, :cond_9

    :try_start_3
    sget-object p1, Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;->zzb:Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    :goto_5
    iput-object p1, p0, Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;->zzc:Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_18

    :cond_7
    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;->zzc:Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->getVersion()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->getVersion()I

    move-result v1
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_18

    if-ge v0, v1, :cond_7

    :cond_17
    goto :goto_5

    .line 1
    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method
