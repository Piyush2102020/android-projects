.class Lcom/example/talkative/myChat$1;
.super Ljava/lang/Object;
.source "myChat.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/talkative/myChat;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/talkative/myChat;


# direct methods
.method constructor <init>(Lcom/example/talkative/myChat;)V
    .registers 2
    .param p1, "this$0"    # Lcom/example/talkative/myChat;

    .line 49
    iput-object p1, p0, Lcom/example/talkative/myChat$1;->this$0:Lcom/example/talkative/myChat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 52
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/example/talkative/myChat$1;->this$0:Lcom/example/talkative/myChat;

    invoke-static {v0}, Lcom/example/talkative/myChat;->access$000(Lcom/example/talkative/myChat;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 53
    .local v0, "person":Ljava/lang/String;
    iget-object v1, p0, Lcom/example/talkative/myChat$1;->this$0:Lcom/example/talkative/myChat;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You want to send a message to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 54
    iget-object v1, p0, Lcom/example/talkative/myChat$1;->this$0:Lcom/example/talkative/myChat;

    invoke-static {v1, v0}, Lcom/example/talkative/myChat;->access$100(Lcom/example/talkative/myChat;Ljava/lang/String;)V

    .line 55
    return-void
.end method
