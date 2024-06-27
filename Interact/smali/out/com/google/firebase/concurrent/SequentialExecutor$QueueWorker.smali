.class final Lcom/google/firebase/concurrent/SequentialExecutor$QueueWorker;
.super Ljava/lang/Object;
.source "SequentialExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/concurrent/SequentialExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueueWorker"
.end annotation


# instance fields
.field task:Ljava/lang/Runnable;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/firebase/concurrent/SequentialExecutor;


# direct methods
.method private constructor <init>(Lcom/google/firebase/concurrent/SequentialExecutor;)V
    .registers 2

    .line 168
    iput-object p1, p0, Lcom/google/firebase/concurrent/SequentialExecutor$QueueWorker;->this$0:Lcom/google/firebase/concurrent/SequentialExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/concurrent/SequentialExecutor;Lcom/google/firebase/concurrent/SequentialExecutor$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/firebase/concurrent/SequentialExecutor;
    .param p2, "x1"    # Lcom/google/firebase/concurrent/SequentialExecutor$1;

    .line 168
    invoke-direct {p0, p1}, Lcom/google/firebase/concurrent/SequentialExecutor$QueueWorker;-><init>(Lcom/google/firebase/concurrent/SequentialExecutor;)V

    return-void
.end method

.method private workOnQueue()V
    .registers 9

    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, "interruptedDuringTask":Z
    const/4 v1, 0x0

    .line 202
    .local v1, "hasSetRunning":Z
    :goto_2
    :try_start_2
    iget-object v2, p0, Lcom/google/firebase/concurrent/SequentialExecutor$QueueWorker;->this$0:Lcom/google/firebase/concurrent/SequentialExecutor;

    invoke-static {v2}, Lcom/google/firebase/concurrent/SequentialExecutor;->access$100(Lcom/google/firebase/concurrent/SequentialExecutor;)Ljava/util/Deque;

    move-result-object v2

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_89

    .line 205
    if-nez v1, :cond_2d

    .line 206
    :try_start_b
    iget-object v3, p0, Lcom/google/firebase/concurrent/SequentialExecutor$QueueWorker;->this$0:Lcom/google/firebase/concurrent/SequentialExecutor;

    invoke-static {v3}, Lcom/google/firebase/concurrent/SequentialExecutor;->access$200(Lcom/google/firebase/concurrent/SequentialExecutor;)Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    move-result-object v3

    sget-object v4, Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;->RUNNING:Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    if-ne v3, v4, :cond_20

    .line 208
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_86

    .line 240
    if-eqz v0, :cond_1f

    .line 241
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 208
    :cond_1f
    return-void

    .line 213
    :cond_20
    :try_start_20
    iget-object v3, p0, Lcom/google/firebase/concurrent/SequentialExecutor$QueueWorker;->this$0:Lcom/google/firebase/concurrent/SequentialExecutor;

    invoke-static {v3}, Lcom/google/firebase/concurrent/SequentialExecutor;->access$308(Lcom/google/firebase/concurrent/SequentialExecutor;)J

    .line 214
    iget-object v3, p0, Lcom/google/firebase/concurrent/SequentialExecutor$QueueWorker;->this$0:Lcom/google/firebase/concurrent/SequentialExecutor;

    sget-object v4, Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;->RUNNING:Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    invoke-static {v3, v4}, Lcom/google/firebase/concurrent/SequentialExecutor;->access$202(Lcom/google/firebase/concurrent/SequentialExecutor;Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;)Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    .line 215
    const/4 v1, 0x1

    .line 218
    :cond_2d
    iget-object v3, p0, Lcom/google/firebase/concurrent/SequentialExecutor$QueueWorker;->this$0:Lcom/google/firebase/concurrent/SequentialExecutor;

    invoke-static {v3}, Lcom/google/firebase/concurrent/SequentialExecutor;->access$100(Lcom/google/firebase/concurrent/SequentialExecutor;)Ljava/util/Deque;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    iput-object v3, p0, Lcom/google/firebase/concurrent/SequentialExecutor$QueueWorker;->task:Ljava/lang/Runnable;

    .line 219
    if-nez v3, :cond_4f

    .line 220
    iget-object v3, p0, Lcom/google/firebase/concurrent/SequentialExecutor$QueueWorker;->this$0:Lcom/google/firebase/concurrent/SequentialExecutor;

    sget-object v4, Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;->IDLE:Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    invoke-static {v3, v4}, Lcom/google/firebase/concurrent/SequentialExecutor;->access$202(Lcom/google/firebase/concurrent/SequentialExecutor;Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;)Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    .line 221
    monitor-exit v2
    :try_end_45
    .catchall {:try_start_20 .. :try_end_45} :catchall_86

    .line 240
    if-eqz v0, :cond_4e

    .line 241
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 221
    :cond_4e
    return-void

    .line 223
    :cond_4f
    :try_start_4f
    monitor-exit v2
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_86

    .line 227
    :try_start_50
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2
    :try_end_54
    .catchall {:try_start_50 .. :try_end_54} :catchall_89

    or-int/2addr v0, v2

    .line 229
    const/4 v2, 0x0

    :try_start_56
    iget-object v3, p0, Lcom/google/firebase/concurrent/SequentialExecutor$QueueWorker;->task:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_5b
    .catch Ljava/lang/RuntimeException; {:try_start_56 .. :try_end_5b} :catch_60
    .catchall {:try_start_56 .. :try_end_5b} :catchall_5e

    .line 233
    :try_start_5b
    iput-object v2, p0, Lcom/google/firebase/concurrent/SequentialExecutor$QueueWorker;->task:Ljava/lang/Runnable;
    :try_end_5d
    .catchall {:try_start_5b .. :try_end_5d} :catchall_89

    .line 234
    :goto_5d
    goto :goto_2

    .line 233
    :catchall_5e
    move-exception v3

    goto :goto_82

    .line 230
    :catch_60
    move-exception v3

    .line 231
    .local v3, "e":Ljava/lang/RuntimeException;
    :try_start_61
    invoke-static {}, Lcom/google/firebase/concurrent/SequentialExecutor;->access$400()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception while executing runnable "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/firebase/concurrent/SequentialExecutor$QueueWorker;->task:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7f
    .catchall {:try_start_61 .. :try_end_7f} :catchall_5e

    .line 233
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :try_start_7f
    iput-object v2, p0, Lcom/google/firebase/concurrent/SequentialExecutor$QueueWorker;->task:Ljava/lang/Runnable;

    goto :goto_5d

    :goto_82
    iput-object v2, p0, Lcom/google/firebase/concurrent/SequentialExecutor$QueueWorker;->task:Ljava/lang/Runnable;

    .line 234
    nop

    .end local v0    # "interruptedDuringTask":Z
    .end local v1    # "hasSetRunning":Z
    throw v3
    :try_end_86
    .catchall {:try_start_7f .. :try_end_86} :catchall_89

    .line 223
    .restart local v0    # "interruptedDuringTask":Z
    .restart local v1    # "hasSetRunning":Z
    :catchall_86
    move-exception v3

    :try_start_87
    monitor-exit v2
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    .end local v0    # "interruptedDuringTask":Z
    .end local v1    # "hasSetRunning":Z
    :try_start_88
    throw v3
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_89

    .line 240
    .restart local v0    # "interruptedDuringTask":Z
    .restart local v1    # "hasSetRunning":Z
    :catchall_89
    move-exception v2

    if-eqz v0, :cond_93

    .line 241
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 243
    :cond_93
    throw v2
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 174
    :try_start_0
    invoke-direct {p0}, Lcom/google/firebase/concurrent/SequentialExecutor$QueueWorker;->workOnQueue()V
    :try_end_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_3} :catch_5

    .line 183
    nop

    .line 184
    return-void

    .line 175
    :catch_5
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/Error;
    iget-object v1, p0, Lcom/google/firebase/concurrent/SequentialExecutor$QueueWorker;->this$0:Lcom/google/firebase/concurrent/SequentialExecutor;

    invoke-static {v1}, Lcom/google/firebase/concurrent/SequentialExecutor;->access$100(Lcom/google/firebase/concurrent/SequentialExecutor;)Ljava/util/Deque;

    move-result-object v1

    monitor-enter v1

    .line 177
    :try_start_d
    iget-object v2, p0, Lcom/google/firebase/concurrent/SequentialExecutor$QueueWorker;->this$0:Lcom/google/firebase/concurrent/SequentialExecutor;

    sget-object v3, Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;->IDLE:Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    invoke-static {v2, v3}, Lcom/google/firebase/concurrent/SequentialExecutor;->access$202(Lcom/google/firebase/concurrent/SequentialExecutor;Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;)Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    .line 178
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_16

    .line 179
    throw v0

    .line 178
    :catchall_16
    move-exception v2

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 249
    iget-object v0, p0, Lcom/google/firebase/concurrent/SequentialExecutor$QueueWorker;->task:Ljava/lang/Runnable;

    .line 250
    .local v0, "currentlyRunning":Ljava/lang/Runnable;
    const-string/jumbo v1, "}"

    if-eqz v0, :cond_1f

    .line 251
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SequentialExecutorWorker{running="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 253
    :cond_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SequentialExecutorWorker{state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/concurrent/SequentialExecutor$QueueWorker;->this$0:Lcom/google/firebase/concurrent/SequentialExecutor;

    invoke-static {v3}, Lcom/google/firebase/concurrent/SequentialExecutor;->access$200(Lcom/google/firebase/concurrent/SequentialExecutor;)Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
