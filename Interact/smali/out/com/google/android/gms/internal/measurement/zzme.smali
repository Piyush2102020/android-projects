.class final Lcom/google/android/gms/internal/measurement/zzme;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@21.2.2"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzmd;

.field private static final zzb:Lcom/google/android/gms/internal/measurement/zzmd;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    :try_start_0
    const-string v0, "com.google.protobuf.MapFieldSchemaFull"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmd;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_18

    :catch_16
    move-exception v0

    const/4 v0, 0x0

    :goto_18
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzme;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzmd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzme;->zzb:Lcom/google/android/gms/internal/measurement/zzmd;

    return-void
.end method

.method static zza()Lcom/google/android/gms/internal/measurement/zzmd;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzme;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    return-object v0
.end method

.method static zzb()Lcom/google/android/gms/internal/measurement/zzmd;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzme;->zzb:Lcom/google/android/gms/internal/measurement/zzmd;

    return-object v0
.end method
