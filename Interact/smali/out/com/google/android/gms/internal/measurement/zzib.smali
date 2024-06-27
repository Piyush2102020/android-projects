.class public abstract Lcom/google/android/gms/internal/measurement/zzib;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.2.2"


# static fields
.field public static final synthetic zzc:I

.field private static final zzd:Ljava/lang/Object;

.field private static volatile zze:Lcom/google/android/gms/internal/measurement/zzhz;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static volatile zzf:Z

.field private static final zzg:Ljava/util/concurrent/atomic/AtomicReference;

.field private static final zzh:Lcom/google/android/gms/internal/measurement/zzid;

.field private static final zzi:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field final zza:Lcom/google/android/gms/internal/measurement/zzhy;

.field final zzb:Ljava/lang/String;

.field private final zzj:Ljava/lang/Object;

.field private volatile zzk:I

.field private volatile zzl:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzib;->zzd:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzib;->zze:Lcom/google/android/gms/internal/measurement/zzhz;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/internal/measurement/zzib;->zzf:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzib;->zzg:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzid;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzht;->zza:Lcom/google/android/gms/internal/measurement/zzht;

    .line 2
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzid;-><init>(Lcom/google/android/gms/internal/measurement/zzht;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzib;->zzh:Lcom/google/android/gms/internal/measurement/zzid;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzib;->zzi:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzhy;Ljava/lang/String;Ljava/lang/Object;ZLcom/google/android/gms/internal/measurement/zzia;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, -0x1

    iput p4, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzk:I

    iget-object p4, p1, Lcom/google/android/gms/internal/measurement/zzhy;->zza:Landroid/net/Uri;

    if-eqz p4, :cond_11

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzib;->zza:Lcom/google/android/gms/internal/measurement/zzhy;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzj:Ljava/lang/Object;

    return-void

    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must pass a valid SharedPreferences file name or ContentProvider URI"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static zzc()V
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzib;->zzi:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public static zzd(Landroid/content/Context;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzib;->zze:Lcom/google/android/gms/internal/measurement/zzhz;

    if-nez v0, :cond_48

    if-nez p0, :cond_7

    goto :goto_48

    :cond_7
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzib;->zzd:Ljava/lang/Object;

    monitor-enter v0

    :try_start_a
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzib;->zze:Lcom/google/android/gms/internal/measurement/zzhz;

    if-nez v1, :cond_43

    monitor-enter v0
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_45

    :try_start_f
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzib;->zze:Lcom/google/android/gms/internal/measurement/zzhz;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_18

    move-object p0, v2

    :cond_18
    if-eqz v1, :cond_20

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhz;->zza()Landroid/content/Context;

    move-result-object v1

    if-eq v1, p0, :cond_3e

    .line 2
    :cond_20
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhf;->zze()V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzic;->zzc()V

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhn;->zze()V

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzhs;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/zzhs;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzir;->zza(Lcom/google/android/gms/internal/measurement/zzim;)Lcom/google/android/gms/internal/measurement/zzim;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzhc;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/measurement/zzhc;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzim;)V

    sput-object v2, Lcom/google/android/gms/internal/measurement/zzib;->zze:Lcom/google/android/gms/internal/measurement/zzhz;

    sget-object p0, Lcom/google/android/gms/internal/measurement/zzib;->zzi:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 7
    :cond_3e
    monitor-exit v0

    goto :goto_43

    .line 8
    :catchall_40
    move-exception p0

    .line 7
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_f .. :try_end_42} :catchall_40

    :try_start_42
    throw p0

    .line 8
    :cond_43
    :goto_43
    monitor-exit v0

    return-void

    :catchall_45
    move-exception p0

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_42 .. :try_end_47} :catchall_45

    throw p0

    .line 1
    :cond_48
    :goto_48
    return-void
.end method


# virtual methods
.method abstract zza(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final zzb()Ljava/lang/Object;
    .registers 9

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzib;->zzi:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzk:I

    if-ge v1, v0, :cond_cb

    monitor-enter p0

    :try_start_b
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzk:I

    if-ge v1, v0, :cond_c6

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzib;->zze:Lcom/google/android/gms/internal/measurement/zzhz;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzii;->zzc()Lcom/google/android/gms/internal/measurement/zzii;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhz;->zzb()Lcom/google/android/gms/internal/measurement/zzim;

    move-result-object v2

    .line 2
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzim;->zza()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzii;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzii;->zzb()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzii;->zza()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzhh;

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzib;->zza:Lcom/google/android/gms/internal/measurement/zzhy;

    iget-object v6, v5, Lcom/google/android/gms/internal/measurement/zzhy;->zza:Landroid/net/Uri;

    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/zzhy;->zzc:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzb:Ljava/lang/String;

    .line 5
    invoke-virtual {v4, v6, v3, v5, v7}, Lcom/google/android/gms/internal/measurement/zzhh;->zza(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3c

    .line 9
    :cond_3b
    move-object v4, v3

    .line 5
    :goto_3c
    const-string v5, "Must call PhenotypeFlag.init() first"

    if-eqz v1, :cond_c0

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzib;->zza:Lcom/google/android/gms/internal/measurement/zzhy;

    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/zzhy;->zza:Landroid/net/Uri;

    if-eqz v5, :cond_65

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhz;->zza()Landroid/content/Context;

    move-result-object v6

    .line 6
    invoke-static {v6, v5}, Lcom/google/android/gms/internal/measurement/zzhp;->zza(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_63

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhz;->zza()Landroid/content/Context;

    move-result-object v5

    .line 7
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/measurement/zzib;->zza:Lcom/google/android/gms/internal/measurement/zzhy;

    iget-object v6, v6, Lcom/google/android/gms/internal/measurement/zzhy;->zza:Landroid/net/Uri;

    sget-object v7, Lcom/google/android/gms/internal/measurement/zzhr;->zza:Lcom/google/android/gms/internal/measurement/zzhr;

    .line 8
    invoke-static {v5, v6, v7}, Lcom/google/android/gms/internal/measurement/zzhf;->zza(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Runnable;)Lcom/google/android/gms/internal/measurement/zzhf;

    move-result-object v5

    goto :goto_6f

    .line 16
    :cond_63
    move-object v5, v3

    goto :goto_6f

    :cond_65
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhz;->zza()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/internal/measurement/zzhr;->zza:Lcom/google/android/gms/internal/measurement/zzhr;

    .line 9
    invoke-static {v5, v3, v6}, Lcom/google/android/gms/internal/measurement/zzic;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)Lcom/google/android/gms/internal/measurement/zzic;

    move-result-object v5

    .line 8
    :goto_6f
    if-eqz v5, :cond_7e

    iget-object v6, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzb:Ljava/lang/String;

    .line 10
    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/measurement/zzhk;->zzb(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_7e

    .line 11
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/measurement/zzib;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_7f

    .line 16
    :cond_7e
    move-object v5, v3

    .line 11
    :goto_7f
    if-nez v5, :cond_ab

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzib;->zza:Lcom/google/android/gms/internal/measurement/zzhy;

    iget-boolean v5, v5, Lcom/google/android/gms/internal/measurement/zzhy;->zzd:Z

    if-nez v5, :cond_a4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhz;->zza()Landroid/content/Context;

    move-result-object v1

    .line 12
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzhn;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/zzhn;

    move-result-object v1

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzib;->zza:Lcom/google/android/gms/internal/measurement/zzhy;

    iget-boolean v5, v5, Lcom/google/android/gms/internal/measurement/zzhy;->zzd:Z

    if-eqz v5, :cond_97

    move-object v5, v3

    goto :goto_99

    .line 16
    :cond_97
    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzb:Ljava/lang/String;

    .line 13
    :goto_99
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/measurement/zzhn;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a4

    .line 14
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzib;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_a5

    .line 16
    :cond_a4
    nop

    .line 14
    :goto_a5
    if-nez v3, :cond_aa

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzj:Ljava/lang/Object;

    goto :goto_ab

    :cond_aa
    move-object v5, v3

    .line 15
    :cond_ab
    :goto_ab
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzii;->zzb()Z

    move-result v1

    if-eqz v1, :cond_ba

    if-nez v4, :cond_b6

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzj:Ljava/lang/Object;

    goto :goto_bb

    .line 16
    :cond_b6
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/measurement/zzib;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :cond_ba
    nop

    .line 15
    :goto_bb
    iput-object v5, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzl:Ljava/lang/Object;

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzk:I

    goto :goto_c6

    .line 9
    :cond_c0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 18
    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_c6
    :goto_c6
    monitor-exit p0

    goto :goto_cb

    .line 9
    :catchall_c8
    move-exception v0

    .line 17
    monitor-exit p0
    :try_end_ca
    .catchall {:try_start_b .. :try_end_ca} :catchall_c8

    throw v0

    :cond_cb
    :goto_cb
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzl:Ljava/lang/Object;

    return-object v0
.end method
