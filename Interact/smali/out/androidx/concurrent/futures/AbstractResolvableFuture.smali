.class public abstract Landroidx/concurrent/futures/AbstractResolvableFuture;
.super Ljava/lang/Object;
.source "AbstractResolvableFuture.java"

# interfaces
.implements Lcom/google/common/util/concurrent/ListenableFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/concurrent/futures/AbstractResolvableFuture$SynchronizedHelper;,
        Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper;,
        Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;,
        Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;,
        Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;,
        Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;,
        Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;,
        Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/ListenableFuture<",
        "TV;>;"
    }
.end annotation


# static fields
.field static final ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

.field static final GENERATE_CANCELLATION_CAUSES:Z

.field private static final NULL:Ljava/lang/Object;

.field private static final SPIN_THRESHOLD_NANOS:J = 0x3e8L

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field volatile listeners:Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

.field volatile value:Ljava/lang/Object;

.field volatile waiters:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 64
    nop

    .line 66
    const-string v0, "guava.concurrent.generate_cancellation_cause"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->GENERATE_CANCELLATION_CAUSES:Z

    .line 69
    const-class v0, Landroidx/concurrent/futures/AbstractResolvableFuture;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture;->log:Ljava/util/logging/Logger;

    .line 80
    const/4 v1, 0x0

    .line 85
    .local v1, "thrownAtomicReferenceFieldUpdaterFailure":Ljava/lang/Throwable;
    :try_start_1c
    new-instance v8, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper;

    const-class v2, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    const-class v3, Ljava/lang/Thread;

    const-string/jumbo v4, "thread"

    .line 87
    invoke-static {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    const-class v2, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    const-class v4, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    const-string v5, "next"

    .line 88
    invoke-static {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    const-class v2, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    const-string/jumbo v5, "waiters"

    .line 89
    invoke-static {v0, v2, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v5

    const-class v2, Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

    const-string v6, "listeners"

    .line 90
    invoke-static {v0, v2, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v6

    const-class v2, Ljava/lang/Object;

    const-string/jumbo v7, "value"

    .line 94
    invoke-static {v0, v2, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_51
    .catchall {:try_start_1c .. :try_end_51} :catchall_53

    move-object v0, v8

    .line 102
    .local v0, "helper":Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;
    goto :goto_5b

    .line 95
    .end local v0    # "helper":Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;
    :catchall_53
    move-exception v0

    .line 100
    .local v0, "atomicReferenceFieldUpdaterFailure":Ljava/lang/Throwable;
    move-object v1, v0

    .line 101
    new-instance v2, Landroidx/concurrent/futures/AbstractResolvableFuture$SynchronizedHelper;

    invoke-direct {v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$SynchronizedHelper;-><init>()V

    move-object v0, v2

    .line 104
    .local v0, "helper":Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;
    :goto_5b
    sput-object v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    .line 109
    const-class v2, Ljava/util/concurrent/locks/LockSupport;

    .line 113
    .local v2, "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_6a

    .line 114
    sget-object v3, Landroidx/concurrent/futures/AbstractResolvableFuture;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v5, "SafeAtomicHelper is broken!"

    invoke-virtual {v3, v4, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 217
    .end local v0    # "helper":Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;
    .end local v1    # "thrownAtomicReferenceFieldUpdaterFailure":Ljava/lang/Throwable;
    .end local v2    # "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6a
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->NULL:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .line 317
    .local p0, "this":Landroidx/concurrent/futures/AbstractResolvableFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    return-void
.end method

.method private addDoneString(Ljava/lang/StringBuilder;)V
    .registers 6
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .line 1026
    .local p0, "this":Landroidx/concurrent/futures/AbstractResolvableFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture<TV;>;"
    const-string v0, "]"

    :try_start_2
    invoke-static {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    .line 1027
    .local v1, "value":Ljava/lang/Object;, "TV;"
    const-string v2, "SUCCESS, result=["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->userObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_17
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_17} :catch_35
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_17} :catch_2e
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_17} :catch_19

    .line 1034
    nop

    .end local v1    # "value":Ljava/lang/Object;, "TV;"
    goto :goto_48

    .line 1032
    :catch_19
    move-exception v0

    .line 1033
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "UNKNOWN, cause=["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " thrown from get()]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_48

    .line 1030
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_2e
    move-exception v0

    .line 1031
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    const-string v1, "CANCELLED"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v0    # "e":Ljava/util/concurrent/CancellationException;
    goto :goto_47

    .line 1028
    :catch_35
    move-exception v1

    .line 1029
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    const-string v2, "FAILURE, cause=["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1034
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :goto_47
    nop

    .line 1035
    :goto_48
    return-void
.end method

.method private static cancellationExceptionWithCause(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;
    .registers 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 1195
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 1196
    .local v0, "exception":Ljava/util/concurrent/CancellationException;
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1197
    return-object v0
.end method

.method static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 1203
    .local p0, "reference":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_3

    .line 1206
    return-object p0

    .line 1204
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private clearListeners(Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;)Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;
    .registers 5
    .param p1, "onto"    # Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

    .line 963
    .local p0, "this":Landroidx/concurrent/futures/AbstractResolvableFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture<TV;>;"
    nop

    :cond_1
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->listeners:Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

    .line 964
    .local v0, "head":Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;
    sget-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    sget-object v2, Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;->TOMBSTONE:Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

    invoke-virtual {v1, p0, v0, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;->casListeners(Landroidx/concurrent/futures/AbstractResolvableFuture;Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 965
    move-object v1, p1

    .line 966
    .local v1, "reversedList":Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;
    :goto_e
    if-eqz v0, :cond_17

    .line 967
    move-object v2, v0

    .line 968
    .local v2, "tmp":Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;
    iget-object v0, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;->next:Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

    .line 969
    iput-object v1, v2, Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;->next:Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

    .line 970
    move-object v1, v2

    .line 971
    .end local v2    # "tmp":Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;
    goto :goto_e

    .line 972
    :cond_17
    return-object v1
.end method

.method static complete(Landroidx/concurrent/futures/AbstractResolvableFuture;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/concurrent/futures/AbstractResolvableFuture<",
            "*>;)V"
        }
    .end annotation

    .line 871
    .local p0, "future":Landroidx/concurrent/futures/AbstractResolvableFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture<*>;"
    const/4 v0, 0x0

    .line 874
    .local v0, "next":Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;
    :goto_1
    invoke-direct {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->releaseWaiters()V

    .line 880
    invoke-virtual {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->afterDone()V

    .line 882
    invoke-direct {p0, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->clearListeners(Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;)Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

    move-result-object v0

    .line 883
    const/4 p0, 0x0

    .line 884
    :goto_c
    if-eqz v0, :cond_36

    .line 885
    move-object v1, v0

    .line 886
    .local v1, "curr":Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;
    iget-object v0, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;->next:Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

    .line 887
    iget-object v2, v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;->task:Ljava/lang/Runnable;

    .line 888
    .local v2, "task":Ljava/lang/Runnable;
    instance-of v3, v2, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    if-eqz v3, :cond_30

    .line 889
    move-object v3, v2

    check-cast v3, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    .line 896
    .local v3, "setFuture":Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture<*>;"
    iget-object p0, v3, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;->owner:Landroidx/concurrent/futures/AbstractResolvableFuture;

    .line 897
    iget-object v4, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    if-ne v4, v3, :cond_2f

    .line 898
    iget-object v4, v3, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v4}, Landroidx/concurrent/futures/AbstractResolvableFuture;->getFutureValue(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v4

    .line 899
    .local v4, "valueToSet":Ljava/lang/Object;
    sget-object v5, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    invoke-virtual {v5, p0, v3, v4}, Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;->casValue(Landroidx/concurrent/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 900
    goto :goto_1

    .line 904
    .end local v3    # "setFuture":Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture<*>;"
    .end local v4    # "valueToSet":Ljava/lang/Object;
    :cond_2f
    goto :goto_35

    .line 905
    :cond_30
    iget-object v3, v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v2, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture;->executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 907
    .end local v1    # "curr":Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;
    .end local v2    # "task":Ljava/lang/Runnable;
    :goto_35
    goto :goto_c

    .line 910
    :cond_36
    return-void
.end method

.method private static executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 7
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 1056
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    .line 1066
    goto :goto_29

    .line 1057
    :catch_4
    move-exception v0

    .line 1061
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RuntimeException while executing runnable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with executor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1067
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_29
    return-void
.end method

.method private getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 513
    .local p0, "this":Landroidx/concurrent/futures/AbstractResolvableFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture<TV;>;"
    instance-of v0, p1, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    if-nez v0, :cond_1b

    .line 517
    instance-of v0, p1, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;

    if-nez v0, :cond_10

    .line 519
    sget-object v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->NULL:Ljava/lang/Object;

    if-ne p1, v0, :cond_e

    .line 520
    const/4 v0, 0x0

    return-object v0

    .line 523
    :cond_e
    move-object v0, p1

    .line 524
    .local v0, "asV":Ljava/lang/Object;, "TV;"
    return-object v0

    .line 518
    .end local v0    # "asV":Ljava/lang/Object;, "TV;"
    :cond_10
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    move-object v1, p1

    check-cast v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;

    iget-object v1, v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;->exception:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 514
    :cond_1b
    move-object v0, p1

    check-cast v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    iget-object v0, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;->cause:Ljava/lang/Throwable;

    const-string v1, "Task was cancelled."

    invoke-static {v1, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->cancellationExceptionWithCause(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    throw v0
.end method

.method static getFutureValue(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 800
    .local p0, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    instance-of v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 806
    move-object v0, p0

    check-cast v0, Landroidx/concurrent/futures/AbstractResolvableFuture;

    iget-object v0, v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    .line 807
    .local v0, "v":Ljava/lang/Object;
    instance-of v2, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    if-eqz v2, :cond_24

    .line 811
    move-object v2, v0

    check-cast v2, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    .line 812
    .local v2, "c":Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;
    iget-boolean v3, v2, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;->wasInterrupted:Z

    if-eqz v3, :cond_24

    .line 813
    iget-object v3, v2, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;->cause:Ljava/lang/Throwable;

    if-eqz v3, :cond_21

    new-instance v3, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    iget-object v4, v2, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;->cause:Ljava/lang/Throwable;

    invoke-direct {v3, v1, v4}, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_23

    .line 814
    :cond_21
    sget-object v3, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;->CAUSELESS_CANCELLED:Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    :goto_23
    move-object v0, v3

    .line 817
    .end local v2    # "c":Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;
    :cond_24
    return-object v0

    .line 819
    .end local v0    # "v":Ljava/lang/Object;
    :cond_25
    invoke-interface {p0}, Lcom/google/common/util/concurrent/ListenableFuture;->isCancelled()Z

    move-result v0

    .line 821
    .local v0, "wasCancelled":Z
    sget-boolean v2, Landroidx/concurrent/futures/AbstractResolvableFuture;->GENERATE_CANCELLATION_CAUSES:Z

    xor-int/lit8 v2, v2, 0x1

    and-int/2addr v2, v0

    if-eqz v2, :cond_33

    .line 822
    sget-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;->CAUSELESS_CANCELLED:Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    return-object v1

    .line 826
    :cond_33
    :try_start_33
    invoke-static {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v2

    .line 827
    .local v2, "v":Ljava/lang/Object;
    if-nez v2, :cond_3c

    sget-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture;->NULL:Ljava/lang/Object;
    :try_end_3b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_33 .. :try_end_3b} :catch_6c
    .catch Ljava/util/concurrent/CancellationException; {:try_start_33 .. :try_end_3b} :catch_45
    .catchall {:try_start_33 .. :try_end_3b} :catchall_3e

    goto :goto_3d

    :cond_3c
    move-object v1, v2

    :goto_3d
    return-object v1

    .line 840
    .end local v2    # "v":Ljava/lang/Object;
    :catchall_3e
    move-exception v1

    .line 841
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;

    invoke-direct {v2, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object v2

    .line 830
    .end local v1    # "t":Ljava/lang/Throwable;
    :catch_45
    move-exception v2

    .line 831
    .local v2, "cancellation":Ljava/util/concurrent/CancellationException;
    if-nez v0, :cond_66

    .line 832
    new-instance v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get() threw CancellationException, despite reporting isCancelled() == false: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object v1

    .line 839
    :cond_66
    new-instance v3, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    invoke-direct {v3, v1, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    return-object v3

    .line 828
    .end local v2    # "cancellation":Ljava/util/concurrent/CancellationException;
    :catch_6c
    move-exception v1

    .line 829
    .local v1, "exception":Ljava/util/concurrent/ExecutionException;
    new-instance v2, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object v2
.end method

.method static getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 852
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    const/4 v0, 0x0

    .line 856
    .local v0, "interrupted":Z
    :goto_1
    :try_start_1
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_5} :catch_1a
    .catchall {:try_start_1 .. :try_end_5} :catchall_f

    .line 862
    if-eqz v0, :cond_e

    .line 863
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 856
    :cond_e
    return-object v1

    .line 862
    :catchall_f
    move-exception v1

    if-eqz v0, :cond_19

    .line 863
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 865
    :cond_19
    throw v1

    .line 857
    :catch_1a
    move-exception v1

    .line 858
    .local v1, "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .line 859
    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_1
.end method

.method private releaseWaiters()V
    .registers 4

    .line 942
    .local p0, "this":Landroidx/concurrent/futures/AbstractResolvableFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture<TV;>;"
    nop

    :cond_1
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->waiters:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    .line 943
    .local v0, "head":Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;
    sget-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    sget-object v2, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->TOMBSTONE:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    invoke-virtual {v1, p0, v0, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;->casWaiters(Landroidx/concurrent/futures/AbstractResolvableFuture;Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 944
    move-object v1, v0

    .local v1, "currentWaiter":Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;
    :goto_e
    if-eqz v1, :cond_16

    .line 946
    invoke-virtual {v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->unpark()V

    .line 945
    iget-object v1, v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->next:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    goto :goto_e

    .line 948
    .end local v1    # "currentWaiter":Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;
    :cond_16
    return-void
.end method

.method private removeWaiter(Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;)V
    .registers 6
    .param p1, "node"    # Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    .line 171
    .local p0, "this":Landroidx/concurrent/futures/AbstractResolvableFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture<TV;>;"
    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->thread:Ljava/lang/Thread;

    .line 174
    :goto_3
    const/4 v0, 0x0

    .line 175
    .local v0, "pred":Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;
    iget-object v1, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->waiters:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    .line 176
    .local v1, "curr":Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;
    sget-object v2, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->TOMBSTONE:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    if-ne v1, v2, :cond_b

    .line 177
    return-void

    .line 180
    :cond_b
    :goto_b
    if-eqz v1, :cond_29

    .line 181
    iget-object v2, v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->next:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    .line 182
    .local v2, "succ":Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;
    iget-object v3, v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->thread:Ljava/lang/Thread;

    if-eqz v3, :cond_15

    .line 183
    move-object v0, v1

    goto :goto_27

    .line 184
    :cond_15
    if-eqz v0, :cond_1e

    .line 185
    iput-object v2, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->next:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    .line 186
    iget-object v3, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->thread:Ljava/lang/Thread;

    if-nez v3, :cond_27

    .line 188
    goto :goto_3

    .line 190
    :cond_1e
    sget-object v3, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    invoke-virtual {v3, p0, v1, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;->casWaiters(Landroidx/concurrent/futures/AbstractResolvableFuture;Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 192
    goto :goto_3

    .line 194
    :cond_27
    :goto_27
    move-object v1, v2

    goto :goto_b

    .line 198
    .end local v0    # "pred":Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;
    .end local v1    # "curr":Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;
    .end local v2    # "succ":Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;
    :cond_29
    return-void
.end method

.method private userObjectToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 1044
    .local p0, "this":Landroidx/concurrent/futures/AbstractResolvableFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture<TV;>;"
    if-ne p1, p0, :cond_6

    .line 1045
    const-string/jumbo v0, "this future"

    return-object v0

    .line 1047
    :cond_6
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 6
    .param p1, "listener"    # Ljava/lang/Runnable;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 653
    .local p0, "this":Landroidx/concurrent/futures/AbstractResolvableFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture<TV;>;"
    invoke-static {p1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    invoke-static {p2}, Landroidx/concurrent/futures/AbstractResolvableFuture;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->listeners:Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

    .line 656
    .local v0, "oldHead":Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;
    sget-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;->TOMBSTONE:Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

    if-eq v0, v1, :cond_22

    .line 657
    new-instance v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

    invoke-direct {v1, p1, p2}, Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 659
    .local v1, "newNode":Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;
    :cond_11
    iput-object v0, v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;->next:Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

    .line 660
    sget-object v2, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    invoke-virtual {v2, p0, v0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;->casListeners(Landroidx/concurrent/futures/AbstractResolvableFuture;Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 661
    return-void

    .line 663
    :cond_1c
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->listeners:Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

    .line 664
    sget-object v2, Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;->TOMBSTONE:Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

    if-ne v0, v2, :cond_11

    .line 668
    .end local v1    # "newNode":Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;
    :cond_22
    invoke-static {p1, p2}, Landroidx/concurrent/futures/AbstractResolvableFuture;->executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 669
    return-void
.end method

.method protected afterDone()V
    .registers 1

    .line 925
    .local p0, "this":Landroidx/concurrent/futures/AbstractResolvableFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture<TV;>;"
    return-void
.end method

.method public final cancel(Z)Z
    .registers 12
    .param p1, "mayInterruptIfRunning"    # Z

    .line 555
    .local p0, "this":Landroidx/concurrent/futures/AbstractResolvableFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture<TV;>;"
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    .line 556
    .local v0, "localValue":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 557
    .local v1, "rValue":Z
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_9

    move v4, v2

    goto :goto_a

    :cond_9
    move v4, v3

    :goto_a
    instance-of v5, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    or-int/2addr v4, v5

    if-eqz v4, :cond_64

    .line 561
    sget-boolean v4, Landroidx/concurrent/futures/AbstractResolvableFuture;->GENERATE_CANCELLATION_CAUSES:Z

    if-eqz v4, :cond_20

    .line 562
    new-instance v4, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    new-instance v5, Ljava/util/concurrent/CancellationException;

    const-string v6, "Future.cancel() was called."

    invoke-direct {v5, v6}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, p1, v5}, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_27

    .line 565
    :cond_20
    if-eqz p1, :cond_25

    .line 566
    sget-object v4, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;->CAUSELESS_INTERRUPTED:Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    goto :goto_27

    .line 567
    :cond_25
    sget-object v4, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;->CAUSELESS_CANCELLED:Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    :goto_27
    nop

    .line 568
    .local v4, "valueToSet":Ljava/lang/Object;
    move-object v5, p0

    .line 570
    .local v5, "abstractFuture":Landroidx/concurrent/futures/AbstractResolvableFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture<*>;"
    :cond_29
    :goto_29
    sget-object v6, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    invoke-virtual {v6, v5, v0, v4}, Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;->casValue(Landroidx/concurrent/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 571
    const/4 v1, 0x1

    .line 574
    if-eqz p1, :cond_37

    .line 575
    invoke-virtual {v5}, Landroidx/concurrent/futures/AbstractResolvableFuture;->interruptTask()V

    .line 577
    :cond_37
    invoke-static {v5}, Landroidx/concurrent/futures/AbstractResolvableFuture;->complete(Landroidx/concurrent/futures/AbstractResolvableFuture;)V

    .line 578
    instance-of v6, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    if-eqz v6, :cond_64

    .line 582
    move-object v6, v0

    check-cast v6, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    iget-object v6, v6, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 583
    .local v6, "futureToPropagateTo":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    instance-of v7, v6, Landroidx/concurrent/futures/AbstractResolvableFuture;

    if-eqz v7, :cond_59

    .line 592
    move-object v7, v6

    check-cast v7, Landroidx/concurrent/futures/AbstractResolvableFuture;

    .line 594
    .local v7, "trusted":Landroidx/concurrent/futures/AbstractResolvableFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture<*>;"
    iget-object v0, v7, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    .line 595
    if-nez v0, :cond_50

    move v8, v2

    goto :goto_51

    :cond_50
    move v8, v3

    :goto_51
    instance-of v9, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    or-int/2addr v8, v9

    if-eqz v8, :cond_58

    .line 596
    move-object v5, v7

    .line 597
    goto :goto_29

    .line 599
    .end local v7    # "trusted":Landroidx/concurrent/futures/AbstractResolvableFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture<*>;"
    :cond_58
    goto :goto_5c

    .line 601
    :cond_59
    invoke-interface {v6, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 603
    .end local v6    # "futureToPropagateTo":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    :goto_5c
    goto :goto_64

    .line 607
    :cond_5d
    iget-object v0, v5, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    .line 608
    instance-of v6, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    if-nez v6, :cond_29

    .line 613
    nop

    .line 617
    .end local v4    # "valueToSet":Ljava/lang/Object;
    .end local v5    # "abstractFuture":Landroidx/concurrent/futures/AbstractResolvableFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture<*>;"
    :cond_64
    :goto_64
    return v1
.end method

.method public final get()Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 470
    .local p0, "this":Landroidx/concurrent/futures/AbstractResolvableFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture<TV;>;"
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_61

    .line 473
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    .line 474
    .local v0, "localValue":Ljava/lang/Object;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    move v3, v2

    goto :goto_f

    :cond_e
    move v3, v1

    :goto_f
    instance-of v4, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    xor-int/2addr v4, v2

    and-int/2addr v3, v4

    if-eqz v3, :cond_1a

    .line 475
    invoke-direct {p0, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 477
    :cond_1a
    iget-object v3, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->waiters:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    .line 478
    .local v3, "oldHead":Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;
    sget-object v4, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->TOMBSTONE:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    if-eq v3, v4, :cond_5a

    .line 479
    new-instance v4, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    invoke-direct {v4}, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;-><init>()V

    .line 481
    .local v4, "node":Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;
    :cond_25
    invoke-virtual {v4, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->setNext(Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;)V

    .line 482
    sget-object v5, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    invoke-virtual {v5, p0, v3, v4}, Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;->casWaiters(Landroidx/concurrent/futures/AbstractResolvableFuture;Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 485
    :cond_30
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 488
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-nez v5, :cond_4b

    .line 495
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    .line 496
    if-eqz v0, :cond_3f

    move v5, v2

    goto :goto_40

    :cond_3f
    move v5, v1

    :goto_40
    instance-of v6, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    xor-int/2addr v6, v2

    and-int/2addr v5, v6

    if-eqz v5, :cond_30

    .line 497
    invoke-direct {p0, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 489
    :cond_4b
    invoke-direct {p0, v4}, Landroidx/concurrent/futures/AbstractResolvableFuture;->removeWaiter(Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;)V

    .line 490
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 501
    :cond_54
    iget-object v3, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->waiters:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    .line 502
    sget-object v5, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->TOMBSTONE:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    if-ne v3, v5, :cond_25

    .line 506
    .end local v4    # "node":Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;
    :cond_5a
    iget-object v1, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    invoke-direct {p0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 471
    .end local v0    # "localValue":Ljava/lang/Object;
    .end local v3    # "oldHead":Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;
    :cond_61
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 32
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 359
    .local p0, "this":Landroidx/concurrent/futures/AbstractResolvableFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture<TV;>;"
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 360
    .local v4, "timeoutNanos":J
    move-wide v6, v4

    .line 361
    .local v6, "remainingNanos":J
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v8

    if-nez v8, :cond_1ee

    .line 364
    iget-object v8, v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    .line 365
    .local v8, "localValue":Ljava/lang/Object;
    const/4 v10, 0x1

    if-eqz v8, :cond_18

    move v11, v10

    goto :goto_19

    :cond_18
    const/4 v11, 0x0

    :goto_19
    instance-of v12, v8, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    xor-int/2addr v12, v10

    and-int/2addr v11, v12

    if-eqz v11, :cond_24

    .line 366
    invoke-direct {v0, v8}, Landroidx/concurrent/futures/AbstractResolvableFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    return-object v9

    .line 369
    :cond_24
    const-wide/16 v11, 0x0

    cmp-long v13, v6, v11

    if-lez v13, :cond_30

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    add-long/2addr v13, v6

    goto :goto_31

    :cond_30
    move-wide v13, v11

    .line 371
    .local v13, "endNanos":J
    :goto_31
    const-wide/16 v15, 0x3e8

    cmp-long v17, v6, v15

    if-ltz v17, :cond_95

    .line 372
    iget-object v9, v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->waiters:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    .line 373
    .local v9, "oldHead":Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;
    sget-object v11, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->TOMBSTONE:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    if-eq v9, v11, :cond_8e

    .line 374
    new-instance v11, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    invoke-direct {v11}, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;-><init>()V

    .line 376
    .local v11, "node":Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;
    :goto_42
    invoke-virtual {v11, v9}, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->setNext(Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;)V

    .line 377
    sget-object v12, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    invoke-virtual {v12, v0, v9, v11}, Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;->casWaiters(Landroidx/concurrent/futures/AbstractResolvableFuture;Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;)Z

    move-result v12

    if-eqz v12, :cond_84

    .line 379
    :goto_4d
    invoke-static {v0, v6, v7}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 382
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v12

    if-nez v12, :cond_7b

    .line 389
    iget-object v8, v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    .line 390
    if-eqz v8, :cond_5c

    move v12, v10

    goto :goto_5d

    :cond_5c
    const/4 v12, 0x0

    :goto_5d
    instance-of v15, v8, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    xor-int/2addr v15, v10

    and-int/2addr v12, v15

    if-eqz v12, :cond_68

    .line 391
    invoke-direct {v0, v8}, Landroidx/concurrent/futures/AbstractResolvableFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    return-object v10

    .line 395
    :cond_68
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v15

    sub-long v6, v13, v15

    .line 396
    const-wide/16 v15, 0x3e8

    cmp-long v12, v6, v15

    if-gez v12, :cond_78

    .line 399
    invoke-direct {v0, v11}, Landroidx/concurrent/futures/AbstractResolvableFuture;->removeWaiter(Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;)V

    .line 400
    goto :goto_95

    .line 396
    :cond_78
    const-wide/16 v15, 0x3e8

    goto :goto_4d

    .line 383
    :cond_7b
    invoke-direct {v0, v11}, Landroidx/concurrent/futures/AbstractResolvableFuture;->removeWaiter(Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;)V

    .line 384
    new-instance v10, Ljava/lang/InterruptedException;

    invoke-direct {v10}, Ljava/lang/InterruptedException;-><init>()V

    throw v10

    .line 404
    :cond_84
    iget-object v9, v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->waiters:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    .line 405
    sget-object v12, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->TOMBSTONE:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    if-ne v9, v12, :cond_8b

    goto :goto_8e

    :cond_8b
    const-wide/16 v15, 0x3e8

    goto :goto_42

    .line 409
    .end local v11    # "node":Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;
    :cond_8e
    :goto_8e
    iget-object v10, v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    invoke-direct {v0, v10}, Landroidx/concurrent/futures/AbstractResolvableFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    return-object v10

    .line 413
    .end local v9    # "oldHead":Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;
    :cond_95
    :goto_95
    const-wide/16 v11, 0x0

    cmp-long v9, v6, v11

    if-lez v9, :cond_c0

    .line 414
    iget-object v8, v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    .line 415
    if-eqz v8, :cond_a1

    move v9, v10

    goto :goto_a2

    :cond_a1
    const/4 v9, 0x0

    :goto_a2
    instance-of v11, v8, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    xor-int/2addr v11, v10

    and-int/2addr v9, v11

    if-eqz v9, :cond_ad

    .line 416
    invoke-direct {v0, v8}, Landroidx/concurrent/futures/AbstractResolvableFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    return-object v9

    .line 418
    :cond_ad
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v9

    if-nez v9, :cond_ba

    .line 421
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    sub-long v6, v13, v11

    goto :goto_95

    .line 419
    :cond_ba
    new-instance v9, Ljava/lang/InterruptedException;

    invoke-direct {v9}, Ljava/lang/InterruptedException;-><init>()V

    throw v9

    .line 424
    :cond_c0
    invoke-virtual/range {p0 .. p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->toString()Ljava/lang/String;

    move-result-object v9

    .line 425
    .local v9, "futureToString":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v11, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    .line 426
    .local v11, "unitString":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Waited "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, " "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v10, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, "message":Ljava/lang/String;
    const-wide/16 v20, 0x3e8

    add-long v22, v6, v20

    const-wide/16 v18, 0x0

    cmp-long v10, v22, v18

    if-gez v10, :cond_1ae

    .line 431
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " (plus "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 432
    neg-long v1, v6

    .line 433
    .local v1, "overWaitNanos":J
    sget-object v10, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v22, v4

    .end local v4    # "timeoutNanos":J
    .local v22, "timeoutNanos":J
    invoke-virtual {v3, v1, v2, v10}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    .line 434
    .local v4, "overWaitUnits":J
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v24

    move-wide/from16 v26, v6

    .end local v6    # "remainingNanos":J
    .local v26, "remainingNanos":J
    sub-long v6, v1, v24

    .line 435
    .local v6, "overWaitLeftoverNanos":J
    const-wide/16 v18, 0x0

    cmp-long v10, v4, v18

    if-eqz v10, :cond_133

    const-wide/16 v20, 0x3e8

    cmp-long v10, v6, v20

    if-lez v10, :cond_130

    goto :goto_133

    :cond_130
    const/16 v16, 0x0

    goto :goto_135

    :cond_133
    :goto_133
    const/16 v16, 0x1

    :goto_135
    move/from16 v10, v16

    .line 437
    .local v10, "shouldShowExtraNanos":Z
    const-wide/16 v16, 0x0

    cmp-long v12, v4, v16

    if-lez v12, :cond_181

    .line 438
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 439
    if-eqz v10, :cond_16e

    .line 440
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v16, v0

    .end local v0    # "message":Ljava/lang/String;
    .local v16, "message":Ljava/lang/String;
    const-string v0, ","

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v16    # "message":Ljava/lang/String;
    .restart local v0    # "message":Ljava/lang/String;
    goto :goto_170

    .line 439
    :cond_16e
    move-object/from16 v16, v0

    .line 442
    :goto_170
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 444
    :cond_181
    if-eqz v10, :cond_19a

    .line 445
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, " nanoseconds "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 448
    :cond_19a
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, "delay)"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b2

    .line 429
    .end local v1    # "overWaitNanos":J
    .end local v10    # "shouldShowExtraNanos":Z
    .end local v22    # "timeoutNanos":J
    .end local v26    # "remainingNanos":J
    .local v4, "timeoutNanos":J
    .local v6, "remainingNanos":J
    :cond_1ae
    move-wide/from16 v22, v4

    move-wide/from16 v26, v6

    .line 453
    .end local v4    # "timeoutNanos":J
    .end local v6    # "remainingNanos":J
    .restart local v22    # "timeoutNanos":J
    .restart local v26    # "remainingNanos":J
    :goto_1b2
    invoke-virtual/range {p0 .. p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1d1

    .line 454
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " but future completed as timeout expired"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 456
    :cond_1d1
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 362
    .end local v0    # "message":Ljava/lang/String;
    .end local v8    # "localValue":Ljava/lang/Object;
    .end local v9    # "futureToString":Ljava/lang/String;
    .end local v11    # "unitString":Ljava/lang/String;
    .end local v13    # "endNanos":J
    .end local v22    # "timeoutNanos":J
    .end local v26    # "remainingNanos":J
    .restart local v4    # "timeoutNanos":J
    .restart local v6    # "remainingNanos":J
    :cond_1ee
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method protected interruptTask()V
    .registers 1

    .line 633
    .local p0, "this":Landroidx/concurrent/futures/AbstractResolvableFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture<TV;>;"
    return-void
.end method

.method public final isCancelled()Z
    .registers 3

    .line 536
    .local p0, "this":Landroidx/concurrent/futures/AbstractResolvableFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture<TV;>;"
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    .line 537
    .local v0, "localValue":Ljava/lang/Object;
    instance-of v1, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    return v1
.end method

.method public final isDone()Z
    .registers 5

    .line 530
    .local p0, "this":Landroidx/concurrent/futures/AbstractResolvableFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture<TV;>;"
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    .line 531
    .local v0, "localValue":Ljava/lang/Object;
    const/4 v1, 0x1

    if-eqz v0, :cond_7

    move v2, v1

    goto :goto_8

    :cond_7
    const/4 v2, 0x0

    :goto_8
    instance-of v3, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    xor-int/2addr v1, v3

    and-int/2addr v1, v2

    return v1
.end method

.method final maybePropagateCancellationTo(Ljava/util/concurrent/Future;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    .line 933
    .local p0, "this":Landroidx/concurrent/futures/AbstractResolvableFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture<TV;>;"
    .local p1, "related":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->isCancelled()Z

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_13

    .line 934
    invoke-virtual {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->wasInterrupted()Z

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 936
    :cond_13
    return-void
.end method

.method protected pendingToString()Ljava/lang/String;
    .registers 5

    .line 1013
    .local p0, "this":Landroidx/concurrent/futures/AbstractResolvableFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture<TV;>;"
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    .line 1014
    .local v0, "localValue":Ljava/lang/Object;
    instance-of v1, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    if-eqz v1, :cond_29

    .line 1015
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFuture=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    iget-object v2, v2, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {p0, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture;->userObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1016
    :cond_29
    instance-of v1, p0, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_50

    .line 1017
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remaining delay=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Ljava/util/concurrent/ScheduledFuture;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1018
    invoke-interface {v2, v3}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1017
    return-object v1

    .line 1021
    :cond_50
    const/4 v1, 0x0

    return-object v1
.end method

.method protected set(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 685
    .local p0, "this":Landroidx/concurrent/futures/AbstractResolvableFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_5

    sget-object v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->NULL:Ljava/lang/Object;

    goto :goto_6

    :cond_5
    move-object v0, p1

    .line 686
    .local v0, "valueToSet":Ljava/lang/Object;
    :goto_6
    sget-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;->casValue(Landroidx/concurrent/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 687
    invoke-static {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->complete(Landroidx/concurrent/futures/AbstractResolvableFuture;)V

    .line 688
    const/4 v1, 0x1

    return v1

    .line 690
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method protected setException(Ljava/lang/Throwable;)Z
    .registers 5
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 710
    .local p0, "this":Landroidx/concurrent/futures/AbstractResolvableFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture<TV;>;"
    new-instance v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;

    invoke-static {p1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 711
    .local v0, "valueToSet":Ljava/lang/Object;
    sget-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;->casValue(Landroidx/concurrent/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 712
    invoke-static {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->complete(Landroidx/concurrent/futures/AbstractResolvableFuture;)V

    .line 713
    const/4 v1, 0x1

    return v1

    .line 715
    :cond_19
    const/4 v1, 0x0

    return v1
.end method

.method protected setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 746
    .local p0, "this":Landroidx/concurrent/futures/AbstractResolvableFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture<TV;>;"
    .local p1, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    invoke-static {p1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    .line 748
    .local v0, "localValue":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_47

    .line 749
    invoke-interface {p1}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_21

    .line 750
    invoke-static {p1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->getFutureValue(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v2

    .line 751
    .local v2, "value":Ljava/lang/Object;
    sget-object v5, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    invoke-virtual {v5, p0, v4, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;->casValue(Landroidx/concurrent/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 752
    invoke-static {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->complete(Landroidx/concurrent/futures/AbstractResolvableFuture;)V

    .line 753
    return v3

    .line 755
    :cond_20
    return v1

    .line 757
    .end local v2    # "value":Ljava/lang/Object;
    :cond_21
    new-instance v2, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    invoke-direct {v2, p0, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;-><init>(Landroidx/concurrent/futures/AbstractResolvableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 758
    .local v2, "valueToSet":Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;
    sget-object v5, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    invoke-virtual {v5, p0, v4, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;->casValue(Landroidx/concurrent/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 763
    :try_start_2e
    sget-object v1, Landroidx/concurrent/futures/DirectExecutor;->INSTANCE:Landroidx/concurrent/futures/DirectExecutor;

    invoke-interface {p1, v2, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_34

    .line 778
    goto :goto_44

    .line 764
    :catchall_34
    move-exception v1

    .line 771
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_35
    new-instance v4, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;

    invoke-direct {v4, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;-><init>(Ljava/lang/Throwable;)V
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_3b

    .line 774
    .local v4, "failure":Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;
    goto :goto_3f

    .line 772
    .end local v4    # "failure":Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;
    :catchall_3b
    move-exception v4

    .line 773
    .local v4, "oomMostLikely":Ljava/lang/Throwable;
    sget-object v5, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;->FALLBACK_INSTANCE:Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;

    move-object v4, v5

    .line 777
    .local v4, "failure":Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;
    :goto_3f
    sget-object v5, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    invoke-virtual {v5, p0, v2, v4}, Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;->casValue(Landroidx/concurrent/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 779
    .end local v1    # "t":Ljava/lang/Throwable;
    .end local v4    # "failure":Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;
    :goto_44
    return v3

    .line 781
    :cond_45
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    .line 785
    .end local v2    # "valueToSet":Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;
    :cond_47
    instance-of v2, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    if-eqz v2, :cond_53

    .line 787
    move-object v2, v0

    check-cast v2, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    iget-boolean v2, v2, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;->wasInterrupted:Z

    invoke-interface {p1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 789
    :cond_53
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 978
    .local p0, "this":Landroidx/concurrent/futures/AbstractResolvableFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture<TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 979
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->isCancelled()Z

    move-result v1

    const-string v2, "]"

    if-eqz v1, :cond_21

    .line 980
    const-string v1, "CANCELLED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6e

    .line 981
    :cond_21
    invoke-virtual {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 982
    invoke-direct {p0, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->addDoneString(Ljava/lang/StringBuilder;)V

    goto :goto_6e

    .line 986
    :cond_2b
    :try_start_2b
    invoke-virtual {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->pendingToString()Ljava/lang/String;

    move-result-object v1
    :try_end_2f
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_2f} :catch_30

    .line 991
    .local v1, "pendingDescription":Ljava/lang/String;
    goto :goto_49

    .line 987
    .end local v1    # "pendingDescription":Ljava/lang/String;
    :catch_30
    move-exception v1

    .line 990
    .local v1, "e":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception thrown from implementation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 994
    .local v1, "pendingDescription":Ljava/lang/String;
    :goto_49
    if-eqz v1, :cond_5f

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5f

    .line 995
    const-string v3, "PENDING, info=["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6e

    .line 996
    :cond_5f
    invoke-virtual {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->isDone()Z

    move-result v3

    if-eqz v3, :cond_69

    .line 997
    invoke-direct {p0, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->addDoneString(Ljava/lang/StringBuilder;)V

    goto :goto_6e

    .line 999
    :cond_69
    const-string v3, "PENDING"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    .end local v1    # "pendingDescription":Ljava/lang/String;
    :goto_6e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected final wasInterrupted()Z
    .registers 3

    .line 642
    .local p0, "this":Landroidx/concurrent/futures/AbstractResolvableFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture<TV;>;"
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    .line 643
    .local v0, "localValue":Ljava/lang/Object;
    instance-of v1, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    if-eqz v1, :cond_f

    move-object v1, v0

    check-cast v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    iget-boolean v1, v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;->wasInterrupted:Z

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method
