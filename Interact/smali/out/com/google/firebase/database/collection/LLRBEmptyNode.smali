.class public Lcom/google/firebase/database/collection/LLRBEmptyNode;
.super Ljava/lang/Object;
.source "LLRBEmptyNode.java"

# interfaces
.implements Lcom/google/firebase/database/collection/LLRBNode;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/firebase/database/collection/LLRBNode<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/firebase/database/collection/LLRBEmptyNode;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Lcom/google/firebase/database/collection/LLRBEmptyNode;

    invoke-direct {v0}, Lcom/google/firebase/database/collection/LLRBEmptyNode;-><init>()V

    sput-object v0, Lcom/google/firebase/database/collection/LLRBEmptyNode;->INSTANCE:Lcom/google/firebase/database/collection/LLRBEmptyNode;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 28
    .local p0, "this":Lcom/google/firebase/database/collection/LLRBEmptyNode;, "Lcom/google/firebase/database/collection/LLRBEmptyNode<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/firebase/database/collection/LLRBEmptyNode;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/firebase/database/collection/LLRBEmptyNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 25
    sget-object v0, Lcom/google/firebase/database/collection/LLRBEmptyNode;->INSTANCE:Lcom/google/firebase/database/collection/LLRBEmptyNode;

    return-object v0
.end method


# virtual methods
.method public copy(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/firebase/database/collection/LLRBNode$Color;Lcom/google/firebase/database/collection/LLRBNode;Lcom/google/firebase/database/collection/LLRBNode;)Lcom/google/firebase/database/collection/LLRBNode;
    .registers 6
    .param p3, "color"    # Lcom/google/firebase/database/collection/LLRBNode$Color;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/google/firebase/database/collection/LLRBNode$Color;",
            "Lcom/google/firebase/database/collection/LLRBNode<",
            "TK;TV;>;",
            "Lcom/google/firebase/database/collection/LLRBNode<",
            "TK;TV;>;)",
            "Lcom/google/firebase/database/collection/LLRBNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 33
    .local p0, "this":Lcom/google/firebase/database/collection/LLRBEmptyNode;, "Lcom/google/firebase/database/collection/LLRBEmptyNode<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p4, "left":Lcom/google/firebase/database/collection/LLRBNode;, "Lcom/google/firebase/database/collection/LLRBNode<TK;TV;>;"
    .local p5, "right":Lcom/google/firebase/database/collection/LLRBNode;, "Lcom/google/firebase/database/collection/LLRBNode<TK;TV;>;"
    return-object p0
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 58
    .local p0, "this":Lcom/google/firebase/database/collection/LLRBEmptyNode;, "Lcom/google/firebase/database/collection/LLRBEmptyNode<TK;TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLeft()Lcom/google/firebase/database/collection/LLRBNode;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/database/collection/LLRBNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 68
    .local p0, "this":Lcom/google/firebase/database/collection/LLRBEmptyNode;, "Lcom/google/firebase/database/collection/LLRBEmptyNode<TK;TV;>;"
    return-object p0
.end method

.method public getMax()Lcom/google/firebase/database/collection/LLRBNode;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/database/collection/LLRBNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 83
    .local p0, "this":Lcom/google/firebase/database/collection/LLRBEmptyNode;, "Lcom/google/firebase/database/collection/LLRBEmptyNode<TK;TV;>;"
    return-object p0
.end method

.method public getMin()Lcom/google/firebase/database/collection/LLRBNode;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/database/collection/LLRBNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 78
    .local p0, "this":Lcom/google/firebase/database/collection/LLRBEmptyNode;, "Lcom/google/firebase/database/collection/LLRBEmptyNode<TK;TV;>;"
    return-object p0
.end method

.method public getRight()Lcom/google/firebase/database/collection/LLRBNode;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/database/collection/LLRBNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 73
    .local p0, "this":Lcom/google/firebase/database/collection/LLRBEmptyNode;, "Lcom/google/firebase/database/collection/LLRBEmptyNode<TK;TV;>;"
    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 63
    .local p0, "this":Lcom/google/firebase/database/collection/LLRBEmptyNode;, "Lcom/google/firebase/database/collection/LLRBEmptyNode<TK;TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public inOrderTraversal(Lcom/google/firebase/database/collection/LLRBNode$NodeVisitor;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/collection/LLRBNode$NodeVisitor<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 94
    .local p0, "this":Lcom/google/firebase/database/collection/LLRBEmptyNode;, "Lcom/google/firebase/database/collection/LLRBEmptyNode<TK;TV;>;"
    .local p1, "visitor":Lcom/google/firebase/database/collection/LLRBNode$NodeVisitor;, "Lcom/google/firebase/database/collection/LLRBNode$NodeVisitor<TK;TV;>;"
    return-void
.end method

.method public insert(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/firebase/database/collection/LLRBNode;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/Comparator<",
            "TK;>;)",
            "Lcom/google/firebase/database/collection/LLRBNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 38
    .local p0, "this":Lcom/google/firebase/database/collection/LLRBEmptyNode;, "Lcom/google/firebase/database/collection/LLRBEmptyNode<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TK;>;"
    new-instance v0, Lcom/google/firebase/database/collection/LLRBRedValueNode;

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/database/collection/LLRBRedValueNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 48
    .local p0, "this":Lcom/google/firebase/database/collection/LLRBEmptyNode;, "Lcom/google/firebase/database/collection/LLRBEmptyNode<TK;TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public isRed()Z
    .registers 2

    .line 53
    .local p0, "this":Lcom/google/firebase/database/collection/LLRBEmptyNode;, "Lcom/google/firebase/database/collection/LLRBEmptyNode<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public remove(Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/firebase/database/collection/LLRBNode;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Comparator<",
            "TK;>;)",
            "Lcom/google/firebase/database/collection/LLRBNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 43
    .local p0, "this":Lcom/google/firebase/database/collection/LLRBEmptyNode;, "Lcom/google/firebase/database/collection/LLRBEmptyNode<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TK;>;"
    return-object p0
.end method

.method public shortCircuitingInOrderTraversal(Lcom/google/firebase/database/collection/LLRBNode$ShortCircuitingNodeVisitor;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/collection/LLRBNode$ShortCircuitingNodeVisitor<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 99
    .local p0, "this":Lcom/google/firebase/database/collection/LLRBEmptyNode;, "Lcom/google/firebase/database/collection/LLRBEmptyNode<TK;TV;>;"
    .local p1, "visitor":Lcom/google/firebase/database/collection/LLRBNode$ShortCircuitingNodeVisitor;, "Lcom/google/firebase/database/collection/LLRBNode$ShortCircuitingNodeVisitor<TK;TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public shortCircuitingReverseOrderTraversal(Lcom/google/firebase/database/collection/LLRBNode$ShortCircuitingNodeVisitor;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/collection/LLRBNode$ShortCircuitingNodeVisitor<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 105
    .local p0, "this":Lcom/google/firebase/database/collection/LLRBEmptyNode;, "Lcom/google/firebase/database/collection/LLRBEmptyNode<TK;TV;>;"
    .local p1, "visitor":Lcom/google/firebase/database/collection/LLRBNode$ShortCircuitingNodeVisitor;, "Lcom/google/firebase/database/collection/LLRBNode$ShortCircuitingNodeVisitor<TK;TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .registers 2

    .line 88
    .local p0, "this":Lcom/google/firebase/database/collection/LLRBEmptyNode;, "Lcom/google/firebase/database/collection/LLRBEmptyNode<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method
