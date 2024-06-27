.class Lcom/example/talkative/home$3;
.super Ljava/lang/Object;
.source "home.java"

# interfaces
.implements Lcom/google/firebase/database/ChildEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/talkative/home;->onCreate(Landroid/os/Bundle;)V
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

    .line 96
    iput-object p1, p0, Lcom/example/talkative/home$3;->this$0:Lcom/example/talkative/home;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/google/firebase/database/DatabaseError;)V
    .registers 2
    .param p1, "error"    # Lcom/google/firebase/database/DatabaseError;

    .line 138
    return-void
.end method

.method public onChildAdded(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .registers 7
    .param p1, "snapshot"    # Lcom/google/firebase/database/DataSnapshot;
    .param p2, "previousChildName"    # Ljava/lang/String;

    .line 99
    const-class v0, Lcom/example/talkative/Message;

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/DataSnapshot;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/talkative/Message;

    .line 101
    .local v0, "message":Lcom/example/talkative/Message;
    if-eqz v0, :cond_46

    .line 102
    invoke-virtual {v0}, Lcom/example/talkative/Message;->getUsername()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2b

    invoke-virtual {v0}, Lcom/example/talkative/Message;->getUsername()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/example/talkative/home$3;->this$0:Lcom/example/talkative/home;

    iget-object v3, v3, Lcom/example/talkative/home;->currentUsername:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 103
    invoke-virtual {v0, v2}, Lcom/example/talkative/Message;->setSentByCurrentUser(Z)V

    .line 104
    iget-object v1, p0, Lcom/example/talkative/home$3;->this$0:Lcom/example/talkative/home;

    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->getKey()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/example/talkative/home;->currentUserMessageId:Ljava/lang/String;

    goto :goto_2f

    .line 106
    :cond_2b
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/example/talkative/Message;->setSentByCurrentUser(Z)V

    .line 109
    :goto_2f
    iget-object v1, p0, Lcom/example/talkative/home$3;->this$0:Lcom/example/talkative/home;

    iget-object v1, v1, Lcom/example/talkative/home;->messageAdapter:Lcom/example/talkative/MessageAdapter;

    invoke-virtual {v1, v0}, Lcom/example/talkative/MessageAdapter;->addMessage(Lcom/example/talkative/Message;)V

    .line 110
    iget-object v1, p0, Lcom/example/talkative/home$3;->this$0:Lcom/example/talkative/home;

    iget-object v1, v1, Lcom/example/talkative/home;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/example/talkative/home$3;->this$0:Lcom/example/talkative/home;

    iget-object v3, v3, Lcom/example/talkative/home;->messageAdapter:Lcom/example/talkative/MessageAdapter;

    invoke-virtual {v3}, Lcom/example/talkative/MessageAdapter;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 112
    :cond_46
    return-void
.end method

.method public onChildChanged(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .registers 6
    .param p1, "snapshot"    # Lcom/google/firebase/database/DataSnapshot;
    .param p2, "previousChildName"    # Ljava/lang/String;

    .line 116
    const-class v0, Lcom/example/talkative/Message;

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/DataSnapshot;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/talkative/Message;

    .line 118
    .local v0, "updatedMessage":Lcom/example/talkative/Message;
    if-eqz v0, :cond_2c

    .line 119
    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/example/talkative/home$3;->this$0:Lcom/example/talkative/home;

    iget-object v2, v2, Lcom/example/talkative/home;->currentUserMessageId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 120
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/example/talkative/Message;->setSentByCurrentUser(Z)V

    goto :goto_21

    .line 122
    :cond_1d
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/example/talkative/Message;->setSentByCurrentUser(Z)V

    .line 125
    :goto_21
    iget-object v1, p0, Lcom/example/talkative/home$3;->this$0:Lcom/example/talkative/home;

    iget-object v1, v1, Lcom/example/talkative/home;->messageAdapter:Lcom/example/talkative/MessageAdapter;

    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/example/talkative/MessageAdapter;->updateMessage(Ljava/lang/String;Lcom/example/talkative/Message;)V

    .line 127
    :cond_2c
    return-void
.end method

.method public onChildMoved(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .registers 3
    .param p1, "snapshot"    # Lcom/google/firebase/database/DataSnapshot;
    .param p2, "previousChildName"    # Ljava/lang/String;

    .line 135
    return-void
.end method

.method public onChildRemoved(Lcom/google/firebase/database/DataSnapshot;)V
    .registers 2
    .param p1, "snapshot"    # Lcom/google/firebase/database/DataSnapshot;

    .line 132
    return-void
.end method
