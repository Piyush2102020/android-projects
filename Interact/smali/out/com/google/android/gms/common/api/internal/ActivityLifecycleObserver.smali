.class public abstract Lcom/google/android/gms/common/api/internal/ActivityLifecycleObserver;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.1.0"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final of(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/ActivityLifecycleObserver;
    .registers 2
    .param p0, "activity"    # Landroid/app/Activity;

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/internal/zab;

    .end local p0    # "activity":Landroid/app/Activity;
    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/zaa;->zaa(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/zaa;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/zab;-><init>(Lcom/google/android/gms/common/api/internal/zaa;)V

    return-object v0
.end method


# virtual methods
.method public abstract onStopCallOnce(Ljava/lang/Runnable;)Lcom/google/android/gms/common/api/internal/ActivityLifecycleObserver;
.end method
