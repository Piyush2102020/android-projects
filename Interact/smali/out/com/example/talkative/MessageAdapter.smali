.class public Lcom/example/talkative/MessageAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MessageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/talkative/MessageAdapter$MessageType;,
        Lcom/example/talkative/MessageAdapter$MessageViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/example/talkative/MessageAdapter$MessageViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private currentUsername:Ljava/lang/String;

.field private messageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/example/talkative/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .registers 3
    .param p2, "currentUsername"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/example/talkative/Message;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 19
    .local p1, "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/example/talkative/Message;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/example/talkative/MessageAdapter;->messageList:Ljava/util/List;

    .line 21
    iput-object p2, p0, Lcom/example/talkative/MessageAdapter;->currentUsername:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public addMessage(Lcom/example/talkative/Message;)V
    .registers 3
    .param p1, "message"    # Lcom/example/talkative/Message;

    .line 58
    iget-object v0, p0, Lcom/example/talkative/MessageAdapter;->messageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-virtual {p0}, Lcom/example/talkative/MessageAdapter;->notifyDataSetChanged()V

    .line 60
    return-void
.end method

.method public clearMessages()V
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/example/talkative/MessageAdapter;->messageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 75
    invoke-virtual {p0}, Lcom/example/talkative/MessageAdapter;->notifyDataSetChanged()V

    .line 76
    return-void
.end method

.method public getItemCount()I
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/example/talkative/MessageAdapter;->messageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 4
    .param p1, "position"    # I

    .line 49
    iget-object v0, p0, Lcom/example/talkative/MessageAdapter;->messageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/talkative/Message;

    .line 50
    .local v0, "message":Lcom/example/talkative/Message;
    invoke-virtual {v0}, Lcom/example/talkative/Message;->isSentByCurrentUser()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 51
    const/4 v1, 0x1

    return v1

    .line 53
    :cond_10
    const/4 v1, 0x2

    return v1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 14
    check-cast p1, Lcom/example/talkative/MessageAdapter$MessageViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/example/talkative/MessageAdapter;->onBindViewHolder(Lcom/example/talkative/MessageAdapter$MessageViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/example/talkative/MessageAdapter$MessageViewHolder;I)V
    .registers 4
    .param p1, "holder"    # Lcom/example/talkative/MessageAdapter$MessageViewHolder;
    .param p2, "position"    # I

    .line 38
    iget-object v0, p0, Lcom/example/talkative/MessageAdapter;->messageList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/talkative/Message;

    .line 39
    .local v0, "message":Lcom/example/talkative/Message;
    invoke-virtual {p1, v0}, Lcom/example/talkative/MessageAdapter$MessageViewHolder;->bindMessage(Lcom/example/talkative/Message;)V

    .line 40
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/example/talkative/MessageAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/example/talkative/MessageAdapter$MessageViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/example/talkative/MessageAdapter$MessageViewHolder;
    .registers 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 28
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_14

    .line 29
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d0075

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .local v0, "view":Landroid/view/View;
    goto :goto_23

    .line 31
    .end local v0    # "view":Landroid/view/View;
    :cond_14
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d0022

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 33
    .restart local v0    # "view":Landroid/view/View;
    :goto_23
    new-instance v1, Lcom/example/talkative/MessageAdapter$MessageViewHolder;

    invoke-direct {v1, v0}, Lcom/example/talkative/MessageAdapter$MessageViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public updateMessage(Ljava/lang/String;Lcom/example/talkative/Message;)V
    .registers 6
    .param p1, "messageId"    # Ljava/lang/String;
    .param p2, "updatedMessage"    # Lcom/example/talkative/Message;

    .line 63
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/example/talkative/MessageAdapter;->messageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2f

    .line 64
    iget-object v1, p0, Lcom/example/talkative/MessageAdapter;->messageList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/example/talkative/Message;

    .line 65
    .local v1, "message":Lcom/example/talkative/Message;
    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Lcom/example/talkative/Message;->getMessageId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2c

    invoke-virtual {v1}, Lcom/example/talkative/Message;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 66
    iget-object v2, p0, Lcom/example/talkative/MessageAdapter;->messageList:Ljava/util/List;

    invoke-interface {v2, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-virtual {p0, v0}, Lcom/example/talkative/MessageAdapter;->notifyItemChanged(I)V

    .line 68
    goto :goto_2f

    .line 63
    .end local v1    # "message":Lcom/example/talkative/Message;
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 71
    .end local v0    # "i":I
    :cond_2f
    :goto_2f
    return-void
.end method
