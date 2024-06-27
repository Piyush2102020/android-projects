.class public abstract Lcom/google/android/gms/internal/measurement/zzjj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@21.2.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzmh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/measurement/zzjk<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/measurement/zzjj<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/zzmh;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjj;->zzav()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v0

    return-object v0
.end method

.method public abstract zzav()Lcom/google/android/gms/internal/measurement/zzjj;
.end method

.method public zzaw([BII)Lcom/google/android/gms/internal/measurement/zzjj;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzll;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method public zzax([BIILcom/google/android/gms/internal/measurement/zzkn;)Lcom/google/android/gms/internal/measurement/zzjj;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzll;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method public final synthetic zzay([B)Lcom/google/android/gms/internal/measurement/zzmh;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzll;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzjj;->zzaw([BII)Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzaz([BLcom/google/android/gms/internal/measurement/zzkn;)Lcom/google/android/gms/internal/measurement/zzmh;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzll;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzjj;->zzax([BIILcom/google/android/gms/internal/measurement/zzkn;)Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object p1

    return-object p1
.end method
