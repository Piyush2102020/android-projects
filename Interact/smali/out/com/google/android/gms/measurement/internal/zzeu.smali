.class public final Lcom/google/android/gms/measurement/internal/zzeu;
.super Lcom/google/android/gms/measurement/internal/zzgy;
.source "com.google.android.gms:play-services-measurement-impl@@21.2.2"


# instance fields
.field private zza:C

.field private zzb:J

.field private zzc:Ljava/lang/String;

.field private final zzd:Lcom/google/android/gms/measurement/internal/zzes;

.field private final zze:Lcom/google/android/gms/measurement/internal/zzes;

.field private final zzf:Lcom/google/android/gms/measurement/internal/zzes;

.field private final zzg:Lcom/google/android/gms/measurement/internal/zzes;

.field private final zzh:Lcom/google/android/gms/measurement/internal/zzes;

.field private final zzi:Lcom/google/android/gms/measurement/internal/zzes;

.field private final zzj:Lcom/google/android/gms/measurement/internal/zzes;

.field private final zzk:Lcom/google/android/gms/measurement/internal/zzes;

.field private final zzl:Lcom/google/android/gms/measurement/internal/zzes;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzge;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzgy;-><init>(Lcom/google/android/gms/measurement/internal/zzge;)V

    const/4 p1, 0x0

    iput-char p1, p0, Lcom/google/android/gms/measurement/internal/zzeu;->zza:C

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzeu;->zzb:J

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzes;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1, p1, p1}, Lcom/google/android/gms/measurement/internal/zzes;-><init>(Lcom/google/android/gms/measurement/internal/zzeu;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeu;->zzd:Lcom/google/android/gms/measurement/internal/zzes;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzes;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzes;-><init>(Lcom/google/android/gms/measurement/internal/zzeu;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeu;->zze:Lcom/google/android/gms/measurement/internal/zzes;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzes;

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/google/android/gms/measurement/internal/zzes;-><init>(Lcom/google/android/gms/measurement/internal/zzeu;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeu;->zzf:Lcom/google/android/gms/measurement/internal/zzes;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzes;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1, p1, p1}, Lcom/google/android/gms/measurement/internal/zzes;-><init>(Lcom/google/android/gms/measurement/internal/zzeu;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeu;->zzg:Lcom/google/android/gms/measurement/internal/zzes;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzes;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzes;-><init>(Lcom/google/android/gms/measurement/internal/zzeu;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeu;->zzh:Lcom/google/android/gms/measurement/internal/zzes;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzes;

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/google/android/gms/measurement/internal/zzes;-><init>(Lcom/google/android/gms/measurement/internal/zzeu;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeu;->zzi:Lcom/google/android/gms/measurement/internal/zzes;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzes;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1, p1, p1}, Lcom/google/android/gms/measurement/internal/zzes;-><init>(Lcom/google/android/gms/measurement/internal/zzeu;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeu;->zzj:Lcom/google/android/gms/measurement/internal/zzes;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzes;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1, p1, p1}, Lcom/google/android/gms/measurement/internal/zzes;-><init>(Lcom/google/android/gms/measurement/internal/zzeu;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeu;->zzk:Lcom/google/android/gms/measurement/internal/zzes;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzes;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, p1, p1}, Lcom/google/android/gms/measurement/internal/zzes;-><init>(Lcom/google/android/gms/measurement/internal/zzeu;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeu;->zzl:Lcom/google/android/gms/measurement/internal/zzes;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/measurement/internal/zzeu;)C
    .registers 1

    iget-char p0, p0, Lcom/google/android/gms/measurement/internal/zzeu;->zza:C

    return p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/measurement/internal/zzeu;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzeu;->zzb:J

    return-wide v0
.end method

.method protected static zzn(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzet;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzet;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzo(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .registers 7

    .line 1
    invoke-static {p0, p2}, Lcom/google/android/gms/measurement/internal/zzeu;->zzp(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-static {p0, p3}, Lcom/google/android/gms/measurement/internal/zzeu;->zzp(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 3
    invoke-static {p0, p4}, Lcom/google/android/gms/measurement/internal/zzeu;->zzp(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p4, Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    if-nez p1, :cond_16

    move-object p1, v0

    .line 5
    :cond_16
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 6
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    goto :goto_23

    .line 15
    :cond_22
    nop

    .line 7
    :goto_23
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v1, ", "

    if-nez p1, :cond_32

    .line 8
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v1

    .line 10
    :cond_32
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3f

    .line 11
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_40

    .line 10
    :cond_3f
    move-object v1, v0

    .line 13
    :goto_40
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4c

    .line 14
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4c
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static zzp(ZLjava/lang/Object;)Ljava/lang/String;
    .registers 11

    .line 1
    const-string v0, ""

    if-nez p1, :cond_5

    return-object v0

    :cond_5
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_14

    .line 2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 3
    :cond_14
    instance-of v1, p1, Ljava/lang/Long;

    const-string v2, "-"

    const/4 v3, 0x0

    if-eqz v1, :cond_8d

    if-nez p0, :cond_22

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_22
    move-object p0, p1

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x64

    cmp-long v1, v4, v6

    if-gez v1, :cond_38

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7
    :cond_38
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 8
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-double v3, v1

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    int-to-double v7, p0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2d

    if-ne p1, v1, :cond_77

    move-object v0, v2

    :cond_77
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "..."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 11
    :cond_8d
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_96

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 13
    :cond_96
    instance-of v0, p1, Ljava/lang/Throwable;

    if-eqz v0, :cond_eb

    .line 14
    check-cast p1, Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/StringBuilder;

    if-eqz p0, :cond_a9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_ad

    :cond_a9
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_ad
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class p0, Lcom/google/android/gms/measurement/internal/zzge;

    .line 16
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    array-length v1, p1

    :goto_bf
    if-ge v3, v1, :cond_e6

    aget-object v2, p1, v3

    .line 18
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v4

    if-eqz v4, :cond_ca

    goto :goto_e3

    .line 19
    :cond_ca
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e3

    .line 20
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzeu;->zzq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 21
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e3

    .line 22
    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_e6

    .line 18
    :cond_e3
    :goto_e3
    add-int/lit8 v3, v3, 0x1

    goto :goto_bf

    .line 23
    :cond_e6
    :goto_e6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 24
    :cond_eb
    instance-of v0, p1, Lcom/google/android/gms/measurement/internal/zzet;

    if-eqz v0, :cond_f6

    .line 25
    check-cast p1, Lcom/google/android/gms/measurement/internal/zzet;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Lcom/google/android/gms/measurement/internal/zzet;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f6
    if-eqz p0, :cond_f9

    return-object v2

    .line 26
    :cond_f9
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static zzq(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    return-object v1

    .line 2
    :cond_9
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_26

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpb;->zzc()Z

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzeh;->zzay:Lcom/google/android/gms/measurement/internal/zzeg;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_25

    return-object v1

    :cond_25
    return-object p0

    :cond_26
    nop

    .line 4
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic zzs(Lcom/google/android/gms/measurement/internal/zzeu;J)V
    .registers 3

    const-wide/32 p1, 0x12cc8

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzeu;->zzb:J

    return-void
.end method

.method static bridge synthetic zzt(Lcom/google/android/gms/measurement/internal/zzeu;C)V
    .registers 2

    iput-char p1, p0, Lcom/google/android/gms/measurement/internal/zzeu;->zza:C

    return-void
.end method


# virtual methods
.method public final zzc()Lcom/google/android/gms/measurement/internal/zzes;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeu;->zzk:Lcom/google/android/gms/measurement/internal/zzes;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/measurement/internal/zzes;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeu;->zzd:Lcom/google/android/gms/measurement/internal/zzes;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/measurement/internal/zzes;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeu;->zzf:Lcom/google/android/gms/measurement/internal/zzes;

    return-object v0
.end method

.method protected final zzf()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final zzh()Lcom/google/android/gms/measurement/internal/zzes;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeu;->zze:Lcom/google/android/gms/measurement/internal/zzes;

    return-object v0
.end method

.method public final zzi()Lcom/google/android/gms/measurement/internal/zzes;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeu;->zzj:Lcom/google/android/gms/measurement/internal/zzes;

    return-object v0
.end method

.method public final zzj()Lcom/google/android/gms/measurement/internal/zzes;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeu;->zzl:Lcom/google/android/gms/measurement/internal/zzes;

    return-object v0
.end method

.method public final zzk()Lcom/google/android/gms/measurement/internal/zzes;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeu;->zzg:Lcom/google/android/gms/measurement/internal/zzes;

    return-object v0
.end method

.method public final zzl()Lcom/google/android/gms/measurement/internal/zzes;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeu;->zzi:Lcom/google/android/gms/measurement/internal/zzes;

    return-object v0
.end method

.method public final zzm()Lcom/google/android/gms/measurement/internal/zzes;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeu;->zzh:Lcom/google/android/gms/measurement/internal/zzes;

    return-object v0
.end method

.method protected final zzr()Ljava/lang/String;
    .registers 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "logTagDoNotUseDirectly"
        }
    .end annotation

    .line 1
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeu;->zzc:Ljava/lang/String;

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeu;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzy()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeu;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzy()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeu;->zzc:Ljava/lang/String;

    goto :goto_22

    .line 6
    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzf()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzag;->zzn()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeu;->zzc:Ljava/lang/String;

    .line 4
    :cond_22
    :goto_22
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeu;->zzc:Ljava/lang/String;

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeu;->zzc:Ljava/lang/String;

    .line 6
    monitor-exit p0

    return-object v0

    .line 3
    :catchall_2b
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method protected final zzu(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 15

    .line 1
    if-nez p2, :cond_18

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzr()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_18

    .line 2
    const/4 p2, 0x0

    invoke-static {p2, p4, p5, p6, p7}, Lcom/google/android/gms/measurement/internal/zzeu;->zzo(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzr()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_18
    if-nez p3, :cond_58

    const/4 p2, 0x5

    if-lt p1, p2, :cond_58

    .line 4
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzeu;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzge;->zzo()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p2

    const/4 p3, 0x6

    if-nez p2, :cond_33

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzr()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Scheduler not set. Not logging error/warn"

    invoke-static {p3, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_33
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgy;->zzy()Z

    move-result v0

    if-nez v0, :cond_43

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeu;->zzr()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Scheduler not initialized. Not logging error/warn"

    invoke-static {p3, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_43
    const/16 p3, 0x9

    if-lt p1, p3, :cond_49

    const/16 p1, 0x8

    :cond_49
    move v2, p1

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzer;

    move-object v0, p1

    move-object v1, p0

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzer;-><init>(Lcom/google/android/gms/measurement/internal/zzeu;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp(Ljava/lang/Runnable;)V

    :cond_58
    return-void
.end method
