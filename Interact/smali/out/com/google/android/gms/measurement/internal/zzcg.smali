.class public final synthetic Lcom/google/android/gms/measurement/internal/zzcg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.2.2"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzed;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/measurement/internal/zzcg;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzcg;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/zzcg;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzcg;->zza:Lcom/google/android/gms/measurement/internal/zzcg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .registers 2

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzeh;->zza:Lcom/google/android/gms/measurement/internal/zzeg;

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzov;->zzd()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
