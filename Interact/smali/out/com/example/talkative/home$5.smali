.class Lcom/example/talkative/home$5;
.super Ljava/lang/Object;
.source "home.java"

# interfaces
.implements Lcom/google/firebase/database/ValueEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/talkative/home;->retrieveMessages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/talkative/home;


# direct methods
.method constructor <init>(Lcom/example/talkative/home;)V
    .registers 2
    .param p1, "this$0"    # Lcom/example/talkative/home;

    .line 163
    iput-object p1, p0, Lcom/example/talkative/home$5;->this$0:Lcom/example/talkative/home;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/google/firebase/database/DatabaseError;)V
    .registers 2
    .param p1, "databaseError"    # Lcom/google/firebase/database/DatabaseError;

    .line 184
    return-void
.end method

.method public onDataChange(Lcom/google/firebase/database/DataSnapshot;)V
    .registers 8
    .param p1, "dataSnapshot"    # Lcom/google/firebase/database/DataSnapshot;

    .line 166
    iget-object v0, p0, Lcom/example/talkative/home$5;->this$0:Lcom/example/talkative/home;

    iget-object v0, v0, Lcom/example/talkative/home;->messageAdapter:Lcom/example/talkative/MessageAdapter;

    invoke-virtual {v0}, Lcom/example/talkative/MessageAdapter;->clearMessages()V

    .line 167
    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->getChildren()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/DataSnapshot;

    .line 168
    .local v1, "snapshot":Lcom/google/firebase/database/DataSnapshot;
    const-class v3, Lcom/example/talkative/Message;

    invoke-virtual {v1, v3}, Lcom/google/firebase/database/DataSnapshot;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/example/talkative/Message;

    .line 169
    .local v3, "message":Lcom/example/talkative/Message;
    if-eqz v3, :cond_49

    .line 170
    invoke-virtual {v3}, Lcom/example/talkative/Message;->getUsername()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3e

    invoke-virtual {v3}, Lcom/example/talkative/Message;->getUsername()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/example/talkative/home$5;->this$0:Lcom/example/talkative/home;

    iget-object v5, v5, Lcom/example/talkative/home;->currentUsername:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 171
    invoke-virtual {v3, v2}, Lcom/example/talkative/Message;->setSentByCurrentUser(Z)V

    goto :goto_42

    .line 173
    :cond_3e
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/example/talkative/Message;->setSentByCurrentUser(Z)V

    .line 175
    :goto_42
    iget-object v2, p0, Lcom/example/talkative/home$5;->this$0:Lcom/example/talkative/home;

    iget-object v2, v2, Lcom/example/talkative/home;->messageAdapter:Lcom/example/talkative/MessageAdapter;

    invoke-virtual {v2, v3}, Lcom/example/talkative/MessageAdapter;->addMessage(Lcom/example/talkative/Message;)V

    .line 177
    .end local v1    # "snapshot":Lcom/google/firebase/database/DataSnapshot;
    .end local v3    # "message":Lcom/example/talkative/Message;
    :cond_49
    goto :goto_f

    .line 178
    :cond_4a
    iget-object v0, p0, Lcom/example/talkative/home$5;->this$0:Lcom/example/talkative/home;

    iget-object v0, v0, Lcom/example/talkative/home;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/example/talkative/home$5;->this$0:Lcom/example/talkative/home;

    iget-object v1, v1, Lcom/example/talkative/home;->messageAdapter:Lcom/example/talkative/MessageAdapter;

    invoke-virtual {v1}, Lcom/example/talkative/MessageAdapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 179
    return-void
.end method
