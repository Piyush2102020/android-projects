.class Lcom/google/firebase/concurrent/LimitedConcurrencyExecutor;
.super Ljava/lang/Object;
.source "LimitedConcurrencyExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field private final delegate:Ljava/util/concurrent/Executor;

.field private final queue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;I)V
    .registers 6
    .param p1, "delegate"    # Ljava/util/concurrent/Executor;
    .param p2, "concurrency"    # I

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/concurrent/LimitedConcurrencyExecutor;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 39
    const/4 v0, 0x1

    if-lez p2, :cond_f

    move v1, v0

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    const-string v2, "concurrency must be positive."

    invoke-static {v1, v2}, Lcom/google/firebase/components/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 40
    iput-object p1, p0, Lcom/google/firebase/concurrent/LimitedConcurrencyExecutor;->delegate:Ljava/util/concurrent/Executor;

    .line 41
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, p2, v0}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v1, p0, Lcom/google/firebase/concurrent/LimitedConcurrencyExecutor;->semaphore:Ljava/util/concurrent/Semaphore;

    .line 42
    return-void
.end method

.method private decorate(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 3
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 63
    new-instance v0, Lcom/google/firebase/concurrent/LimitedConcurrencyExecutor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/concurrent/LimitedConcurrencyExecutor$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/concurrent/LimitedConcurrencyExecutor;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private maybeEnqueueNext()V
    .registers 4

    .line 51
    nop

    :goto_1
    iget-object v0, p0, Lcom/google/firebase/concurrent/LimitedConcurrencyExecutor;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 52
    iget-object v0, p0, Lcom/google/firebase/concurrent/LimitedConcurrencyExecutor;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 53
    .local v0, "next":Ljava/lang/Runnable;
    if-eqz v0, :cond_1d

    .line 54
    iget-object v1, p0, Lcom/google/firebase/concurrent/LimitedConcurrencyExecutor;->delegate:Ljava/util/concurrent/Executor;

    invoke-direct {p0, v0}, Lcom/google/firebase/concurrent/LimitedConcurrencyExecutor;->decorate(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 59
    .end local v0    # "next":Ljava/lang/Runnable;
    goto :goto_1

    .line 56
    .restart local v0    # "next":Ljava/lang/Runnable;
    :cond_1d
    iget-object v1, p0, Lcom/google/firebase/concurrent/LimitedConcurrencyExecutor;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 57
    nop

    .line 60
    .end local v0    # "next":Ljava/lang/Runnable;
    :cond_23
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 46
    iget-object v0, p0, Lcom/google/firebase/concurrent/LimitedConcurrencyExecutor;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 47
    invoke-direct {p0}, Lcom/google/firebase/concurrent/LimitedConcurrencyExecutor;->maybeEnqueueNext()V

    .line 48
    return-void
.end method

.method synthetic lambda$decorate$0$com-google-firebase-concurrent-LimitedConcurrencyExecutor(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 65
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_d

    .line 67
    iget-object v0, p0, Lcom/google/firebase/concurrent/LimitedConcurrencyExecutor;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 68
    invoke-direct {p0}, Lcom/google/firebase/concurrent/LimitedConcurrencyExecutor;->maybeEnqueueNext()V

    .line 69
    nop

    .line 70
    return-void

    .line 67
    :catchall_d
    move-exception v0

    iget-object v1, p0, Lcom/google/firebase/concurrent/LimitedConcurrencyExecutor;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 68
    invoke-direct {p0}, Lcom/google/firebase/concurrent/LimitedConcurrencyExecutor;->maybeEnqueueNext()V

    .line 69
    throw v0
.end method
