.class Lcom/google/firebase/components/LazySet;
.super Ljava/lang/Object;
.source "LazySet.java"

# interfaces
.implements Lcom/google/firebase/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/firebase/inject/Provider<",
        "Ljava/util/Set<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private volatile actualSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile providers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/firebase/inject/Provider<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/firebase/inject/Provider<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 36
    .local p0, "this":Lcom/google/firebase/components/LazySet;, "Lcom/google/firebase/components/LazySet<TT;>;"
    .local p1, "providers":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/firebase/inject/Provider<TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/components/LazySet;->actualSet:Ljava/util/Set;

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/components/LazySet;->providers:Ljava/util/Set;

    .line 38
    iget-object v0, p0, Lcom/google/firebase/components/LazySet;->providers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 39
    return-void
.end method

.method static fromCollection(Ljava/util/Collection;)Lcom/google/firebase/components/LazySet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/firebase/inject/Provider<",
            "*>;>;)",
            "Lcom/google/firebase/components/LazySet<",
            "*>;"
        }
    .end annotation

    .line 43
    .local p0, "providers":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/firebase/inject/Provider<*>;>;"
    move-object v0, p0

    check-cast v0, Ljava/util/Set;

    .line 44
    .local v0, "casted":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/firebase/inject/Provider<Ljava/lang/Object;>;>;"
    new-instance v1, Lcom/google/firebase/components/LazySet;

    invoke-direct {v1, v0}, Lcom/google/firebase/components/LazySet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method private declared-synchronized updateSet()V
    .registers 5

    .local p0, "this":Lcom/google/firebase/components/LazySet;, "Lcom/google/firebase/components/LazySet<TT;>;"
    monitor-enter p0

    .line 69
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/components/LazySet;->providers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/inject/Provider;

    .line 70
    .local v1, "provider":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<TT;>;"
    iget-object v2, p0, Lcom/google/firebase/components/LazySet;->actualSet:Ljava/util/Set;

    invoke-interface {v1}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    nop

    .end local v1    # "provider":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<TT;>;"
    goto :goto_7

    .line 72
    .end local p0    # "this":Lcom/google/firebase/components/LazySet;, "Lcom/google/firebase/components/LazySet<TT;>;"
    :cond_1e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/components/LazySet;->providers:Ljava/util/Set;
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 73
    monitor-exit p0

    return-void

    .line 68
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method declared-synchronized add(Lcom/google/firebase/inject/Provider;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inject/Provider<",
            "TT;>;)V"
        }
    .end annotation

    .local p0, "this":Lcom/google/firebase/components/LazySet;, "Lcom/google/firebase/components/LazySet<TT;>;"
    .local p1, "newProvider":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<TT;>;"
    monitor-enter p0

    .line 61
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/components/LazySet;->actualSet:Ljava/util/Set;

    if-nez v0, :cond_b

    .line 62
    iget-object v0, p0, Lcom/google/firebase/components/LazySet;->providers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 64
    .end local p0    # "this":Lcom/google/firebase/components/LazySet;, "Lcom/google/firebase/components/LazySet<TT;>;"
    :cond_b
    iget-object v0, p0, Lcom/google/firebase/components/LazySet;->actualSet:Ljava/util/Set;

    invoke-interface {p1}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 66
    :goto_14
    monitor-exit p0

    return-void

    .line 60
    .end local p1    # "newProvider":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<TT;>;"
    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 31
    .local p0, "this":Lcom/google/firebase/components/LazySet;, "Lcom/google/firebase/components/LazySet<TT;>;"
    invoke-virtual {p0}, Lcom/google/firebase/components/LazySet;->get()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/google/firebase/components/LazySet;, "Lcom/google/firebase/components/LazySet<TT;>;"
    iget-object v0, p0, Lcom/google/firebase/components/LazySet;->actualSet:Ljava/util/Set;

    if-nez v0, :cond_1c

    .line 50
    monitor-enter p0

    .line 51
    :try_start_5
    iget-object v0, p0, Lcom/google/firebase/components/LazySet;->actualSet:Ljava/util/Set;

    if-nez v0, :cond_17

    .line 52
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/components/LazySet;->actualSet:Ljava/util/Set;

    .line 53
    invoke-direct {p0}, Lcom/google/firebase/components/LazySet;->updateSet()V

    .line 55
    :cond_17
    monitor-exit p0

    goto :goto_1c

    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_19

    throw v0

    .line 57
    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/google/firebase/components/LazySet;->actualSet:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
