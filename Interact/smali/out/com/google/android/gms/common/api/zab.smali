.class final Lcom/google/android/gms/common/api/zab;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/common/api/PendingResult$StatusListener;


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/common/api/Batch;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/Batch;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/api/zab;->zaa:Lcom/google/android/gms/common/api/Batch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/common/api/Status;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/zab;->zaa:Lcom/google/android/gms/common/api/Batch;

    invoke-static {v0}, Lcom/google/android/gms/common/api/Batch;->zab(Lcom/google/android/gms/common/api/Batch;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/common/api/zab;->zaa:Lcom/google/android/gms/common/api/Batch;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2
    monitor-exit v0

    return-void

    .line 3
    :cond_11
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isCanceled()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1e

    iget-object p1, p0, Lcom/google/android/gms/common/api/zab;->zaa:Lcom/google/android/gms/common/api/Batch;

    .line 4
    invoke-static {p1, v2}, Lcom/google/android/gms/common/api/Batch;->zad(Lcom/google/android/gms/common/api/Batch;Z)V

    goto :goto_29

    .line 5
    :cond_1e
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result p1

    if-nez p1, :cond_29

    iget-object p1, p0, Lcom/google/android/gms/common/api/zab;->zaa:Lcom/google/android/gms/common/api/Batch;

    .line 6
    invoke-static {p1, v2}, Lcom/google/android/gms/common/api/Batch;->zac(Lcom/google/android/gms/common/api/Batch;Z)V

    .line 4
    :cond_29
    :goto_29
    iget-object p1, p0, Lcom/google/android/gms/common/api/zab;->zaa:Lcom/google/android/gms/common/api/Batch;

    invoke-static {p1}, Lcom/google/android/gms/common/api/Batch;->zaa(Lcom/google/android/gms/common/api/Batch;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 7
    invoke-static {p1, v1}, Lcom/google/android/gms/common/api/Batch;->zae(Lcom/google/android/gms/common/api/Batch;I)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/zab;->zaa:Lcom/google/android/gms/common/api/Batch;

    invoke-static {p1}, Lcom/google/android/gms/common/api/Batch;->zaa(Lcom/google/android/gms/common/api/Batch;)I

    move-result v1

    if-nez v1, :cond_64

    invoke-static {p1}, Lcom/google/android/gms/common/api/Batch;->zah(Lcom/google/android/gms/common/api/Batch;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/common/api/Batch;->zaf(Lcom/google/android/gms/common/api/Batch;)V

    goto :goto_64

    .line 11
    :cond_46
    invoke-static {p1}, Lcom/google/android/gms/common/api/Batch;->zag(Lcom/google/android/gms/common/api/Batch;)Z

    move-result p1

    if-eqz p1, :cond_54

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    .line 8
    const/16 v1, 0xd

    invoke-direct {p1, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto :goto_56

    .line 9
    :cond_54
    sget-object p1, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    .line 8
    :goto_56
    iget-object v1, p0, Lcom/google/android/gms/common/api/zab;->zaa:Lcom/google/android/gms/common/api/Batch;

    new-instance v2, Lcom/google/android/gms/common/api/BatchResult;

    invoke-static {v1}, Lcom/google/android/gms/common/api/Batch;->zai(Lcom/google/android/gms/common/api/Batch;)[Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/google/android/gms/common/api/BatchResult;-><init>(Lcom/google/android/gms/common/api/Status;[Lcom/google/android/gms/common/api/PendingResult;)V

    .line 9
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    .line 11
    :cond_64
    :goto_64
    monitor-exit v0

    return-void

    .line 6
    :catchall_66
    move-exception p1

    .line 11
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_7 .. :try_end_68} :catchall_66

    throw p1
.end method
