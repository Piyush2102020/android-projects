.class final Lcom/google/android/gms/measurement/internal/zzku;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@21.2.2"


# instance fields
.field private final zza:Ljava/lang/String;

.field private zzb:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzku;->zza:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzku;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzku;->zzb:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzku;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final zzb()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzku;->zzb:Ljava/util/Map;

    return-object v0
.end method