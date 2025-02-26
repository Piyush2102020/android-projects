.class public Lcom/google/firebase/events/Event;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final payload:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 30
    .local p0, "this":Lcom/google/firebase/events/Event;, "Lcom/google/firebase/events/Event<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "payload":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {p1}, Lcom/google/firebase/components/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/firebase/events/Event;->type:Ljava/lang/Class;

    .line 32
    invoke-static {p2}, Lcom/google/firebase/components/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/events/Event;->payload:Ljava/lang/Object;

    .line 33
    return-void
.end method


# virtual methods
.method public getPayload()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 42
    .local p0, "this":Lcom/google/firebase/events/Event;, "Lcom/google/firebase/events/Event<TT;>;"
    iget-object v0, p0, Lcom/google/firebase/events/Event;->payload:Ljava/lang/Object;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 37
    .local p0, "this":Lcom/google/firebase/events/Event;, "Lcom/google/firebase/events/Event<TT;>;"
    iget-object v0, p0, Lcom/google/firebase/events/Event;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 47
    .local p0, "this":Lcom/google/firebase/events/Event;, "Lcom/google/firebase/events/Event<TT;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/firebase/events/Event;->type:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/firebase/events/Event;->payload:Ljava/lang/Object;

    aput-object v2, v0, v1

    const-string v1, "Event{type: %s, payload: %s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
