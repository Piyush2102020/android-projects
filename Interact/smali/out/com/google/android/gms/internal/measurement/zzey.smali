.class public final Lcom/google/android/gms/internal/measurement/zzey;
.super Lcom/google/android/gms/internal/measurement/zzlb;
.source "com.google.android.gms:play-services-measurement@@21.2.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzmj;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzey;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:Z

.field private zzh:Lcom/google/android/gms/internal/measurement/zzli;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzey;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzey;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzey;->zza:Lcom/google/android/gms/internal/measurement/zzey;

    .line 2
    const-class v1, Lcom/google/android/gms/internal/measurement/zzey;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzlb;->zzbO(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzlb;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzlb;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzey;->zzf:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlb;->zzbH()Lcom/google/android/gms/internal/measurement/zzli;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzey;->zzh:Lcom/google/android/gms/internal/measurement/zzli;

    return-void
.end method

.method static synthetic zzb()Lcom/google/android/gms/internal/measurement/zzey;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzey;->zza:Lcom/google/android/gms/internal/measurement/zzey;

    return-object v0
.end method

.method public static zzc()Lcom/google/android/gms/internal/measurement/zzey;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzey;->zza:Lcom/google/android/gms/internal/measurement/zzey;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzey;->zzh:Lcom/google/android/gms/internal/measurement/zzli;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzli;->size()I

    move-result v0

    return v0
.end method

.method public final zzd()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzey;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final zze()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzey;->zzh:Lcom/google/android/gms/internal/measurement/zzli;

    return-object v0
.end method

.method public final zzf()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzey;->zzg:Z

    return v0
.end method

.method public final zzg()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzey;->zzd:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzh()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzey;->zzd:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzi()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzey;->zzd:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final zzj()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzey;->zze:I

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzex;->zza(I)I

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0
.end method

.method protected final zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 2
    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x0

    const/4 p3, 0x1

    packed-switch p1, :pswitch_data_4a

    :pswitch_7
    return-object p2

    .line 1
    :pswitch_8
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzey;->zza:Lcom/google/android/gms/internal/measurement/zzey;

    return-object p1

    :pswitch_b
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzeu;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzeu;-><init>(Lcom/google/android/gms/internal/measurement/zzeg;)V

    return-object p1

    :pswitch_11
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzey;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzey;-><init>()V

    return-object p1

    .line 2
    :pswitch_17
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string/jumbo v0, "zzd"

    aput-object v0, p1, p2

    const-string/jumbo p2, "zze"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzew;->zza:Lcom/google/android/gms/internal/measurement/zzlf;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string/jumbo p3, "zzf"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string/jumbo p3, "zzg"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string/jumbo p3, "zzh"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzey;->zza:Lcom/google/android/gms/internal/measurement/zzey;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u100c\u0000\u0002\u1008\u0001\u0003\u1007\u0002\u0004\u001a"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzey;->zzbL(Lcom/google/android/gms/internal/measurement/zzmi;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :pswitch_45
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_45
        :pswitch_7
        :pswitch_17
        :pswitch_11
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method
