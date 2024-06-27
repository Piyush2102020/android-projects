.class public Lcom/google/firebase/database/core/ZombieEventManager;
.super Ljava/lang/Object;
.source "ZombieEventManager.java"

# interfaces
.implements Lcom/google/firebase/database/core/EventRegistrationZombieListener;


# static fields
.field private static defaultInstance:Lcom/google/firebase/database/core/ZombieEventManager;


# instance fields
.field final globalEventRegistrations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/firebase/database/core/EventRegistration;",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/EventRegistration;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    new-instance v0, Lcom/google/firebase/database/core/ZombieEventManager;

    invoke-direct {v0}, Lcom/google/firebase/database/core/ZombieEventManager;-><init>()V

    sput-object v0, Lcom/google/firebase/database/core/ZombieEventManager;->defaultInstance:Lcom/google/firebase/database/core/ZombieEventManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    .line 43
    return-void
.end method

.method public static getInstance()Lcom/google/firebase/database/core/ZombieEventManager;
    .registers 1

    .line 47
    sget-object v0, Lcom/google/firebase/database/core/ZombieEventManager;->defaultInstance:Lcom/google/firebase/database/core/ZombieEventManager;

    return-object v0
.end method

.method private unRecordEventRegistration(Lcom/google/firebase/database/core/EventRegistration;)V
    .registers 8
    .param p1, "zombiedRegistration"    # Lcom/google/firebase/database/core/EventRegistration;

    .line 78
    iget-object v0, p0, Lcom/google/firebase/database/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    monitor-enter v0

    .line 79
    const/4 v1, 0x0

    .line 81
    .local v1, "found":Z
    :try_start_4
    iget-object v2, p0, Lcom/google/firebase/database/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 82
    .local v2, "registrationList":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/EventRegistration;>;"
    if-eqz v2, :cond_2e

    .line 83
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_23

    .line 84
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_20

    .line 85
    const/4 v1, 0x1

    .line 86
    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 87
    goto :goto_23

    .line 83
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 90
    .end local v3    # "i":I
    :cond_23
    :goto_23
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 91
    iget-object v3, p0, Lcom/google/firebase/database/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_2e
    if-nez v1, :cond_39

    invoke-virtual {p1}, Lcom/google/firebase/database/core/EventRegistration;->isUserInitiated()Z

    move-result v3

    if-nez v3, :cond_37

    goto :goto_39

    :cond_37
    const/4 v3, 0x0

    goto :goto_3a

    :cond_39
    :goto_39
    const/4 v3, 0x1

    :goto_3a
    invoke-static {v3}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(Z)V

    .line 98
    invoke-virtual {p1}, Lcom/google/firebase/database/core/EventRegistration;->getQuerySpec()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/database/core/view/QuerySpec;->isDefault()Z

    move-result v3

    if-nez v3, :cond_82

    .line 99
    nop

    .line 101
    invoke-virtual {p1}, Lcom/google/firebase/database/core/EventRegistration;->getQuerySpec()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v3

    invoke-static {v3}, Lcom/google/firebase/database/core/view/QuerySpec;->defaultQueryAtPath(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v3

    .line 100
    invoke-virtual {p1, v3}, Lcom/google/firebase/database/core/EventRegistration;->clone(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/EventRegistration;

    move-result-object v3

    .line 103
    .local v3, "defaultRegistration":Lcom/google/firebase/database/core/EventRegistration;
    iget-object v4, p0, Lcom/google/firebase/database/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    move-object v2, v4

    .line 104
    if-eqz v2, :cond_82

    .line 105
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_64
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_77

    .line 106
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p1, :cond_74

    .line 107
    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 108
    goto :goto_77

    .line 105
    :cond_74
    add-int/lit8 v4, v4, 0x1

    goto :goto_64

    .line 111
    .end local v4    # "i":I
    :cond_77
    :goto_77
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_82

    .line 112
    iget-object v4, p0, Lcom/google/firebase/database/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .end local v1    # "found":Z
    .end local v2    # "registrationList":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/EventRegistration;>;"
    .end local v3    # "defaultRegistration":Lcom/google/firebase/database/core/EventRegistration;
    :cond_82
    monitor-exit v0

    .line 117
    return-void

    .line 116
    :catchall_84
    move-exception v1

    monitor-exit v0
    :try_end_86
    .catchall {:try_start_4 .. :try_end_86} :catchall_84

    throw v1
.end method


# virtual methods
.method public onZombied(Lcom/google/firebase/database/core/EventRegistration;)V
    .registers 2
    .param p1, "zombiedInstance"    # Lcom/google/firebase/database/core/EventRegistration;

    .line 155
    invoke-direct {p0, p1}, Lcom/google/firebase/database/core/ZombieEventManager;->unRecordEventRegistration(Lcom/google/firebase/database/core/EventRegistration;)V

    .line 156
    return-void
.end method

.method public recordEventRegistration(Lcom/google/firebase/database/core/EventRegistration;)V
    .registers 6
    .param p1, "registration"    # Lcom/google/firebase/database/core/EventRegistration;

    .line 51
    iget-object v0, p0, Lcom/google/firebase/database/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    monitor-enter v0

    .line 52
    :try_start_3
    iget-object v1, p0, Lcom/google/firebase/database/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 53
    .local v1, "registrationList":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/EventRegistration;>;"
    if-nez v1, :cond_18

    .line 54
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 55
    iget-object v2, p0, Lcom/google/firebase/database/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_18
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-virtual {p1}, Lcom/google/firebase/database/core/EventRegistration;->getQuerySpec()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/QuerySpec;->isDefault()Z

    move-result v2

    if-nez v2, :cond_4f

    .line 62
    nop

    .line 63
    invoke-virtual {p1}, Lcom/google/firebase/database/core/EventRegistration;->getQuerySpec()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-static {v2}, Lcom/google/firebase/database/core/view/QuerySpec;->defaultQueryAtPath(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/firebase/database/core/EventRegistration;->clone(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/EventRegistration;

    move-result-object v2

    .line 64
    .local v2, "defaultRegistration":Lcom/google/firebase/database/core/EventRegistration;
    iget-object v3, p0, Lcom/google/firebase/database/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object v1, v3

    .line 65
    if-nez v1, :cond_4c

    .line 66
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v3

    .line 67
    iget-object v3, p0, Lcom/google/firebase/database/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_4c
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    .end local v2    # "defaultRegistration":Lcom/google/firebase/database/core/EventRegistration;
    :cond_4f
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/google/firebase/database/core/EventRegistration;->setIsUserInitiated(Z)V

    .line 73
    invoke-virtual {p1, p0}, Lcom/google/firebase/database/core/EventRegistration;->setOnZombied(Lcom/google/firebase/database/core/EventRegistrationZombieListener;)V

    .line 74
    .end local v1    # "registrationList":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/EventRegistration;>;"
    monitor-exit v0

    .line 75
    return-void

    .line 74
    :catchall_58
    move-exception v1

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_3 .. :try_end_5a} :catchall_58

    throw v1
.end method

.method public zombifyForRemove(Lcom/google/firebase/database/core/EventRegistration;)V
    .registers 8
    .param p1, "registration"    # Lcom/google/firebase/database/core/EventRegistration;

    .line 120
    iget-object v0, p0, Lcom/google/firebase/database/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    monitor-enter v0

    .line 121
    :try_start_3
    iget-object v1, p0, Lcom/google/firebase/database/core/ZombieEventManager;->globalEventRegistrations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 122
    .local v1, "registrationList":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/EventRegistration;>;"
    if-eqz v1, :cond_52

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_52

    .line 123
    invoke-virtual {p1}, Lcom/google/firebase/database/core/EventRegistration;->getQuerySpec()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/QuerySpec;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 135
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 137
    .local v2, "zombiedQueries":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/google/firebase/database/core/view/QuerySpec;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_28
    if-ltz v3, :cond_47

    .line 138
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/database/core/EventRegistration;

    .line 139
    .local v4, "currentRegistration":Lcom/google/firebase/database/core/EventRegistration;
    invoke-virtual {v4}, Lcom/google/firebase/database/core/EventRegistration;->getQuerySpec()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_44

    .line 140
    invoke-virtual {v4}, Lcom/google/firebase/database/core/EventRegistration;->getQuerySpec()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 141
    invoke-virtual {v4}, Lcom/google/firebase/database/core/EventRegistration;->zombify()V

    .line 137
    .end local v4    # "currentRegistration":Lcom/google/firebase/database/core/EventRegistration;
    :cond_44
    add-int/lit8 v3, v3, -0x1

    goto :goto_28

    .line 144
    .end local v2    # "zombiedQueries":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/google/firebase/database/core/view/QuerySpec;>;"
    .end local v3    # "i":I
    :cond_47
    goto :goto_52

    .line 147
    :cond_48
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/core/EventRegistration;

    invoke-virtual {v2}, Lcom/google/firebase/database/core/EventRegistration;->zombify()V

    .line 150
    .end local v1    # "registrationList":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/EventRegistration;>;"
    :cond_52
    :goto_52
    monitor-exit v0

    .line 151
    return-void

    .line 150
    :catchall_54
    move-exception v1

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_3 .. :try_end_56} :catchall_54

    throw v1
.end method
