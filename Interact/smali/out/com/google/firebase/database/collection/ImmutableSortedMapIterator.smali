.class public Lcom/google/firebase/database/collection/ImmutableSortedMapIterator;
.super Ljava/lang/Object;
.source "ImmutableSortedMapIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final isReverse:Z

.field private final nodeStack:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/firebase/database/collection/LLRBValueNode<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/firebase/database/collection/LLRBNode;Ljava/lang/Object;Ljava/util/Comparator;Z)V
    .registers 9
    .param p4, "isReverse"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/collection/LLRBNode<",
            "TK;TV;>;TK;",
            "Ljava/util/Comparator<",
            "TK;>;Z)V"
        }
    .end annotation

    .line 26
    .local p0, "this":Lcom/google/firebase/database/collection/ImmutableSortedMapIterator;, "Lcom/google/firebase/database/collection/ImmutableSortedMapIterator<TK;TV;>;"
    .local p1, "root":Lcom/google/firebase/database/collection/LLRBNode;, "Lcom/google/firebase/database/collection/LLRBNode<TK;TV;>;"
    .local p2, "startKey":Ljava/lang/Object;, "TK;"
    .local p3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/collection/ImmutableSortedMapIterator;->nodeStack:Ljava/util/ArrayDeque;

    .line 28
    iput-boolean p4, p0, Lcom/google/firebase/database/collection/ImmutableSortedMapIterator;->isReverse:Z

    .line 30
    move-object v0, p1

    .line 31
    .local v0, "node":Lcom/google/firebase/database/collection/LLRBNode;, "Lcom/google/firebase/database/collection/LLRBNode<TK;TV;>;"
    :goto_d
    invoke-interface {v0}, Lcom/google/firebase/database/collection/LLRBNode;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_58

    .line 33
    if-eqz p2, :cond_2a

    .line 35
    if-eqz p4, :cond_20

    .line 36
    invoke-interface {v0}, Lcom/google/firebase/database/collection/LLRBNode;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3, p2, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    goto :goto_28

    .line 37
    :cond_20
    invoke-interface {v0}, Lcom/google/firebase/database/collection/LLRBNode;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3, v1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    :goto_28
    nop

    .local v1, "cmp":I
    goto :goto_2b

    .line 39
    .end local v1    # "cmp":I
    :cond_2a
    const/4 v1, 0x1

    .line 41
    .restart local v1    # "cmp":I
    :goto_2b
    if-gez v1, :cond_39

    .line 43
    if-eqz p4, :cond_34

    .line 44
    invoke-interface {v0}, Lcom/google/firebase/database/collection/LLRBNode;->getLeft()Lcom/google/firebase/database/collection/LLRBNode;

    move-result-object v0

    goto :goto_57

    .line 46
    :cond_34
    invoke-interface {v0}, Lcom/google/firebase/database/collection/LLRBNode;->getRight()Lcom/google/firebase/database/collection/LLRBNode;

    move-result-object v0

    goto :goto_57

    .line 48
    :cond_39
    if-nez v1, :cond_44

    .line 50
    iget-object v2, p0, Lcom/google/firebase/database/collection/ImmutableSortedMapIterator;->nodeStack:Ljava/util/ArrayDeque;

    move-object v3, v0

    check-cast v3, Lcom/google/firebase/database/collection/LLRBValueNode;

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 51
    goto :goto_58

    .line 53
    :cond_44
    iget-object v2, p0, Lcom/google/firebase/database/collection/ImmutableSortedMapIterator;->nodeStack:Ljava/util/ArrayDeque;

    move-object v3, v0

    check-cast v3, Lcom/google/firebase/database/collection/LLRBValueNode;

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 54
    if-eqz p4, :cond_53

    .line 55
    invoke-interface {v0}, Lcom/google/firebase/database/collection/LLRBNode;->getRight()Lcom/google/firebase/database/collection/LLRBNode;

    move-result-object v0

    goto :goto_57

    .line 57
    :cond_53
    invoke-interface {v0}, Lcom/google/firebase/database/collection/LLRBNode;->getLeft()Lcom/google/firebase/database/collection/LLRBNode;

    move-result-object v0

    .line 60
    .end local v1    # "cmp":I
    :goto_57
    goto :goto_d

    .line 61
    :cond_58
    :goto_58
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 65
    .local p0, "this":Lcom/google/firebase/database/collection/ImmutableSortedMapIterator;, "Lcom/google/firebase/database/collection/ImmutableSortedMapIterator<TK;TV;>;"
    iget-object v0, p0, Lcom/google/firebase/database/collection/ImmutableSortedMapIterator;->nodeStack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 19
    .local p0, "this":Lcom/google/firebase/database/collection/ImmutableSortedMapIterator;, "Lcom/google/firebase/database/collection/ImmutableSortedMapIterator<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/firebase/database/collection/ImmutableSortedMapIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 71
    .local p0, "this":Lcom/google/firebase/database/collection/ImmutableSortedMapIterator;, "Lcom/google/firebase/database/collection/ImmutableSortedMapIterator<TK;TV;>;"
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/database/collection/ImmutableSortedMapIterator;->nodeStack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/collection/LLRBValueNode;

    .line 72
    .local v0, "node":Lcom/google/firebase/database/collection/LLRBValueNode;, "Lcom/google/firebase/database/collection/LLRBValueNode<TK;TV;>;"
    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    invoke-virtual {v0}, Lcom/google/firebase/database/collection/LLRBValueNode;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/firebase/database/collection/LLRBValueNode;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 73
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    iget-boolean v2, p0, Lcom/google/firebase/database/collection/ImmutableSortedMapIterator;->isReverse:Z

    if-eqz v2, :cond_32

    .line 74
    invoke-virtual {v0}, Lcom/google/firebase/database/collection/LLRBValueNode;->getLeft()Lcom/google/firebase/database/collection/LLRBNode;

    move-result-object v2

    .line 75
    .local v2, "next":Lcom/google/firebase/database/collection/LLRBNode;, "Lcom/google/firebase/database/collection/LLRBNode<TK;TV;>;"
    :goto_1d
    invoke-interface {v2}, Lcom/google/firebase/database/collection/LLRBNode;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_31

    .line 76
    iget-object v3, p0, Lcom/google/firebase/database/collection/ImmutableSortedMapIterator;->nodeStack:Ljava/util/ArrayDeque;

    move-object v4, v2

    check-cast v4, Lcom/google/firebase/database/collection/LLRBValueNode;

    invoke-virtual {v3, v4}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 77
    invoke-interface {v2}, Lcom/google/firebase/database/collection/LLRBNode;->getRight()Lcom/google/firebase/database/collection/LLRBNode;

    move-result-object v3

    move-object v2, v3

    goto :goto_1d

    .line 79
    .end local v2    # "next":Lcom/google/firebase/database/collection/LLRBNode;, "Lcom/google/firebase/database/collection/LLRBNode<TK;TV;>;"
    :cond_31
    goto :goto_4a

    .line 80
    :cond_32
    invoke-virtual {v0}, Lcom/google/firebase/database/collection/LLRBValueNode;->getRight()Lcom/google/firebase/database/collection/LLRBNode;

    move-result-object v2

    .line 81
    .restart local v2    # "next":Lcom/google/firebase/database/collection/LLRBNode;, "Lcom/google/firebase/database/collection/LLRBNode<TK;TV;>;"
    :goto_36
    invoke-interface {v2}, Lcom/google/firebase/database/collection/LLRBNode;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4a

    .line 82
    iget-object v3, p0, Lcom/google/firebase/database/collection/ImmutableSortedMapIterator;->nodeStack:Ljava/util/ArrayDeque;

    move-object v4, v2

    check-cast v4, Lcom/google/firebase/database/collection/LLRBValueNode;

    invoke-virtual {v3, v4}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 83
    invoke-interface {v2}, Lcom/google/firebase/database/collection/LLRBNode;->getLeft()Lcom/google/firebase/database/collection/LLRBNode;

    move-result-object v3
    :try_end_48
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_48} :catch_4b

    move-object v2, v3

    goto :goto_36

    .line 86
    .end local v2    # "next":Lcom/google/firebase/database/collection/LLRBNode;, "Lcom/google/firebase/database/collection/LLRBNode<TK;TV;>;"
    :cond_4a
    :goto_4a
    return-object v1

    .line 87
    .end local v0    # "node":Lcom/google/firebase/database/collection/LLRBValueNode;, "Lcom/google/firebase/database/collection/LLRBValueNode<TK;TV;>;"
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :catch_4b
    move-exception v0

    .line 89
    .local v0, "e":Ljava/util/EmptyStackException;
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public remove()V
    .registers 3

    .line 95
    .local p0, "this":Lcom/google/firebase/database/collection/ImmutableSortedMapIterator;, "Lcom/google/firebase/database/collection/ImmutableSortedMapIterator<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove called on immutable collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
