.class public Lcom/google/firebase/database/collection/LLRBRedValueNode;
.super Lcom/google/firebase/database/collection/LLRBValueNode;
.source "LLRBRedValueNode.java"


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


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 22
    .local p0, "this":Lcom/google/firebase/database/collection/LLRBRedValueNode;, "Lcom/google/firebase/database/collection/LLRBRedValueNode<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {}, Lcom/google/firebase/database/collection/LLRBEmptyNode;->getInstance()Lcom/google/firebase/database/collection/LLRBEmptyNode;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/database/collection/LLRBEmptyNode;->getInstance()Lcom/google/firebase/database/collection/LLRBEmptyNode;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/firebase/database/collection/LLRBValueNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/firebase/database/collection/LLRBNode;Lcom/google/firebase/database/collection/LLRBNode;)V

    .line 23
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/firebase/database/collection/LLRBNode;Lcom/google/firebase/database/collection/LLRBNode;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/google/firebase/database/collection/LLRBNode<",
            "TK;TV;>;",
            "Lcom/google/firebase/database/collection/LLRBNode<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 26
    .local p0, "this":Lcom/google/firebase/database/collection/LLRBRedValueNode;, "Lcom/google/firebase/database/collection/LLRBRedValueNode<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "left":Lcom/google/firebase/database/collection/LLRBNode;, "Lcom/google/firebase/database/collection/LLRBNode<TK;TV;>;"
    .local p4, "right":Lcom/google/firebase/database/collection/LLRBNode;, "Lcom/google/firebase/database/collection/LLRBNode<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/firebase/database/collection/LLRBValueNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/firebase/database/collection/LLRBNode;Lcom/google/firebase/database/collection/LLRBNode;)V

    .line 27
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

    .line 46
    .local p0, "this":Lcom/google/firebase/database/collection/LLRBRedValueNode;, "Lcom/google/firebase/database/collection/LLRBRedValueNode<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "left":Lcom/google/firebase/database/collection/LLRBNode;, "Lcom/google/firebase/database/collection/LLRBNode<TK;TV;>;"
    .local p4, "right":Lcom/google/firebase/database/collection/LLRBNode;, "Lcom/google/firebase/database/collection/LLRBNode<TK;TV;>;"
    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/google/firebase/database/collection/LLRBRedValueNode;->getKey()Ljava/lang/Object;

    move-result-object v0

    goto :goto_8

    :cond_7
    move-object v0, p1

    .line 47
    .local v0, "newKey":Ljava/lang/Object;, "TK;"
    :goto_8
    if-nez p2, :cond_f

    invoke-virtual {p0}, Lcom/google/firebase/database/collection/LLRBRedValueNode;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_10

    :cond_f
    move-object v1, p2

    .line 48
    .local v1, "newValue":Ljava/lang/Object;, "TV;"
    :goto_10
    if-nez p3, :cond_17

    invoke-virtual {p0}, Lcom/google/firebase/database/collection/LLRBRedValueNode;->getLeft()Lcom/google/firebase/database/collection/LLRBNode;

    move-result-object v2

    goto :goto_18

    :cond_17
    move-object v2, p3

    .line 49
    .local v2, "newLeft":Lcom/google/firebase/database/collection/LLRBNode;, "Lcom/google/firebase/database/collection/LLRBNode<TK;TV;>;"
    :goto_18
    if-nez p4, :cond_1f

    invoke-virtual {p0}, Lcom/google/firebase/database/collection/LLRBRedValueNode;->getRight()Lcom/google/firebase/database/collection/LLRBNode;

    move-result-object v3

    goto :goto_20

    :cond_1f
    move-object v3, p4

    .line 50
    .local v3, "newRight":Lcom/google/firebase/database/collection/LLRBNode;, "Lcom/google/firebase/database/collection/LLRBNode<TK;TV;>;"
    :goto_20
    new-instance v4, Lcom/google/firebase/database/collection/LLRBRedValueNode;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/firebase/database/collection/LLRBRedValueNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/firebase/database/collection/LLRBNode;Lcom/google/firebase/database/collection/LLRBNode;)V

    return-object v4
.end method

.method protected getColor()Lcom/google/firebase/database/collection/LLRBNode$Color;
    .registers 2

    .line 31
    .local p0, "this":Lcom/google/firebase/database/collection/LLRBRedValueNode;, "Lcom/google/firebase/database/collection/LLRBRedValueNode<TK;TV;>;"
    sget-object v0, Lcom/google/firebase/database/collection/LLRBNode$Color;->RED:Lcom/google/firebase/database/collection/LLRBNode$Color;

    return-object v0
.end method

.method public isRed()Z
    .registers 2

    .line 36
    .local p0, "this":Lcom/google/firebase/database/collection/LLRBRedValueNode;, "Lcom/google/firebase/database/collection/LLRBRedValueNode<TK;TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .registers 3

    .line 41
    .local p0, "this":Lcom/google/firebase/database/collection/LLRBRedValueNode;, "Lcom/google/firebase/database/collection/LLRBRedValueNode<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/firebase/database/collection/LLRBRedValueNode;->getLeft()Lcom/google/firebase/database/collection/LLRBNode;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/collection/LLRBNode;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lcom/google/firebase/database/collection/LLRBRedValueNode;->getRight()Lcom/google/firebase/database/collection/LLRBNode;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/firebase/database/collection/LLRBNode;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
