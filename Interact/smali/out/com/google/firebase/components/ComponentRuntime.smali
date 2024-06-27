.class public Lcom/google/firebase/components/ComponentRuntime;
.super Ljava/lang/Object;
.source "ComponentRuntime.java"

# interfaces
.implements Lcom/google/firebase/components/ComponentContainer;
.implements Lcom/google/firebase/dynamicloading/ComponentLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/components/ComponentRuntime$Builder;
    }
.end annotation


# static fields
.field private static final EMPTY_PROVIDER:Lcom/google/firebase/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Provider<",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final componentRegistrarProcessor:Lcom/google/firebase/components/ComponentRegistrarProcessor;

.field private final components:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/firebase/components/Component<",
            "*>;",
            "Lcom/google/firebase/inject/Provider<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final eagerComponentsInitializedWith:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final eventBus:Lcom/google/firebase/components/EventBus;

.field private final lazyInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/firebase/components/Qualified<",
            "*>;",
            "Lcom/google/firebase/inject/Provider<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final lazySetMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/firebase/components/Qualified<",
            "*>;",
            "Lcom/google/firebase/components/LazySet<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final unprocessedRegistrarProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/components/ComponentRegistrar;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$JenbCIFSyDrsXj6dZkV_P-yGdZs()Ljava/util/Set;
    .registers 1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 47
    new-instance v0, Lcom/google/firebase/components/ComponentRuntime$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/google/firebase/components/ComponentRuntime$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Lcom/google/firebase/components/ComponentRuntime;->EMPTY_PROVIDER:Lcom/google/firebase/inject/Provider;

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/Executor;Ljava/lang/Iterable;Ljava/util/Collection;Lcom/google/firebase/components/ComponentRegistrarProcessor;)V
    .registers 12
    .param p1, "defaultEventExecutor"    # Ljava/util/concurrent/Executor;
    .param p4, "componentRegistrarProcessor"    # Lcom/google/firebase/components/ComponentRegistrarProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/Iterable<",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/components/ComponentRegistrar;",
            ">;>;",
            "Ljava/util/Collection<",
            "Lcom/google/firebase/components/Component<",
            "*>;>;",
            "Lcom/google/firebase/components/ComponentRegistrarProcessor;",
            ")V"
        }
    .end annotation

    .line 83
    .local p2, "registrars":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/firebase/inject/Provider<Lcom/google/firebase/components/ComponentRegistrar;>;>;"
    .local p3, "additionalComponents":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/firebase/components/Component<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/components/ComponentRuntime;->components:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/components/ComponentRuntime;->lazyInstanceMap:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/components/ComponentRuntime;->lazySetMap:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/components/ComponentRuntime;->eagerComponentsInitializedWith:Ljava/util/concurrent/atomic/AtomicReference;

    .line 84
    new-instance v0, Lcom/google/firebase/components/EventBus;

    invoke-direct {v0, p1}, Lcom/google/firebase/components/EventBus;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/google/firebase/components/ComponentRuntime;->eventBus:Lcom/google/firebase/components/EventBus;

    .line 85
    iput-object p4, p0, Lcom/google/firebase/components/ComponentRuntime;->componentRegistrarProcessor:Lcom/google/firebase/components/ComponentRegistrarProcessor;

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v1, "componentsToAdd":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/components/Component<*>;>;"
    const-class v2, Lcom/google/firebase/components/EventBus;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Lcom/google/firebase/events/Subscriber;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    const-class v6, Lcom/google/firebase/events/Publisher;

    aput-object v6, v3, v4

    invoke-static {v0, v2, v3}, Lcom/google/firebase/components/Component;->of(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/firebase/components/Component;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    const-class v0, Lcom/google/firebase/dynamicloading/ComponentLoader;

    new-array v2, v5, [Ljava/lang/Class;

    invoke-static {p0, v0, v2}, Lcom/google/firebase/components/Component;->of(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/firebase/components/Component;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_52
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/components/Component;

    .line 92
    .local v2, "additionalComponent":Lcom/google/firebase/components/Component;, "Lcom/google/firebase/components/Component<*>;"
    if-eqz v2, :cond_63

    .line 93
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    .end local v2    # "additionalComponent":Lcom/google/firebase/components/Component;, "Lcom/google/firebase/components/Component<*>;"
    :cond_63
    goto :goto_52

    .line 97
    :cond_64
    invoke-static {p2}, Lcom/google/firebase/components/ComponentRuntime;->iterableToList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/components/ComponentRuntime;->unprocessedRegistrarProviders:Ljava/util/List;

    .line 99
    invoke-direct {p0, v1}, Lcom/google/firebase/components/ComponentRuntime;->discoverComponents(Ljava/util/List;)V

    .line 100
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/Executor;Ljava/lang/Iterable;Ljava/util/Collection;Lcom/google/firebase/components/ComponentRegistrarProcessor;Lcom/google/firebase/components/ComponentRuntime$1;)V
    .registers 6
    .param p1, "x0"    # Ljava/util/concurrent/Executor;
    .param p2, "x1"    # Ljava/lang/Iterable;
    .param p3, "x2"    # Ljava/util/Collection;
    .param p4, "x3"    # Lcom/google/firebase/components/ComponentRegistrarProcessor;
    .param p5, "x4"    # Lcom/google/firebase/components/ComponentRuntime$1;

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/firebase/components/ComponentRuntime;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Iterable;Ljava/util/Collection;Lcom/google/firebase/components/ComponentRegistrarProcessor;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/util/concurrent/Executor;Ljava/lang/Iterable;[Lcom/google/firebase/components/Component;)V
    .registers 7
    .param p1, "defaultEventExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/Iterable<",
            "Lcom/google/firebase/components/ComponentRegistrar;",
            ">;[",
            "Lcom/google/firebase/components/Component<",
            "*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 67
    .local p2, "registrars":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/firebase/components/ComponentRegistrar;>;"
    .local p3, "additionalComponents":[Lcom/google/firebase/components/Component;, "[Lcom/google/firebase/components/Component<*>;"
    nop

    .line 69
    invoke-static {p2}, Lcom/google/firebase/components/ComponentRuntime;->toProviders(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    .line 70
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/components/ComponentRegistrarProcessor;->NOOP:Lcom/google/firebase/components/ComponentRegistrarProcessor;

    .line 67
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/firebase/components/ComponentRuntime;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Iterable;Ljava/util/Collection;Lcom/google/firebase/components/ComponentRegistrarProcessor;)V

    .line 72
    return-void
.end method

.method public static builder(Ljava/util/concurrent/Executor;)Lcom/google/firebase/components/ComponentRuntime$Builder;
    .registers 2
    .param p0, "defaultEventExecutor"    # Ljava/util/concurrent/Executor;

    .line 76
    new-instance v0, Lcom/google/firebase/components/ComponentRuntime$Builder;

    invoke-direct {v0, p0}, Lcom/google/firebase/components/ComponentRuntime$Builder;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method private discoverComponents(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/components/Component<",
            "*>;>;)V"
        }
    .end annotation

    .line 109
    .local p1, "componentsToAdd":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/components/Component<*>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v0, "runAfterDiscovery":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    monitor-enter p0

    .line 111
    :try_start_6
    iget-object v1, p0, Lcom/google/firebase/components/ComponentRuntime;->unprocessedRegistrarProviders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 112
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/firebase/inject/Provider<Lcom/google/firebase/components/ComponentRegistrar;>;>;"
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 113
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/inject/Provider;
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_a1

    .line 115
    .local v2, "provider":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<Lcom/google/firebase/components/ComponentRegistrar;>;"
    :try_start_18
    invoke-interface {v2}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/components/ComponentRegistrar;

    .line 116
    .local v3, "registrar":Lcom/google/firebase/components/ComponentRegistrar;
    if-eqz v3, :cond_2c

    .line 117
    iget-object v4, p0, Lcom/google/firebase/components/ComponentRuntime;->componentRegistrarProcessor:Lcom/google/firebase/components/ComponentRegistrarProcessor;

    invoke-interface {v4, v3}, Lcom/google/firebase/components/ComponentRegistrarProcessor;->processRegistrar(Lcom/google/firebase/components/ComponentRegistrar;)Ljava/util/List;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 118
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_2c
    .catch Lcom/google/firebase/components/InvalidRegistrarException; {:try_start_18 .. :try_end_2c} :catch_2d
    .catchall {:try_start_18 .. :try_end_2c} :catchall_a1

    .line 123
    .end local v3    # "registrar":Lcom/google/firebase/components/ComponentRegistrar;
    :cond_2c
    goto :goto_38

    .line 120
    :catch_2d
    move-exception v3

    .line 121
    .local v3, "ex":Lcom/google/firebase/components/InvalidRegistrarException;
    :try_start_2e
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 122
    const-string v4, "ComponentDiscovery"

    const-string v5, "Invalid component registrar."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    .end local v2    # "provider":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<Lcom/google/firebase/components/ComponentRegistrar;>;"
    .end local v3    # "ex":Lcom/google/firebase/components/InvalidRegistrarException;
    :goto_38
    goto :goto_c

    .line 126
    :cond_39
    iget-object v2, p0, Lcom/google/firebase/components/ComponentRuntime;->components:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 127
    invoke-static {p1}, Lcom/google/firebase/components/CycleDetector;->detect(Ljava/util/List;)V

    goto :goto_56

    .line 129
    :cond_45
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/firebase/components/ComponentRuntime;->components:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 130
    .local v2, "allComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/firebase/components/Component<*>;>;"
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 131
    invoke-static {v2}, Lcom/google/firebase/components/CycleDetector;->detect(Ljava/util/List;)V

    .line 134
    .end local v2    # "allComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/firebase/components/Component<*>;>;"
    :goto_56
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_77

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/components/Component;

    .line 135
    .local v3, "component":Lcom/google/firebase/components/Component;, "Lcom/google/firebase/components/Component<*>;"
    new-instance v4, Lcom/google/firebase/components/Lazy;

    new-instance v5, Lcom/google/firebase/components/ComponentRuntime$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, v3}, Lcom/google/firebase/components/ComponentRuntime$$ExternalSyntheticLambda1;-><init>(Lcom/google/firebase/components/ComponentRuntime;Lcom/google/firebase/components/Component;)V

    invoke-direct {v4, v5}, Lcom/google/firebase/components/Lazy;-><init>(Lcom/google/firebase/inject/Provider;)V

    .line 142
    .local v4, "lazy":Lcom/google/firebase/components/Lazy;, "Lcom/google/firebase/components/Lazy<*>;"
    iget-object v5, p0, Lcom/google/firebase/components/ComponentRuntime;->components:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    nop

    .end local v3    # "component":Lcom/google/firebase/components/Component;, "Lcom/google/firebase/components/Component<*>;"
    .end local v4    # "lazy":Lcom/google/firebase/components/Lazy;, "Lcom/google/firebase/components/Lazy<*>;"
    goto :goto_5a

    .line 145
    :cond_77
    invoke-direct {p0, p1}, Lcom/google/firebase/components/ComponentRuntime;->processInstanceComponents(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 146
    invoke-direct {p0}, Lcom/google/firebase/components/ComponentRuntime;->processSetComponents()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 147
    invoke-direct {p0}, Lcom/google/firebase/components/ComponentRuntime;->processDependencies()V

    .line 148
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/firebase/inject/Provider<Lcom/google/firebase/components/ComponentRegistrar;>;>;"
    monitor-exit p0
    :try_end_89
    .catchall {:try_start_2e .. :try_end_89} :catchall_a1

    .line 149
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 150
    .local v2, "runnable":Ljava/lang/Runnable;
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 151
    .end local v2    # "runnable":Ljava/lang/Runnable;
    goto :goto_8d

    .line 152
    :cond_9d
    invoke-direct {p0}, Lcom/google/firebase/components/ComponentRuntime;->maybeInitializeEagerComponents()V

    .line 153
    return-void

    .line 148
    :catchall_a1
    move-exception v1

    :try_start_a2
    monitor-exit p0
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_a1

    throw v1
.end method

.method private doInitializeEagerComponents(Ljava/util/Map;Z)V
    .registers 8
    .param p2, "isDefaultApp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/firebase/components/Component<",
            "*>;",
            "Lcom/google/firebase/inject/Provider<",
            "*>;>;Z)V"
        }
    .end annotation

    .line 297
    .local p1, "componentsToInitialize":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/components/Component<*>;Lcom/google/firebase/inject/Provider<*>;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 298
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/components/Component<*>;Lcom/google/firebase/inject/Provider<*>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/components/Component;

    .line 299
    .local v2, "component":Lcom/google/firebase/components/Component;, "Lcom/google/firebase/components/Component<*>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/inject/Provider;

    .line 301
    .local v3, "provider":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<*>;"
    invoke-virtual {v2}, Lcom/google/firebase/components/Component;->isAlwaysEager()Z

    move-result v4

    if-nez v4, :cond_2e

    invoke-virtual {v2}, Lcom/google/firebase/components/Component;->isEagerInDefaultApp()Z

    move-result v4

    if-eqz v4, :cond_31

    if-eqz p2, :cond_31

    .line 302
    :cond_2e
    invoke-interface {v3}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    .line 304
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/components/Component<*>;Lcom/google/firebase/inject/Provider<*>;>;"
    .end local v2    # "component":Lcom/google/firebase/components/Component;, "Lcom/google/firebase/components/Component<*>;"
    .end local v3    # "provider":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<*>;"
    :cond_31
    goto :goto_8

    .line 306
    :cond_32
    iget-object v0, p0, Lcom/google/firebase/components/ComponentRuntime;->eventBus:Lcom/google/firebase/components/EventBus;

    invoke-virtual {v0}, Lcom/google/firebase/components/EventBus;->enablePublishingAndFlushPending()V

    .line 307
    return-void
.end method

.method private static iterableToList(Ljava/lang/Iterable;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 172
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 174
    .local v2, "item":Ljava/lang/Object;, "TT;"
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    .end local v2    # "item":Ljava/lang/Object;, "TT;"
    goto :goto_9

    .line 176
    :cond_17
    return-object v0
.end method

.method static synthetic lambda$processInstanceComponents$2(Lcom/google/firebase/components/OptionalProvider;Lcom/google/firebase/inject/Provider;)V
    .registers 2
    .param p0, "deferred"    # Lcom/google/firebase/components/OptionalProvider;
    .param p1, "castedProvider"    # Lcom/google/firebase/inject/Provider;

    .line 196
    invoke-virtual {p0, p1}, Lcom/google/firebase/components/OptionalProvider;->set(Lcom/google/firebase/inject/Provider;)V

    return-void
.end method

.method static synthetic lambda$processSetComponents$3(Lcom/google/firebase/components/LazySet;Lcom/google/firebase/inject/Provider;)V
    .registers 2
    .param p0, "existingSet"    # Lcom/google/firebase/components/LazySet;
    .param p1, "castedProvider"    # Lcom/google/firebase/inject/Provider;

    .line 234
    invoke-virtual {p0, p1}, Lcom/google/firebase/components/LazySet;->add(Lcom/google/firebase/inject/Provider;)V

    return-void
.end method

.method static synthetic lambda$toProviders$1(Lcom/google/firebase/components/ComponentRegistrar;)Lcom/google/firebase/components/ComponentRegistrar;
    .registers 1
    .param p0, "registrar"    # Lcom/google/firebase/components/ComponentRegistrar;

    .line 166
    return-object p0
.end method

.method private maybeInitializeEagerComponents()V
    .registers 4

    .line 156
    iget-object v0, p0, Lcom/google/firebase/components/ComponentRuntime;->eagerComponentsInitializedWith:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 157
    .local v0, "isDefaultApp":Ljava/lang/Boolean;
    if-eqz v0, :cond_13

    .line 158
    iget-object v1, p0, Lcom/google/firebase/components/ComponentRuntime;->components:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/google/firebase/components/ComponentRuntime;->doInitializeEagerComponents(Ljava/util/Map;Z)V

    .line 160
    :cond_13
    return-void
.end method

.method private processDependencies()V
    .registers 8

    .line 328
    iget-object v0, p0, Lcom/google/firebase/components/ComponentRuntime;->components:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_90

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/components/Component;

    .line 329
    .local v1, "component":Lcom/google/firebase/components/Component;, "Lcom/google/firebase/components/Component<*>;"
    invoke-virtual {v1}, Lcom/google/firebase/components/Component;->getDependencies()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/components/Dependency;

    .line 330
    .local v3, "dependency":Lcom/google/firebase/components/Dependency;
    invoke-virtual {v3}, Lcom/google/firebase/components/Dependency;->isSet()Z

    move-result v4

    if-eqz v4, :cond_4e

    iget-object v4, p0, Lcom/google/firebase/components/ComponentRuntime;->lazySetMap:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/firebase/components/Dependency;->getInterface()Lcom/google/firebase/components/Qualified;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4e

    .line 331
    iget-object v4, p0, Lcom/google/firebase/components/ComponentRuntime;->lazySetMap:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/firebase/components/Dependency;->getInterface()Lcom/google/firebase/components/Qualified;

    move-result-object v5

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v6

    invoke-static {v6}, Lcom/google/firebase/components/LazySet;->fromCollection(Ljava/util/Collection;)Lcom/google/firebase/components/LazySet;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8d

    .line 332
    :cond_4e
    iget-object v4, p0, Lcom/google/firebase/components/ComponentRuntime;->lazyInstanceMap:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/firebase/components/Dependency;->getInterface()Lcom/google/firebase/components/Qualified;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8d

    .line 333
    invoke-virtual {v3}, Lcom/google/firebase/components/Dependency;->isRequired()Z

    move-result v4

    if-nez v4, :cond_74

    .line 338
    invoke-virtual {v3}, Lcom/google/firebase/components/Dependency;->isSet()Z

    move-result v4

    if-nez v4, :cond_8d

    .line 339
    iget-object v4, p0, Lcom/google/firebase/components/ComponentRuntime;->lazyInstanceMap:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/firebase/components/Dependency;->getInterface()Lcom/google/firebase/components/Qualified;

    move-result-object v5

    invoke-static {}, Lcom/google/firebase/components/OptionalProvider;->empty()Lcom/google/firebase/components/OptionalProvider;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8d

    .line 334
    :cond_74
    new-instance v0, Lcom/google/firebase/components/MissingDependencyException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    .line 337
    invoke-virtual {v3}, Lcom/google/firebase/components/Dependency;->getInterface()Lcom/google/firebase/components/Qualified;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    .line 335
    const-string v4, "Unsatisfied dependency for component %s: %s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/firebase/components/MissingDependencyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    .end local v3    # "dependency":Lcom/google/firebase/components/Dependency;
    :cond_8d
    :goto_8d
    goto :goto_1e

    .line 343
    .end local v1    # "component":Lcom/google/firebase/components/Component;, "Lcom/google/firebase/components/Component<*>;"
    :cond_8e
    goto/16 :goto_a

    .line 344
    :cond_90
    return-void
.end method

.method private processInstanceComponents(Ljava/util/List;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/components/Component<",
            "*>;>;)",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 180
    .local p1, "componentsToProcess":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/components/Component<*>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v0, "runnables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/components/Component;

    .line 182
    .local v2, "component":Lcom/google/firebase/components/Component;, "Lcom/google/firebase/components/Component<*>;"
    invoke-virtual {v2}, Lcom/google/firebase/components/Component;->isValue()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 183
    goto :goto_9

    .line 186
    :cond_1c
    iget-object v3, p0, Lcom/google/firebase/components/ComponentRuntime;->components:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/inject/Provider;

    .line 187
    .local v3, "provider":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<*>;"
    invoke-virtual {v2}, Lcom/google/firebase/components/Component;->getProvidedInterfaces()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/components/Qualified;

    .line 188
    .local v5, "anInterface":Lcom/google/firebase/components/Qualified;, "Lcom/google/firebase/components/Qualified<*>;"
    iget-object v6, p0, Lcom/google/firebase/components/ComponentRuntime;->lazyInstanceMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_46

    .line 189
    iget-object v6, p0, Lcom/google/firebase/components/ComponentRuntime;->lazyInstanceMap:Ljava/util/Map;

    invoke-interface {v6, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5a

    .line 191
    :cond_46
    iget-object v6, p0, Lcom/google/firebase/components/ComponentRuntime;->lazyInstanceMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/inject/Provider;

    .line 193
    .local v6, "existingProvider":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<*>;"
    move-object v7, v6

    check-cast v7, Lcom/google/firebase/components/OptionalProvider;

    .line 195
    .local v7, "deferred":Lcom/google/firebase/components/OptionalProvider;, "Lcom/google/firebase/components/OptionalProvider<Ljava/lang/Object;>;"
    move-object v8, v3

    .line 196
    .local v8, "castedProvider":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<Ljava/lang/Object;>;"
    new-instance v9, Lcom/google/firebase/components/ComponentRuntime$$ExternalSyntheticLambda0;

    invoke-direct {v9, v7, v8}, Lcom/google/firebase/components/ComponentRuntime$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/components/OptionalProvider;Lcom/google/firebase/inject/Provider;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    .end local v5    # "anInterface":Lcom/google/firebase/components/Qualified;, "Lcom/google/firebase/components/Qualified<*>;"
    .end local v6    # "existingProvider":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<*>;"
    .end local v7    # "deferred":Lcom/google/firebase/components/OptionalProvider;, "Lcom/google/firebase/components/OptionalProvider<Ljava/lang/Object;>;"
    .end local v8    # "castedProvider":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<Ljava/lang/Object;>;"
    :goto_5a
    goto :goto_2c

    .line 199
    .end local v2    # "component":Lcom/google/firebase/components/Component;, "Lcom/google/firebase/components/Component<*>;"
    .end local v3    # "provider":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<*>;"
    :cond_5b
    goto :goto_9

    .line 200
    :cond_5c
    return-object v0
.end method

.method private processSetComponents()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v0, "runnables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 207
    .local v1, "setIndex":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/components/Qualified<*>;Ljava/util/Set<Lcom/google/firebase/inject/Provider<*>;>;>;"
    iget-object v2, p0, Lcom/google/firebase/components/ComponentRuntime;->components:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_60

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 208
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/components/Component<*>;Lcom/google/firebase/inject/Provider<*>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/components/Component;

    .line 211
    .local v4, "component":Lcom/google/firebase/components/Component;, "Lcom/google/firebase/components/Component<*>;"
    invoke-virtual {v4}, Lcom/google/firebase/components/Component;->isValue()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 212
    goto :goto_14

    .line 215
    :cond_2d
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/inject/Provider;

    .line 217
    .local v5, "provider":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<*>;"
    invoke-virtual {v4}, Lcom/google/firebase/components/Component;->getProvidedInterfaces()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/firebase/components/Qualified;

    .line 218
    .local v7, "anInterface":Lcom/google/firebase/components/Qualified;, "Lcom/google/firebase/components/Qualified<*>;"
    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_55

    .line 219
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    :cond_55
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-interface {v8, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 222
    .end local v7    # "anInterface":Lcom/google/firebase/components/Qualified;, "Lcom/google/firebase/components/Qualified<*>;"
    goto :goto_3b

    .line 223
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/components/Component<*>;Lcom/google/firebase/inject/Provider<*>;>;"
    .end local v4    # "component":Lcom/google/firebase/components/Component;, "Lcom/google/firebase/components/Component<*>;"
    .end local v5    # "provider":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<*>;"
    :cond_5f
    goto :goto_14

    .line 225
    :cond_60
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_68
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 226
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/components/Qualified<*>;Ljava/util/Set<Lcom/google/firebase/inject/Provider<*>;>;>;"
    iget-object v4, p0, Lcom/google/firebase/components/ComponentRuntime;->lazySetMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_96

    .line 227
    iget-object v4, p0, Lcom/google/firebase/components/ComponentRuntime;->lazySetMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/components/Qualified;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-static {v6}, Lcom/google/firebase/components/LazySet;->fromCollection(Ljava/util/Collection;)Lcom/google/firebase/components/LazySet;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c2

    .line 230
    :cond_96
    iget-object v4, p0, Lcom/google/firebase/components/ComponentRuntime;->lazySetMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/components/LazySet;

    .line 231
    .local v4, "existingSet":Lcom/google/firebase/components/LazySet;, "Lcom/google/firebase/components/LazySet<Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_ac
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/inject/Provider;

    .line 233
    .local v6, "provider":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<*>;"
    move-object v7, v6

    .line 234
    .local v7, "castedProvider":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<Ljava/lang/Object;>;"
    new-instance v8, Lcom/google/firebase/components/ComponentRuntime$$ExternalSyntheticLambda2;

    invoke-direct {v8, v4, v7}, Lcom/google/firebase/components/ComponentRuntime$$ExternalSyntheticLambda2;-><init>(Lcom/google/firebase/components/LazySet;Lcom/google/firebase/inject/Provider;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    .end local v6    # "provider":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<*>;"
    .end local v7    # "castedProvider":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<Ljava/lang/Object;>;"
    goto :goto_ac

    .line 237
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/components/Qualified<*>;Ljava/util/Set<Lcom/google/firebase/inject/Provider<*>;>;>;"
    .end local v4    # "existingSet":Lcom/google/firebase/components/LazySet;, "Lcom/google/firebase/components/LazySet<Ljava/lang/Object;>;"
    :cond_c2
    :goto_c2
    goto :goto_68

    .line 238
    :cond_c3
    return-object v0
.end method

.method private static toProviders(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/firebase/components/ComponentRegistrar;",
            ">;)",
            "Ljava/lang/Iterable<",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/components/ComponentRegistrar;",
            ">;>;"
        }
    .end annotation

    .line 164
    .local p0, "registrars":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/firebase/components/ComponentRegistrar;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/inject/Provider<Lcom/google/firebase/components/ComponentRegistrar;>;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/components/ComponentRegistrar;

    .line 166
    .local v2, "registrar":Lcom/google/firebase/components/ComponentRegistrar;
    new-instance v3, Lcom/google/firebase/components/ComponentRuntime$$ExternalSyntheticLambda3;

    invoke-direct {v3, v2}, Lcom/google/firebase/components/ComponentRuntime$$ExternalSyntheticLambda3;-><init>(Lcom/google/firebase/components/ComponentRegistrar;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    .end local v2    # "registrar":Lcom/google/firebase/components/ComponentRegistrar;
    goto :goto_9

    .line 168
    :cond_1e
    return-object v0
.end method


# virtual methods
.method public discoverComponents()V
    .registers 2

    .line 311
    monitor-enter p0

    .line 312
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/components/ComponentRuntime;->unprocessedRegistrarProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 313
    monitor-exit p0

    return-void

    .line 315
    :cond_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_15

    .line 316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/firebase/components/ComponentRuntime;->discoverComponents(Ljava/util/List;)V

    .line 317
    return-void

    .line 315
    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method

.method getAllComponentsForTest()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/google/firebase/components/Component<",
            "*>;>;"
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/google/firebase/components/ComponentRuntime;->components:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getDeferred(Lcom/google/firebase/components/Qualified;)Lcom/google/firebase/inject/Deferred;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/components/Qualified<",
            "TT;>;)",
            "Lcom/google/firebase/inject/Deferred<",
            "TT;>;"
        }
    .end annotation

    .line 250
    .local p1, "anInterface":Lcom/google/firebase/components/Qualified;, "Lcom/google/firebase/components/Qualified<TT;>;"
    invoke-virtual {p0, p1}, Lcom/google/firebase/components/ComponentRuntime;->getProvider(Lcom/google/firebase/components/Qualified;)Lcom/google/firebase/inject/Provider;

    move-result-object v0

    .line 251
    .local v0, "provider":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<TT;>;"
    if-nez v0, :cond_b

    .line 252
    invoke-static {}, Lcom/google/firebase/components/OptionalProvider;->empty()Lcom/google/firebase/components/OptionalProvider;

    move-result-object v1

    return-object v1

    .line 254
    :cond_b
    instance-of v1, v0, Lcom/google/firebase/components/OptionalProvider;

    if-eqz v1, :cond_13

    .line 255
    move-object v1, v0

    check-cast v1, Lcom/google/firebase/components/OptionalProvider;

    return-object v1

    .line 257
    :cond_13
    invoke-static {v0}, Lcom/google/firebase/components/OptionalProvider;->of(Lcom/google/firebase/inject/Provider;)Lcom/google/firebase/components/OptionalProvider;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized getProvider(Lcom/google/firebase/components/Qualified;)Lcom/google/firebase/inject/Provider;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/components/Qualified<",
            "TT;>;)",
            "Lcom/google/firebase/inject/Provider<",
            "TT;>;"
        }
    .end annotation

    .local p1, "anInterface":Lcom/google/firebase/components/Qualified;, "Lcom/google/firebase/components/Qualified<TT;>;"
    monitor-enter p0

    .line 244
    :try_start_1
    const-string v0, "Null interface requested."

    invoke-static {p1, v0}, Lcom/google/firebase/components/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 245
    iget-object v0, p0, Lcom/google/firebase/components/ComponentRuntime;->lazyInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inject/Provider;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    .line 243
    .end local p0    # "this":Lcom/google/firebase/components/ComponentRuntime;
    .end local p1    # "anInterface":Lcom/google/firebase/components/Qualified;, "Lcom/google/firebase/components/Qualified<TT;>;"
    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public initializeAllComponentsForTests()V
    .registers 3

    .line 322
    iget-object v0, p0, Lcom/google/firebase/components/ComponentRuntime;->components:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/inject/Provider;

    .line 323
    .local v1, "component":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<*>;"
    invoke-interface {v1}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    .line 324
    .end local v1    # "component":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<*>;"
    goto :goto_a

    .line 325
    :cond_1a
    return-void
.end method

.method public initializeEagerComponents(Z)V
    .registers 5
    .param p1, "isDefaultApp"    # Z

    .line 281
    iget-object v0, p0, Lcom/google/firebase/components/ComponentRuntime;->eagerComponentsInitializedWith:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/api/internal/zap$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 282
    return-void

    .line 289
    :cond_e
    monitor-enter p0

    .line 290
    :try_start_f
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/firebase/components/ComponentRuntime;->components:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 291
    .local v0, "componentsCopy":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/firebase/components/Component<*>;Lcom/google/firebase/inject/Provider<*>;>;"
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_1b

    .line 292
    invoke-direct {p0, v0, p1}, Lcom/google/firebase/components/ComponentRuntime;->doInitializeEagerComponents(Ljava/util/Map;Z)V

    .line 293
    return-void

    .line 291
    .end local v0    # "componentsCopy":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/firebase/components/Component<*>;Lcom/google/firebase/inject/Provider<*>;>;"
    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method synthetic lambda$discoverComponents$0$com-google-firebase-components-ComponentRuntime(Lcom/google/firebase/components/Component;)Ljava/lang/Object;
    .registers 4
    .param p1, "component"    # Lcom/google/firebase/components/Component;

    .line 138
    nop

    .line 139
    invoke-virtual {p1}, Lcom/google/firebase/components/Component;->getFactory()Lcom/google/firebase/components/ComponentFactory;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/components/RestrictedComponentContainer;

    invoke-direct {v1, p1, p0}, Lcom/google/firebase/components/RestrictedComponentContainer;-><init>(Lcom/google/firebase/components/Component;Lcom/google/firebase/components/ComponentContainer;)V

    .line 140
    invoke-interface {v0, v1}, Lcom/google/firebase/components/ComponentFactory;->create(Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;

    move-result-object v0

    .line 138
    return-object v0
.end method

.method public declared-synchronized setOfProvider(Lcom/google/firebase/components/Qualified;)Lcom/google/firebase/inject/Provider;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/components/Qualified<",
            "TT;>;)",
            "Lcom/google/firebase/inject/Provider<",
            "Ljava/util/Set<",
            "TT;>;>;"
        }
    .end annotation

    .local p1, "anInterface":Lcom/google/firebase/components/Qualified;, "Lcom/google/firebase/components/Qualified<TT;>;"
    monitor-enter p0

    .line 263
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/components/ComponentRuntime;->lazySetMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/components/LazySet;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_11

    .line 264
    .local v0, "provider":Lcom/google/firebase/components/LazySet;, "Lcom/google/firebase/components/LazySet<*>;"
    if-eqz v0, :cond_d

    .line 265
    monitor-exit p0

    return-object v0

    .line 267
    :cond_d
    :try_start_d
    sget-object v1, Lcom/google/firebase/components/ComponentRuntime;->EMPTY_PROVIDER:Lcom/google/firebase/inject/Provider;
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_11

    monitor-exit p0

    return-object v1

    .line 262
    .end local v0    # "provider":Lcom/google/firebase/components/LazySet;, "Lcom/google/firebase/components/LazySet<*>;"
    .end local p0    # "this":Lcom/google/firebase/components/ComponentRuntime;
    .end local p1    # "anInterface":Lcom/google/firebase/components/Qualified;, "Lcom/google/firebase/components/Qualified<TT;>;"
    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method
