.class final Lcom/google/android/gms/common/zzk;
.super Lcom/google/android/gms/common/zzj;
.source "com.google.android.gms:play-services-basement@@18.1.0"


# instance fields
.field private final zza:[B


# direct methods
.method constructor <init>([B)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    const/16 v1, 0x19

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/zzj;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/common/zzk;->zza:[B

    return-void
.end method


# virtual methods
.method final zzf()[B
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/zzk;->zza:[B

    return-object v0
.end method
