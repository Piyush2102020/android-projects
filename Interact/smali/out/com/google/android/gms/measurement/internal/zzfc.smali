.class final Lcom/google/android/gms/measurement/internal/zzfc;
.super Landroid/content/BroadcastReceiver;
.source "com.google.android.gms:play-services-measurement@@21.2.2"


# static fields
.field static final zza:Ljava/lang/String;


# instance fields
.field private final zzb:Lcom/google/android/gms/measurement/internal/zzlg;

.field private zzc:Z

.field private zzd:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lcom/google/android/gms/measurement/internal/zzfc;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzfc;->zza:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzlg;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfc;->zzb:Lcom/google/android/gms/measurement/internal/zzlg;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/measurement/internal/zzfc;)Lcom/google/android/gms/measurement/internal/zzlg;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfc;->zzb:Lcom/google/android/gms/measurement/internal/zzlg;

    return-object p0
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfc;->zzb:Lcom/google/android/gms/measurement/internal/zzlg;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzlg;->zzB()V

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfc;->zzb:Lcom/google/android/gms/measurement/internal/zzlg;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object p2

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p2

    const-string v0, "NetworkBroadcastReceiver received action"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3f

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfc;->zzb:Lcom/google/android/gms/measurement/internal/zzlg;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzlg;->zzl()Lcom/google/android/gms/measurement/internal/zzfa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfa;->zza()Z

    move-result p1

    iget-boolean p2, p0, Lcom/google/android/gms/measurement/internal/zzfc;->zzd:Z

    if-eq p2, p1, :cond_3e

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzfc;->zzd:Z

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfc;->zzb:Lcom/google/android/gms/measurement/internal/zzlg;

    .line 9
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaB()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzfb;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzfb;-><init>(Lcom/google/android/gms/measurement/internal/zzfc;Z)V

    .line 10
    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp(Ljava/lang/Runnable;)V

    :cond_3e
    return-void

    :cond_3f
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfc;->zzb:Lcom/google/android/gms/measurement/internal/zzlg;

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object p2

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzk()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p2

    const-string v0, "NetworkBroadcastReceiver received unknown action"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfc;->zzb:Lcom/google/android/gms/measurement/internal/zzlg;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzB()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfc;->zzb:Lcom/google/android/gms/measurement/internal/zzlg;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaB()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfc;->zzc:Z

    if-eqz v0, :cond_13

    return-void

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfc;->zzb:Lcom/google/android/gms/measurement/internal/zzlg;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaw()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    .line 5
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfc;->zzb:Lcom/google/android/gms/measurement/internal/zzlg;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzl()Lcom/google/android/gms/measurement/internal/zzfa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->zza()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfc;->zzd:Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfc;->zzb:Lcom/google/android/gms/measurement/internal/zzlg;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzfc;->zzd:Z

    .line 10
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Registering connectivity change receiver. Network connected"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfc;->zzc:Z

    return-void
.end method

.method public final zzc()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfc;->zzb:Lcom/google/android/gms/measurement/internal/zzlg;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzB()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfc;->zzb:Lcom/google/android/gms/measurement/internal/zzlg;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaB()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfc;->zzb:Lcom/google/android/gms/measurement/internal/zzlg;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaB()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgx;->zzg()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfc;->zzc:Z

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfc;->zzb:Lcom/google/android/gms/measurement/internal/zzlg;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v1, "Unregistering connectivity change receiver"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfc;->zzc:Z

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfc;->zzd:Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfc;->zzb:Lcom/google/android/gms/measurement/internal/zzlg;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaw()Landroid/content/Context;

    move-result-object v0

    .line 9
    :try_start_35
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_38
    .catch Ljava/lang/IllegalArgumentException; {:try_start_35 .. :try_end_38} :catch_39

    return-void

    :catch_39
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfc;->zzb:Lcom/google/android/gms/measurement/internal/zzlg;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzlg;->zzaA()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzd()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "Failed to unregister the network broadcast receiver"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 9
    :cond_4a
    return-void
.end method
