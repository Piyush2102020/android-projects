.class Lcom/google/firebase/database/core/SyncTree$ListenContainer;
.super Ljava/lang/Object;
.source "SyncTree.java"

# interfaces
.implements Lcom/google/firebase/database/connection/ListenHashProvider;
.implements Lcom/google/firebase/database/core/SyncTree$CompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/core/SyncTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenContainer"
.end annotation


# instance fields
.field private final tag:Lcom/google/firebase/database/core/Tag;

.field final synthetic this$0:Lcom/google/firebase/database/core/SyncTree;

.field private final view:Lcom/google/firebase/database/core/view/View;


# direct methods
.method public constructor <init>(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/view/View;)V
    .registers 4
    .param p2, "view"    # Lcom/google/firebase/database/core/view/View;

    .line 104
    iput-object p1, p0, Lcom/google/firebase/database/core/SyncTree$ListenContainer;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p2, p0, Lcom/google/firebase/database/core/SyncTree$ListenContainer;->view:Lcom/google/firebase/database/core/view/View;

    .line 106
    invoke-virtual {p2}, Lcom/google/firebase/database/core/view/View;->getQuery()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/core/SyncTree;->tagForQuery(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/Tag;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/database/core/SyncTree$ListenContainer;->tag:Lcom/google/firebase/database/core/Tag;

    .line 107
    return-void
.end method

.method static synthetic access$1300(Lcom/google/firebase/database/core/SyncTree$ListenContainer;)Lcom/google/firebase/database/core/Tag;
    .registers 2
    .param p0, "x0"    # Lcom/google/firebase/database/core/SyncTree$ListenContainer;

    .line 100
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree$ListenContainer;->tag:Lcom/google/firebase/database/core/Tag;

    return-object v0
.end method


# virtual methods
.method public getCompoundHash()Lcom/google/firebase/database/connection/CompoundHash;
    .registers 7

    .line 111
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree$ListenContainer;->view:Lcom/google/firebase/database/core/view/View;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/View;->getServerCache()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/snapshot/CompoundHash;->fromNode(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/CompoundHash;

    move-result-object v0

    .line 112
    .local v0, "hash":Lcom/google/firebase/database/snapshot/CompoundHash;
    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/CompoundHash;->getPosts()Ljava/util/List;

    move-result-object v1

    .line 113
    .local v1, "pathPosts":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/Path;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 114
    .local v2, "posts":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/database/core/Path;

    .line 115
    .local v4, "path":Lcom/google/firebase/database/core/Path;
    invoke-virtual {v4}, Lcom/google/firebase/database/core/Path;->asList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    .end local v4    # "path":Lcom/google/firebase/database/core/Path;
    goto :goto_1b

    .line 117
    :cond_2f
    new-instance v3, Lcom/google/firebase/database/connection/CompoundHash;

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/CompoundHash;->getHashes()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/google/firebase/database/connection/CompoundHash;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v3
.end method

.method public getSimpleHash()Ljava/lang/String;
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree$ListenContainer;->view:Lcom/google/firebase/database/core/view/View;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/View;->getServerCache()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->getHash()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onListenComplete(Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;
    .registers 5
    .param p1, "error"    # Lcom/google/firebase/database/DatabaseError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/DatabaseError;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/database/core/view/Event;",
            ">;"
        }
    .end annotation

    .line 133
    if-nez p1, :cond_1e

    .line 134
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree$ListenContainer;->view:Lcom/google/firebase/database/core/view/View;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/View;->getQuery()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v0

    .line 135
    .local v0, "query":Lcom/google/firebase/database/core/view/QuerySpec;
    iget-object v1, p0, Lcom/google/firebase/database/core/SyncTree$ListenContainer;->tag:Lcom/google/firebase/database/core/Tag;

    if-eqz v1, :cond_13

    .line 136
    iget-object v2, p0, Lcom/google/firebase/database/core/SyncTree$ListenContainer;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-virtual {v2, v1}, Lcom/google/firebase/database/core/SyncTree;->applyTaggedListenComplete(Lcom/google/firebase/database/core/Tag;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 138
    :cond_13
    iget-object v1, p0, Lcom/google/firebase/database/core/SyncTree$ListenContainer;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/core/SyncTree;->applyListenComplete(Lcom/google/firebase/database/core/Path;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 141
    .end local v0    # "query":Lcom/google/firebase/database/core/view/QuerySpec;
    :cond_1e
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree$ListenContainer;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v0}, Lcom/google/firebase/database/core/SyncTree;->access$000(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Listen at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/database/core/SyncTree$ListenContainer;->view:Lcom/google/firebase/database/core/view/View;

    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/View;->getQuery()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/database/DatabaseError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/logging/LogWrapper;->warn(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree$ListenContainer;->this$0:Lcom/google/firebase/database/core/SyncTree;

    iget-object v1, p0, Lcom/google/firebase/database/core/SyncTree$ListenContainer;->view:Lcom/google/firebase/database/core/view/View;

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/View;->getQuery()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/database/core/SyncTree;->removeAllEventRegistrations(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public shouldIncludeCompoundHash()Z
    .registers 5

    .line 127
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree$ListenContainer;->view:Lcom/google/firebase/database/core/view/View;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/View;->getServerCache()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/core/utilities/NodeSizeEstimator;->estimateSerializedNodeSize(Lcom/google/firebase/database/snapshot/Node;)J

    move-result-wide v0

    const-wide/16 v2, 0x400

    cmp-long v0, v0, v2

    if-lez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method
