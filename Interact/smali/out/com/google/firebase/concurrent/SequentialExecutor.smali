.class final Lcom/google/firebase/concurrent/SequentialExecutor;
.super Ljava/lang/Object;
.source "SequentialExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/concurrent/SequentialExecutor$QueueWorker;,
        Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final queue:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final worker:Lcom/google/firebase/concurrent/SequentialExecutor$QueueWorker;

.field private workerRunCount:J

.field private workerRunningState:Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    const-class v0, Lcom/google/firebase/concurrent/SequentialExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/concurrent/SequentialExecutor;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/concurrent/SequentialExecutor;->queue:Ljava/util/Deque;

    .line 67
    sget-object v0, Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;->IDLE:Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    iput-object v0, p0, Lcom/google/firebase/concurrent/SequentialExecutor;->workerRunningState:Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    .line 77
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/firebase/concurrent/SequentialExecutor;->workerRunCount:J

    .line 80
    new-instance v0, Lcom/google/firebase/concurrent/SequentialExecutor$QueueWorker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/concurrent/SequentialExecutor$QueueWorker;-><init>(Lcom/google/firebase/concurrent/SequentialExecutor;Lcom/google/firebase/concurrent/SequentialExecutor$1;)V

    iput-object v0, p0, Lcom/google/firebase/concurrent/SequentialExecutor;->worker:Lcom/google/firebase/concurrent/SequentialExecutor$QueueWorker;

    .line 83
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/firebase/concurrent/SequentialExecutor;->executor:Ljava/util/concurrent/Executor;

    .line 84
    return-void
.end method

.method static synthetic access$100(Lcom/google/firebase/concurrent/SequentialExecutor;)Ljava/util/Deque;
    .registers 2
    .param p0, "x0"    # Lcom/google/firebase/concurrent/SequentialExecutor;

    .line 47
    iget-object v0, p0, Lcom/google/firebase/concurrent/SequentialExecutor;->queue:Ljava/util/Deque;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/firebase/concurrent/SequentialExecutor;)Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;
    .registers 2
    .param p0, "x0"    # Lcom/google/firebase/concurrent/SequentialExecutor;

    .line 47
    iget-object v0, p0, Lcom/google/firebase/concurrent/SequentialExecutor;->workerRunningState:Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/firebase/concurrent/SequentialExecutor;Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;)Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;
    .registers 2
    .param p0, "x0"    # Lcom/google/firebase/concurrent/SequentialExecutor;
    .param p1, "x1"    # Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    .line 47
    iput-object p1, p0, Lcom/google/firebase/concurrent/SequentialExecutor;->workerRunningState:Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    return-object p1
.end method

.method static synthetic access$308(Lcom/google/firebase/concurrent/SequentialExecutor;)J
    .registers 5
    .param p0, "x0"    # Lcom/google/firebase/concurrent/SequentialExecutor;

    .line 47
    iget-wide v0, p0, Lcom/google/firebase/concurrent/SequentialExecutor;->workerRunCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/firebase/concurrent/SequentialExecutor;->workerRunCount:J

    return-wide v0
.end method

.method static synthetic access$400()Ljava/util/logging/Logger;
    .registers 1

    .line 47
    sget-object v0, Lcom/google/firebase/concurrent/SequentialExecutor;->log:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 11
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 94
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lcom/google/firebase/concurrent/SequentialExecutor;->queue:Ljava/util/Deque;

    monitor-enter v0

    .line 100
    :try_start_6
    iget-object v1, p0, Lcom/google/firebase/concurrent/SequentialExecutor;->workerRunningState:Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    sget-object v2, Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;->RUNNING:Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    if-eq v1, v2, :cond_7c

    iget-object v1, p0, Lcom/google/firebase/concurrent/SequentialExecutor;->workerRunningState:Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    sget-object v2, Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;->QUEUED:Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    if-ne v1, v2, :cond_14

    goto/16 :goto_7c

    .line 105
    :cond_14
    iget-wide v1, p0, Lcom/google/firebase/concurrent/SequentialExecutor;->workerRunCount:J

    .line 113
    .local v1, "oldRunCount":J
    new-instance v3, Lcom/google/firebase/concurrent/SequentialExecutor$1;

    invoke-direct {v3, p0, p1}, Lcom/google/firebase/concurrent/SequentialExecutor$1;-><init>(Lcom/google/firebase/concurrent/SequentialExecutor;Ljava/lang/Runnable;)V

    .line 125
    .local v3, "submittedTask":Ljava/lang/Runnable;
    iget-object v4, p0, Lcom/google/firebase/concurrent/SequentialExecutor;->queue:Ljava/util/Deque;

    invoke-interface {v4, v3}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 126
    sget-object v4, Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;->QUEUING:Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    iput-object v4, p0, Lcom/google/firebase/concurrent/SequentialExecutor;->workerRunningState:Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    .line 127
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_6 .. :try_end_25} :catchall_83

    .line 130
    const/4 v0, 0x1

    const/4 v4, 0x0

    :try_start_27
    iget-object v5, p0, Lcom/google/firebase/concurrent/SequentialExecutor;->executor:Ljava/util/concurrent/Executor;

    iget-object v6, p0, Lcom/google/firebase/concurrent/SequentialExecutor;->worker:Lcom/google/firebase/concurrent/SequentialExecutor$QueueWorker;

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2e
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_2e} :catch_55
    .catch Ljava/lang/Error; {:try_start_27 .. :try_end_2e} :catch_53

    .line 143
    nop

    .line 156
    iget-object v5, p0, Lcom/google/firebase/concurrent/SequentialExecutor;->workerRunningState:Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    sget-object v6, Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;->QUEUING:Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    if-eq v5, v6, :cond_36

    goto :goto_37

    :cond_36
    move v0, v4

    :goto_37
    move v5, v0

    .line 157
    .local v5, "alreadyMarkedQueued":Z
    if-eqz v5, :cond_3b

    .line 158
    return-void

    .line 160
    :cond_3b
    iget-object v6, p0, Lcom/google/firebase/concurrent/SequentialExecutor;->queue:Ljava/util/Deque;

    monitor-enter v6

    .line 161
    :try_start_3e
    iget-wide v7, p0, Lcom/google/firebase/concurrent/SequentialExecutor;->workerRunCount:J

    cmp-long v0, v7, v1

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/google/firebase/concurrent/SequentialExecutor;->workerRunningState:Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    sget-object v4, Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;->QUEUING:Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    if-ne v0, v4, :cond_4e

    .line 162
    sget-object v0, Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;->QUEUED:Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    iput-object v0, p0, Lcom/google/firebase/concurrent/SequentialExecutor;->workerRunningState:Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    .line 164
    :cond_4e
    monitor-exit v6

    .line 165
    return-void

    .line 164
    :catchall_50
    move-exception v0

    monitor-exit v6
    :try_end_52
    .catchall {:try_start_3e .. :try_end_52} :catchall_50

    throw v0

    .line 131
    .end local v5    # "alreadyMarkedQueued":Z
    :catch_53
    move-exception v5

    goto :goto_56

    :catch_55
    move-exception v5

    .line 132
    .local v5, "t":Ljava/lang/Throwable;
    :goto_56
    iget-object v6, p0, Lcom/google/firebase/concurrent/SequentialExecutor;->queue:Ljava/util/Deque;

    monitor-enter v6

    .line 133
    :try_start_59
    iget-object v7, p0, Lcom/google/firebase/concurrent/SequentialExecutor;->workerRunningState:Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    sget-object v8, Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;->IDLE:Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    if-eq v7, v8, :cond_65

    iget-object v7, p0, Lcom/google/firebase/concurrent/SequentialExecutor;->workerRunningState:Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    sget-object v8, Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;->QUEUING:Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    if-ne v7, v8, :cond_6e

    :cond_65
    iget-object v7, p0, Lcom/google/firebase/concurrent/SequentialExecutor;->queue:Ljava/util/Deque;

    .line 135
    invoke-interface {v7, v3}, Ljava/util/Deque;->removeLastOccurrence(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6e

    goto :goto_6f

    :cond_6e
    move v0, v4

    .line 138
    .local v0, "removed":Z
    :goto_6f
    instance-of v4, v5, Ljava/util/concurrent/RejectedExecutionException;

    if-eqz v4, :cond_77

    if-nez v0, :cond_77

    .line 141
    .end local v0    # "removed":Z
    monitor-exit v6

    .line 142
    return-void

    .line 139
    .restart local v0    # "removed":Z
    :cond_77
    nop

    .end local v1    # "oldRunCount":J
    .end local v3    # "submittedTask":Ljava/lang/Runnable;
    .end local p1    # "task":Ljava/lang/Runnable;
    throw v5

    .line 141
    .end local v0    # "removed":Z
    .restart local v1    # "oldRunCount":J
    .restart local v3    # "submittedTask":Ljava/lang/Runnable;
    .restart local p1    # "task":Ljava/lang/Runnable;
    :catchall_79
    move-exception v0

    monitor-exit v6
    :try_end_7b
    .catchall {:try_start_59 .. :try_end_7b} :catchall_79

    throw v0

    .line 101
    .end local v1    # "oldRunCount":J
    .end local v3    # "submittedTask":Ljava/lang/Runnable;
    .end local v5    # "t":Ljava/lang/Throwable;
    :cond_7c
    :goto_7c
    :try_start_7c
    iget-object v1, p0, Lcom/google/firebase/concurrent/SequentialExecutor;->queue:Ljava/util/Deque;

    invoke-interface {v1, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 102
    monitor-exit v0

    return-void

    .line 127
    :catchall_83
    move-exception v1

    monitor-exit v0
    :try_end_85
    .catchall {:try_start_7c .. :try_end_85} :catchall_83

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SequentialExecutor@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/concurrent/SequentialExecutor;->executor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
