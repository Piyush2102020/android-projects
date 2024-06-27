.class Lcom/example/talkative/register$1$1$1;
.super Ljava/lang/Object;
.source "register.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/talkative/register$1$1;->onDataChange(Lcom/google/firebase/database/DataSnapshot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/example/talkative/register$1$1;


# direct methods
.method constructor <init>(Lcom/example/talkative/register$1$1;)V
    .registers 2
    .param p1, "this$2"    # Lcom/example/talkative/register$1$1;

    .line 61
    iput-object p1, p0, Lcom/example/talkative/register$1$1$1;->this$2:Lcom/example/talkative/register$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 64
    .local p1, "task":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Ljava/lang/Void;>;"
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 66
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/talkative/register$1$1$1;->this$2:Lcom/example/talkative/register$1$1;

    iget-object v1, v1, Lcom/example/talkative/register$1$1;->this$1:Lcom/example/talkative/register$1;

    iget-object v1, v1, Lcom/example/talkative/register$1;->this$0:Lcom/example/talkative/register;

    const-class v2, Lcom/example/talkative/home;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/example/talkative/register$1$1$1;->this$2:Lcom/example/talkative/register$1$1;

    iget-object v1, v1, Lcom/example/talkative/register$1$1;->val$usernameWithSpaces:Ljava/lang/String;

    const-string v2, "username"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    iget-object v1, p0, Lcom/example/talkative/register$1$1$1;->this$2:Lcom/example/talkative/register$1$1;

    iget-object v1, v1, Lcom/example/talkative/register$1$1;->this$1:Lcom/example/talkative/register$1;

    iget-object v1, v1, Lcom/example/talkative/register$1;->this$0:Lcom/example/talkative/register;

    invoke-virtual {v1, v0}, Lcom/example/talkative/register;->startActivity(Landroid/content/Intent;)V

    .line 69
    iget-object v1, p0, Lcom/example/talkative/register$1$1$1;->this$2:Lcom/example/talkative/register$1$1;

    iget-object v1, v1, Lcom/example/talkative/register$1$1;->this$1:Lcom/example/talkative/register$1;

    iget-object v1, v1, Lcom/example/talkative/register$1;->this$0:Lcom/example/talkative/register;

    invoke-virtual {v1}, Lcom/example/talkative/register;->finish()V

    .line 70
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_3f

    .line 71
    :cond_2f
    iget-object v0, p0, Lcom/example/talkative/register$1$1$1;->this$2:Lcom/example/talkative/register$1$1;

    iget-object v0, v0, Lcom/example/talkative/register$1$1;->this$1:Lcom/example/talkative/register$1;

    iget-object v0, v0, Lcom/example/talkative/register$1;->this$0:Lcom/example/talkative/register;

    const-string v1, "Failed to register user."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 73
    :goto_3f
    return-void
.end method
