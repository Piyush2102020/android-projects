.class Lcom/google/firebase/database/core/SyncTree$7;
.super Ljava/lang/Object;
.source "SyncTree.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/SyncTree;->applyListenComplete(Lcom/google/firebase/database/core/Path;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "+",
        "Lcom/google/firebase/database/core/view/Event;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/core/SyncTree;

.field final synthetic val$path:Lcom/google/firebase/database/core/Path;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/Path;)V
    .registers 3
    .param p1, "this$0"    # Lcom/google/firebase/database/core/SyncTree;

    .line 373
    iput-object p1, p0, Lcom/google/firebase/database/core/SyncTree$7;->this$0:Lcom/google/firebase/database/core/SyncTree;

    iput-object p2, p0, Lcom/google/firebase/database/core/SyncTree$7;->val$path:Lcom/google/firebase/database/core/Path;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 373
    invoke-virtual {p0}, Lcom/google/firebase/database/core/SyncTree$7;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/database/core/view/Event;",
            ">;"
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree$7;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v0}, Lcom/google/firebase/database/core/SyncTree;->access$100(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/persistence/PersistenceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/core/SyncTree$7;->val$path:Lcom/google/firebase/database/core/Path;

    invoke-static {v1}, Lcom/google/firebase/database/core/view/QuerySpec;->defaultQueryAtPath(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/firebase/database/core/persistence/PersistenceManager;->setQueryComplete(Lcom/google/firebase/database/core/view/QuerySpec;)V

    .line 377
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree$7;->this$0:Lcom/google/firebase/database/core/SyncTree;

    new-instance v1, Lcom/google/firebase/database/core/operation/ListenComplete;

    sget-object v2, Lcom/google/firebase/database/core/operation/OperationSource;->SERVER:Lcom/google/firebase/database/core/operation/OperationSource;

    iget-object v3, p0, Lcom/google/firebase/database/core/SyncTree$7;->val$path:Lcom/google/firebase/database/core/Path;

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/database/core/operation/ListenComplete;-><init>(Lcom/google/firebase/database/core/operation/OperationSource;Lcom/google/firebase/database/core/Path;)V

    invoke-static {v0, v1}, Lcom/google/firebase/database/core/SyncTree;->access$300(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/operation/Operation;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
