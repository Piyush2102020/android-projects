.class Lcom/google/firebase/database/core/Repo$12;
.super Ljava/lang/Object;
.source "Repo.java"

# interfaces
.implements Lcom/google/firebase/database/connection/RequestResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/Repo;->onDisconnectUpdate(Lcom/google/firebase/database/core/Path;Ljava/util/Map;Lcom/google/firebase/database/DatabaseReference$CompletionListener;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/core/Repo;

.field final synthetic val$listener:Lcom/google/firebase/database/DatabaseReference$CompletionListener;

.field final synthetic val$newChildren:Ljava/util/Map;

.field final synthetic val$path:Lcom/google/firebase/database/core/Path;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;Ljava/util/Map;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .registers 5
    .param p1, "this$0"    # Lcom/google/firebase/database/core/Repo;

    .line 689
    iput-object p1, p0, Lcom/google/firebase/database/core/Repo$12;->this$0:Lcom/google/firebase/database/core/Repo;

    iput-object p2, p0, Lcom/google/firebase/database/core/Repo$12;->val$path:Lcom/google/firebase/database/core/Path;

    iput-object p3, p0, Lcom/google/firebase/database/core/Repo$12;->val$newChildren:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/firebase/database/core/Repo$12;->val$listener:Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestResult(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "optErrorCode"    # Ljava/lang/String;
    .param p2, "optErrorMessage"    # Ljava/lang/String;

    .line 692
    invoke-static {p1, p2}, Lcom/google/firebase/database/core/Repo;->access$600(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object v0

    .line 693
    .local v0, "error":Lcom/google/firebase/database/DatabaseError;
    iget-object v1, p0, Lcom/google/firebase/database/core/Repo$12;->this$0:Lcom/google/firebase/database/core/Repo;

    const-string v2, "onDisconnect().updateChildren"

    iget-object v3, p0, Lcom/google/firebase/database/core/Repo$12;->val$path:Lcom/google/firebase/database/core/Path;

    invoke-static {v1, v2, v3, v0}, Lcom/google/firebase/database/core/Repo;->access$700(Lcom/google/firebase/database/core/Repo;Ljava/lang/String;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/DatabaseError;)V

    .line 694
    if-nez v0, :cond_41

    .line 695
    iget-object v1, p0, Lcom/google/firebase/database/core/Repo$12;->val$newChildren:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 696
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;>;"
    iget-object v3, p0, Lcom/google/firebase/database/core/Repo$12;->this$0:Lcom/google/firebase/database/core/Repo;

    invoke-static {v3}, Lcom/google/firebase/database/core/Repo;->access$1100(Lcom/google/firebase/database/core/Repo;)Lcom/google/firebase/database/core/SparseSnapshotTree;

    move-result-object v3

    iget-object v4, p0, Lcom/google/firebase/database/core/Repo$12;->val$path:Lcom/google/firebase/database/core/Path;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/database/core/Path;

    invoke-virtual {v4, v5}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/database/snapshot/Node;

    invoke-virtual {v3, v4, v5}, Lcom/google/firebase/database/core/SparseSnapshotTree;->remember(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V

    .line 697
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;>;"
    goto :goto_19

    .line 699
    :cond_41
    iget-object v1, p0, Lcom/google/firebase/database/core/Repo$12;->this$0:Lcom/google/firebase/database/core/Repo;

    iget-object v2, p0, Lcom/google/firebase/database/core/Repo$12;->val$listener:Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    iget-object v3, p0, Lcom/google/firebase/database/core/Repo$12;->val$path:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/firebase/database/core/Repo;->callOnComplete(Lcom/google/firebase/database/DatabaseReference$CompletionListener;Lcom/google/firebase/database/DatabaseError;Lcom/google/firebase/database/core/Path;)V

    .line 700
    return-void
.end method
