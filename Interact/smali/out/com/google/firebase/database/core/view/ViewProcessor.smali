.class public Lcom/google/firebase/database/core/view/ViewProcessor;
.super Ljava/lang/Object;
.source "ViewProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/database/core/view/ViewProcessor$WriteTreeCompleteChildSource;,
        Lcom/google/firebase/database/core/view/ViewProcessor$ProcessorResult;
    }
.end annotation


# static fields
.field private static NO_COMPLETE_SOURCE:Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;


# instance fields
.field private final filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 674
    new-instance v0, Lcom/google/firebase/database/core/view/ViewProcessor$1;

    invoke-direct {v0}, Lcom/google/firebase/database/core/view/ViewProcessor$1;-><init>()V

    sput-object v0, Lcom/google/firebase/database/core/view/ViewProcessor;->NO_COMPLETE_SOURCE:Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/database/core/view/filter/NodeFilter;)V
    .registers 2
    .param p1, "filter"    # Lcom/google/firebase/database/core/view/filter/NodeFilter;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    .line 47
    return-void
.end method

.method private ackUserWrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/ImmutableTree;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;
    .registers 20
    .param p1, "viewCache"    # Lcom/google/firebase/database/core/view/ViewCache;
    .param p2, "ackPath"    # Lcom/google/firebase/database/core/Path;
    .param p4, "writesCache"    # Lcom/google/firebase/database/core/WriteTreeRef;
    .param p5, "optCompleteCache"    # Lcom/google/firebase/database/snapshot/Node;
    .param p6, "accumulator"    # Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/view/ViewCache;",
            "Lcom/google/firebase/database/core/Path;",
            "Lcom/google/firebase/database/core/utilities/ImmutableTree<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/firebase/database/core/WriteTreeRef;",
            "Lcom/google/firebase/database/snapshot/Node;",
            "Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;",
            ")",
            "Lcom/google/firebase/database/core/view/ViewCache;"
        }
    .end annotation

    .line 539
    .local p3, "affectedTree":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<Ljava/lang/Boolean;>;"
    move-object v8, p2

    move-object/from16 v9, p4

    invoke-virtual {v9, p2}, Lcom/google/firebase/database/core/WriteTreeRef;->shadowingWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 540
    return-object p1

    .line 544
    :cond_a
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->isFiltered()Z

    move-result v10

    .line 548
    .local v10, "filterServerNode":Z
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v11

    .line 549
    .local v11, "serverCache":Lcom/google/firebase/database/core/view/CacheNode;
    invoke-virtual/range {p3 .. p3}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_83

    .line 551
    invoke-virtual {p2}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {v11}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 552
    :cond_28
    invoke-virtual {v11, p2}, Lcom/google/firebase/database/core/view/CacheNode;->isCompleteForPath(Lcom/google/firebase/database/core/Path;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 553
    :cond_2e
    nop

    .line 556
    invoke-virtual {v11}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/firebase/database/snapshot/Node;->getChild(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    .line 553
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move v6, v10

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyServerOverwrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;ZLcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v0

    return-object v0

    .line 561
    :cond_46
    invoke-virtual {p2}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 564
    invoke-static {}, Lcom/google/firebase/database/core/CompoundWrite;->emptyWrite()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    .line 565
    .local v0, "changedChildren":Lcom/google/firebase/database/core/CompoundWrite;
    invoke-virtual {v11}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/firebase/database/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v12, v0

    .end local v0    # "changedChildren":Lcom/google/firebase/database/core/CompoundWrite;
    .local v12, "changedChildren":Lcom/google/firebase/database/core/CompoundWrite;
    :goto_59
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/snapshot/NamedNode;

    .line 566
    .local v0, "child":Lcom/google/firebase/database/snapshot/NamedNode;
    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Lcom/google/firebase/database/core/CompoundWrite;->addWrite(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v12

    .line 567
    .end local v0    # "child":Lcom/google/firebase/database/snapshot/NamedNode;
    goto :goto_59

    .line 568
    :cond_72
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v12

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move v6, v10

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyServerMerge(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;ZLcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v0

    return-object v0

    .line 577
    .end local v12    # "changedChildren":Lcom/google/firebase/database/core/CompoundWrite;
    :cond_82
    return-object p1

    .line 581
    :cond_83
    invoke-static {}, Lcom/google/firebase/database/core/CompoundWrite;->emptyWrite()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    .line 582
    .local v0, "changedChildren":Lcom/google/firebase/database/core/CompoundWrite;
    invoke-virtual/range {p3 .. p3}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v12, v0

    .end local v0    # "changedChildren":Lcom/google/firebase/database/core/CompoundWrite;
    .restart local v12    # "changedChildren":Lcom/google/firebase/database/core/CompoundWrite;
    :goto_8c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 583
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/core/Path;Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/core/Path;

    .line 584
    .local v2, "mergePath":Lcom/google/firebase/database/core/Path;
    invoke-virtual {p2, v2}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v3

    .line 585
    .local v3, "serverCachePath":Lcom/google/firebase/database/core/Path;
    invoke-virtual {v11, v3}, Lcom/google/firebase/database/core/view/CacheNode;->isCompleteForPath(Lcom/google/firebase/database/core/Path;)Z

    move-result v4

    if-eqz v4, :cond_b6

    .line 586
    nop

    .line 587
    invoke-virtual {v11}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/google/firebase/database/snapshot/Node;->getChild(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Lcom/google/firebase/database/core/CompoundWrite;->addWrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v4

    move-object v12, v4

    .line 589
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/core/Path;Ljava/lang/Boolean;>;"
    .end local v2    # "mergePath":Lcom/google/firebase/database/core/Path;
    .end local v3    # "serverCachePath":Lcom/google/firebase/database/core/Path;
    :cond_b6
    goto :goto_8c

    .line 590
    :cond_b7
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v12

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move v6, v10

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyServerMerge(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;ZLcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v0

    return-object v0
.end method

.method private applyServerMerge(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;ZLcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;
    .registers 31
    .param p1, "viewCache"    # Lcom/google/firebase/database/core/view/ViewCache;
    .param p2, "path"    # Lcom/google/firebase/database/core/Path;
    .param p3, "changedChildren"    # Lcom/google/firebase/database/core/CompoundWrite;
    .param p4, "writesCache"    # Lcom/google/firebase/database/core/WriteTreeRef;
    .param p5, "serverCache"    # Lcom/google/firebase/database/snapshot/Node;
    .param p6, "filterServerNode"    # Z
    .param p7, "accumulator"    # Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;

    .line 471
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 472
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v0

    if-nez v0, :cond_19

    .line 473
    return-object p1

    .line 482
    :cond_19
    move-object/from16 v0, p1

    .line 483
    .local v0, "curViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    invoke-virtual/range {p3 .. p3}, Lcom/google/firebase/database/core/CompoundWrite;->rootWrite()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_25

    move v1, v2

    goto :goto_26

    :cond_25
    move v1, v3

    :goto_26
    const-string v4, "Can\'t have a merge that is an overwrite"

    invoke-static {v1, v4}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 485
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 486
    move-object/from16 v1, p3

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    .local v1, "actualMerge":Lcom/google/firebase/database/core/CompoundWrite;
    goto :goto_44

    .line 488
    .end local v1    # "actualMerge":Lcom/google/firebase/database/core/CompoundWrite;
    :cond_38
    invoke-static {}, Lcom/google/firebase/database/core/CompoundWrite;->emptyWrite()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual {v1, v4, v5}, Lcom/google/firebase/database/core/CompoundWrite;->addWrites(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v1

    .line 490
    .restart local v1    # "actualMerge":Lcom/google/firebase/database/core/CompoundWrite;
    :goto_44
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v6

    .line 491
    .local v6, "serverNode":Lcom/google/firebase/database/snapshot/Node;
    invoke-virtual {v1}, Lcom/google/firebase/database/core/CompoundWrite;->childCompoundWrites()Ljava/util/Map;

    move-result-object v7

    .line 492
    .local v7, "childCompoundWrites":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/CompoundWrite;>;"
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_58
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v17, v9

    check-cast v17, Ljava/util/Map$Entry;

    .line 493
    .local v17, "childMerge":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/CompoundWrite;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    move-object v15, v9

    check-cast v15, Lcom/google/firebase/database/snapshot/ChildKey;

    .line 494
    .local v15, "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    invoke-interface {v6, v15}, Lcom/google/firebase/database/snapshot/Node;->hasChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v9

    if-eqz v9, :cond_a0

    .line 495
    invoke-interface {v6, v15}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v14

    .line 496
    .local v14, "serverChild":Lcom/google/firebase/database/snapshot/Node;
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v9, v14}, Lcom/google/firebase/database/core/CompoundWrite;->apply(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v18

    .line 497
    .local v18, "newChild":Lcom/google/firebase/database/snapshot/Node;
    new-instance v11, Lcom/google/firebase/database/core/Path;

    new-array v9, v2, [Lcom/google/firebase/database/snapshot/ChildKey;

    aput-object v15, v9, v3

    invoke-direct {v11, v9}, Lcom/google/firebase/database/core/Path;-><init>([Lcom/google/firebase/database/snapshot/ChildKey;)V

    .line 498
    move-object/from16 v9, p0

    move-object v10, v0

    move-object/from16 v12, v18

    move-object/from16 v13, p4

    move-object/from16 v19, v14

    .end local v14    # "serverChild":Lcom/google/firebase/database/snapshot/Node;
    .local v19, "serverChild":Lcom/google/firebase/database/snapshot/Node;
    move-object/from16 v14, p5

    move-object/from16 v20, v15

    .end local v15    # "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    .local v20, "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    move/from16 v15, p6

    move-object/from16 v16, p7

    invoke-direct/range {v9 .. v16}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyServerOverwrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;ZLcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v0

    goto :goto_a2

    .line 494
    .end local v18    # "newChild":Lcom/google/firebase/database/snapshot/Node;
    .end local v19    # "serverChild":Lcom/google/firebase/database/snapshot/Node;
    .end local v20    # "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    .restart local v15    # "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    :cond_a0
    move-object/from16 v20, v15

    .line 507
    .end local v15    # "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    .end local v17    # "childMerge":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/CompoundWrite;>;"
    :goto_a2
    goto :goto_58

    .line 508
    :cond_a3
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_ab
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_116

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v17, v9

    check-cast v17, Ljava/util/Map$Entry;

    .line 509
    .restart local v17    # "childMerge":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/CompoundWrite;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    move-object v15, v9

    check-cast v15, Lcom/google/firebase/database/snapshot/ChildKey;

    .line 510
    .restart local v15    # "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v18, v9

    check-cast v18, Lcom/google/firebase/database/core/CompoundWrite;

    .line 511
    .local v18, "childCompoundWrite":Lcom/google/firebase/database/core/CompoundWrite;
    nop

    .line 512
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v9

    invoke-virtual {v9, v15}, Lcom/google/firebase/database/core/view/CacheNode;->isCompleteForChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v9

    if-nez v9, :cond_db

    .line 513
    invoke-virtual/range {v18 .. v18}, Lcom/google/firebase/database/core/CompoundWrite;->rootWrite()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v9

    if-nez v9, :cond_db

    move v9, v2

    goto :goto_dc

    :cond_db
    move v9, v3

    :goto_dc
    move/from16 v19, v9

    .line 514
    .local v19, "isUnknownDeepMerge":Z
    invoke-interface {v6, v15}, Lcom/google/firebase/database/snapshot/Node;->hasChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v9

    if-nez v9, :cond_113

    if-nez v19, :cond_113

    .line 515
    invoke-interface {v6, v15}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v14

    .line 516
    .restart local v14    # "serverChild":Lcom/google/firebase/database/snapshot/Node;
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v9, v14}, Lcom/google/firebase/database/core/CompoundWrite;->apply(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v20

    .line 517
    .local v20, "newChild":Lcom/google/firebase/database/snapshot/Node;
    new-instance v11, Lcom/google/firebase/database/core/Path;

    new-array v9, v2, [Lcom/google/firebase/database/snapshot/ChildKey;

    aput-object v15, v9, v3

    invoke-direct {v11, v9}, Lcom/google/firebase/database/core/Path;-><init>([Lcom/google/firebase/database/snapshot/ChildKey;)V

    .line 518
    move-object/from16 v9, p0

    move-object v10, v0

    move-object/from16 v12, v20

    move-object/from16 v13, p4

    move-object/from16 v21, v14

    .end local v14    # "serverChild":Lcom/google/firebase/database/snapshot/Node;
    .local v21, "serverChild":Lcom/google/firebase/database/snapshot/Node;
    move-object/from16 v14, p5

    move-object/from16 v22, v15

    .end local v15    # "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    .local v22, "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    move/from16 v15, p6

    move-object/from16 v16, p7

    invoke-direct/range {v9 .. v16}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyServerOverwrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;ZLcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v0

    goto :goto_115

    .line 514
    .end local v20    # "newChild":Lcom/google/firebase/database/snapshot/Node;
    .end local v21    # "serverChild":Lcom/google/firebase/database/snapshot/Node;
    .end local v22    # "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    .restart local v15    # "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    :cond_113
    move-object/from16 v22, v15

    .line 527
    .end local v15    # "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    .end local v17    # "childMerge":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/CompoundWrite;>;"
    .end local v18    # "childCompoundWrite":Lcom/google/firebase/database/core/CompoundWrite;
    .end local v19    # "isUnknownDeepMerge":Z
    :goto_115
    goto :goto_ab

    .line 529
    :cond_116
    return-object v0
.end method

.method private applyServerOverwrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;ZLcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;
    .registers 27
    .param p1, "oldViewCache"    # Lcom/google/firebase/database/core/view/ViewCache;
    .param p2, "changePath"    # Lcom/google/firebase/database/core/Path;
    .param p3, "changedSnap"    # Lcom/google/firebase/database/snapshot/Node;
    .param p4, "writesCache"    # Lcom/google/firebase/database/core/WriteTreeRef;
    .param p5, "optCompleteCache"    # Lcom/google/firebase/database/snapshot/Node;
    .param p6, "filterServerNode"    # Z
    .param p7, "accumulator"    # Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;

    .line 290
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v9

    .line 292
    .local v9, "oldServerSnap":Lcom/google/firebase/database/core/view/CacheNode;
    iget-object v0, v6, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    if-eqz p6, :cond_f

    goto :goto_13

    :cond_f
    invoke-interface {v0}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->getIndexedFilter()Lcom/google/firebase/database/core/view/filter/NodeFilter;

    move-result-object v0

    :goto_13
    move-object v5, v0

    .line 293
    .local v5, "serverFilter":Lcom/google/firebase/database/core/view/filter/NodeFilter;
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_32

    .line 294
    nop

    .line 296
    invoke-virtual {v9}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v0

    .line 297
    invoke-interface {v5}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v3

    .line 295
    invoke-interface {v5, v0, v3, v1}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateFullNode(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v0

    move-object/from16 v3, p2

    move-object v10, v0

    .local v0, "newServerCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    goto/16 :goto_bc

    .line 299
    .end local v0    # "newServerCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    :cond_32
    invoke-interface {v5}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->filtersNodes()Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-virtual {v9}, Lcom/google/firebase/database/core/view/CacheNode;->isFiltered()Z

    move-result v0

    if-nez v0, :cond_73

    .line 302
    nop

    .line 303
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    .line 302
    const-string v3, "An empty path should have been caught in the other branch"

    invoke-static {v0, v3}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 304
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    .line 305
    .local v0, "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object v3

    .line 306
    .local v3, "updatePath":Lcom/google/firebase/database/core/Path;
    nop

    .line 307
    invoke-virtual {v9}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v4

    invoke-interface {v4, v3, v8}, Lcom/google/firebase/database/snapshot/Node;->updateChild(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v4

    .line 308
    .local v4, "newChild":Lcom/google/firebase/database/snapshot/Node;
    invoke-virtual {v9}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v10

    invoke-virtual {v10, v0, v4}, Lcom/google/firebase/database/snapshot/IndexedNode;->updateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v10

    .line 309
    .local v10, "newServerNode":Lcom/google/firebase/database/snapshot/IndexedNode;
    nop

    .line 310
    invoke-virtual {v9}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v11

    invoke-interface {v5, v11, v10, v1}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateFullNode(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v0

    .line 311
    .end local v3    # "updatePath":Lcom/google/firebase/database/core/Path;
    .end local v4    # "newChild":Lcom/google/firebase/database/snapshot/Node;
    .end local v10    # "newServerNode":Lcom/google/firebase/database/snapshot/IndexedNode;
    .local v0, "newServerCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    move-object/from16 v3, p2

    move-object v10, v0

    goto :goto_bc

    .line 312
    .end local v0    # "newServerCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    :cond_73
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    .line 313
    .local v0, "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    move-object/from16 v3, p2

    invoke-virtual {v9, v3}, Lcom/google/firebase/database/core/view/CacheNode;->isCompleteForPath(Lcom/google/firebase/database/core/Path;)Z

    move-result v1

    if-nez v1, :cond_86

    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->size()I

    move-result v1

    if-le v1, v2, :cond_86

    .line 315
    return-object v7

    .line 317
    :cond_86
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object v1

    .line 318
    .local v1, "childChangePath":Lcom/google/firebase/database/core/Path;
    invoke-virtual {v9}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v4

    .line 319
    .local v4, "childNode":Lcom/google/firebase/database/snapshot/Node;
    invoke-interface {v4, v1, v8}, Lcom/google/firebase/database/snapshot/Node;->updateChild(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v15

    .line 320
    .local v15, "newChildNode":Lcom/google/firebase/database/snapshot/Node;
    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v10

    if-eqz v10, :cond_a5

    .line 321
    invoke-virtual {v9}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v10

    invoke-interface {v5, v10, v15}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updatePriority(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v10

    .local v10, "newServerCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    goto :goto_bc

    .line 323
    .end local v10    # "newServerCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    :cond_a5
    nop

    .line 325
    invoke-virtual {v9}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v11

    sget-object v16, Lcom/google/firebase/database/core/view/ViewProcessor;->NO_COMPLETE_SOURCE:Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;

    const/16 v17, 0x0

    .line 324
    move-object v10, v5

    move-object v12, v0

    move-object v13, v15

    move-object v14, v1

    move-object/from16 v18, v15

    .end local v15    # "newChildNode":Lcom/google/firebase/database/snapshot/Node;
    .local v18, "newChildNode":Lcom/google/firebase/database/snapshot/Node;
    move-object/from16 v15, v16

    move-object/from16 v16, v17

    invoke-interface/range {v10 .. v16}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateChild(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v10

    .line 333
    .end local v0    # "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    .end local v1    # "childChangePath":Lcom/google/firebase/database/core/Path;
    .end local v4    # "childNode":Lcom/google/firebase/database/snapshot/Node;
    .end local v18    # "newChildNode":Lcom/google/firebase/database/snapshot/Node;
    .restart local v10    # "newServerCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    :goto_bc
    nop

    .line 336
    invoke-virtual {v9}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v0

    if-nez v0, :cond_cb

    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ca

    goto :goto_cb

    :cond_ca
    const/4 v2, 0x0

    .line 337
    :cond_cb
    :goto_cb
    invoke-interface {v5}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->filtersNodes()Z

    move-result v0

    .line 334
    invoke-virtual {v7, v10, v2, v0}, Lcom/google/firebase/database/core/view/ViewCache;->updateServerSnap(Lcom/google/firebase/database/snapshot/IndexedNode;ZZ)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v11

    .line 338
    .local v11, "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    new-instance v4, Lcom/google/firebase/database/core/view/ViewProcessor$WriteTreeCompleteChildSource;

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    invoke-direct {v4, v12, v11, v13}, Lcom/google/firebase/database/core/view/ViewProcessor$WriteTreeCompleteChildSource;-><init>(Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/snapshot/Node;)V

    .line 340
    .local v4, "source":Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;
    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object v14, v5

    .end local v5    # "serverFilter":Lcom/google/firebase/database/core/view/filter/NodeFilter;
    .local v14, "serverFilter":Lcom/google/firebase/database/core/view/filter/NodeFilter;
    move-object/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/database/core/view/ViewProcessor;->generateEventCacheAfterServerEvent(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v0

    return-object v0
.end method

.method private applyUserMerge(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;
    .registers 20
    .param p1, "viewCache"    # Lcom/google/firebase/database/core/view/ViewCache;
    .param p2, "path"    # Lcom/google/firebase/database/core/Path;
    .param p3, "changedChildren"    # Lcom/google/firebase/database/core/CompoundWrite;
    .param p4, "writesCache"    # Lcom/google/firebase/database/core/WriteTreeRef;
    .param p5, "serverCache"    # Lcom/google/firebase/database/snapshot/Node;
    .param p6, "accumulator"    # Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;

    .line 429
    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {p3 .. p3}, Lcom/google/firebase/database/core/CompoundWrite;->rootWrite()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    if-nez v2, :cond_a

    const/4 v2, 0x1

    goto :goto_b

    :cond_a
    const/4 v2, 0x0

    :goto_b
    const-string v3, "Can\'t have a merge that is an overwrite"

    invoke-static {v2, v3}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 430
    move-object v2, p1

    .line 431
    .local v2, "currentViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    invoke-virtual/range {p3 .. p3}, Lcom/google/firebase/database/core/CompoundWrite;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/util/Map$Entry;

    .line 432
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/database/core/Path;

    invoke-virtual {p2, v4}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v12

    .line 433
    .local v12, "writePath":Lcom/google/firebase/database/core/Path;
    invoke-virtual {v12}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/google/firebase/database/core/view/ViewProcessor;->cacheHasChild(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 434
    nop

    .line 438
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/google/firebase/database/snapshot/Node;

    .line 435
    move-object v4, p0

    move-object v5, v2

    move-object v6, v12

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v4 .. v10}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyUserOverwrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v2

    .line 443
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;>;"
    .end local v12    # "writePath":Lcom/google/firebase/database/core/Path;
    :cond_4b
    goto :goto_15

    .line 445
    :cond_4c
    invoke-virtual/range {p3 .. p3}, Lcom/google/firebase/database/core/CompoundWrite;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_50
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_87

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/util/Map$Entry;

    .line 446
    .restart local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/database/core/Path;

    invoke-virtual {p2, v4}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v12

    .line 447
    .restart local v12    # "writePath":Lcom/google/firebase/database/core/Path;
    invoke-virtual {v12}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/google/firebase/database/core/view/ViewProcessor;->cacheHasChild(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v4

    if-nez v4, :cond_86

    .line 448
    nop

    .line 452
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/google/firebase/database/snapshot/Node;

    .line 449
    move-object v4, p0

    move-object v5, v2

    move-object v6, v12

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v4 .. v10}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyUserOverwrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v2

    .line 457
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;>;"
    .end local v12    # "writePath":Lcom/google/firebase/database/core/Path;
    :cond_86
    goto :goto_50

    .line 458
    :cond_87
    return-object v2
.end method

.method private applyUserOverwrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;
    .registers 26
    .param p1, "oldViewCache"    # Lcom/google/firebase/database/core/view/ViewCache;
    .param p2, "changePath"    # Lcom/google/firebase/database/core/Path;
    .param p3, "changedSnap"    # Lcom/google/firebase/database/snapshot/Node;
    .param p4, "writesCache"    # Lcom/google/firebase/database/core/WriteTreeRef;
    .param p5, "optCompleteCache"    # Lcom/google/firebase/database/snapshot/Node;
    .param p6, "accumulator"    # Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;

    .line 351
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v3

    .line 353
    .local v3, "oldEventSnap":Lcom/google/firebase/database/core/view/CacheNode;
    new-instance v4, Lcom/google/firebase/database/core/view/ViewProcessor$WriteTreeCompleteChildSource;

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct {v4, v5, v1, v6}, Lcom/google/firebase/database/core/view/ViewProcessor$WriteTreeCompleteChildSource;-><init>(Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/snapshot/Node;)V

    .line 355
    .local v4, "source":Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_40

    .line 356
    iget-object v7, v0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    invoke-interface {v7}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v7

    .line 357
    .local v7, "newIndexed":Lcom/google/firebase/database/snapshot/IndexedNode;
    iget-object v8, v0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    .line 359
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v9

    .line 358
    move-object/from16 v14, p6

    invoke-interface {v8, v9, v7, v14}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateFullNode(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v8

    .line 360
    .local v8, "newEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    iget-object v9, v0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    invoke-interface {v9}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->filtersNodes()Z

    move-result v9

    const/4 v10, 0x1

    invoke-virtual {v1, v8, v10, v9}, Lcom/google/firebase/database/core/view/ViewCache;->updateEventSnap(Lcom/google/firebase/database/snapshot/IndexedNode;ZZ)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v7

    .line 361
    .end local v8    # "newEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    .local v7, "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    goto/16 :goto_df

    .line 362
    .end local v7    # "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    :cond_40
    move-object/from16 v14, p6

    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v15

    .line 363
    .local v15, "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    invoke-virtual {v15}, Lcom/google/firebase/database/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v7

    if-eqz v7, :cond_69

    .line 364
    iget-object v7, v0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    .line 365
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v8

    invoke-interface {v7, v8, v2}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updatePriority(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v7

    .line 366
    .local v7, "newEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    nop

    .line 368
    invoke-virtual {v3}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v8

    invoke-virtual {v3}, Lcom/google/firebase/database/core/view/CacheNode;->isFiltered()Z

    move-result v9

    .line 367
    invoke-virtual {v1, v7, v8, v9}, Lcom/google/firebase/database/core/view/ViewCache;->updateEventSnap(Lcom/google/firebase/database/snapshot/IndexedNode;ZZ)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v7

    .line 369
    .local v7, "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    goto/16 :goto_df

    .line 370
    .end local v7    # "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    :cond_69
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object v13

    .line 371
    .local v13, "childChangePath":Lcom/google/firebase/database/core/Path;
    invoke-virtual {v3}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v7

    invoke-interface {v7, v15}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v12

    .line 373
    .local v12, "oldChild":Lcom/google/firebase/database/snapshot/Node;
    invoke-virtual {v13}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7f

    .line 375
    move-object/from16 v7, p3

    move-object v11, v7

    .local v7, "newChild":Lcom/google/firebase/database/snapshot/Node;
    goto :goto_ab

    .line 377
    .end local v7    # "newChild":Lcom/google/firebase/database/snapshot/Node;
    :cond_7f
    invoke-interface {v4, v15}, Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;->getCompleteChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v7

    .line 378
    .local v7, "childNode":Lcom/google/firebase/database/snapshot/Node;
    if-eqz v7, :cond_a6

    .line 379
    invoke-virtual {v13}, Lcom/google/firebase/database/core/Path;->getBack()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/firebase/database/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v8

    if-eqz v8, :cond_a0

    .line 380
    invoke-virtual {v13}, Lcom/google/firebase/database/core/Path;->getParent()Lcom/google/firebase/database/core/Path;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/google/firebase/database/snapshot/Node;->getChild(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_a0

    .line 383
    move-object v8, v7

    move-object v11, v8

    .local v8, "newChild":Lcom/google/firebase/database/snapshot/Node;
    goto :goto_ab

    .line 385
    .end local v8    # "newChild":Lcom/google/firebase/database/snapshot/Node;
    :cond_a0
    invoke-interface {v7, v13, v2}, Lcom/google/firebase/database/snapshot/Node;->updateChild(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v8

    move-object v11, v8

    .restart local v8    # "newChild":Lcom/google/firebase/database/snapshot/Node;
    goto :goto_ab

    .line 389
    .end local v8    # "newChild":Lcom/google/firebase/database/snapshot/Node;
    :cond_a6
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v8

    move-object v11, v8

    .line 392
    .end local v7    # "childNode":Lcom/google/firebase/database/snapshot/Node;
    .local v11, "newChild":Lcom/google/firebase/database/snapshot/Node;
    :goto_ab
    invoke-virtual {v12, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d7

    .line 393
    iget-object v7, v0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    .line 395
    invoke-virtual {v3}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v8

    .line 394
    move-object v9, v15

    move-object v10, v11

    move-object/from16 v16, v11

    .end local v11    # "newChild":Lcom/google/firebase/database/snapshot/Node;
    .local v16, "newChild":Lcom/google/firebase/database/snapshot/Node;
    move-object v11, v13

    move-object/from16 v17, v12

    .end local v12    # "oldChild":Lcom/google/firebase/database/snapshot/Node;
    .local v17, "oldChild":Lcom/google/firebase/database/snapshot/Node;
    move-object v12, v4

    move-object/from16 v18, v13

    .end local v13    # "childChangePath":Lcom/google/firebase/database/core/Path;
    .local v18, "childChangePath":Lcom/google/firebase/database/core/Path;
    move-object/from16 v13, p6

    invoke-interface/range {v7 .. v13}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateChild(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v7

    .line 401
    .local v7, "newEventSnap":Lcom/google/firebase/database/snapshot/IndexedNode;
    nop

    .line 403
    invoke-virtual {v3}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v8

    iget-object v9, v0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    invoke-interface {v9}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->filtersNodes()Z

    move-result v9

    .line 402
    invoke-virtual {v1, v7, v8, v9}, Lcom/google/firebase/database/core/view/ViewCache;->updateEventSnap(Lcom/google/firebase/database/snapshot/IndexedNode;ZZ)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v7

    .line 404
    .local v7, "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    goto :goto_df

    .line 405
    .end local v7    # "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    .end local v16    # "newChild":Lcom/google/firebase/database/snapshot/Node;
    .end local v17    # "oldChild":Lcom/google/firebase/database/snapshot/Node;
    .end local v18    # "childChangePath":Lcom/google/firebase/database/core/Path;
    .restart local v11    # "newChild":Lcom/google/firebase/database/snapshot/Node;
    .restart local v12    # "oldChild":Lcom/google/firebase/database/snapshot/Node;
    .restart local v13    # "childChangePath":Lcom/google/firebase/database/core/Path;
    :cond_d7
    move-object/from16 v16, v11

    move-object/from16 v17, v12

    move-object/from16 v18, v13

    .end local v11    # "newChild":Lcom/google/firebase/database/snapshot/Node;
    .end local v12    # "oldChild":Lcom/google/firebase/database/snapshot/Node;
    .end local v13    # "childChangePath":Lcom/google/firebase/database/core/Path;
    .restart local v16    # "newChild":Lcom/google/firebase/database/snapshot/Node;
    .restart local v17    # "oldChild":Lcom/google/firebase/database/snapshot/Node;
    .restart local v18    # "childChangePath":Lcom/google/firebase/database/core/Path;
    move-object/from16 v7, p1

    .line 409
    .end local v15    # "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    .end local v16    # "newChild":Lcom/google/firebase/database/snapshot/Node;
    .end local v17    # "oldChild":Lcom/google/firebase/database/snapshot/Node;
    .end local v18    # "childChangePath":Lcom/google/firebase/database/core/Path;
    .restart local v7    # "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    :goto_df
    return-object v7
.end method

.method private static cacheHasChild(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/snapshot/ChildKey;)Z
    .registers 3
    .param p0, "viewCache"    # Lcom/google/firebase/database/core/view/ViewCache;
    .param p1, "childKey"    # Lcom/google/firebase/database/snapshot/ChildKey;

    .line 413
    invoke-virtual {p0}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/view/CacheNode;->isCompleteForChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v0

    return v0
.end method

.method private generateEventCacheAfterServerEvent(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;
    .registers 24
    .param p1, "viewCache"    # Lcom/google/firebase/database/core/view/ViewCache;
    .param p2, "changePath"    # Lcom/google/firebase/database/core/Path;
    .param p3, "writesCache"    # Lcom/google/firebase/database/core/WriteTreeRef;
    .param p4, "source"    # Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;
    .param p5, "accumulator"    # Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;

    .line 193
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v4

    .line 194
    .local v4, "oldEventSnap":Lcom/google/firebase/database/core/view/CacheNode;
    invoke-virtual {v3, v2}, Lcom/google/firebase/database/core/WriteTreeRef;->shadowingWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v5

    if-eqz v5, :cond_13

    .line 196
    return-object v1

    .line 199
    :cond_13
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_6b

    .line 201
    nop

    .line 202
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v5

    .line 201
    const-string v8, "If change path is empty, we must have complete server data"

    invoke-static {v5, v8}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 205
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firebase/database/core/view/CacheNode;->isFiltered()Z

    move-result v5

    if-eqz v5, :cond_46

    .line 209
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getCompleteServerSnap()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v5

    .line 211
    .local v5, "serverCache":Lcom/google/firebase/database/snapshot/Node;
    instance-of v8, v5, Lcom/google/firebase/database/snapshot/ChildrenNode;

    if-eqz v8, :cond_3d

    move-object v8, v5

    goto :goto_41

    :cond_3d
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v8

    .line 212
    .local v8, "completeChildren":Lcom/google/firebase/database/snapshot/Node;
    :goto_41
    invoke-virtual {v3, v8}, Lcom/google/firebase/database/core/WriteTreeRef;->calcCompleteEventChildren(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v5

    .line 213
    .end local v8    # "completeChildren":Lcom/google/firebase/database/snapshot/Node;
    .local v5, "nodeWithLocalWrites":Lcom/google/firebase/database/snapshot/Node;
    goto :goto_4f

    .line 214
    .end local v5    # "nodeWithLocalWrites":Lcom/google/firebase/database/snapshot/Node;
    :cond_46
    nop

    .line 215
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getCompleteServerSnap()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/firebase/database/core/WriteTreeRef;->calcCompleteEventCache(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v5

    .line 217
    .restart local v5    # "nodeWithLocalWrites":Lcom/google/firebase/database/snapshot/Node;
    :goto_4f
    iget-object v8, v0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    invoke-interface {v8}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v8

    .line 218
    .local v8, "indexedNode":Lcom/google/firebase/database/snapshot/IndexedNode;
    iget-object v9, v0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    .line 220
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v10

    .line 219
    move-object/from16 v15, p5

    invoke-interface {v9, v10, v8, v15}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateFullNode(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v5

    .line 221
    .end local v8    # "indexedNode":Lcom/google/firebase/database/snapshot/IndexedNode;
    .local v5, "newEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    goto/16 :goto_102

    .line 222
    .end local v5    # "newEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    :cond_6b
    move-object/from16 v15, p5

    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v5

    .line 223
    .local v5, "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    invoke-virtual {v5}, Lcom/google/firebase/database/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v8

    if-eqz v8, :cond_aa

    .line 224
    nop

    .line 225
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->size()I

    move-result v8

    if-ne v8, v7, :cond_80

    move v8, v7

    goto :goto_81

    :cond_80
    move v8, v6

    .line 224
    :goto_81
    const-string v9, "Can\'t have a priority with additional path components"

    invoke-static {v8, v9}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 226
    invoke-virtual {v4}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v8

    .line 227
    .local v8, "oldEventNode":Lcom/google/firebase/database/snapshot/Node;
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v9

    .line 229
    .local v9, "serverNode":Lcom/google/firebase/database/snapshot/Node;
    nop

    .line 230
    invoke-virtual {v3, v2, v8, v9}, Lcom/google/firebase/database/core/WriteTreeRef;->calcEventCacheAfterServerOverwrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v10

    .line 231
    .local v10, "updatedPriority":Lcom/google/firebase/database/snapshot/Node;
    if-eqz v10, :cond_a4

    .line 232
    iget-object v11, v0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    .line 233
    invoke-virtual {v4}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v12

    invoke-interface {v11, v12, v10}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updatePriority(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v11

    .local v11, "newEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    goto :goto_a8

    .line 236
    .end local v11    # "newEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    :cond_a4
    invoke-virtual {v4}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v11

    .line 238
    .end local v8    # "oldEventNode":Lcom/google/firebase/database/snapshot/Node;
    .end local v9    # "serverNode":Lcom/google/firebase/database/snapshot/Node;
    .end local v10    # "updatedPriority":Lcom/google/firebase/database/snapshot/Node;
    .restart local v11    # "newEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    :goto_a8
    move-object v5, v11

    goto :goto_102

    .line 239
    .end local v11    # "newEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    :cond_aa
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object v8

    .line 242
    .local v8, "childChangePath":Lcom/google/firebase/database/core/Path;
    invoke-virtual {v4, v5}, Lcom/google/firebase/database/core/view/CacheNode;->isCompleteForChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v9

    if-eqz v9, :cond_df

    .line 243
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v9

    .line 244
    .restart local v9    # "serverNode":Lcom/google/firebase/database/snapshot/Node;
    nop

    .line 246
    invoke-virtual {v4}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v10

    .line 245
    invoke-virtual {v3, v2, v10, v9}, Lcom/google/firebase/database/core/WriteTreeRef;->calcEventCacheAfterServerOverwrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v10

    .line 247
    .local v10, "eventChildUpdate":Lcom/google/firebase/database/snapshot/Node;
    if-eqz v10, :cond_d5

    .line 248
    nop

    .line 250
    invoke-virtual {v4}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v11

    .line 251
    invoke-interface {v11, v5}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v11

    .line 252
    invoke-interface {v11, v8, v10}, Lcom/google/firebase/database/snapshot/Node;->updateChild(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v11

    .local v11, "newEventChild":Lcom/google/firebase/database/snapshot/Node;
    goto :goto_dd

    .line 255
    .end local v11    # "newEventChild":Lcom/google/firebase/database/snapshot/Node;
    :cond_d5
    invoke-virtual {v4}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v11

    invoke-interface {v11, v5}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v11

    .line 257
    .end local v9    # "serverNode":Lcom/google/firebase/database/snapshot/Node;
    .end local v10    # "eventChildUpdate":Lcom/google/firebase/database/snapshot/Node;
    .restart local v11    # "newEventChild":Lcom/google/firebase/database/snapshot/Node;
    :goto_dd
    move-object v9, v11

    goto :goto_e8

    .line 258
    .end local v11    # "newEventChild":Lcom/google/firebase/database/snapshot/Node;
    :cond_df
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v9

    invoke-virtual {v3, v5, v9}, Lcom/google/firebase/database/core/WriteTreeRef;->calcCompleteChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/view/CacheNode;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v11

    move-object v9, v11

    .line 260
    .local v9, "newEventChild":Lcom/google/firebase/database/snapshot/Node;
    :goto_e8
    if-eqz v9, :cond_fd

    .line 261
    iget-object v11, v0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    .line 263
    invoke-virtual {v4}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v12

    .line 262
    move-object v13, v5

    move-object v14, v9

    move-object v15, v8

    move-object/from16 v16, p4

    move-object/from16 v17, p5

    invoke-interface/range {v11 .. v17}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateChild(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v10

    move-object v5, v10

    .local v10, "newEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    goto :goto_102

    .line 271
    .end local v10    # "newEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    :cond_fd
    invoke-virtual {v4}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v10

    move-object v5, v10

    .line 275
    .end local v8    # "childChangePath":Lcom/google/firebase/database/core/Path;
    .end local v9    # "newEventChild":Lcom/google/firebase/database/snapshot/Node;
    .local v5, "newEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    :goto_102
    nop

    .line 277
    invoke-virtual {v4}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v8

    if-nez v8, :cond_10f

    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_110

    :cond_10f
    move v6, v7

    :cond_110
    iget-object v7, v0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    .line 278
    invoke-interface {v7}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->filtersNodes()Z

    move-result v7

    .line 275
    invoke-virtual {v1, v5, v6, v7}, Lcom/google/firebase/database/core/view/ViewCache;->updateEventSnap(Lcom/google/firebase/database/snapshot/IndexedNode;ZZ)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v6

    return-object v6
.end method

.method private listenComplete(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;
    .registers 16
    .param p1, "viewCache"    # Lcom/google/firebase/database/core/view/ViewCache;
    .param p2, "path"    # Lcom/google/firebase/database/core/Path;
    .param p3, "writesCache"    # Lcom/google/firebase/database/core/WriteTreeRef;
    .param p4, "serverCache"    # Lcom/google/firebase/database/snapshot/Node;
    .param p5, "accumulator"    # Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;

    .line 663
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v0

    .line 664
    .local v0, "oldServerNode":Lcom/google/firebase/database/core/view/CacheNode;
    nop

    .line 666
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v1

    .line 667
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v2

    if-nez v2, :cond_18

    invoke-virtual {p2}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_18

    :cond_16
    const/4 v2, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v2, 0x1

    .line 668
    :goto_19
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->isFiltered()Z

    move-result v3

    .line 665
    invoke-virtual {p1, v1, v2, v3}, Lcom/google/firebase/database/core/view/ViewCache;->updateServerSnap(Lcom/google/firebase/database/snapshot/IndexedNode;ZZ)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v1

    .line 669
    .local v1, "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    sget-object v8, Lcom/google/firebase/database/core/view/ViewProcessor;->NO_COMPLETE_SOURCE:Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;

    move-object v4, p0

    move-object v5, v1

    move-object v6, p2

    move-object v7, p3

    move-object v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/google/firebase/database/core/view/ViewProcessor;->generateEventCacheAfterServerEvent(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v2

    return-object v2
.end method

.method private maybeAddValueEvent(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/view/ViewCache;Ljava/util/List;)V
    .registers 8
    .param p1, "oldViewCache"    # Lcom/google/firebase/database/core/view/ViewCache;
    .param p2, "newViewCache"    # Lcom/google/firebase/database/core/view/ViewCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/view/ViewCache;",
            "Lcom/google/firebase/database/core/view/ViewCache;",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/view/Change;",
            ">;)V"
        }
    .end annotation

    .line 172
    .local p3, "accumulator":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/view/Change;>;"
    invoke-virtual {p2}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v0

    .line 173
    .local v0, "eventSnap":Lcom/google/firebase/database/core/view/CacheNode;
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v1

    if-eqz v1, :cond_63

    .line 174
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/firebase/database/snapshot/Node;->isLeafNode()Z

    move-result v1

    if-nez v1, :cond_21

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v1, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v1, 0x1

    .line 175
    .local v1, "isLeafOrEmpty":Z
    :goto_22
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 176
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v2

    if-eqz v2, :cond_58

    if-eqz v1, :cond_42

    .line 177
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getCompleteEventSnap()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 179
    :cond_42
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    .line 180
    invoke-interface {v2}, Lcom/google/firebase/database/snapshot/Node;->getPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    .line 181
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getCompleteEventSnap()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/firebase/database/snapshot/Node;->getPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_63

    .line 182
    :cond_58
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v2

    invoke-static {v2}, Lcom/google/firebase/database/core/view/Change;->valueChange(Lcom/google/firebase/database/snapshot/IndexedNode;)Lcom/google/firebase/database/core/view/Change;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    .end local v1    # "isLeafOrEmpty":Z
    :cond_63
    return-void
.end method


# virtual methods
.method public applyOperation(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/operation/Operation;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/view/ViewProcessor$ProcessorResult;
    .registers 19
    .param p1, "oldViewCache"    # Lcom/google/firebase/database/core/view/ViewCache;
    .param p2, "operation"    # Lcom/google/firebase/database/core/operation/Operation;
    .param p3, "writesCache"    # Lcom/google/firebase/database/core/WriteTreeRef;
    .param p4, "optCompleteCache"    # Lcom/google/firebase/database/snapshot/Node;

    .line 65
    new-instance v5, Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;

    invoke-direct {v5}, Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;-><init>()V

    .line 67
    .local v5, "accumulator":Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;
    sget-object v0, Lcom/google/firebase/database/core/view/ViewProcessor$2;->$SwitchMap$com$google$firebase$database$core$operation$Operation$OperationType:[I

    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/operation/Operation;->getType()Lcom/google/firebase/database/core/operation/Operation$OperationType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/core/operation/Operation$OperationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_156

    .line 162
    move-object v2, p0

    move-object v3, p1

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown operation: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/operation/Operation;->getType()Lcom/google/firebase/database/core/operation/Operation$OperationType;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 155
    :pswitch_35
    nop

    .line 157
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/operation/Operation;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    .line 156
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/database/core/view/ViewProcessor;->listenComplete(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v0

    .line 158
    .local v0, "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    goto/16 :goto_141

    .line 132
    .end local v0    # "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    :pswitch_46
    move-object/from16 v0, p2

    check-cast v0, Lcom/google/firebase/database/core/operation/AckUserWrite;

    .line 133
    .local v0, "ackUserWrite":Lcom/google/firebase/database/core/operation/AckUserWrite;
    invoke-virtual {v0}, Lcom/google/firebase/database/core/operation/AckUserWrite;->isRevert()Z

    move-result v1

    if-nez v1, :cond_67

    .line 134
    nop

    .line 137
    invoke-virtual {v0}, Lcom/google/firebase/database/core/operation/AckUserWrite;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v8

    .line 138
    invoke-virtual {v0}, Lcom/google/firebase/database/core/operation/AckUserWrite;->getAffectedTree()Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v9

    .line 135
    move-object v6, p0

    move-object v7, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object v12, v5

    invoke-direct/range {v6 .. v12}, Lcom/google/firebase/database/core/view/ViewProcessor;->ackUserWrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/ImmutableTree;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v1

    move-object v0, v1

    .local v1, "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    goto/16 :goto_141

    .line 143
    .end local v1    # "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    :cond_67
    nop

    .line 146
    invoke-virtual {v0}, Lcom/google/firebase/database/core/operation/AckUserWrite;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v8

    .line 144
    move-object v6, p0

    move-object v7, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/google/firebase/database/core/view/ViewProcessor;->revertUserWrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v1

    .line 151
    .restart local v1    # "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    move-object v0, v1

    goto/16 :goto_141

    .line 103
    .end local v0    # "ackUserWrite":Lcom/google/firebase/database/core/operation/AckUserWrite;
    .end local v1    # "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    :pswitch_7a
    move-object/from16 v0, p2

    check-cast v0, Lcom/google/firebase/database/core/operation/Merge;

    .line 104
    .local v0, "merge":Lcom/google/firebase/database/core/operation/Merge;
    invoke-virtual {v0}, Lcom/google/firebase/database/core/operation/Merge;->getSource()Lcom/google/firebase/database/core/operation/OperationSource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/database/core/operation/OperationSource;->isFromUser()Z

    move-result v3

    if-eqz v3, :cond_9f

    .line 105
    nop

    .line 108
    invoke-virtual {v0}, Lcom/google/firebase/database/core/operation/Merge;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v8

    .line 109
    invoke-virtual {v0}, Lcom/google/firebase/database/core/operation/Merge;->getChildren()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v9

    .line 106
    move-object v6, p0

    move-object v7, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object v12, v5

    invoke-direct/range {v6 .. v12}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyUserMerge(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v1

    move-object v0, v1

    .restart local v1    # "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    goto/16 :goto_141

    .line 114
    .end local v1    # "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    :cond_9f
    invoke-virtual {v0}, Lcom/google/firebase/database/core/operation/Merge;->getSource()Lcom/google/firebase/database/core/operation/OperationSource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/database/core/operation/OperationSource;->isFromServer()Z

    move-result v3

    invoke-static {v3}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(Z)V

    .line 116
    nop

    .line 117
    invoke-virtual {v0}, Lcom/google/firebase/database/core/operation/Merge;->getSource()Lcom/google/firebase/database/core/operation/OperationSource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/database/core/operation/OperationSource;->isTagged()Z

    move-result v3

    if-nez v3, :cond_c2

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/database/core/view/CacheNode;->isFiltered()Z

    move-result v3

    if-eqz v3, :cond_c0

    goto :goto_c2

    :cond_c0
    move v12, v1

    goto :goto_c3

    :cond_c2
    :goto_c2
    move v12, v2

    .line 118
    .local v12, "filterServerNode":Z
    :goto_c3
    nop

    .line 121
    invoke-virtual {v0}, Lcom/google/firebase/database/core/operation/Merge;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v8

    .line 122
    invoke-virtual {v0}, Lcom/google/firebase/database/core/operation/Merge;->getChildren()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v9

    .line 119
    move-object v6, p0

    move-object v7, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object v13, v5

    invoke-direct/range {v6 .. v13}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyServerMerge(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;ZLcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v1

    .line 128
    .end local v12    # "filterServerNode":Z
    .restart local v1    # "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    move-object v0, v1

    goto/16 :goto_141

    .line 70
    .end local v0    # "merge":Lcom/google/firebase/database/core/operation/Merge;
    .end local v1    # "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    :pswitch_da
    move-object/from16 v0, p2

    check-cast v0, Lcom/google/firebase/database/core/operation/Overwrite;

    .line 71
    .local v0, "overwrite":Lcom/google/firebase/database/core/operation/Overwrite;
    invoke-virtual {v0}, Lcom/google/firebase/database/core/operation/Overwrite;->getSource()Lcom/google/firebase/database/core/operation/OperationSource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/database/core/operation/OperationSource;->isFromUser()Z

    move-result v3

    if-eqz v3, :cond_fe

    .line 72
    nop

    .line 75
    invoke-virtual {v0}, Lcom/google/firebase/database/core/operation/Overwrite;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v8

    .line 76
    invoke-virtual {v0}, Lcom/google/firebase/database/core/operation/Overwrite;->getSnapshot()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v9

    .line 73
    move-object v6, p0

    move-object v7, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object v12, v5

    invoke-direct/range {v6 .. v12}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyUserOverwrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v1

    move-object v0, v1

    .restart local v1    # "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    goto :goto_141

    .line 81
    .end local v1    # "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    :cond_fe
    invoke-virtual {v0}, Lcom/google/firebase/database/core/operation/Overwrite;->getSource()Lcom/google/firebase/database/core/operation/OperationSource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/database/core/operation/OperationSource;->isFromServer()Z

    move-result v3

    invoke-static {v3}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(Z)V

    .line 85
    nop

    .line 86
    invoke-virtual {v0}, Lcom/google/firebase/database/core/operation/Overwrite;->getSource()Lcom/google/firebase/database/core/operation/OperationSource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/database/core/operation/OperationSource;->isTagged()Z

    move-result v3

    if-nez v3, :cond_12b

    .line 87
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/database/core/view/CacheNode;->isFiltered()Z

    move-result v3

    if-eqz v3, :cond_129

    .line 88
    invoke-virtual {v0}, Lcom/google/firebase/database/core/operation/Overwrite;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_129

    goto :goto_12b

    :cond_129
    move v12, v1

    goto :goto_12c

    :cond_12b
    :goto_12b
    move v12, v2

    .line 89
    .restart local v12    # "filterServerNode":Z
    :goto_12c
    nop

    .line 92
    invoke-virtual {v0}, Lcom/google/firebase/database/core/operation/Overwrite;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v8

    .line 93
    invoke-virtual {v0}, Lcom/google/firebase/database/core/operation/Overwrite;->getSnapshot()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v9

    .line 90
    move-object v6, p0

    move-object v7, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object v13, v5

    invoke-direct/range {v6 .. v13}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyServerOverwrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;ZLcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v1

    .line 99
    .end local v12    # "filterServerNode":Z
    .restart local v1    # "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    move-object v0, v1

    .line 165
    .end local v1    # "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    .local v0, "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    :goto_141
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v5}, Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 166
    .local v1, "changes":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/view/Change;>;"
    move-object v2, p0

    move-object v3, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/firebase/database/core/view/ViewProcessor;->maybeAddValueEvent(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/view/ViewCache;Ljava/util/List;)V

    .line 167
    new-instance v4, Lcom/google/firebase/database/core/view/ViewProcessor$ProcessorResult;

    invoke-direct {v4, v0, v1}, Lcom/google/firebase/database/core/view/ViewProcessor$ProcessorResult;-><init>(Lcom/google/firebase/database/core/view/ViewCache;Ljava/util/List;)V

    return-object v4

    nop

    :pswitch_data_156
    .packed-switch 0x1
        :pswitch_da
        :pswitch_7a
        :pswitch_46
        :pswitch_35
    .end packed-switch
.end method

.method public revertUserWrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;
    .registers 23
    .param p1, "viewCache"    # Lcom/google/firebase/database/core/view/ViewCache;
    .param p2, "path"    # Lcom/google/firebase/database/core/Path;
    .param p3, "writesCache"    # Lcom/google/firebase/database/core/WriteTreeRef;
    .param p4, "optCompleteServerCache"    # Lcom/google/firebase/database/snapshot/Node;
    .param p5, "accumulator"    # Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;

    .line 607
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v15, p5

    move-object/from16 v14, p2

    invoke-virtual {v2, v14}, Lcom/google/firebase/database/core/WriteTreeRef;->shadowingWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 608
    return-object v1

    .line 610
    :cond_11
    new-instance v8, Lcom/google/firebase/database/core/view/ViewProcessor$WriteTreeCompleteChildSource;

    move-object/from16 v13, p4

    invoke-direct {v8, v2, v1, v13}, Lcom/google/firebase/database/core/view/ViewProcessor$WriteTreeCompleteChildSource;-><init>(Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/snapshot/Node;)V

    .line 612
    .local v8, "source":Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v12

    .line 614
    .local v12, "oldEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_ce

    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/database/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v3

    if-eqz v3, :cond_34

    move-object v6, v12

    move-object v3, v15

    goto/16 :goto_d0

    .line 624
    :cond_34
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v11

    .line 625
    .local v11, "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v3

    invoke-virtual {v2, v11, v3}, Lcom/google/firebase/database/core/WriteTreeRef;->calcCompleteChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/view/CacheNode;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    .line 626
    .local v3, "newChild":Lcom/google/firebase/database/snapshot/Node;
    if-nez v3, :cond_57

    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/google/firebase/database/core/view/CacheNode;->isCompleteForChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 627
    invoke-virtual {v12}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v4

    invoke-interface {v4, v11}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    move-object/from16 v16, v3

    goto :goto_59

    .line 629
    :cond_57
    move-object/from16 v16, v3

    .end local v3    # "newChild":Lcom/google/firebase/database/snapshot/Node;
    .local v16, "newChild":Lcom/google/firebase/database/snapshot/Node;
    :goto_59
    if-eqz v16, :cond_6f

    .line 630
    iget-object v3, v0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    .line 632
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object v7

    .line 631
    move-object v4, v12

    move-object v5, v11

    move-object/from16 v6, v16

    move-object/from16 v9, p5

    invoke-interface/range {v3 .. v9}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateChild(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v3

    move-object v4, v3

    move-object v6, v12

    move-object v3, v15

    .local v3, "newEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    goto :goto_9b

    .line 633
    .end local v3    # "newEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    :cond_6f
    if-nez v16, :cond_97

    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    invoke-interface {v3, v11}, Lcom/google/firebase/database/snapshot/Node;->hasChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v3

    if-eqz v3, :cond_97

    .line 635
    iget-object v9, v0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    .line 637
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object v4

    .line 636
    move-object v10, v12

    move-object v5, v11

    .end local v11    # "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    .local v5, "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    move-object v6, v12

    .end local v12    # "oldEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    .local v6, "oldEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    move-object v12, v3

    move-object v13, v4

    move-object v14, v8

    move-object v3, v15

    move-object/from16 v15, p5

    invoke-interface/range {v9 .. v15}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateChild(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v4

    .local v4, "newEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    goto :goto_9b

    .line 633
    .end local v4    # "newEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    .end local v5    # "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    .end local v6    # "oldEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    .restart local v11    # "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    .restart local v12    # "oldEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    :cond_97
    move-object v5, v11

    move-object v6, v12

    move-object v3, v15

    .line 639
    .end local v11    # "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    .end local v12    # "oldEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    .restart local v5    # "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    .restart local v6    # "oldEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    move-object v4, v6

    .line 641
    .restart local v4    # "newEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    :goto_9b
    invoke-virtual {v4}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_100

    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v7

    if-eqz v7, :cond_100

    .line 643
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getCompleteServerSnap()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/google/firebase/database/core/WriteTreeRef;->calcCompleteEventCache(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v7

    .line 644
    .local v7, "complete":Lcom/google/firebase/database/snapshot/Node;
    invoke-interface {v7}, Lcom/google/firebase/database/snapshot/Node;->isLeafNode()Z

    move-result v9

    if-eqz v9, :cond_100

    .line 645
    iget-object v9, v0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    invoke-interface {v9}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v9

    .line 646
    .local v9, "indexedNode":Lcom/google/firebase/database/snapshot/IndexedNode;
    iget-object v10, v0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    invoke-interface {v10, v4, v9, v3}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateFullNode(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v4

    goto :goto_100

    .line 614
    .end local v4    # "newEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    .end local v5    # "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    .end local v6    # "oldEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    .end local v7    # "complete":Lcom/google/firebase/database/snapshot/Node;
    .end local v9    # "indexedNode":Lcom/google/firebase/database/snapshot/IndexedNode;
    .end local v16    # "newChild":Lcom/google/firebase/database/snapshot/Node;
    .restart local v12    # "oldEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    :cond_ce
    move-object v6, v12

    move-object v3, v15

    .line 616
    .end local v12    # "oldEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    .restart local v6    # "oldEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    :goto_d0
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v4

    if-eqz v4, :cond_e3

    .line 617
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getCompleteServerSnap()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/firebase/database/core/WriteTreeRef;->calcCompleteEventCache(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v4

    .local v4, "newNode":Lcom/google/firebase/database/snapshot/Node;
    goto :goto_ef

    .line 619
    .end local v4    # "newNode":Lcom/google/firebase/database/snapshot/Node;
    :cond_e3
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/firebase/database/core/WriteTreeRef;->calcCompleteEventChildren(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v4

    .line 621
    .restart local v4    # "newNode":Lcom/google/firebase/database/snapshot/Node;
    :goto_ef
    iget-object v5, v0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    invoke-interface {v5}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v5

    .line 622
    .local v5, "indexedNode":Lcom/google/firebase/database/snapshot/IndexedNode;
    iget-object v7, v0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    invoke-interface {v7, v6, v5, v3}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateFullNode(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v4

    .line 623
    .end local v5    # "indexedNode":Lcom/google/firebase/database/snapshot/IndexedNode;
    .local v4, "newEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    nop

    .line 650
    :cond_100
    :goto_100
    nop

    .line 651
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v5

    if-nez v5, :cond_118

    .line 652
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/firebase/database/core/WriteTreeRef;->shadowingWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v5

    if-eqz v5, :cond_116

    goto :goto_118

    :cond_116
    const/4 v5, 0x0

    goto :goto_119

    :cond_118
    :goto_118
    const/4 v5, 0x1

    .line 653
    .local v5, "complete":Z
    :goto_119
    iget-object v7, v0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    invoke-interface {v7}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->filtersNodes()Z

    move-result v7

    invoke-virtual {v1, v4, v5, v7}, Lcom/google/firebase/database/core/view/ViewCache;->updateEventSnap(Lcom/google/firebase/database/snapshot/IndexedNode;ZZ)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v7

    return-object v7
.end method
