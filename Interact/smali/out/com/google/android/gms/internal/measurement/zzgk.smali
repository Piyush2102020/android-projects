.class public final Lcom/google/android/gms/internal/measurement/zzgk;
.super Lcom/google/android/gms/internal/measurement/zzlb;
.source "com.google.android.gms:play-services-measurement@@21.2.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzmj;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzgk;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/measurement/zzlh;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzgk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzgk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzgk;->zza:Lcom/google/android/gms/internal/measurement/zzgk;

    .line 2
    const-class v1, Lcom/google/android/gms/internal/measurement/zzgk;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzlb;->zzbO(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzlb;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzlb;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgk;->zzbF()Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgk;->zzf:Lcom/google/android/gms/internal/measurement/zzlh;

    return-void
.end method

.method public static zzd()Lcom/google/android/gms/internal/measurement/zzgj;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgk;->zza:Lcom/google/android/gms/internal/measurement/zzgk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlb;->zzbA()Lcom/google/android/gms/internal/measurement/zzkx;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgj;

    return-object v0
.end method

.method static synthetic zze()Lcom/google/android/gms/internal/measurement/zzgk;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgk;->zza:Lcom/google/android/gms/internal/measurement/zzgk;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/measurement/zzgk;I)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgk;->zzd:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzgk;->zzd:I

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzgk;->zze:I

    return-void
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/measurement/zzgk;Ljava/lang/Iterable;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgk;->zzf:Lcom/google/android/gms/internal/measurement/zzlh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzlh;->zzc()Z

    move-result v1

    if-nez v1, :cond_e

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlb;->zzbG(Lcom/google/android/gms/internal/measurement/zzlh;)Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgk;->zzf:Lcom/google/android/gms/internal/measurement/zzlh;

    :cond_e
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzgk;->zzf:Lcom/google/android/gms/internal/measurement/zzlh;

    .line 3
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/zzjk;->zzbw(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final zza()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgk;->zzf:Lcom/google/android/gms/internal/measurement/zzlh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzlh;->size()I

    move-result v0

    return v0
.end method

.method public final zzb()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgk;->zze:I

    return v0
.end method

.method public final zzc(I)J
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgk;->zzf:Lcom/google/android/gms/internal/measurement/zzlh;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzlh;->zza(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzf()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgk;->zzf:Lcom/google/android/gms/internal/measurement/zzlh;

    return-object v0
.end method

.method public final zzi()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgk;->zzd:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method protected final zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 2
    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x0

    const/4 p3, 0x1

    packed-switch p1, :pswitch_data_3a

    :pswitch_7
    return-object p2

    .line 1
    :pswitch_8
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzgk;->zza:Lcom/google/android/gms/internal/measurement/zzgk;

    return-object p1

    :pswitch_b
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzgj;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzgj;-><init>(Lcom/google/android/gms/internal/measurement/zzfk;)V

    return-object p1

    :pswitch_11
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzgk;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzgk;-><init>()V

    return-object p1

    .line 2
    :pswitch_17
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string/jumbo v0, "zzd"

    aput-object v0, p1, p2

    const-string/jumbo p2, "zze"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string/jumbo p3, "zzf"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzgk;->zza:Lcom/google/android/gms/internal/measurement/zzgk;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u1004\u0000\u0002\u0014"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzgk;->zzbL(Lcom/google/android/gms/internal/measurement/zzmi;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :pswitch_34
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_34
        :pswitch_7
        :pswitch_17
        :pswitch_11
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method
