.class Lcom/google/firebase/database/core/Repo$25;
.super Ljava/lang/Object;
.source "Repo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/Repo;->abortTransactionsAtNode(Lcom/google/firebase/database/core/utilities/Tree;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/core/Repo;

.field final synthetic val$abortError:Lcom/google/firebase/database/DatabaseError;

.field final synthetic val$transaction:Lcom/google/firebase/database/core/Repo$TransactionData;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Repo$TransactionData;Lcom/google/firebase/database/DatabaseError;)V
    .registers 4
    .param p1, "this$0"    # Lcom/google/firebase/database/core/Repo;

    .line 1476
    iput-object p1, p0, Lcom/google/firebase/database/core/Repo$25;->this$0:Lcom/google/firebase/database/core/Repo;

    iput-object p2, p0, Lcom/google/firebase/database/core/Repo$25;->val$transaction:Lcom/google/firebase/database/core/Repo$TransactionData;

    iput-object p3, p0, Lcom/google/firebase/database/core/Repo$25;->val$abortError:Lcom/google/firebase/database/DatabaseError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1479
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$25;->val$transaction:Lcom/google/firebase/database/core/Repo$TransactionData;

    invoke-static {v0}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$2400(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/Transaction$Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/core/Repo$25;->val$abortError:Lcom/google/firebase/database/DatabaseError;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/firebase/database/Transaction$Handler;->onComplete(Lcom/google/firebase/database/DatabaseError;ZLcom/google/firebase/database/DataSnapshot;)V

    .line 1480
    return-void
.end method
