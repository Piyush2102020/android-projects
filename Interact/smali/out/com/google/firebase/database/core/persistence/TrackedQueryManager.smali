.class public Lcom/google/firebase/database/core/persistence/TrackedQueryManager;
.super Ljava/lang/Object;
.source "TrackedQueryManager.java"


# static fields
.field private static final HAS_ACTIVE_DEFAULT_PREDICATE:Lcom/google/firebase/database/core/utilities/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/core/utilities/Predicate<",
            "Ljava/util/Map<",
            "Lcom/google/firebase/database/core/view/QueryParams;",
            "Lcom/google/firebase/database/core/persistence/TrackedQuery;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final HAS_DEFAULT_COMPLETE_PREDICATE:Lcom/google/firebase/database/core/utilities/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/core/utilities/Predicate<",
            "Ljava/util/Map<",
            "Lcom/google/firebase/database/core/view/QueryParams;",
            "Lcom/google/firebase/database/core/persistence/TrackedQuery;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final IS_QUERY_PRUNABLE_PREDICATE:Lcom/google/firebase/database/core/utilities/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/core/utilities/Predicate<",
            "Lcom/google/firebase/database/core/persistence/TrackedQuery;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_QUERY_UNPRUNABLE_PREDICATE:Lcom/google/firebase/database/core/utilities/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/core/utilities/Predicate<",
            "Lcom/google/firebase/database/core/persistence/TrackedQuery;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final clock:Lcom/google/firebase/database/core/utilities/Clock;

.field private currentQueryId:J

.field private final logger:Lcom/google/firebase/database/logging/LogWrapper;

.field private final storageLayer:Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;

.field private trackedQueryTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/core/utilities/ImmutableTree<",
            "Ljava/util/Map<",
            "Lcom/google/firebase/database/core/view/QueryParams;",
            "Lcom/google/firebase/database/core/persistence/TrackedQuery;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager$1;

    invoke-direct {v0}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager$1;-><init>()V

    sput-object v0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->HAS_DEFAULT_COMPLETE_PREDICATE:Lcom/google/firebase/database/core/utilities/Predicate;

    .line 48
    new-instance v0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager$2;

    invoke-direct {v0}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager$2;-><init>()V

    sput-object v0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->HAS_ACTIVE_DEFAULT_PREDICATE:Lcom/google/firebase/database/core/utilities/Predicate;

    .line 57
    new-instance v0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager$3;

    invoke-direct {v0}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager$3;-><init>()V

    sput-object v0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->IS_QUERY_PRUNABLE_PREDICATE:Lcom/google/firebase/database/core/utilities/Predicate;

    .line 65
    new-instance v0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager$4;

    invoke-direct {v0}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager$4;-><init>()V

    sput-object v0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->IS_QUERY_UNPRUNABLE_PREDICATE:Lcom/google/firebase/database/core/utilities/Predicate;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;Lcom/google/firebase/database/logging/LogWrapper;Lcom/google/firebase/database/core/utilities/Clock;)V
    .registers 11
    .param p1, "storageLayer"    # Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;
    .param p2, "logger"    # Lcom/google/firebase/database/logging/LogWrapper;
    .param p3, "clock"    # Lcom/google/firebase/database/core/utilities/Clock;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->currentQueryId:J

    .line 99
    iput-object p1, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->storageLayer:Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;

    .line 100
    iput-object p2, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    .line 101
    iput-object p3, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->clock:Lcom/google/firebase/database/core/utilities/Clock;

    .line 102
    new-instance v0, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->trackedQueryTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    .line 104
    invoke-direct {p0}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->resetPreviouslyActiveTrackedQueries()V

    .line 107
    invoke-interface {p1}, Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;->loadTrackedQueries()Ljava/util/List;

    move-result-object v0

    .line 108
    .local v0, "trackedQueries":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/persistence/TrackedQuery;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/core/persistence/TrackedQuery;

    .line 109
    .local v2, "query":Lcom/google/firebase/database/core/persistence/TrackedQuery;
    iget-wide v3, v2, Lcom/google/firebase/database/core/persistence/TrackedQuery;->id:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iget-wide v5, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->currentQueryId:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->currentQueryId:J

    .line 110
    invoke-direct {p0, v2}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->cacheTrackedQuery(Lcom/google/firebase/database/core/persistence/TrackedQuery;)V

    .line 111
    .end local v2    # "query":Lcom/google/firebase/database/core/persistence/TrackedQuery;
    goto :goto_20

    .line 112
    :cond_3d
    return-void
.end method

.method static synthetic access$000()Lcom/google/firebase/database/core/utilities/Predicate;
    .registers 1

    .line 37
    sget-object v0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->IS_QUERY_PRUNABLE_PREDICATE:Lcom/google/firebase/database/core/utilities/Predicate;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firebase/database/core/persistence/TrackedQueryManager;Lcom/google/firebase/database/core/persistence/TrackedQuery;)V
    .registers 2
    .param p0, "x0"    # Lcom/google/firebase/database/core/persistence/TrackedQueryManager;
    .param p1, "x1"    # Lcom/google/firebase/database/core/persistence/TrackedQuery;

    .line 37
    invoke-direct {p0, p1}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->saveTrackedQuery(Lcom/google/firebase/database/core/persistence/TrackedQuery;)V

    return-void
.end method

.method private static assertValidTrackedQuery(Lcom/google/firebase/database/core/view/QuerySpec;)V
    .registers 3
    .param p0, "query"    # Lcom/google/firebase/database/core/view/QuerySpec;

    .line 86
    nop

    .line 87
    invoke-virtual {p0}, Lcom/google/firebase/database/core/view/QuerySpec;->loadsAllData()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/google/firebase/database/core/view/QuerySpec;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    .line 86
    :goto_11
    const-string v1, "Can\'t have tracked non-default query that loads all data"

    invoke-static {v0, v1}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 89
    return-void
.end method

.method private cacheTrackedQuery(Lcom/google/firebase/database/core/persistence/TrackedQuery;)V
    .registers 8
    .param p1, "query"    # Lcom/google/firebase/database/core/persistence/TrackedQuery;

    .line 388
    iget-object v0, p1, Lcom/google/firebase/database/core/persistence/TrackedQuery;->querySpec:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-static {v0}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->assertValidTrackedQuery(Lcom/google/firebase/database/core/view/QuerySpec;)V

    .line 390
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->trackedQueryTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    iget-object v1, p1, Lcom/google/firebase/database/core/persistence/TrackedQuery;->querySpec:Lcom/google/firebase/database/core/view/QuerySpec;

    .line 391
    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->get(Lcom/google/firebase/database/core/Path;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 392
    .local v0, "trackedSet":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/database/core/view/QueryParams;Lcom/google/firebase/database/core/persistence/TrackedQuery;>;"
    if-nez v0, :cond_29

    .line 393
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    .line 394
    iget-object v1, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->trackedQueryTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    iget-object v2, p1, Lcom/google/firebase/database/core/persistence/TrackedQuery;->querySpec:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->set(Lcom/google/firebase/database/core/Path;Ljava/lang/Object;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->trackedQueryTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    .line 398
    :cond_29
    iget-object v1, p1, Lcom/google/firebase/database/core/persistence/TrackedQuery;->querySpec:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/QuerySpec;->getParams()Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/core/persistence/TrackedQuery;

    .line 399
    .local v1, "existing":Lcom/google/firebase/database/core/persistence/TrackedQuery;
    if-eqz v1, :cond_42

    iget-wide v2, v1, Lcom/google/firebase/database/core/persistence/TrackedQuery;->id:J

    iget-wide v4, p1, Lcom/google/firebase/database/core/persistence/TrackedQuery;->id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_40

    goto :goto_42

    :cond_40
    const/4 v2, 0x0

    goto :goto_43

    :cond_42
    :goto_42
    const/4 v2, 0x1

    :goto_43
    invoke-static {v2}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(Z)V

    .line 401
    iget-object v2, p1, Lcom/google/firebase/database/core/persistence/TrackedQuery;->querySpec:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/QuerySpec;->getParams()Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    return-void
.end method

.method private static calculateCountToPrune(Lcom/google/firebase/database/core/persistence/CachePolicy;J)J
    .registers 8
    .param p0, "cachePolicy"    # Lcom/google/firebase/database/core/persistence/CachePolicy;
    .param p1, "prunableCount"    # J

    .line 259
    move-wide v0, p1

    .line 262
    .local v0, "countToKeep":J
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p0}, Lcom/google/firebase/database/core/persistence/CachePolicy;->getPercentOfQueriesToPruneAtOnce()F

    move-result v3

    sub-float/2addr v2, v3

    .line 263
    .local v2, "percentToKeep":F
    long-to-float v3, v0

    mul-float/2addr v3, v2

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-long v0, v3

    .line 266
    invoke-interface {p0}, Lcom/google/firebase/database/core/persistence/CachePolicy;->getMaxNumberOfQueriesToKeep()J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 269
    sub-long v3, p1, v0

    return-wide v3
.end method

.method private filteredQueryIdsAtPath(Lcom/google/firebase/database/core/Path;)Ljava/util/Set;
    .registers 8
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 374
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 376
    .local v0, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->trackedQueryTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v1, p1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->get(Lcom/google/firebase/database/core/Path;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 377
    .local v1, "queries":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/database/core/view/QueryParams;Lcom/google/firebase/database/core/persistence/TrackedQuery;>;"
    if-eqz v1, :cond_35

    .line 378
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/core/persistence/TrackedQuery;

    .line 379
    .local v3, "query":Lcom/google/firebase/database/core/persistence/TrackedQuery;
    iget-object v4, v3, Lcom/google/firebase/database/core/persistence/TrackedQuery;->querySpec:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-virtual {v4}, Lcom/google/firebase/database/core/view/QuerySpec;->loadsAllData()Z

    move-result v4

    if-nez v4, :cond_34

    .line 380
    iget-wide v4, v3, Lcom/google/firebase/database/core/persistence/TrackedQuery;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 382
    .end local v3    # "query":Lcom/google/firebase/database/core/persistence/TrackedQuery;
    :cond_34
    goto :goto_17

    .line 384
    :cond_35
    return-object v0
.end method

.method private getQueriesMatching(Lcom/google/firebase/database/core/utilities/Predicate;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/utilities/Predicate<",
            "Lcom/google/firebase/database/core/persistence/TrackedQuery;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/persistence/TrackedQuery;",
            ">;"
        }
    .end annotation

    .line 410
    .local p1, "predicate":Lcom/google/firebase/database/core/utilities/Predicate;, "Lcom/google/firebase/database/core/utilities/Predicate<Lcom/google/firebase/database/core/persistence/TrackedQuery;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 411
    .local v0, "matching":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/persistence/TrackedQuery;>;"
    iget-object v1, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->trackedQueryTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 412
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/core/Path;Ljava/util/Map<Lcom/google/firebase/database/core/view/QueryParams;Lcom/google/firebase/database/core/persistence/TrackedQuery;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/database/core/persistence/TrackedQuery;

    .line 413
    .local v4, "query":Lcom/google/firebase/database/core/persistence/TrackedQuery;
    invoke-interface {p1, v4}, Lcom/google/firebase/database/core/utilities/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 414
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    .end local v4    # "query":Lcom/google/firebase/database/core/persistence/TrackedQuery;
    :cond_3a
    goto :goto_25

    .line 417
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/core/Path;Ljava/util/Map<Lcom/google/firebase/database/core/view/QueryParams;Lcom/google/firebase/database/core/persistence/TrackedQuery;>;>;"
    :cond_3b
    goto :goto_b

    .line 418
    :cond_3c
    return-object v0
.end method

.method private includedInDefaultCompleteQuery(Lcom/google/firebase/database/core/Path;)Z
    .registers 4
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;

    .line 369
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->trackedQueryTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    sget-object v1, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->HAS_DEFAULT_COMPLETE_PREDICATE:Lcom/google/firebase/database/core/utilities/Predicate;

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->findRootMostMatchingPath(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/Predicate;)Lcom/google/firebase/database/core/Path;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private static normalizeQuery(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/QuerySpec;
    .registers 2
    .param p0, "query"    # Lcom/google/firebase/database/core/view/QuerySpec;

    .line 94
    invoke-virtual {p0}, Lcom/google/firebase/database/core/view/QuerySpec;->loadsAllData()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/core/view/QuerySpec;->defaultQueryAtPath(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v0

    goto :goto_10

    :cond_f
    move-object v0, p0

    :goto_10
    return-object v0
.end method

.method private resetPreviouslyActiveTrackedQueries()V
    .registers 4

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->storageLayer:Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;

    invoke-interface {v0}, Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;->beginTransaction()V

    .line 119
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->storageLayer:Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;

    iget-object v1, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->clock:Lcom/google/firebase/database/core/utilities/Clock;

    invoke-interface {v1}, Lcom/google/firebase/database/core/utilities/Clock;->millis()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;->resetPreviouslyActiveTrackedQueries(J)V

    .line 120
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->storageLayer:Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;

    invoke-interface {v0}, Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;->setTransactionSuccessful()V
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_1c

    .line 122
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->storageLayer:Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;

    invoke-interface {v0}, Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;->endTransaction()V

    .line 123
    nop

    .line 124
    return-void

    .line 122
    :catchall_1c
    move-exception v0

    iget-object v1, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->storageLayer:Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;

    invoke-interface {v1}, Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;->endTransaction()V

    .line 123
    throw v0
.end method

.method private saveTrackedQuery(Lcom/google/firebase/database/core/persistence/TrackedQuery;)V
    .registers 3
    .param p1, "query"    # Lcom/google/firebase/database/core/persistence/TrackedQuery;

    .line 405
    invoke-direct {p0, p1}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->cacheTrackedQuery(Lcom/google/firebase/database/core/persistence/TrackedQuery;)V

    .line 406
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->storageLayer:Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;

    invoke-interface {v0, p1}, Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;->saveTrackedQuery(Lcom/google/firebase/database/core/persistence/TrackedQuery;)V

    .line 407
    return-void
.end method

.method private setQueryActiveFlag(Lcom/google/firebase/database/core/view/QuerySpec;Z)V
    .registers 15
    .param p1, "query"    # Lcom/google/firebase/database/core/view/QuerySpec;
    .param p2, "isActive"    # Z

    .line 154
    invoke-static {p1}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->normalizeQuery(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object p1

    .line 155
    invoke-virtual {p0, p1}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->findTrackedQuery(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/persistence/TrackedQuery;

    move-result-object v8

    .line 158
    .local v8, "trackedQuery":Lcom/google/firebase/database/core/persistence/TrackedQuery;
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->clock:Lcom/google/firebase/database/core/utilities/Clock;

    invoke-interface {v0}, Lcom/google/firebase/database/core/utilities/Clock;->millis()J

    move-result-wide v9

    .line 159
    .local v9, "lastUse":J
    if-eqz v8, :cond_19

    .line 160
    invoke-virtual {v8, v9, v10}, Lcom/google/firebase/database/core/persistence/TrackedQuery;->updateLastUse(J)Lcom/google/firebase/database/core/persistence/TrackedQuery;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/firebase/database/core/persistence/TrackedQuery;->setActiveState(Z)Lcom/google/firebase/database/core/persistence/TrackedQuery;

    move-result-object v0

    .end local v8    # "trackedQuery":Lcom/google/firebase/database/core/persistence/TrackedQuery;
    .local v0, "trackedQuery":Lcom/google/firebase/database/core/persistence/TrackedQuery;
    goto :goto_2f

    .line 162
    .end local v0    # "trackedQuery":Lcom/google/firebase/database/core/persistence/TrackedQuery;
    .restart local v8    # "trackedQuery":Lcom/google/firebase/database/core/persistence/TrackedQuery;
    :cond_19
    const-string v0, "If we\'re setting the query to inactive, we should already be tracking it!"

    invoke-static {p2, v0}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 164
    new-instance v11, Lcom/google/firebase/database/core/persistence/TrackedQuery;

    iget-wide v1, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->currentQueryId:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->currentQueryId:J

    const/4 v6, 0x0

    move-object v0, v11

    move-object v3, p1

    move-wide v4, v9

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/database/core/persistence/TrackedQuery;-><init>(JLcom/google/firebase/database/core/view/QuerySpec;JZZ)V

    .line 168
    .end local v8    # "trackedQuery":Lcom/google/firebase/database/core/persistence/TrackedQuery;
    .restart local v0    # "trackedQuery":Lcom/google/firebase/database/core/persistence/TrackedQuery;
    :goto_2f
    invoke-direct {p0, v0}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->saveTrackedQuery(Lcom/google/firebase/database/core/persistence/TrackedQuery;)V

    .line 169
    return-void
.end method


# virtual methods
.method public countOfPrunableQueries()J
    .registers 3

    .line 331
    sget-object v0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->IS_QUERY_PRUNABLE_PREDICATE:Lcom/google/firebase/database/core/utilities/Predicate;

    invoke-direct {p0, v0}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->getQueriesMatching(Lcom/google/firebase/database/core/utilities/Predicate;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public ensureCompleteTrackedQuery(Lcom/google/firebase/database/core/Path;)V
    .registers 13
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;

    .line 304
    invoke-direct {p0, p1}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->includedInDefaultCompleteQuery(Lcom/google/firebase/database/core/Path;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 308
    invoke-static {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->defaultQueryAtPath(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v0

    .line 309
    .local v0, "querySpec":Lcom/google/firebase/database/core/view/QuerySpec;
    invoke-virtual {p0, v0}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->findTrackedQuery(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/persistence/TrackedQuery;

    move-result-object v9

    .line 310
    .local v9, "trackedQuery":Lcom/google/firebase/database/core/persistence/TrackedQuery;
    if-nez v9, :cond_27

    .line 311
    new-instance v10, Lcom/google/firebase/database/core/persistence/TrackedQuery;

    iget-wide v2, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->currentQueryId:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->currentQueryId:J

    iget-object v1, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->clock:Lcom/google/firebase/database/core/utilities/Clock;

    .line 315
    invoke-interface {v1}, Lcom/google/firebase/database/core/utilities/Clock;->millis()J

    move-result-wide v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, v10

    move-object v4, v0

    invoke-direct/range {v1 .. v8}, Lcom/google/firebase/database/core/persistence/TrackedQuery;-><init>(JLcom/google/firebase/database/core/view/QuerySpec;JZZ)V

    .end local v9    # "trackedQuery":Lcom/google/firebase/database/core/persistence/TrackedQuery;
    .local v1, "trackedQuery":Lcom/google/firebase/database/core/persistence/TrackedQuery;
    goto :goto_34

    .line 319
    .end local v1    # "trackedQuery":Lcom/google/firebase/database/core/persistence/TrackedQuery;
    .restart local v9    # "trackedQuery":Lcom/google/firebase/database/core/persistence/TrackedQuery;
    :cond_27
    iget-boolean v1, v9, Lcom/google/firebase/database/core/persistence/TrackedQuery;->complete:Z

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "This should have been handled above!"

    invoke-static {v1, v2}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 320
    invoke-virtual {v9}, Lcom/google/firebase/database/core/persistence/TrackedQuery;->setComplete()Lcom/google/firebase/database/core/persistence/TrackedQuery;

    move-result-object v1

    .line 322
    .end local v9    # "trackedQuery":Lcom/google/firebase/database/core/persistence/TrackedQuery;
    .restart local v1    # "trackedQuery":Lcom/google/firebase/database/core/persistence/TrackedQuery;
    :goto_34
    invoke-direct {p0, v1}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->saveTrackedQuery(Lcom/google/firebase/database/core/persistence/TrackedQuery;)V

    .line 324
    .end local v0    # "querySpec":Lcom/google/firebase/database/core/view/QuerySpec;
    .end local v1    # "trackedQuery":Lcom/google/firebase/database/core/persistence/TrackedQuery;
    :cond_37
    return-void
.end method

.method public findTrackedQuery(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/persistence/TrackedQuery;
    .registers 4
    .param p1, "query"    # Lcom/google/firebase/database/core/view/QuerySpec;

    .line 127
    invoke-static {p1}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->normalizeQuery(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object p1

    .line 128
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->trackedQueryTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->get(Lcom/google/firebase/database/core/Path;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 129
    .local v0, "set":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/database/core/view/QueryParams;Lcom/google/firebase/database/core/persistence/TrackedQuery;>;"
    if-eqz v0, :cond_1d

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getParams()Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/core/persistence/TrackedQuery;

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    return-object v1
.end method

.method public getKnownCompleteChildren(Lcom/google/firebase/database/core/Path;)Ljava/util/Set;
    .registers 10
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/firebase/database/snapshot/ChildKey;",
            ">;"
        }
    .end annotation

    .line 279
    nop

    .line 280
    invoke-static {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->defaultQueryAtPath(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->isQueryComplete(Lcom/google/firebase/database/core/view/QuerySpec;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 279
    const-string v1, "Path is fully complete."

    invoke-static {v0, v1}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 282
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 284
    .local v0, "completeChildren":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/database/snapshot/ChildKey;>;"
    invoke-direct {p0, p1}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->filteredQueryIdsAtPath(Lcom/google/firebase/database/core/Path;)Ljava/util/Set;

    move-result-object v1

    .line 285
    .local v1, "queryIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_28

    .line 286
    iget-object v2, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->storageLayer:Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;

    invoke-interface {v2, v1}, Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;->loadTrackedQueryKeys(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 291
    :cond_28
    iget-object v2, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->trackedQueryTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v2, p1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->subtree(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getChildren()Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 292
    .local v3, "childEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/utilities/ImmutableTree<Ljava/util/Map<Lcom/google/firebase/database/core/view/QueryParams;Lcom/google/firebase/database/core/persistence/TrackedQuery;>;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/database/snapshot/ChildKey;

    .line 293
    .local v4, "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    .line 294
    .local v5, "childTree":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<Ljava/util/Map<Lcom/google/firebase/database/core/view/QueryParams;Lcom/google/firebase/database/core/persistence/TrackedQuery;>;>;"
    invoke-virtual {v5}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_65

    sget-object v6, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->HAS_DEFAULT_COMPLETE_PREDICATE:Lcom/google/firebase/database/core/utilities/Predicate;

    .line 295
    invoke-virtual {v5}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-interface {v6, v7}, Lcom/google/firebase/database/core/utilities/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_65

    .line 296
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 298
    .end local v3    # "childEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/utilities/ImmutableTree<Ljava/util/Map<Lcom/google/firebase/database/core/view/QueryParams;Lcom/google/firebase/database/core/persistence/TrackedQuery;>;>;>;"
    .end local v4    # "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    .end local v5    # "childTree":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<Ljava/util/Map<Lcom/google/firebase/database/core/view/QueryParams;Lcom/google/firebase/database/core/persistence/TrackedQuery;>;>;"
    :cond_65
    goto :goto_36

    .line 300
    :cond_66
    return-object v0
.end method

.method public hasActiveDefaultQuery(Lcom/google/firebase/database/core/Path;)Z
    .registers 4
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;

    .line 327
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->trackedQueryTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    sget-object v1, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->HAS_ACTIVE_DEFAULT_PREDICATE:Lcom/google/firebase/database/core/utilities/Predicate;

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->rootMostValueMatching(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/Predicate;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isQueryComplete(Lcom/google/firebase/database/core/view/QuerySpec;)Z
    .registers 6
    .param p1, "query"    # Lcom/google/firebase/database/core/view/QuerySpec;

    .line 199
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->includedInDefaultCompleteQuery(Lcom/google/firebase/database/core/Path;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 200
    return v1

    .line 201
    :cond_c
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->loadsAllData()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    .line 203
    return v2

    .line 205
    :cond_14
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->trackedQueryTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->get(Lcom/google/firebase/database/core/Path;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 206
    .local v0, "trackedQueries":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/database/core/view/QueryParams;Lcom/google/firebase/database/core/persistence/TrackedQuery;>;"
    if-eqz v0, :cond_3b

    .line 207
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getParams()Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 208
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getParams()Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/core/persistence/TrackedQuery;

    iget-boolean v3, v3, Lcom/google/firebase/database/core/persistence/TrackedQuery;->complete:Z

    if-eqz v3, :cond_3b

    goto :goto_3c

    :cond_3b
    move v1, v2

    .line 206
    :goto_3c
    return v1
.end method

.method public pruneOldQueries(Lcom/google/firebase/database/core/persistence/CachePolicy;)Lcom/google/firebase/database/core/persistence/PruneForest;
    .registers 11
    .param p1, "cachePolicy"    # Lcom/google/firebase/database/core/persistence/CachePolicy;

    .line 213
    sget-object v0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->IS_QUERY_PRUNABLE_PREDICATE:Lcom/google/firebase/database/core/utilities/Predicate;

    invoke-direct {p0, v0}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->getQueriesMatching(Lcom/google/firebase/database/core/utilities/Predicate;)Ljava/util/List;

    move-result-object v0

    .line 214
    .local v0, "prunable":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/persistence/TrackedQuery;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-static {p1, v1, v2}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->calculateCountToPrune(Lcom/google/firebase/database/core/persistence/CachePolicy;J)J

    move-result-wide v1

    .line 215
    .local v1, "countToPrune":J
    new-instance v3, Lcom/google/firebase/database/core/persistence/PruneForest;

    invoke-direct {v3}, Lcom/google/firebase/database/core/persistence/PruneForest;-><init>()V

    .line 217
    .local v3, "forest":Lcom/google/firebase/database/core/persistence/PruneForest;
    iget-object v4, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v4}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_45

    .line 218
    iget-object v4, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Pruning old queries.  Prunable: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 220
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Count to prune: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    .line 218
    invoke-virtual {v4, v6, v7}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    :cond_45
    new-instance v4, Lcom/google/firebase/database/core/persistence/TrackedQueryManager$6;

    invoke-direct {v4, p0}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager$6;-><init>(Lcom/google/firebase/database/core/persistence/TrackedQueryManager;)V

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 234
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4e
    int-to-long v6, v4

    cmp-long v6, v6, v1

    if-gez v6, :cond_6b

    .line 235
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/database/core/persistence/TrackedQuery;

    .line 236
    .local v6, "toPrune":Lcom/google/firebase/database/core/persistence/TrackedQuery;
    iget-object v7, v6, Lcom/google/firebase/database/core/persistence/TrackedQuery;->querySpec:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-virtual {v7}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/google/firebase/database/core/persistence/PruneForest;->prune(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/persistence/PruneForest;

    move-result-object v3

    .line 237
    iget-object v7, v6, Lcom/google/firebase/database/core/persistence/TrackedQuery;->querySpec:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-virtual {p0, v7}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->removeTrackedQuery(Lcom/google/firebase/database/core/view/QuerySpec;)V

    .line 234
    .end local v6    # "toPrune":Lcom/google/firebase/database/core/persistence/TrackedQuery;
    add-int/lit8 v4, v4, 0x1

    goto :goto_4e

    .line 241
    .end local v4    # "i":I
    :cond_6b
    long-to-int v4, v1

    .restart local v4    # "i":I
    :goto_6c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_85

    .line 242
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/database/core/persistence/TrackedQuery;

    .line 243
    .local v6, "toKeep":Lcom/google/firebase/database/core/persistence/TrackedQuery;
    iget-object v7, v6, Lcom/google/firebase/database/core/persistence/TrackedQuery;->querySpec:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-virtual {v7}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/google/firebase/database/core/persistence/PruneForest;->keep(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/persistence/PruneForest;

    move-result-object v3

    .line 241
    .end local v6    # "toKeep":Lcom/google/firebase/database/core/persistence/TrackedQuery;
    add-int/lit8 v4, v4, 0x1

    goto :goto_6c

    .line 247
    .end local v4    # "i":I
    :cond_85
    sget-object v4, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->IS_QUERY_UNPRUNABLE_PREDICATE:Lcom/google/firebase/database/core/utilities/Predicate;

    invoke-direct {p0, v4}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->getQueriesMatching(Lcom/google/firebase/database/core/utilities/Predicate;)Ljava/util/List;

    move-result-object v4

    .line 248
    .local v4, "unprunable":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/persistence/TrackedQuery;>;"
    iget-object v6, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v6}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v6

    if-eqz v6, :cond_b1

    .line 249
    iget-object v6, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unprunable queries: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v5}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    :cond_b1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_cc

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/database/core/persistence/TrackedQuery;

    .line 252
    .restart local v6    # "toKeep":Lcom/google/firebase/database/core/persistence/TrackedQuery;
    iget-object v7, v6, Lcom/google/firebase/database/core/persistence/TrackedQuery;->querySpec:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-virtual {v7}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/google/firebase/database/core/persistence/PruneForest;->keep(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/persistence/PruneForest;

    move-result-object v3

    .line 253
    .end local v6    # "toKeep":Lcom/google/firebase/database/core/persistence/TrackedQuery;
    goto :goto_b5

    .line 255
    :cond_cc
    return-object v3
.end method

.method public removeTrackedQuery(Lcom/google/firebase/database/core/view/QuerySpec;)V
    .registers 6
    .param p1, "query"    # Lcom/google/firebase/database/core/view/QuerySpec;

    .line 133
    invoke-static {p1}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->normalizeQuery(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object p1

    .line 134
    invoke-virtual {p0, p1}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->findTrackedQuery(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/persistence/TrackedQuery;

    move-result-object v0

    .line 135
    .local v0, "trackedQuery":Lcom/google/firebase/database/core/persistence/TrackedQuery;
    if-eqz v0, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    const-string v2, "Query must exist to be removed."

    invoke-static {v1, v2}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->storageLayer:Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;

    iget-wide v2, v0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->id:J

    invoke-interface {v1, v2, v3}, Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;->deleteTrackedQuery(J)V

    .line 138
    iget-object v1, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->trackedQueryTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->get(Lcom/google/firebase/database/core/Path;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 139
    .local v1, "trackedQueries":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/database/core/view/QueryParams;Lcom/google/firebase/database/core/persistence/TrackedQuery;>;"
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getParams()Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 141
    iget-object v2, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->trackedQueryTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->remove(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v2

    iput-object v2, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->trackedQueryTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    .line 143
    :cond_3e
    return-void
.end method

.method public setQueriesComplete(Lcom/google/firebase/database/core/Path;)V
    .registers 4
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;

    .line 180
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->trackedQueryTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    .line 181
    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->subtree(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/database/core/persistence/TrackedQueryManager$5;

    invoke-direct {v1, p0}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager$5;-><init>(Lcom/google/firebase/database/core/persistence/TrackedQueryManager;)V

    .line 182
    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->foreach(Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;)V

    .line 196
    return-void
.end method

.method public setQueryActive(Lcom/google/firebase/database/core/view/QuerySpec;)V
    .registers 3
    .param p1, "query"    # Lcom/google/firebase/database/core/view/QuerySpec;

    .line 146
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->setQueryActiveFlag(Lcom/google/firebase/database/core/view/QuerySpec;Z)V

    .line 147
    return-void
.end method

.method public setQueryCompleteIfExists(Lcom/google/firebase/database/core/view/QuerySpec;)V
    .registers 4
    .param p1, "query"    # Lcom/google/firebase/database/core/view/QuerySpec;

    .line 172
    invoke-static {p1}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->normalizeQuery(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object p1

    .line 173
    invoke-virtual {p0, p1}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->findTrackedQuery(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/persistence/TrackedQuery;

    move-result-object v0

    .line 174
    .local v0, "trackedQuery":Lcom/google/firebase/database/core/persistence/TrackedQuery;
    if-eqz v0, :cond_15

    iget-boolean v1, v0, Lcom/google/firebase/database/core/persistence/TrackedQuery;->complete:Z

    if-nez v1, :cond_15

    .line 175
    invoke-virtual {v0}, Lcom/google/firebase/database/core/persistence/TrackedQuery;->setComplete()Lcom/google/firebase/database/core/persistence/TrackedQuery;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->saveTrackedQuery(Lcom/google/firebase/database/core/persistence/TrackedQuery;)V

    .line 177
    :cond_15
    return-void
.end method

.method public setQueryInactive(Lcom/google/firebase/database/core/view/QuerySpec;)V
    .registers 3
    .param p1, "query"    # Lcom/google/firebase/database/core/view/QuerySpec;

    .line 150
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->setQueryActiveFlag(Lcom/google/firebase/database/core/view/QuerySpec;Z)V

    .line 151
    return-void
.end method

.method verifyCache()V
    .registers 6

    .line 337
    iget-object v0, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->storageLayer:Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;

    invoke-interface {v0}, Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;->loadTrackedQueries()Ljava/util/List;

    move-result-object v0

    .line 339
    .local v0, "storedTrackedQueries":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/persistence/TrackedQuery;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .local v1, "trackedQueries":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/persistence/TrackedQuery;>;"
    iget-object v2, p0, Lcom/google/firebase/database/core/persistence/TrackedQueryManager;->trackedQueryTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    new-instance v3, Lcom/google/firebase/database/core/persistence/TrackedQueryManager$7;

    invoke-direct {v3, p0, v1}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager$7;-><init>(Lcom/google/firebase/database/core/persistence/TrackedQueryManager;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->foreach(Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;)V

    .line 351
    new-instance v2, Lcom/google/firebase/database/core/persistence/TrackedQueryManager$8;

    invoke-direct {v2, p0}, Lcom/google/firebase/database/core/persistence/TrackedQueryManager$8;-><init>(Lcom/google/firebase/database/core/persistence/TrackedQueryManager;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 360
    nop

    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tracked queries out of sync.  Tracked queries: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Stored queries: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 360
    invoke-static {v2, v3}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 366
    return-void
.end method
