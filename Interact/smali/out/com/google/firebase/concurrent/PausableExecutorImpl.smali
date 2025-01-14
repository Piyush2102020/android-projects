.class final Lcom/google/firebase/concurrent/PausableExecutorImpl;
.super Ljava/lang/Object;
.source "PausableExecutorImpl.java"

# interfaces
.implements Lcom/google/firebase/concurrent/PausableExecutor;


# instance fields
.field private final delegate:Ljava/util/concurrent/Executor;

.field private volatile paused:Z

.field final queue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ZLjava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "paused"    # Z
    .param p2, "delegate"    # Ljava/util/concurrent/Executor;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/concurrent/PausableExecutorImpl;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 28
    iput-boolean p1, p0, Lcom/google/firebase/concurrent/PausableExecutorImpl;->paused:Z

    .line 29
    iput-object p2, p0, Lcom/google/firebase/concurrent/PausableExecutorImpl;->delegate:Ljava/util/concurrent/Executor;

    .line 30
    return-void
.end method

.method private maybeEnqueueNext()V
    .registers 3

    .line 39
    iget-boolean v0, p0, Lcom/google/firebase/concurrent/PausableExecutorImpl;->paused:Z

    if-eqz v0, :cond_5

    .line 40
    return-void

    .line 42
    :cond_5
    iget-object v0, p0, Lcom/google/firebase/concurrent/PausableExecutorImpl;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 43
    .local v0, "next":Ljava/lang/Runnable;
    :goto_d
    if-eqz v0, :cond_24

    .line 44
    iget-object v1, p0, Lcom/google/firebase/concurrent/PausableExecutorImpl;->delegate:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 45
    iget-boolean v1, p0, Lcom/google/firebase/concurrent/PausableExecutorImpl;->paused:Z

    if-nez v1, :cond_22

    .line 46
    iget-object v1, p0, Lcom/google/firebase/concurrent/PausableExecutorImpl;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/Runnable;

    goto :goto_d

    .line 48
    :cond_22
    const/4 v0, 0x0

    goto :goto_d

    .line 51
    :cond_24
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 34
    iget-object v0, p0, Lcom/google/firebase/concurrent/PausableExecutorImpl;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 35
    invoke-direct {p0}, Lcom/google/firebase/concurrent/PausableExecutorImpl;->maybeEnqueueNext()V

    .line 36
    return-void
.end method

.method public isPaused()Z
    .registers 2

    .line 66
    iget-boolean v0, p0, Lcom/google/firebase/concurrent/PausableExecutorImpl;->paused:Z

    return v0
.end method

.method public pause()V
    .registers 2

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/concurrent/PausableExecutorImpl;->paused:Z

    .line 56
    return-void
.end method

.method public resume()V
    .registers 2

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/concurrent/PausableExecutorImpl;->paused:Z

    .line 61
    invoke-direct {p0}, Lcom/google/firebase/concurrent/PausableExecutorImpl;->maybeEnqueueNext()V

    .line 62
    return-void
.end method
