.class Lcom/example/talkative/register$1;
.super Ljava/lang/Object;
.source "register.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/talkative/register;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/talkative/register;


# direct methods
.method constructor <init>(Lcom/example/talkative/register;)V
    .registers 2
    .param p1, "this$0"    # Lcom/example/talkative/register;

    .line 40
    iput-object p1, p0, Lcom/example/talkative/register$1;->this$0:Lcom/example/talkative/register;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .line 44
    iget-object v0, p0, Lcom/example/talkative/register$1;->this$0:Lcom/example/talkative/register;

    iget-object v0, v0, Lcom/example/talkative/register;->username:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "user":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    .line 47
    iget-object v1, p0, Lcom/example/talkative/register$1;->this$0:Lcom/example/talkative/register;

    const-string v3, "Please enter a username"

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_55

    .line 48
    :cond_1f
    iget-object v1, p0, Lcom/example/talkative/register$1;->this$0:Lcom/example/talkative/register;

    iget-object v1, v1, Lcom/example/talkative/register;->tc:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 50
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\s+"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "usernameWithoutSpaces":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "usernameWithSpaces":Ljava/lang/String;
    iget-object v3, p0, Lcom/example/talkative/register$1;->this$0:Lcom/example/talkative/register;

    iget-object v3, v3, Lcom/example/talkative/register;->databaseReference:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v3, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v3

    new-instance v4, Lcom/example/talkative/register$1$1;

    invoke-direct {v4, p0, v1, v2}, Lcom/example/talkative/register$1$1;-><init>(Lcom/example/talkative/register$1;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/google/firebase/database/DatabaseReference;->addListenerForSingleValueEvent(Lcom/google/firebase/database/ValueEventListener;)V

    .line 83
    .end local v1    # "usernameWithoutSpaces":Ljava/lang/String;
    .end local v2    # "usernameWithSpaces":Ljava/lang/String;
    goto :goto_55

    .line 84
    :cond_4a
    iget-object v1, p0, Lcom/example/talkative/register$1;->this$0:Lcom/example/talkative/register;

    const-string v3, "Please accept our terms and conditions."

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 86
    :goto_55
    return-void
.end method
