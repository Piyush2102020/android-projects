.class Lcom/google/firebase/database/DataSnapshot$1$1;
.super Ljava/lang/Object;
.source "DataSnapshot.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/DataSnapshot$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/google/firebase/database/DataSnapshot;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/firebase/database/DataSnapshot$1;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/DataSnapshot$1;)V
    .registers 2
    .param p1, "this$1"    # Lcom/google/firebase/database/DataSnapshot$1;

    .line 274
    iput-object p1, p0, Lcom/google/firebase/database/DataSnapshot$1$1;->this$1:Lcom/google/firebase/database/DataSnapshot$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 277
    iget-object v0, p0, Lcom/google/firebase/database/DataSnapshot$1$1;->this$1:Lcom/google/firebase/database/DataSnapshot$1;

    iget-object v0, v0, Lcom/google/firebase/database/DataSnapshot$1;->val$iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Lcom/google/firebase/database/DataSnapshot;
    .registers 5

    .line 283
    iget-object v0, p0, Lcom/google/firebase/database/DataSnapshot$1$1;->this$1:Lcom/google/firebase/database/DataSnapshot$1;

    iget-object v0, v0, Lcom/google/firebase/database/DataSnapshot$1;->val$iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/snapshot/NamedNode;

    .line 284
    .local v0, "namedNode":Lcom/google/firebase/database/snapshot/NamedNode;
    new-instance v1, Lcom/google/firebase/database/DataSnapshot;

    iget-object v2, p0, Lcom/google/firebase/database/DataSnapshot$1$1;->this$1:Lcom/google/firebase/database/DataSnapshot$1;

    iget-object v2, v2, Lcom/google/firebase/database/DataSnapshot$1;->this$0:Lcom/google/firebase/database/DataSnapshot;

    .line 285
    invoke-static {v2}, Lcom/google/firebase/database/DataSnapshot;->access$000(Lcom/google/firebase/database/DataSnapshot;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/database/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    invoke-static {v3}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/database/DataSnapshot;-><init>(Lcom/google/firebase/database/DatabaseReference;Lcom/google/firebase/database/snapshot/IndexedNode;)V

    .line 284
    return-object v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 274
    invoke-virtual {p0}, Lcom/google/firebase/database/DataSnapshot$1$1;->next()Lcom/google/firebase/database/DataSnapshot;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    .line 290
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove called on immutable collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
