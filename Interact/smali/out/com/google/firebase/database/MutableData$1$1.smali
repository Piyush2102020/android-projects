.class Lcom/google/firebase/database/MutableData$1$1;
.super Ljava/lang/Object;
.source "MutableData.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/MutableData$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/google/firebase/database/MutableData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/firebase/database/MutableData$1;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/MutableData$1;)V
    .registers 2
    .param p1, "this$1"    # Lcom/google/firebase/database/MutableData$1;

    .line 111
    iput-object p1, p0, Lcom/google/firebase/database/MutableData$1$1;->this$1:Lcom/google/firebase/database/MutableData$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public next()Lcom/google/firebase/database/MutableData;
    .registers 2

    .line 120
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 111
    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData$1$1;->next()Lcom/google/firebase/database/MutableData;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    .line 125
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove called on immutable collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
