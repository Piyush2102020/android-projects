.class public final synthetic Lcom/google/android/gms/internal/measurement/zzhr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.2.2"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/measurement/zzhr;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzhr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzhr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzhr;->zza:Lcom/google/android/gms/internal/measurement/zzhr;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzib;->zzc()V

    return-void
.end method
