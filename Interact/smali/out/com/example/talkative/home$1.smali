.class Lcom/example/talkative/home$1;
.super Ljava/lang/Object;
.source "home.java"

# interfaces
.implements Lcom/google/firebase/database/DatabaseReference$CompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/talkative/home;->addDestroyListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/talkative/home;

.field final synthetic val$currentUserRef:Lcom/google/firebase/database/DatabaseReference;


# direct methods
.method constructor <init>(Lcom/example/talkative/home;Lcom/google/firebase/database/DatabaseReference;)V
    .registers 3
    .param p1, "this$0"    # Lcom/example/talkative/home;

    .line 52
    iput-object p1, p0, Lcom/example/talkative/home$1;->this$0:Lcom/example/talkative/home;

    iput-object p2, p0, Lcom/example/talkative/home$1;->val$currentUserRef:Lcom/google/firebase/database/DatabaseReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/firebase/database/DatabaseError;Lcom/google/firebase/database/DatabaseReference;)V
    .registers 4
    .param p1, "databaseError"    # Lcom/google/firebase/database/DatabaseError;
    .param p2, "databaseReference"    # Lcom/google/firebase/database/DatabaseReference;

    .line 56
    iget-object v0, p0, Lcom/example/talkative/home$1;->val$currentUserRef:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v0}, Lcom/google/firebase/database/DatabaseReference;->removeValue()Lcom/google/android/gms/tasks/Task;

    .line 57
    return-void
.end method
