.class Lcom/google/firebase/database/core/SyncTree$KeepSyncedEventRegistration;
.super Lcom/google/firebase/database/core/EventRegistration;
.source "SyncTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/core/SyncTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeepSyncedEventRegistration"
.end annotation


# instance fields
.field private spec:Lcom/google/firebase/database/core/view/QuerySpec;


# direct methods
.method public constructor <init>(Lcom/google/firebase/database/core/view/QuerySpec;)V
    .registers 2
    .param p1, "spec"    # Lcom/google/firebase/database/core/view/QuerySpec;

    .line 802
    invoke-direct {p0}, Lcom/google/firebase/database/core/EventRegistration;-><init>()V

    .line 803
    iput-object p1, p0, Lcom/google/firebase/database/core/SyncTree$KeepSyncedEventRegistration;->spec:Lcom/google/firebase/database/core/view/QuerySpec;

    .line 804
    return-void
.end method


# virtual methods
.method public clone(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/EventRegistration;
    .registers 3
    .param p1, "newQuery"    # Lcom/google/firebase/database/core/view/QuerySpec;

    .line 824
    new-instance v0, Lcom/google/firebase/database/core/SyncTree$KeepSyncedEventRegistration;

    invoke-direct {v0, p1}, Lcom/google/firebase/database/core/SyncTree$KeepSyncedEventRegistration;-><init>(Lcom/google/firebase/database/core/view/QuerySpec;)V

    return-object v0
.end method

.method public createEvent(Lcom/google/firebase/database/core/view/Change;Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/DataEvent;
    .registers 4
    .param p1, "change"    # Lcom/google/firebase/database/core/view/Change;
    .param p2, "query"    # Lcom/google/firebase/database/core/view/QuerySpec;

    .line 813
    const/4 v0, 0x0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 840
    instance-of v0, p1, Lcom/google/firebase/database/core/SyncTree$KeepSyncedEventRegistration;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lcom/google/firebase/database/core/SyncTree$KeepSyncedEventRegistration;

    iget-object v0, v0, Lcom/google/firebase/database/core/SyncTree$KeepSyncedEventRegistration;->spec:Lcom/google/firebase/database/core/view/QuerySpec;

    iget-object v1, p0, Lcom/google/firebase/database/core/SyncTree$KeepSyncedEventRegistration;->spec:Lcom/google/firebase/database/core/view/QuerySpec;

    .line 841
    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/view/QuerySpec;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 840
    :goto_14
    return v0
.end method

.method public fireCancelEvent(Lcom/google/firebase/database/DatabaseError;)V
    .registers 2
    .param p1, "error"    # Lcom/google/firebase/database/DatabaseError;

    .line 820
    return-void
.end method

.method public fireEvent(Lcom/google/firebase/database/core/view/DataEvent;)V
    .registers 2
    .param p1, "dataEvent"    # Lcom/google/firebase/database/core/view/DataEvent;

    .line 817
    return-void
.end method

.method public getQuerySpec()Lcom/google/firebase/database/core/view/QuerySpec;
    .registers 2

    .line 835
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree$KeepSyncedEventRegistration;->spec:Lcom/google/firebase/database/core/view/QuerySpec;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 846
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree$KeepSyncedEventRegistration;->spec:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/QuerySpec;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSameListener(Lcom/google/firebase/database/core/EventRegistration;)Z
    .registers 3
    .param p1, "other"    # Lcom/google/firebase/database/core/EventRegistration;

    .line 829
    instance-of v0, p1, Lcom/google/firebase/database/core/SyncTree$KeepSyncedEventRegistration;

    return v0
.end method

.method public respondsTo(Lcom/google/firebase/database/core/view/Event$EventType;)Z
    .registers 3
    .param p1, "eventType"    # Lcom/google/firebase/database/core/view/Event$EventType;

    .line 808
    const/4 v0, 0x0

    return v0
.end method
