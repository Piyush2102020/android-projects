.class public final synthetic Lcom/google/android/gms/measurement/internal/zzbp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.2.2"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzed;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/measurement/internal/zzbp;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzbp;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/zzbp;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzbp;->zza:Lcom/google/android/gms/measurement/internal/zzbp;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .registers 3

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzeh;->zza:Lcom/google/android/gms/measurement/internal/zzeg;

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoj;->zzj()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method