.class final Lcom/google/android/gms/common/moduleinstall/internal/zas;
.super Lcom/google/android/gms/common/moduleinstall/internal/zaa;
.source "com.google.android.gms:play-services-base@@18.1.0"


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/moduleinstall/internal/zay;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/common/moduleinstall/internal/zas;->zaa:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Lcom/google/android/gms/common/moduleinstall/internal/zaa;-><init>()V

    return-void
.end method


# virtual methods
.method public final zab(Lcom/google/android/gms/common/api/Status;)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/common/moduleinstall/internal/zas;->zaa:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/api/internal/TaskUtil;->trySetResultOrApiException(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)Z

    return-void
.end method