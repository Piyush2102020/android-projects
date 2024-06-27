.class public Lcom/google/firebase/database/collection/LLRBBlackValueNode;
.super Lcom/google/firebase/database/collection/LLRBValueNode;
.source "LLRBBlackValueNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/firebase/database/collection/LLRBValueNode<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private size:I


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/firebase/database/collection/LLRBNode;Lcom/google/firebase/database/collection/LLRBNode;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/google/firebase/database/collection/LLRBNode<",
            "TK;TV;>;",
            "Lcom/google/firebase/database/collection/LLRBNode<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 31
    .local p0, "this":Lcom/google/firebase/database/collection/LLRBBlackValueNode;, "Lcom/google/firebase/database/collection/LLRBBlackValueNode<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "left":Lcom/google/firebase/database/collection/LLRBNode;, "Lcom/google/firebase/database/collection/LLRBNode<TK;TV;>;"
    .local p4, "right":Lcom/google/firebase/database/collection/LLRBNode;, "Lcom/google/firebase/database/collection/LLRBNode<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/firebase/database/collection/LLRBValueNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/firebase/database/collection/LLRBNode;Lcom/google/firebase/database/collection/LLRBNode;)V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/firebase/database/collection/LLRBBlackValueNode;->size:I

    .line 32
    return-void
.end method


# virtual methods
.method protected copy(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/firebase/database/collection/LLRBNode;Lcom/google/firebase/database/collection/LLRBNode;)Lcom/google/firebase/database/collection/LLRBValueNode;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/google/firebase/database/collection/LLRBNode<",
            "TK;TV;>;",
            "Lcom/google/firebase/database/collection/LLRBNode<",
            "TK;TV;>;)",
            "Lcom/google/firebase/database/collection/LLRBValueNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 63
    .local p0, "this":Lcom/google/firebase/database/collection/LLRBBlackValueNode;, "Lcom/google/firebase/database/collection/LLRBBlackValueNode<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "left":Lcom/google/firebase/database/collection/LLRBNode;, "Lcom/google/firebase/database/collection/LLRBNode<TK;TV;>;"
    .local p4, "right":Lcom/google/firebase/database/collection/LLRBNode;, "Lcom/google/firebase/database/collection/LLRBNode<TK;TV;>;"
    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/google/firebase/database/collection/LLRBBlackValueNode;->getKey()Ljava/lang/Object;

    move-result-object v0

    goto :goto_8

    :cond_7
    move-object v0, p1

    .line 64
    .local v0, "newKey":Ljava/lang/Object;, "TK;"
    :goto_8
    if-nez p2, :cond_f

    invoke-virtual {p0}, Lcom/google/firebase/database/collection/LLRBBlackValueNode;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_10

    :cond_f
    move-object v1, p2

    .line 65
    .local v1, "newValue":Ljava/lang/Object;, "TV;"
    :goto_10
    if-nez p3, :cond_17

    invoke-virtual {p0}, Lcom/google/firebase/database/collection/LLRBBlackValueNode;->getLeft()Lcom/google/firebase/database/collection/LLRBNode;

    move-result-object v2

    goto :goto_18

    :cond_17
    move-object v2, p3

    .line 66
    .local v2, "newLeft":Lcom/google/firebase/database/collection/LLRBNode;, "Lcom/google/firebase/database/collection/LLRBNode<TK;TV;>;"
    :goto_18
    if-nez p4, :cond_1f

    invoke-virtual {p0}, Lcom/google/firebase/database/collection/LLRBBlackValueNode;->getRight()Lcom/google/firebase/database/collection/LLRBNode;

    move-result-object v3

    goto :goto_20

    :cond_1f
    move-object v3, p4

    .line 67
    .local v3, "newRight":Lcom/google/firebase/database/collection/LLRBNode;, "Lcom/google/firebase/database/collection/LLRBNode<TK;TV;>;"
    :goto_20
    new-instance v4, Lcom/google/firebase/database/collection/LLRBBlackValueNode;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/firebase/database/collection/LLRBBlackValueNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/firebase/database/collection/LLRBNode;Lcom/google/firebase/database/collection/LLRBNode;)V

    return-object v4
.end method

.method protected getColor()Lcom/google/firebase/database/collection/LLRBNode$Color;
    .registers 2

    .line 36
    .local p0, "this":Lcom/google/firebase/database/collection/LLRBBlackValueNode;, "Lcom/google/firebase/database/collection/LLRBBlackValueNode<TK;TV;>;"
    sget-object v0, Lcom/google/firebase/database/collection/LLRBNode$Color;->BLACK:Lcom/google/firebase/database/collection/LLRBNode$Color;

    return-object v0
.end method

.method public isRed()Z
    .registers 2

    .line 41
    .local p0, "this":Lcom/google/firebase/database/collection/LLRBBlackValueNode;, "Lcom/google/firebase/database/collection/LLRBBlackValueNode<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method setLeft(Lcom/google/firebase/database/collection/LLRBNode;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/collection/LLRBNode<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 54
    .local p0, "this":Lcom/google/firebase/database/collection/LLRBBlackValueNode;, "Lcom/google/firebase/database/collection/LLRBBlackValueNode<TK;TV;>;"
    .local p1, "left":Lcom/google/firebase/database/collection/LLRBNode;, "Lcom/google/firebase/database/collection/LLRBNode<TK;TV;>;"
    iget v0, p0, Lcom/google/firebase/database/collection/LLRBBlackValueNode;->size:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 58
    invoke-super {p0, p1}, Lcom/google/firebase/database/collection/LLRBValueNode;->setLeft(Lcom/google/firebase/database/collection/LLRBNode;)V

    .line 59
    return-void

    .line 56
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t set left after using size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .registers 3

    .line 46
    .local p0, "this":Lcom/google/firebase/database/collection/LLRBBlackValueNode;, "Lcom/google/firebase/database/collection/LLRBBlackValueNode<TK;TV;>;"
    iget v0, p0, Lcom/google/firebase/database/collection/LLRBBlackValueNode;->size:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1a

    .line 47
    invoke-virtual {p0}, Lcom/google/firebase/database/collection/LLRBBlackValueNode;->getLeft()Lcom/google/firebase/database/collection/LLRBNode;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/collection/LLRBNode;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lcom/google/firebase/database/collection/LLRBBlackValueNode;->getRight()Lcom/google/firebase/database/collection/LLRBNode;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/firebase/database/collection/LLRBNode;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/firebase/database/collection/LLRBBlackValueNode;->size:I

    .line 49
    :cond_1a
    iget v0, p0, Lcom/google/firebase/database/collection/LLRBBlackValueNode;->size:I

    return v0
.end method
