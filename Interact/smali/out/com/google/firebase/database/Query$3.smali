.class Lcom/google/firebase/database/Query$3;
.super Ljava/lang/Object;
.source "Query.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/Query;->addEventRegistration(Lcom/google/firebase/database/core/EventRegistration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/Query;

.field final synthetic val$listener:Lcom/google/firebase/database/core/EventRegistration;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/Query;Lcom/google/firebase/database/core/EventRegistration;)V
    .registers 3
    .param p1, "this$0"    # Lcom/google/firebase/database/Query;

    .line 240
    iput-object p1, p0, Lcom/google/firebase/database/Query$3;->this$0:Lcom/google/firebase/database/Query;

    iput-object p2, p0, Lcom/google/firebase/database/Query$3;->val$listener:Lcom/google/firebase/database/core/EventRegistration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 243
    iget-object v0, p0, Lcom/google/firebase/database/Query$3;->this$0:Lcom/google/firebase/database/Query;

    iget-object v0, v0, Lcom/google/firebase/database/Query;->repo:Lcom/google/firebase/database/core/Repo;

    iget-object v1, p0, Lcom/google/firebase/database/Query$3;->val$listener:Lcom/google/firebase/database/core/EventRegistration;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/Repo;->addEventCallback(Lcom/google/firebase/database/core/EventRegistration;)V

    .line 244
    return-void
.end method
