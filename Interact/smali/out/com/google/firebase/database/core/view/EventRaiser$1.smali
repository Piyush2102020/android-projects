.class Lcom/google/firebase/database/core/view/EventRaiser$1;
.super Ljava/lang/Object;
.source "EventRaiser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/view/EventRaiser;->raiseEvents(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/core/view/EventRaiser;

.field final synthetic val$eventsClone:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/view/EventRaiser;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "this$0"    # Lcom/google/firebase/database/core/view/EventRaiser;

    .line 48
    iput-object p1, p0, Lcom/google/firebase/database/core/view/EventRaiser$1;->this$0:Lcom/google/firebase/database/core/view/EventRaiser;

    iput-object p2, p0, Lcom/google/firebase/database/core/view/EventRaiser$1;->val$eventsClone:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 51
    iget-object v0, p0, Lcom/google/firebase/database/core/view/EventRaiser$1;->val$eventsClone:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/core/view/Event;

    .line 52
    .local v1, "event":Lcom/google/firebase/database/core/view/Event;
    iget-object v2, p0, Lcom/google/firebase/database/core/view/EventRaiser$1;->this$0:Lcom/google/firebase/database/core/view/EventRaiser;

    invoke-static {v2}, Lcom/google/firebase/database/core/view/EventRaiser;->access$000(Lcom/google/firebase/database/core/view/EventRaiser;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 53
    iget-object v2, p0, Lcom/google/firebase/database/core/view/EventRaiser$1;->this$0:Lcom/google/firebase/database/core/view/EventRaiser;

    invoke-static {v2}, Lcom/google/firebase/database/core/view/EventRaiser;->access$000(Lcom/google/firebase/database/core/view/EventRaiser;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raising "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/google/firebase/database/core/view/Event;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    :cond_41
    invoke-interface {v1}, Lcom/google/firebase/database/core/view/Event;->fire()V

    .line 56
    .end local v1    # "event":Lcom/google/firebase/database/core/view/Event;
    goto :goto_6

    .line 57
    :cond_45
    return-void
.end method
