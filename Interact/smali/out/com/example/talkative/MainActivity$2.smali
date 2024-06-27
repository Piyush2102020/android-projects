.class Lcom/example/talkative/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/google/firebase/database/ValueEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/talkative/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/talkative/MainActivity;


# direct methods
.method constructor <init>(Lcom/example/talkative/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/example/talkative/MainActivity;

    .line 70
    iput-object p1, p0, Lcom/example/talkative/MainActivity$2;->this$0:Lcom/example/talkative/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/google/firebase/database/DatabaseError;)V
    .registers 2
    .param p1, "databaseError"    # Lcom/google/firebase/database/DatabaseError;

    .line 86
    return-void
.end method

.method public onDataChange(Lcom/google/firebase/database/DataSnapshot;)V
    .registers 6
    .param p1, "dataSnapshot"    # Lcom/google/firebase/database/DataSnapshot;

    .line 73
    iget-object v0, p0, Lcom/example/talkative/MainActivity$2;->this$0:Lcom/example/talkative/MainActivity;

    invoke-static {v0}, Lcom/example/talkative/MainActivity;->access$000(Lcom/example/talkative/MainActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 75
    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->getChildren()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/DataSnapshot;

    .line 76
    .local v1, "userSnapshot":Lcom/google/firebase/database/DataSnapshot;
    const-string v2, "username"

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/DataSnapshot;->child(Ljava/lang/String;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/DataSnapshot;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 77
    .local v2, "username":Ljava/lang/String;
    iget-object v3, p0, Lcom/example/talkative/MainActivity$2;->this$0:Lcom/example/talkative/MainActivity;

    invoke-static {v3}, Lcom/example/talkative/MainActivity;->access$000(Lcom/example/talkative/MainActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    .end local v1    # "userSnapshot":Lcom/google/firebase/database/DataSnapshot;
    .end local v2    # "username":Ljava/lang/String;
    goto :goto_11

    .line 80
    :cond_35
    iget-object v0, p0, Lcom/example/talkative/MainActivity$2;->this$0:Lcom/example/talkative/MainActivity;

    invoke-static {v0}, Lcom/example/talkative/MainActivity;->access$200(Lcom/example/talkative/MainActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 81
    return-void
.end method
