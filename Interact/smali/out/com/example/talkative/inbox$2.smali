.class Lcom/example/talkative/inbox$2;
.super Ljava/lang/Object;
.source "inbox.java"

# interfaces
.implements Lcom/google/firebase/database/ChildEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/talkative/inbox;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/talkative/inbox;


# direct methods
.method constructor <init>(Lcom/example/talkative/inbox;)V
    .registers 2
    .param p1, "this$0"    # Lcom/example/talkative/inbox;

    .line 77
    iput-object p1, p0, Lcom/example/talkative/inbox$2;->this$0:Lcom/example/talkative/inbox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/google/firebase/database/DatabaseError;)V
    .registers 2
    .param p1, "databaseError"    # Lcom/google/firebase/database/DatabaseError;

    .line 126
    return-void
.end method

.method public onChildAdded(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .registers 6
    .param p1, "dataSnapshot"    # Lcom/google/firebase/database/DataSnapshot;
    .param p2, "previousChildKey"    # Ljava/lang/String;

    .line 80
    const-class v0, Lcom/example/talkative/PrivateMessage;

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/DataSnapshot;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/talkative/PrivateMessage;

    .line 81
    .local v0, "message":Lcom/example/talkative/PrivateMessage;
    if-eqz v0, :cond_43

    iget-object v1, p0, Lcom/example/talkative/inbox$2;->this$0:Lcom/example/talkative/inbox;

    invoke-static {v1, v0}, Lcom/example/talkative/inbox;->access$300(Lcom/example/talkative/inbox;Lcom/example/talkative/PrivateMessage;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 82
    iget-object v1, p0, Lcom/example/talkative/inbox$2;->this$0:Lcom/example/talkative/inbox;

    invoke-static {v1}, Lcom/example/talkative/inbox;->access$400(Lcom/example/talkative/inbox;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v1, p0, Lcom/example/talkative/inbox$2;->this$0:Lcom/example/talkative/inbox;

    invoke-static {v1}, Lcom/example/talkative/inbox;->access$500(Lcom/example/talkative/inbox;)Lcom/example/talkative/PrivateMessageAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/example/talkative/inbox$2;->this$0:Lcom/example/talkative/inbox;

    invoke-static {v2}, Lcom/example/talkative/inbox;->access$400(Lcom/example/talkative/inbox;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/example/talkative/PrivateMessageAdapter;->notifyItemInserted(I)V

    .line 84
    iget-object v1, p0, Lcom/example/talkative/inbox$2;->this$0:Lcom/example/talkative/inbox;

    iget-object v1, v1, Lcom/example/talkative/inbox;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/example/talkative/inbox$2;->this$0:Lcom/example/talkative/inbox;

    invoke-static {v2}, Lcom/example/talkative/inbox;->access$400(Lcom/example/talkative/inbox;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 86
    :cond_43
    return-void
.end method

.method public onChildChanged(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .registers 8
    .param p1, "dataSnapshot"    # Lcom/google/firebase/database/DataSnapshot;
    .param p2, "previousChildKey"    # Ljava/lang/String;

    .line 90
    const-class v0, Lcom/example/talkative/PrivateMessage;

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/DataSnapshot;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/talkative/PrivateMessage;

    .line 91
    .local v0, "updatedMessage":Lcom/example/talkative/PrivateMessage;
    if-eqz v0, :cond_47

    .line 92
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    iget-object v2, p0, Lcom/example/talkative/inbox$2;->this$0:Lcom/example/talkative/inbox;

    invoke-static {v2}, Lcom/example/talkative/inbox;->access$400(Lcom/example/talkative/inbox;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_47

    .line 93
    iget-object v2, p0, Lcom/example/talkative/inbox$2;->this$0:Lcom/example/talkative/inbox;

    invoke-static {v2}, Lcom/example/talkative/inbox;->access$400(Lcom/example/talkative/inbox;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/example/talkative/PrivateMessage;

    .line 94
    .local v2, "message":Lcom/example/talkative/PrivateMessage;
    invoke-virtual {v2}, Lcom/example/talkative/PrivateMessage;->getMessageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/example/talkative/PrivateMessage;->getMessageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 95
    iget-object v3, p0, Lcom/example/talkative/inbox$2;->this$0:Lcom/example/talkative/inbox;

    invoke-static {v3}, Lcom/example/talkative/inbox;->access$400(Lcom/example/talkative/inbox;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v3, p0, Lcom/example/talkative/inbox$2;->this$0:Lcom/example/talkative/inbox;

    invoke-static {v3}, Lcom/example/talkative/inbox;->access$500(Lcom/example/talkative/inbox;)Lcom/example/talkative/PrivateMessageAdapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/example/talkative/PrivateMessageAdapter;->notifyItemChanged(I)V

    .line 97
    goto :goto_47

    .line 92
    .end local v2    # "message":Lcom/example/talkative/PrivateMessage;
    :cond_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 101
    .end local v1    # "i":I
    :cond_47
    :goto_47
    return-void
.end method

.method public onChildMoved(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .registers 3
    .param p1, "dataSnapshot"    # Lcom/google/firebase/database/DataSnapshot;
    .param p2, "previousChildKey"    # Ljava/lang/String;

    .line 121
    return-void
.end method

.method public onChildRemoved(Lcom/google/firebase/database/DataSnapshot;)V
    .registers 7
    .param p1, "dataSnapshot"    # Lcom/google/firebase/database/DataSnapshot;

    .line 105
    const-class v0, Lcom/example/talkative/PrivateMessage;

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/DataSnapshot;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/talkative/PrivateMessage;

    .line 106
    .local v0, "removedMessage":Lcom/example/talkative/PrivateMessage;
    if-eqz v0, :cond_47

    .line 107
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    iget-object v2, p0, Lcom/example/talkative/inbox$2;->this$0:Lcom/example/talkative/inbox;

    invoke-static {v2}, Lcom/example/talkative/inbox;->access$400(Lcom/example/talkative/inbox;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_47

    .line 108
    iget-object v2, p0, Lcom/example/talkative/inbox$2;->this$0:Lcom/example/talkative/inbox;

    invoke-static {v2}, Lcom/example/talkative/inbox;->access$400(Lcom/example/talkative/inbox;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/example/talkative/PrivateMessage;

    .line 109
    .local v2, "message":Lcom/example/talkative/PrivateMessage;
    invoke-virtual {v2}, Lcom/example/talkative/PrivateMessage;->getMessageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/example/talkative/PrivateMessage;->getMessageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 110
    iget-object v3, p0, Lcom/example/talkative/inbox$2;->this$0:Lcom/example/talkative/inbox;

    invoke-static {v3}, Lcom/example/talkative/inbox;->access$400(Lcom/example/talkative/inbox;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 111
    iget-object v3, p0, Lcom/example/talkative/inbox$2;->this$0:Lcom/example/talkative/inbox;

    invoke-static {v3}, Lcom/example/talkative/inbox;->access$500(Lcom/example/talkative/inbox;)Lcom/example/talkative/PrivateMessageAdapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/example/talkative/PrivateMessageAdapter;->notifyItemRemoved(I)V

    .line 112
    goto :goto_47

    .line 107
    .end local v2    # "message":Lcom/example/talkative/PrivateMessage;
    :cond_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 116
    .end local v1    # "i":I
    :cond_47
    :goto_47
    return-void
.end method
