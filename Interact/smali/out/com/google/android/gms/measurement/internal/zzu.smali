.class final Lcom/google/android/gms/measurement/internal/zzu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@21.2.2"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzaa;

.field private zzb:Ljava/lang/String;

.field private zzc:Z

.field private zzd:Lcom/google/android/gms/internal/measurement/zzgi;

.field private zze:Ljava/util/BitSet;

.field private zzf:Ljava/util/BitSet;

.field private zzg:Ljava/util/Map;

.field private zzh:Ljava/util/Map;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzaa;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzgi;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/zzt;)V
    .registers 9

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzu;->zza:Lcom/google/android/gms/measurement/internal/zzaa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzu;->zze:Ljava/util/BitSet;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzf:Ljava/util/BitSet;

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzg:Ljava/util/Map;

    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Ljava/util/Map;

    .line 6
    invoke-interface {p7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    new-instance p4, Ljava/util/ArrayList;

    .line 7
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {p7, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Long;

    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p5, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Ljava/util/Map;

    .line 9
    invoke-interface {p5, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    :cond_3c
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzc:Z

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzd:Lcom/google/android/gms/internal/measurement/zzgi;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzaa;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzt;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzu;->zza:Lcom/google/android/gms/measurement/internal/zzaa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzb:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzc:Z

    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzu;->zze:Ljava/util/BitSet;

    new-instance p1, Ljava/util/BitSet;

    .line 2
    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzf:Ljava/util/BitSet;

    .line 3
    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzg:Ljava/util/Map;

    new-instance p1, Landroidx/collection/ArrayMap;

    .line 4
    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Ljava/util/Map;

    return-void
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/measurement/internal/zzu;)Ljava/util/BitSet;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzu;->zze:Ljava/util/BitSet;

    return-object p0
.end method


# virtual methods
.method final zza(I)Lcom/google/android/gms/internal/measurement/zzfp;
    .registers 8

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfp;->zzb()Lcom/google/android/gms/internal/measurement/zzfo;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfo;->zza(I)Lcom/google/android/gms/internal/measurement/zzfo;

    iget-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzc:Z

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfo;->zzc(Z)Lcom/google/android/gms/internal/measurement/zzfo;

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzd:Lcom/google/android/gms/internal/measurement/zzgi;

    if-eqz p1, :cond_13

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfo;->zzd(Lcom/google/android/gms/internal/measurement/zzgi;)Lcom/google/android/gms/internal/measurement/zzfo;

    .line 5
    :cond_13
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgi;->zze()Lcom/google/android/gms/internal/measurement/zzgh;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzu;->zze:Ljava/util/BitSet;

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzli;->zzr(Ljava/util/BitSet;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzgh;->zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzgh;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzf:Ljava/util/BitSet;

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzli;->zzr(Ljava/util/BitSet;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzgh;->zzd(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzgh;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzg:Ljava/util/Map;

    if-nez v1, :cond_2f

    const/4 v1, 0x0

    goto :goto_79

    .line 24
    :cond_2f
    new-instance v2, Ljava/util/ArrayList;

    .line 8
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzg:Ljava/util/Map;

    .line 9
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_42
    :goto_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_78

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzg:Ljava/util/Map;

    .line 10
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_42

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfr;->zzc()Lcom/google/android/gms/internal/measurement/zzfq;

    move-result-object v5

    .line 12
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/measurement/zzfq;->zzb(I)Lcom/google/android/gms/internal/measurement/zzfq;

    .line 13
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfq;->zza(J)Lcom/google/android/gms/internal/measurement/zzfq;

    .line 14
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaD()Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfr;

    .line 15
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_42

    :cond_78
    move-object v1, v2

    .line 7
    :goto_79
    if-eqz v1, :cond_7e

    .line 16
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzgh;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzgh;

    :cond_7e
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Ljava/util/Map;

    if-nez v1, :cond_87

    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_cc

    .line 27
    :cond_87
    new-instance v2, Ljava/util/ArrayList;

    .line 18
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Ljava/util/Map;

    .line 19
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_cb

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgk;->zzd()Lcom/google/android/gms/internal/measurement/zzgj;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzgj;->zzb(I)Lcom/google/android/gms/internal/measurement/zzgj;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Ljava/util/Map;

    .line 21
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_c1

    .line 22
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 23
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/measurement/zzgj;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzgj;

    .line 24
    :cond_c1
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaD()Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzgk;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9a

    :cond_cb
    move-object v1, v2

    .line 25
    :goto_cc
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzgh;->zzc(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzgh;

    .line 26
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfo;->zzb(Lcom/google/android/gms/internal/measurement/zzgh;)Lcom/google/android/gms/internal/measurement/zzfo;

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaD()Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfp;

    return-object p1
.end method

.method final zzc(Lcom/google/android/gms/measurement/internal/zzy;)V
    .registers 11

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzy;->zza()I

    move-result v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzy;->zzd:Ljava/lang/Boolean;

    if-eqz v1, :cond_11

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzf:Ljava/util/BitSet;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Ljava/util/BitSet;->set(IZ)V

    :cond_11
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzy;->zze:Ljava/lang/Boolean;

    if-eqz v1, :cond_1e

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzu;->zze:Ljava/util/BitSet;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Ljava/util/BitSet;->set(IZ)V

    :cond_1e
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzy;->zzf:Ljava/lang/Long;

    const-wide/16 v2, 0x3e8

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzg:Ljava/util/Map;

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzy;->zzf:Ljava/lang/Long;

    .line 5
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    div-long/2addr v5, v2

    if-eqz v1, :cond_41

    .line 6
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v1, v5, v7

    if-lez v1, :cond_4a

    :cond_41
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzg:Ljava/util/Map;

    .line 7
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4a
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzy;->zzg:Ljava/lang/Long;

    if-eqz v1, :cond_c7

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Ljava/util/Map;

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_67

    new-instance v1, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzh:Ljava/util/Map;

    .line 10
    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_68

    .line 21
    :cond_67
    nop

    .line 10
    :goto_68
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzy;->zzc()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 11
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 12
    :cond_71
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzov;->zzc()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzu;->zza:Lcom/google/android/gms/measurement/internal/zzaa;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzf()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzb:Ljava/lang/String;

    .line 14
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzeh;->zzY:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/zzag;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzy;->zzb()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 16
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 17
    :cond_8f
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzov;->zzc()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzu;->zza:Lcom/google/android/gms/measurement/internal/zzaa;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgx;->zzt:Lcom/google/android/gms/measurement/internal/zzge;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzge;->zzf()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzu;->zzb:Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzeh;->zzY:Lcom/google/android/gms/measurement/internal/zzeg;

    .line 19
    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/zzag;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v0

    if-eqz v0, :cond_b9

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzy;->zzg:Ljava/lang/Long;

    .line 22
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    div-long/2addr v4, v2

    .line 23
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c7

    .line 24
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_b9
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzy;->zzg:Ljava/lang/Long;

    .line 20
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    div-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 21
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c7
    return-void
.end method
