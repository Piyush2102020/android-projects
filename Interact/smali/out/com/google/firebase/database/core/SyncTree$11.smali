.class Lcom/google/firebase/database/core/SyncTree$11;
.super Ljava/lang/Object;
.source "SyncTree.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/SyncTree;->setQueryActive(Lcom/google/firebase/database/core/view/QuerySpec;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/core/SyncTree;

.field final synthetic val$query:Lcom/google/firebase/database/core/view/QuerySpec;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/view/QuerySpec;)V
    .registers 3
    .param p1, "this$0"    # Lcom/google/firebase/database/core/SyncTree;

    .line 462
    iput-object p1, p0, Lcom/google/firebase/database/core/SyncTree$11;->this$0:Lcom/google/firebase/database/core/SyncTree;

    iput-object p2, p0, Lcom/google/firebase/database/core/SyncTree$11;->val$query:Lcom/google/firebase/database/core/view/QuerySpec;

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

    .line 462
    invoke-virtual {p0}, Lcom/google/firebase/database/core/SyncTree$11;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 3

    .line 465
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree$11;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v0}, Lcom/google/firebase/database/core/SyncTree;->access$100(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/persistence/PersistenceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/core/SyncTree$11;->val$query:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-interface {v0, v1}, Lcom/google/firebase/database/core/persistence/PersistenceManager;->setQueryActive(Lcom/google/firebase/database/core/view/QuerySpec;)V

    .line 466
    const/4 v0, 0x0

    return-object v0
.end method
