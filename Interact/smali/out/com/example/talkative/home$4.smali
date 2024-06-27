.class Lcom/example/talkative/home$4;
.super Ljava/lang/Object;
.source "home.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 141
    iput-object p1, p0, Lcom/example/talkative/home$4;->this$0:Lcom/example/talkative/home;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;

    .line 144
    iget-object v0, p0, Lcom/example/talkative/home$4;->this$0:Lcom/example/talkative/home;

    iget-object v0, v0, Lcom/example/talkative/home;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "messageText":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_40

    .line 146
    iget-object v1, p0, Lcom/example/talkative/home$4;->this$0:Lcom/example/talkative/home;

    iget-object v1, v1, Lcom/example/talkative/home;->databaseReference:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v1}, Lcom/google/firebase/database/DatabaseReference;->push()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/DatabaseReference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "messageId":Ljava/lang/String;
    new-instance v2, Lcom/example/talkative/Message;

    iget-object v3, p0, Lcom/example/talkative/home$4;->this$0:Lcom/example/talkative/home;

    iget-object v3, v3, Lcom/example/talkative/home;->currentUsername:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v2, v1, v0, v3, v4}, Lcom/example/talkative/Message;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 148
    .local v2, "message":Lcom/example/talkative/Message;
    iget-object v3, p0, Lcom/example/talkative/home$4;->this$0:Lcom/example/talkative/home;

    iget-object v3, v3, Lcom/example/talkative/home;->databaseReference:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v3}, Lcom/google/firebase/database/DatabaseReference;->push()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v3

    .line 149
    .local v3, "newMessageRef":Lcom/google/firebase/database/DatabaseReference;
    invoke-virtual {v3, v2}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 150
    iget-object v4, p0, Lcom/example/talkative/home$4;->this$0:Lcom/example/talkative/home;

    iget-object v4, v4, Lcom/example/talkative/home;->messageEditText:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 152
    .end local v1    # "messageId":Ljava/lang/String;
    .end local v2    # "message":Lcom/example/talkative/Message;
    .end local v3    # "newMessageRef":Lcom/google/firebase/database/DatabaseReference;
    :cond_40
    return-void
.end method
