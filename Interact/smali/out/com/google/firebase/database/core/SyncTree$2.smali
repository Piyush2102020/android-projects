.class Lcom/google/firebase/database/core/SyncTree$2;
.super Ljava/lang/Object;
.source "SyncTree.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/SyncTree;->applyUserMerge(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;Lcom/google/firebase/database/core/CompoundWrite;JZ)Ljava/util/List;
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

.field final synthetic val$children:Lcom/google/firebase/database/core/CompoundWrite;

.field final synthetic val$path:Lcom/google/firebase/database/core/Path;

.field final synthetic val$persist:Z

.field final synthetic val$unresolvedChildren:Lcom/google/firebase/database/core/CompoundWrite;

.field final synthetic val$writeId:J


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/SyncTree;ZLcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;JLcom/google/firebase/database/core/CompoundWrite;)V
    .registers 8
    .param p1, "this$0"    # Lcom/google/firebase/database/core/SyncTree;

    .line 217
    iput-object p1, p0, Lcom/google/firebase/database/core/SyncTree$2;->this$0:Lcom/google/firebase/database/core/SyncTree;

    iput-boolean p2, p0, Lcom/google/firebase/database/core/SyncTree$2;->val$persist:Z

    iput-object p3, p0, Lcom/google/firebase/database/core/SyncTree$2;->val$path:Lcom/google/firebase/database/core/Path;

    iput-object p4, p0, Lcom/google/firebase/database/core/SyncTree$2;->val$unresolvedChildren:Lcom/google/firebase/database/core/CompoundWrite;

    iput-wide p5, p0, Lcom/google/firebase/database/core/SyncTree$2;->val$writeId:J

    iput-object p7, p0, Lcom/google/firebase/database/core/SyncTree$2;->val$children:Lcom/google/firebase/database/core/CompoundWrite;

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

    .line 217
    invoke-virtual {p0}, Lcom/google/firebase/database/core/SyncTree$2;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/database/core/view/Event;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 220
    iget-boolean v0, p0, Lcom/google/firebase/database/core/SyncTree$2;->val$persist:Z

    if-eqz v0, :cond_13

    .line 221
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree$2;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v0}, Lcom/google/firebase/database/core/SyncTree;->access$100(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/persistence/PersistenceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/core/SyncTree$2;->val$path:Lcom/google/firebase/database/core/Path;

    iget-object v2, p0, Lcom/google/firebase/database/core/SyncTree$2;->val$unresolvedChildren:Lcom/google/firebase/database/core/CompoundWrite;

    iget-wide v3, p0, Lcom/google/firebase/database/core/SyncTree$2;->val$writeId:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/firebase/database/core/persistence/PersistenceManager;->saveUserMerge(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;J)V

    .line 223
    :cond_13
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree$2;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v0}, Lcom/google/firebase/database/core/SyncTree;->access$200(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/WriteTree;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/core/SyncTree$2;->val$path:Lcom/google/firebase/database/core/Path;

    iget-object v2, p0, Lcom/google/firebase/database/core/SyncTree$2;->val$children:Lcom/google/firebase/database/core/CompoundWrite;

    iget-wide v3, p0, Lcom/google/firebase/database/core/SyncTree$2;->val$writeId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/firebase/database/core/WriteTree;->addMerge(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;Ljava/lang/Long;)V

    .line 225
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree$2;->this$0:Lcom/google/firebase/database/core/SyncTree;

    new-instance v1, Lcom/google/firebase/database/core/operation/Merge;

    sget-object v2, Lcom/google/firebase/database/core/operation/OperationSource;->USER:Lcom/google/firebase/database/core/operation/OperationSource;

    iget-object v3, p0, Lcom/google/firebase/database/core/SyncTree$2;->val$path:Lcom/google/firebase/database/core/Path;

    iget-object v4, p0, Lcom/google/firebase/database/core/SyncTree$2;->val$children:Lcom/google/firebase/database/core/CompoundWrite;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/firebase/database/core/operation/Merge;-><init>(Lcom/google/firebase/database/core/operation/OperationSource;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;)V

    invoke-static {v0, v1}, Lcom/google/firebase/database/core/SyncTree;->access$300(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/operation/Operation;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
