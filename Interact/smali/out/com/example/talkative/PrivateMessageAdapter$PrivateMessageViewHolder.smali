.class Lcom/example/talkative/PrivateMessageAdapter$PrivateMessageViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PrivateMessageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/talkative/PrivateMessageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PrivateMessageViewHolder"
.end annotation


# instance fields
.field private contentTextView:Landroid/widget/TextView;

.field private usernameTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "itemView"    # Landroid/view/View;

    .line 83
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 84
    const v0, 0x7f0a01f8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/talkative/PrivateMessageAdapter$PrivateMessageViewHolder;->usernameTextView:Landroid/widget/TextView;

    .line 85
    const v0, 0x7f0a0084

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/talkative/PrivateMessageAdapter$PrivateMessageViewHolder;->contentTextView:Landroid/widget/TextView;

    .line 86
    return-void
.end method


# virtual methods
.method bindMessage(Lcom/example/talkative/PrivateMessage;)V
    .registers 4
    .param p1, "message"    # Lcom/example/talkative/PrivateMessage;

    .line 90
    iget-object v0, p0, Lcom/example/talkative/PrivateMessageAdapter$PrivateMessageViewHolder;->contentTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/example/talkative/PrivateMessage;->getMessageText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    return-void
.end method
