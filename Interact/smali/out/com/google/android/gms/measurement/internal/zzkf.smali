.class public final Lcom/google/android/gms/measurement/internal/zzkf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@21.2.2"


# instance fields
.field private final zza:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkf;->zza:Landroid/content/Context;

    return-void
.end method

.method private final zzk()Lcom/google/android/gms/measurement/internal/zzeu;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkf;->zza:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/google/android/gms/measurement/internal/zzge;->zzp(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzcl;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/zzge;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final zza(Landroid/content/Intent;II)I
    .registers 9

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkf;->zza:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p2, v0, v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzp(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzcl;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/zzge;

    move-result-object p2

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    const/4 v1, 0x2

    if-nez p1, :cond_18

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzk()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    const-string p2, "AppMeasurementService started with null intent"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    return v1

    .line 4
    :cond_18
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzge;->zzay()Lcom/google/android/gms/measurement/internal/zzab;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Local AppMeasurementService called. startId, action"

    invoke-virtual {p2, v4, v3, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    const-string p2, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3c

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzkc;

    invoke-direct {p2, p0, p3, v0, p1}, Lcom/google/android/gms/measurement/internal/zzkc;-><init>(Lcom/google/android/gms/measurement/internal/zzkf;ILcom/google/android/gms/measurement/internal/zzeu;Landroid/content/Intent;)V

    .line 8
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkf;->zzh(Ljava/lang/Runnable;)V

    :cond_3c
    return v1
.end method

.method public final zzb(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 5

    .line 1
    const/4 v0, 0x0

    if-nez p1, :cond_11

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkf;->zzk()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    const-string v1, "onBind called with null intent"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    return-object v0

    .line 2
    :cond_11
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 3
    const-string v1, "com.google.android.gms.measurement.START"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzgw;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkf;->zza:Landroid/content/Context;

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzlg;->zzt(Landroid/content/Context;)Lcom/google/android/gms/measurement/internal/zzlg;

    move-result-object v1

    .line 5
    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/measurement/internal/zzgw;-><init>(Lcom/google/android/gms/measurement/internal/zzlg;Ljava/lang/String;)V

    return-object p1

    .line 6
    :cond_29
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkf;->zzk()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzk()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "onBind received unknown action"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method final synthetic zzc(ILcom/google/android/gms/measurement/internal/zzeu;Landroid/content/Intent;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkf;->zza:Landroid/content/Context;

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzke;

    invoke-interface {v0, p1}, Lcom/google/android/gms/measurement/internal/zzke;->zzc(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p2

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 4
    const-string v0, "Local AppMeasurementService processed last upload request. StartId"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkf;->zzk()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    const-string p2, "Completed wakeful intent."

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkf;->zza:Landroid/content/Context;

    .line 6
    check-cast p1, Lcom/google/android/gms/measurement/internal/zzke;

    invoke-interface {p1, p3}, Lcom/google/android/gms/measurement/internal/zzke;->zza(Landroid/content/Intent;)V

    :cond_2b
    return-void
.end method

.method final synthetic zzd(Lcom/google/android/gms/measurement/internal/zzeu;Landroid/app/job/JobParameters;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    const-string v0, "AppMeasurementJobService processed last upload request."

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkf;->zza:Landroid/content/Context;

    .line 2
    check-cast p1, Lcom/google/android/gms/measurement/internal/zzke;

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzke;->zzb(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method public final zze()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkf;->zza:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/google/android/gms/measurement/internal/zzge;->zzp(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzcl;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/zzge;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzay()Lcom/google/android/gms/measurement/internal/zzab;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v1, "Local AppMeasurementService is starting up"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    return-void
.end method

.method public final zzf()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkf;->zza:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/google/android/gms/measurement/internal/zzge;->zzp(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzcl;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/zzge;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzay()Lcom/google/android/gms/measurement/internal/zzab;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v1, "Local AppMeasurementService is shutting down"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    return-void
.end method

.method public final zzg(Landroid/content/Intent;)V
    .registers 4

    .line 1
    if-nez p1, :cond_10

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkf;->zzk()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    const-string v0, "onRebind called with null intent"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_10
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkf;->zzk()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v1, "onRebind called. action"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzh(Ljava/lang/Runnable;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkf;->zza:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzt(Landroid/content/Context;)Lcom/google/android/gms/measurement/internal/zzlg;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaB()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzkd;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzkd;-><init>(Lcom/google/android/gms/measurement/internal/zzkf;Lcom/google/android/gms/measurement/internal/zzlg;Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzi(Landroid/app/job/JobParameters;)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkf;->zza:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/google/android/gms/measurement/internal/zzge;->zzp(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzcl;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/zzge;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v2

    const-string v3, "action"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzay()Lcom/google/android/gms/measurement/internal/zzab;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v3, "Local AppMeasurementJobService called. action"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    const-string v0, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzkb;

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzkb;-><init>(Lcom/google/android/gms/measurement/internal/zzkf;Lcom/google/android/gms/measurement/internal/zzeu;Landroid/app/job/JobParameters;)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzkf;->zzh(Ljava/lang/Runnable;)V

    :cond_31
    const/4 p1, 0x1

    return p1
.end method

.method public final zzj(Landroid/content/Intent;)Z
    .registers 5

    .line 1
    const/4 v0, 0x1

    if-nez p1, :cond_11

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkf;->zzk()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    const-string v1, "onUnbind called with null intent"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    return v0

    .line 2
    :cond_11
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkf;->zzk()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "onUnbind called for intent. action"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return v0
.end method
