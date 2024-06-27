.class final Lcom/google/android/gms/internal/measurement/zzip;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@21.2.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzim;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzim;


# instance fields
.field private volatile zzb:Lcom/google/android/gms/internal/measurement/zzim;

.field private zzc:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzio;->zza:Lcom/google/android/gms/internal/measurement/zzio;

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzip;->zza:Lcom/google/android/gms/internal/measurement/zzim;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzim;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzip;->zzb:Lcom/google/android/gms/internal/measurement/zzim;

    return-void

    :cond_8
    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzip;->zzb:Lcom/google/android/gms/internal/measurement/zzim;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzip;->zza:Lcom/google/android/gms/internal/measurement/zzim;

    if-ne v0, v1, :cond_23

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzip;->zzc:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<supplier that returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ">"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    .line 2
    :cond_23
    nop

    :goto_24
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Suppliers.memoize("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzip;->zzb:Lcom/google/android/gms/internal/measurement/zzim;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzip;->zza:Lcom/google/android/gms/internal/measurement/zzim;

    if-eq v0, v1, :cond_1c

    monitor-enter p0

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzip;->zzb:Lcom/google/android/gms/internal/measurement/zzim;

    if-eq v0, v1, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzip;->zzb:Lcom/google/android/gms/internal/measurement/zzim;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzim;->zza()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzip;->zzc:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzip;->zzb:Lcom/google/android/gms/internal/measurement/zzim;

    .line 2
    monitor-exit p0

    return-object v0

    .line 3
    :cond_17
    monitor-exit p0

    goto :goto_1c

    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw v0

    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzip;->zzc:Ljava/lang/Object;

    return-object v0
.end method
