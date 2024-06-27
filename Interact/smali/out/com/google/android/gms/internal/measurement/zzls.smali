.class final Lcom/google/android/gms/internal/measurement/zzls;
.super Lcom/google/android/gms/internal/measurement/zzlw;
.source "com.google.android.gms:play-services-measurement-base@@21.2.2"


# static fields
.field private static final zza:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzls;->zza:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzlw;-><init>(Lcom/google/android/gms/internal/measurement/zzlv;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzlr;)V
    .registers 2

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzlw;-><init>(Lcom/google/android/gms/internal/measurement/zzlv;)V

    return-void
.end method


# virtual methods
.method final zza(Ljava/lang/Object;J)V
    .registers 7

    .line 1
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zznu;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzlq;

    if-eqz v1, :cond_11

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzlq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzlq;->zze()Lcom/google/android/gms/internal/measurement/zzlq;

    move-result-object v0

    goto :goto_36

    .line 7
    :cond_11
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzls;->zza:Ljava/lang/Class;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1e

    return-void

    .line 5
    :cond_1e
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzmp;

    if-eqz v1, :cond_32

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzli;

    if-eqz v1, :cond_32

    .line 8
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzli;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzli;->zzc()Z

    move-result p1

    if-eqz p1, :cond_31

    .line 9
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzli;->zzb()V

    :cond_31
    return-void

    .line 6
    :cond_32
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 7
    :goto_36
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/gms/internal/measurement/zznu;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method final zzb(Ljava/lang/Object;Ljava/lang/Object;J)V
    .registers 9

    .line 1
    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zznu;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 3
    invoke-static {p1, p3, p4}, Lcom/google/android/gms/internal/measurement/zznu;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 5
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzlq;

    if-eqz v2, :cond_20

    .line 6
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzlp;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzlp;-><init>(I)V

    goto :goto_35

    .line 7
    :cond_20
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzmp;

    if-eqz v2, :cond_30

    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzli;

    if-eqz v2, :cond_30

    .line 9
    check-cast v1, Lcom/google/android/gms/internal/measurement/zzli;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/measurement/zzli;->zzd(I)Lcom/google/android/gms/internal/measurement/zzli;

    move-result-object v0

    move-object v1, v0

    goto :goto_35

    :cond_30
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    :goto_35
    invoke-static {p1, p3, p4, v1}, Lcom/google/android/gms/internal/measurement/zznu;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_92

    .line 8
    :cond_39
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzls;->zza:Ljava/lang/Class;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_57

    new-instance v2, Ljava/util/ArrayList;

    .line 12
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 14
    invoke-static {p1, p3, p4, v2}, Lcom/google/android/gms/internal/measurement/zznu;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v1, v2

    goto :goto_92

    .line 15
    :cond_57
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zznp;

    if-eqz v2, :cond_73

    .line 16
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzlp;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/measurement/zzlp;-><init>(I)V

    .line 17
    check-cast v1, Lcom/google/android/gms/internal/measurement/zznp;

    .line 18
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzlp;->size()I

    move-result v0

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/measurement/zzjl;->addAll(ILjava/util/Collection;)Z

    .line 19
    invoke-static {p1, p3, p4, v2}, Lcom/google/android/gms/internal/measurement/zznu;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v1, v2

    goto :goto_92

    .line 20
    :cond_73
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzmp;

    if-eqz v2, :cond_91

    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzli;

    if-eqz v2, :cond_91

    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzli;

    .line 21
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzli;->zzc()Z

    move-result v3

    if-nez v3, :cond_91

    .line 22
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/measurement/zzli;->zzd(I)Lcom/google/android/gms/internal/measurement/zzli;

    move-result-object v1

    .line 23
    invoke-static {p1, p3, p4, v1}, Lcom/google/android/gms/internal/measurement/zznu;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_92

    :cond_91
    nop

    .line 24
    :goto_92
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 25
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v0, :cond_a1

    if-lez v2, :cond_a1

    .line 26
    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_a1
    if-gtz v0, :cond_a4

    goto :goto_a5

    :cond_a4
    move-object p2, v1

    .line 27
    :goto_a5
    invoke-static {p1, p3, p4, p2}, Lcom/google/android/gms/internal/measurement/zznu;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method
