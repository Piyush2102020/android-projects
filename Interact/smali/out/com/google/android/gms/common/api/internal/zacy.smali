.class final Lcom/google/android/gms/common/api/internal/zacy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/common/api/Result;

.field final synthetic zab:Lcom/google/android/gms/common/api/internal/zada;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zada;Lcom/google/android/gms/common/api/Result;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zacy;->zab:Lcom/google/android/gms/common/api/internal/zada;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zacy;->zaa:Lcom/google/android/gms/common/api/Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    sget-object v2, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaa:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zacy;->zab:Lcom/google/android/gms/common/api/internal/zada;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/zada;->zaa(Lcom/google/android/gms/common/api/internal/zada;)Lcom/google/android/gms/common/api/ResultTransform;

    move-result-object v2

    .line 2
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/ResultTransform;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zacy;->zaa:Lcom/google/android/gms/common/api/Result;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/ResultTransform;->onSuccess(Lcom/google/android/gms/common/api/Result;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zacy;->zab:Lcom/google/android/gms/common/api/internal/zada;

    invoke-static {v3}, Lcom/google/android/gms/common/api/internal/zada;->zab(Lcom/google/android/gms/common/api/internal/zada;)Lcom/google/android/gms/common/api/internal/zacz;

    move-result-object v4

    invoke-static {v3}, Lcom/google/android/gms/common/api/internal/zada;->zab(Lcom/google/android/gms/common/api/internal/zada;)Lcom/google/android/gms/common/api/internal/zacz;

    move-result-object v3

    .line 3
    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/common/api/internal/zacz;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 4
    invoke-virtual {v4, v2}, Lcom/google/android/gms/common/api/internal/zacz;->sendMessage(Landroid/os/Message;)Z
    :try_end_2e
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2e} :catch_54
    .catchall {:try_start_2 .. :try_end_2e} :catchall_52

    sget-object v0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaa:Ljava/lang/ThreadLocal;

    .line 7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacy;->zab:Lcom/google/android/gms/common/api/internal/zada;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zacy;->zaa:Lcom/google/android/gms/common/api/Result;

    .line 8
    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/zada;->zaf(Lcom/google/android/gms/common/api/internal/zada;Lcom/google/android/gms/common/api/Result;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacy;->zab:Lcom/google/android/gms/common/api/internal/zada;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zada;->zae(Lcom/google/android/gms/common/api/internal/zada;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_85

    :goto_4c
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zacy;->zab:Lcom/google/android/gms/common/api/internal/zada;

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->zap(Lcom/google/android/gms/common/api/internal/zada;)V

    return-void

    :catchall_52
    move-exception v0

    goto :goto_86

    :catch_54
    move-exception v2

    :try_start_55
    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zacy;->zab:Lcom/google/android/gms/common/api/internal/zada;

    invoke-static {v3}, Lcom/google/android/gms/common/api/internal/zada;->zab(Lcom/google/android/gms/common/api/internal/zada;)Lcom/google/android/gms/common/api/internal/zacz;

    move-result-object v4

    invoke-static {v3}, Lcom/google/android/gms/common/api/internal/zada;->zab(Lcom/google/android/gms/common/api/internal/zada;)Lcom/google/android/gms/common/api/internal/zacz;

    move-result-object v3

    .line 5
    invoke-virtual {v3, v0, v2}, Lcom/google/android/gms/common/api/internal/zacz;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 6
    invoke-virtual {v4, v0}, Lcom/google/android/gms/common/api/internal/zacz;->sendMessage(Landroid/os/Message;)Z
    :try_end_66
    .catchall {:try_start_55 .. :try_end_66} :catchall_52

    .line 7
    sget-object v0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaa:Ljava/lang/ThreadLocal;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacy;->zab:Lcom/google/android/gms/common/api/internal/zada;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zacy;->zaa:Lcom/google/android/gms/common/api/Result;

    .line 8
    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/zada;->zaf(Lcom/google/android/gms/common/api/internal/zada;Lcom/google/android/gms/common/api/Result;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacy;->zab:Lcom/google/android/gms/common/api/internal/zada;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zada;->zae(Lcom/google/android/gms/common/api/internal/zada;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_85

    goto :goto_4c

    .line 10
    :cond_85
    return-void

    .line 7
    :goto_86
    sget-object v2, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaa:Ljava/lang/ThreadLocal;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zacy;->zab:Lcom/google/android/gms/common/api/internal/zada;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zacy;->zaa:Lcom/google/android/gms/common/api/Result;

    .line 8
    invoke-static {v1, v2}, Lcom/google/android/gms/common/api/internal/zada;->zaf(Lcom/google/android/gms/common/api/internal/zada;Lcom/google/android/gms/common/api/Result;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zacy;->zab:Lcom/google/android/gms/common/api/internal/zada;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zada;->zae(Lcom/google/android/gms/common/api/internal/zada;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v1, :cond_a5

    goto :goto_aa

    .line 11
    :cond_a5
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zacy;->zab:Lcom/google/android/gms/common/api/internal/zada;

    .line 10
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->zap(Lcom/google/android/gms/common/api/internal/zada;)V

    .line 11
    :goto_aa
    throw v0
.end method
