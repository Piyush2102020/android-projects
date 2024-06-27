.class Lcom/example/talkative/register$1$1;
.super Ljava/lang/Object;
.source "register.java"

# interfaces
.implements Lcom/google/firebase/database/ValueEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/talkative/register$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/example/talkative/register$1;

.field final synthetic val$usernameWithSpaces:Ljava/lang/String;

.field final synthetic val$usernameWithoutSpaces:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/example/talkative/register$1;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$1"    # Lcom/example/talkative/register$1;

    .line 52
    iput-object p1, p0, Lcom/example/talkative/register$1$1;->this$1:Lcom/example/talkative/register$1;

    iput-object p2, p0, Lcom/example/talkative/register$1$1;->val$usernameWithoutSpaces:Ljava/lang/String;

    iput-object p3, p0, Lcom/example/talkative/register$1$1;->val$usernameWithSpaces:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/google/firebase/database/DatabaseError;)V
    .registers 2
    .param p1, "databaseError"    # Lcom/google/firebase/database/DatabaseError;

    .line 81
    return-void
.end method

.method public onDataChange(Lcom/google/firebase/database/DataSnapshot;)V
    .registers 5
    .param p1, "dataSnapshot"    # Lcom/google/firebase/database/DataSnapshot;

    .line 55
    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->exists()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 57
    iget-object v0, p0, Lcom/example/talkative/register$1$1;->this$1:Lcom/example/talkative/register$1;

    iget-object v0, v0, Lcom/example/talkative/register$1;->this$0:Lcom/example/talkative/register;

    const-string v1, "Username already taken. Please choose a different username."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_35

    .line 60
    :cond_15
    iget-object v0, p0, Lcom/example/talkative/register$1$1;->this$1:Lcom/example/talkative/register$1;

    iget-object v0, v0, Lcom/example/talkative/register$1;->this$0:Lcom/example/talkative/register;

    iget-object v0, v0, Lcom/example/talkative/register;->databaseReference:Lcom/google/firebase/database/DatabaseReference;

    iget-object v1, p0, Lcom/example/talkative/register$1$1;->val$usernameWithoutSpaces:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    .line 61
    .local v0, "newUserRef":Lcom/google/firebase/database/DatabaseReference;
    const-string v1, "username"

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v1

    iget-object v2, p0, Lcom/example/talkative/register$1$1;->val$usernameWithSpaces:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/example/talkative/register$1$1$1;

    invoke-direct {v2, p0}, Lcom/example/talkative/register$1$1$1;-><init>(Lcom/example/talkative/register$1$1;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 76
    .end local v0    # "newUserRef":Lcom/google/firebase/database/DatabaseReference;
    :goto_35
    return-void
.end method
