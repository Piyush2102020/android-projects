.class Lcom/google/firebase/database/core/Repo$11;
.super Ljava/lang/Object;
.source "Repo.java"

# interfaces
.implements Lcom/google/firebase/database/connection/RequestResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/Repo;->onDisconnectSetValue(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/core/Repo;

.field final synthetic val$newValue:Lcom/google/firebase/database/snapshot/Node;

.field final synthetic val$onComplete:Lcom/google/firebase/database/DatabaseReference$CompletionListener;

.field final synthetic val$path:Lcom/google/firebase/database/core/Path;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .registers 5
    .param p1, "this$0"    # Lcom/google/firebase/database/core/Repo;

    .line 668
    iput-object p1, p0, Lcom/google/firebase/database/core/Repo$11;->this$0:Lcom/google/firebase/database/core/Repo;

    iput-object p2, p0, Lcom/google/firebase/database/core/Repo$11;->val$path:Lcom/google/firebase/database/core/Path;

    iput-object p3, p0, Lcom/google/firebase/database/core/Repo$11;->val$newValue:Lcom/google/firebase/database/snapshot/Node;

    iput-object p4, p0, Lcom/google/firebase/database/core/Repo$11;->val$onComplete:Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestResult(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "optErrorCode"    # Ljava/lang/String;
    .param p2, "optErrorMessage"    # Ljava/lang/String;

    .line 671
    invoke-static {p1, p2}, Lcom/google/firebase/database/core/Repo;->access$600(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object v0

    .line 672
    .local v0, "error":Lcom/google/firebase/database/DatabaseError;
    iget-object v1, p0, Lcom/google/firebase/database/core/Repo$11;->this$0:Lcom/google/firebase/database/core/Repo;

    const-string v2, "onDisconnect().setValue"

    iget-object v3, p0, Lcom/google/firebase/database/core/Repo$11;->val$path:Lcom/google/firebase/database/core/Path;

    invoke-static {v1, v2, v3, v0}, Lcom/google/firebase/database/core/Repo;->access$700(Lcom/google/firebase/database/core/Repo;Ljava/lang/String;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/DatabaseError;)V

    .line 673
    if-nez v0, :cond_1c

    .line 674
    iget-object v1, p0, Lcom/google/firebase/database/core/Repo$11;->this$0:Lcom/google/firebase/database/core/Repo;

    invoke-static {v1}, Lcom/google/firebase/database/core/Repo;->access$1100(Lcom/google/firebase/database/core/Repo;)Lcom/google/firebase/database/core/SparseSnapshotTree;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/database/core/Repo$11;->val$path:Lcom/google/firebase/database/core/Path;

    iget-object v3, p0, Lcom/google/firebase/database/core/Repo$11;->val$newValue:Lcom/google/firebase/database/snapshot/Node;

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/database/core/SparseSnapshotTree;->remember(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V

    .line 676
    :cond_1c
    iget-object v1, p0, Lcom/google/firebase/database/core/Repo$11;->this$0:Lcom/google/firebase/database/core/Repo;

    iget-object v2, p0, Lcom/google/firebase/database/core/Repo$11;->val$onComplete:Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    iget-object v3, p0, Lcom/google/firebase/database/core/Repo$11;->val$path:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/firebase/database/core/Repo;->callOnComplete(Lcom/google/firebase/database/DatabaseReference$CompletionListener;Lcom/google/firebase/database/DatabaseError;Lcom/google/firebase/database/core/Path;)V

    .line 677
    return-void
.end method
