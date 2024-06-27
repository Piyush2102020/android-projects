.class Lcom/example/talkative/inbox$1;
.super Ljava/lang/Object;
.source "inbox.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 60
    iput-object p1, p0, Lcom/example/talkative/inbox$1;->this$0:Lcom/example/talkative/inbox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 14
    .param p1, "v"    # Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/example/talkative/inbox$1;->this$0:Lcom/example/talkative/inbox;

    iget-object v0, v0, Lcom/example/talkative/inbox;->pm:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "messageText":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_53

    .line 65
    iget-object v1, p0, Lcom/example/talkative/inbox$1;->this$0:Lcom/example/talkative/inbox;

    invoke-static {v1}, Lcom/example/talkative/inbox;->access$000(Lcom/example/talkative/inbox;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/DatabaseReference;->push()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/DatabaseReference;->getKey()Ljava/lang/String;

    move-result-object v8

    .line 66
    .local v8, "messageId":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 68
    .local v9, "timestamp":J
    new-instance v11, Lcom/example/talkative/PrivateMessage;

    iget-object v1, p0, Lcom/example/talkative/inbox$1;->this$0:Lcom/example/talkative/inbox;

    invoke-static {v1}, Lcom/example/talkative/inbox;->access$100(Lcom/example/talkative/inbox;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/example/talkative/inbox$1;->this$0:Lcom/example/talkative/inbox;

    invoke-static {v1}, Lcom/example/talkative/inbox;->access$200(Lcom/example/talkative/inbox;)Ljava/lang/String;

    move-result-object v5

    move-object v1, v11

    move-object v2, v8

    move-object v3, v0

    move-wide v6, v9

    invoke-direct/range {v1 .. v7}, Lcom/example/talkative/PrivateMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 69
    .local v1, "message":Lcom/example/talkative/PrivateMessage;
    iget-object v2, p0, Lcom/example/talkative/inbox$1;->this$0:Lcom/example/talkative/inbox;

    invoke-static {v2}, Lcom/example/talkative/inbox;->access$000(Lcom/example/talkative/inbox;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 71
    iget-object v2, p0, Lcom/example/talkative/inbox$1;->this$0:Lcom/example/talkative/inbox;

    iget-object v2, v2, Lcom/example/talkative/inbox;->pm:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 73
    .end local v1    # "message":Lcom/example/talkative/PrivateMessage;
    .end local v8    # "messageId":Ljava/lang/String;
    .end local v9    # "timestamp":J
    :cond_53
    return-void
.end method
