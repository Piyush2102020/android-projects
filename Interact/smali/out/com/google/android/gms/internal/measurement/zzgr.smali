.class public final Lcom/google/android/gms/internal/measurement/zzgr;
.super Lcom/google/android/gms/internal/measurement/zzlb;
.source "com.google.android.gms:play-services-measurement@@21.2.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzmj;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzgr;


# instance fields
.field private zzd:I

.field private zze:Ljava/lang/String;

.field private zzf:Lcom/google/android/gms/internal/measurement/zzli;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzgr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzgr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzgr;->zza:Lcom/google/android/gms/internal/measurement/zzgr;

    .line 2
    const-class v1, Lcom/google/android/gms/internal/measurement/zzgr;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzlb;->zzbO(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzlb;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzlb;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgr;->zze:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgr;->zzbH()Lcom/google/android/gms/internal/measurement/zzli;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgr;->zzf:Lcom/google/android/gms/internal/measurement/zzli;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/measurement/zzgr;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgr;->zza:Lcom/google/android/gms/internal/measurement/zzgr;

    return-object v0
.end method


# virtual methods
.method public final zzb()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgr;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgr;->zzf:Lcom/google/android/gms/internal/measurement/zzli;

    return-object v0
.end method

.method protected final zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 2
    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x0

    const/4 p3, 0x1

    packed-switch p1, :pswitch_data_3e

    :pswitch_7
    return-object p2

    .line 1
    :pswitch_8
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzgr;->zza:Lcom/google/android/gms/internal/measurement/zzgr;

    return-object p1

    :pswitch_b
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzgq;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzgq;-><init>(Lcom/google/android/gms/internal/measurement/zzgn;)V

    return-object p1

    :pswitch_11
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzgr;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzgr;-><init>()V

    return-object p1

    .line 2
    :pswitch_17
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string/jumbo v0, "zzd"

    aput-object v0, p1, p2

    const-string/jumbo p2, "zze"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string/jumbo p3, "zzf"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-class p3, Lcom/google/android/gms/internal/measurement/zzgy;

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzgr;->zza:Lcom/google/android/gms/internal/measurement/zzgr;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u001b"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzgr;->zzbL(Lcom/google/android/gms/internal/measurement/zzmi;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :pswitch_39
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_39
        :pswitch_7
        :pswitch_17
        :pswitch_11
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method
