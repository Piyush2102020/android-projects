.class public abstract Lkotlinx/coroutines/EventLoop;
.super Lkotlinx/coroutines/CoroutineDispatcher;
.source "EventLoop.common.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEventLoop.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/EventLoop\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,544:1\n1#2:545\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008 \u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0004J\u0010\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0004H\u0002J\u0012\u0010\u0016\u001a\u00020\u00132\n\u0010\u0017\u001a\u0006\u0012\u0002\u0008\u00030\u0010J\u0010\u0010\u0018\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0004J\u000e\u0010\u0019\u001a\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u001bJ\u0008\u0010\u001c\u001a\u00020\nH\u0016J\u0006\u0010\u001d\u001a\u00020\u0004J\u0008\u0010\u001e\u001a\u00020\u0004H\u0016J\u0008\u0010\u001f\u001a\u00020\u0013H\u0016R\u0011\u0010\u0003\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u00048TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0005R\u0011\u0010\u0007\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0005R\u0011\u0010\u0008\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\u0005R\u0014\u0010\t\u001a\u00020\n8TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\r\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u000e\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0010\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lkotlinx/coroutines/EventLoop;",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "()V",
        "isActive",
        "",
        "()Z",
        "isEmpty",
        "isUnconfinedLoopActive",
        "isUnconfinedQueueEmpty",
        "nextTime",
        "",
        "getNextTime",
        "()J",
        "shared",
        "unconfinedQueue",
        "Lkotlinx/coroutines/internal/ArrayQueue;",
        "Lkotlinx/coroutines/DispatchedTask;",
        "useCount",
        "decrementUseCount",
        "",
        "unconfined",
        "delta",
        "dispatchUnconfined",
        "task",
        "incrementUseCount",
        "limitedParallelism",
        "parallelism",
        "",
        "processNextEvent",
        "processUnconfinedEvent",
        "shouldBeProcessedFromContext",
        "shutdown",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private shared:Z

.field private unconfinedQueue:Lkotlinx/coroutines/internal/ArrayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/internal/ArrayQueue<",
            "Lkotlinx/coroutines/DispatchedTask<",
            "*>;>;"
        }
    .end annotation
.end field

.field private useCount:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Lkotlinx/coroutines/CoroutineDispatcher;-><init>()V

    return-void
.end method

.method public static synthetic decrementUseCount$default(Lkotlinx/coroutines/EventLoop;ZILjava/lang/Object;)V
    .registers 4

    .line 108
    if-nez p3, :cond_b

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_7

    const/4 p1, 0x0

    :cond_7
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/EventLoop;->decrementUseCount(Z)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: decrementUseCount"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final delta(Z)J
    .registers 4
    .param p1, "unconfined"    # Z

    .line 101
    if-eqz p1, :cond_8

    const-wide v0, 0x100000000L

    goto :goto_a

    :cond_8
    const-wide/16 v0, 0x1

    :goto_a
    return-wide v0
.end method

.method public static synthetic incrementUseCount$default(Lkotlinx/coroutines/EventLoop;ZILjava/lang/Object;)V
    .registers 4

    .line 103
    if-nez p3, :cond_b

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_7

    const/4 p1, 0x0

    :cond_7
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/EventLoop;->incrementUseCount(Z)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: incrementUseCount"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final decrementUseCount(Z)V
    .registers 8
    .param p1, "unconfined"    # Z

    .line 109
    iget-wide v0, p0, Lkotlinx/coroutines/EventLoop;->useCount:J

    invoke-direct {p0, p1}, Lkotlinx/coroutines/EventLoop;->delta(Z)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lkotlinx/coroutines/EventLoop;->useCount:J

    .line 110
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_10

    return-void

    .line 111
    :cond_10
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 545
    const/4 v0, 0x0

    .line 111
    .local v0, "$i$a$-assert-EventLoop$decrementUseCount$1":I
    iget-wide v4, p0, Lkotlinx/coroutines/EventLoop;->useCount:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_1f

    const/4 v1, 0x1

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    .end local v0    # "$i$a$-assert-EventLoop$decrementUseCount$1":I
    :goto_20
    if-eqz v1, :cond_23

    goto :goto_29

    :cond_23
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 112
    :cond_29
    :goto_29
    iget-boolean v0, p0, Lkotlinx/coroutines/EventLoop;->shared:Z

    if-eqz v0, :cond_30

    .line 114
    invoke-virtual {p0}, Lkotlinx/coroutines/EventLoop;->shutdown()V

    .line 116
    :cond_30
    return-void
.end method

.method public final dispatchUnconfined(Lkotlinx/coroutines/DispatchedTask;)V
    .registers 5
    .param p1, "task"    # Lkotlinx/coroutines/DispatchedTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/DispatchedTask<",
            "*>;)V"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lkotlinx/coroutines/EventLoop;->unconfinedQueue:Lkotlinx/coroutines/internal/ArrayQueue;

    if-nez v0, :cond_d

    .line 86
    new-instance v0, Lkotlinx/coroutines/internal/ArrayQueue;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/ArrayQueue;-><init>()V

    move-object v1, v0

    .line 545
    .local v1, "it":Lkotlinx/coroutines/internal/ArrayQueue;
    const/4 v2, 0x0

    .line 86
    .local v2, "$i$a$-also-EventLoop$dispatchUnconfined$queue$1":I
    iput-object v1, p0, Lkotlinx/coroutines/EventLoop;->unconfinedQueue:Lkotlinx/coroutines/internal/ArrayQueue;

    .line 85
    .end local v1    # "it":Lkotlinx/coroutines/internal/ArrayQueue;
    .end local v2    # "$i$a$-also-EventLoop$dispatchUnconfined$queue$1":I
    :cond_d
    nop

    .line 87
    .local v0, "queue":Lkotlinx/coroutines/internal/ArrayQueue;
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/internal/ArrayQueue;->addLast(Ljava/lang/Object;)V

    .line 88
    return-void
.end method

.method protected getNextTime()J
    .registers 5

    .line 62
    iget-object v0, p0, Lkotlinx/coroutines/EventLoop;->unconfinedQueue:Lkotlinx/coroutines/internal/ArrayQueue;

    const-wide v1, 0x7fffffffffffffffL

    if-nez v0, :cond_a

    return-wide v1

    .line 63
    .local v0, "queue":Lkotlinx/coroutines/internal/ArrayQueue;
    :cond_a
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ArrayQueue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_13

    :cond_11
    const-wide/16 v1, 0x0

    :goto_13
    return-wide v1
.end method

.method public final incrementUseCount(Z)V
    .registers 6
    .param p1, "unconfined"    # Z

    .line 104
    iget-wide v0, p0, Lkotlinx/coroutines/EventLoop;->useCount:J

    invoke-direct {p0, p1}, Lkotlinx/coroutines/EventLoop;->delta(Z)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lkotlinx/coroutines/EventLoop;->useCount:J

    .line 105
    if-nez p1, :cond_e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkotlinx/coroutines/EventLoop;->shared:Z

    .line 106
    :cond_e
    return-void
.end method

.method public final isActive()Z
    .registers 5

    .line 91
    iget-wide v0, p0, Lkotlinx/coroutines/EventLoop;->useCount:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method protected isEmpty()Z
    .registers 2

    .line 58
    invoke-virtual {p0}, Lkotlinx/coroutines/EventLoop;->isUnconfinedQueueEmpty()Z

    move-result v0

    return v0
.end method

.method public final isUnconfinedLoopActive()Z
    .registers 6

    .line 94
    iget-wide v0, p0, Lkotlinx/coroutines/EventLoop;->useCount:J

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lkotlinx/coroutines/EventLoop;->delta(Z)J

    move-result-wide v3

    cmp-long v0, v0, v3

    if-ltz v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    return v2
.end method

.method public final isUnconfinedQueueEmpty()Z
    .registers 2

    .line 98
    iget-object v0, p0, Lkotlinx/coroutines/EventLoop;->unconfinedQueue:Lkotlinx/coroutines/internal/ArrayQueue;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ArrayQueue;->isEmpty()Z

    move-result v0

    :goto_a
    return v0
.end method

.method public final limitedParallelism(I)Lkotlinx/coroutines/CoroutineDispatcher;
    .registers 3
    .param p1, "parallelism"    # I

    .line 119
    invoke-static {p1}, Lkotlinx/coroutines/internal/LimitedDispatcherKt;->checkParallelism(I)V

    .line 120
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/CoroutineDispatcher;

    return-object v0
.end method

.method public processNextEvent()J
    .registers 3

    .line 54
    invoke-virtual {p0}, Lkotlinx/coroutines/EventLoop;->processUnconfinedEvent()Z

    move-result v0

    if-nez v0, :cond_c

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    .line 55
    :cond_c
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final processUnconfinedEvent()Z
    .registers 4

    .line 67
    iget-object v0, p0, Lkotlinx/coroutines/EventLoop;->unconfinedQueue:Lkotlinx/coroutines/internal/ArrayQueue;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 68
    .local v0, "queue":Lkotlinx/coroutines/internal/ArrayQueue;
    :cond_6
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ArrayQueue;->removeFirstOrNull()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/DispatchedTask;

    if-nez v2, :cond_f

    return v1

    :cond_f
    move-object v1, v2

    .line 69
    .local v1, "task":Lkotlinx/coroutines/DispatchedTask;
    invoke-virtual {v1}, Lkotlinx/coroutines/DispatchedTask;->run()V

    .line 70
    const/4 v2, 0x1

    return v2
.end method

.method public shouldBeProcessedFromContext()Z
    .registers 2

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public shutdown()V
    .registers 1

    .line 123
    return-void
.end method
