.class public Lcom/google/firebase/database/collection/RBTreeSortedMap;
.super Lcom/google/firebase/database/collection/ImmutableSortedMap;
.source "RBTreeSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "TK;>;"
        }
    .end annotation
.end field

.field private root:Lcom/google/firebase/database/collection/LLRBNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/collection/LLRBNode<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/firebase/database/collection/LLRBNode;Ljava/util/Comparator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/collection/LLRBNode<",
            "TK;TV;>;",
            "Ljava/util/Comparator<",
            "TK;>;)V"
        }
    .end annotation

    .line 34
    .local p0, "this":Lcom/google/firebase/database/collection/RBTreeSortedMap;, "Lcom/google/firebase/database/collection/RBTreeSortedMap<TK;TV;>;"
    .local p1, "root":Lcom/google/firebase/database/collection/LLRBNode;, "Lcom/google/firebase/database/collection/LLRBNode<TK;TV;>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TK;>;"
    invoke-direct {p0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap;->root:Lcom/google/firebase/database/collection/LLRBNode;

    .line 36
    iput-object p2, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap;->comparator:Ljava/util/Comparator;

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/database/collection/LLRBNode;Ljava/util/Comparator;Lcom/google/firebase/database/collection/RBTreeSortedMap$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/google/firebase/database/collection/LLRBNode;
    .param p2, "x1"    # Ljava/util/Comparator;
    .param p3, "x2"    # Lcom/google/firebase/database/collection/RBTreeSortedMap$1;

    .line 24
    .local p0, "this":Lcom/google/firebase/database/collection/RBTreeSortedMap;, "Lcom/google/firebase/database/collection/RBTreeSortedMap<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/database/collection/RBTreeSortedMap;-><init>(Lcom/google/firebase/database/collection/LLRBNode;Ljava/util/Comparator;)V

    return-void
.end method

.method constructor <init>(Ljava/util/Comparator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "TK;>;)V"
        }
    .end annotation

    .line 29
    .local p0, "this":Lcom/google/firebase/database/collection/RBTreeSortedMap;, "Lcom/google/firebase/database/collection/RBTreeSortedMap<TK;TV;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TK;>;"
    invoke-direct {p0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;-><init>()V

    .line 30
    invoke-static {}, Lcom/google/firebase/database/collection/LLRBEmptyNode;->getInstance()Lcom/google/firebase/database/collection/LLRBEmptyNode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap;->root:Lcom/google/firebase/database/collection/LLRBNode;

    .line 31
    iput-object p1, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap;->comparator:Ljava/util/Comparator;

    .line 32
    return-void
.end method

.method public static buildFrom(Ljava/util/List;Ljava/util/Map;Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder$KeyTranslator;Ljava/util/Comparator;)Lcom/google/firebase/database/collection/RBTreeSortedMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TA;>;",
            "Ljava/util/Map<",
            "TB;TC;>;",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder$KeyTranslator<",
            "TA;TB;>;",
            "Ljava/util/Comparator<",
            "TA;>;)",
            "Lcom/google/firebase/database/collection/RBTreeSortedMap<",
            "TA;TC;>;"
        }
    .end annotation

    .line 220
    .local p0, "keys":Ljava/util/List;, "Ljava/util/List<TA;>;"
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<TB;TC;>;"
    .local p2, "translator":Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder$KeyTranslator;, "Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder$KeyTranslator<TA;TB;>;"
    .local p3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TA;>;"
    invoke-static {p0, p1, p2, p3}, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder;->buildFrom(Ljava/util/List;Ljava/util/Map;Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder$KeyTranslator;Ljava/util/Comparator;)Lcom/google/firebase/database/collection/RBTreeSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static fromMap(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/firebase/database/collection/RBTreeSortedMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TA;TB;>;",
            "Ljava/util/Comparator<",
            "TA;>;)",
            "Lcom/google/firebase/database/collection/RBTreeSortedMap<",
            "TA;TB;>;"
        }
    .end annotation

    .line 224
    .local p0, "values":Ljava/util/Map;, "Ljava/util/Map<TA;TB;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TA;>;"
    new-instance v0, Ljava/util/ArrayList;

    .line 225
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 227
    invoke-static {}, Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder;->identityTranslator()Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder$KeyTranslator;

    move-result-object v1

    .line 224
    invoke-static {v0, p0, v1, p1}, Lcom/google/firebase/database/collection/RBTreeSortedMap$Builder;->buildFrom(Ljava/util/List;Ljava/util/Map;Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder$KeyTranslator;Ljava/util/Comparator;)Lcom/google/firebase/database/collection/RBTreeSortedMap;

    move-result-object v0

    return-object v0
.end method

.method private getNode(Ljava/lang/Object;)Lcom/google/firebase/database/collection/LLRBNode;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/google/firebase/database/collection/LLRBNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 45
    .local p0, "this":Lcom/google/firebase/database/collection/RBTreeSortedMap;, "Lcom/google/firebase/database/collection/RBTreeSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap;->root:Lcom/google/firebase/database/collection/LLRBNode;

    .line 46
    .local v0, "node":Lcom/google/firebase/database/collection/LLRBNode;, "Lcom/google/firebase/database/collection/LLRBNode<TK;TV;>;"
    :goto_2
    invoke-interface {v0}, Lcom/google/firebase/database/collection/LLRBNode;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_21

    .line 47
    iget-object v1, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap;->comparator:Ljava/util/Comparator;

    invoke-interface {v0}, Lcom/google/firebase/database/collection/LLRBNode;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 48
    .local v1, "cmp":I
    if-gez v1, :cond_19

    .line 49
    invoke-interface {v0}, Lcom/google/firebase/database/collection/LLRBNode;->getLeft()Lcom/google/firebase/database/collection/LLRBNode;

    move-result-object v0

    goto :goto_20

    .line 50
    :cond_19
    if-nez v1, :cond_1c

    .line 51
    return-object v0

    .line 53
    :cond_1c
    invoke-interface {v0}, Lcom/google/firebase/database/collection/LLRBNode;->getRight()Lcom/google/firebase/database/collection/LLRBNode;

    move-result-object v0

    .line 55
    .end local v1    # "cmp":I
    :goto_20
    goto :goto_2

    .line 56
    :cond_21
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 61
    .local p0, "this":Lcom/google/firebase/database/collection/RBTreeSortedMap;, "Lcom/google/firebase/database/collection/RBTreeSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, p1}, Lcom/google/firebase/database/collection/RBTreeSortedMap;->getNode(Ljava/lang/Object;)Lcom/google/firebase/database/collection/LLRBNode;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 66
    .local p0, "this":Lcom/google/firebase/database/collection/RBTreeSortedMap;, "Lcom/google/firebase/database/collection/RBTreeSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, p1}, Lcom/google/firebase/database/collection/RBTreeSortedMap;->getNode(Ljava/lang/Object;)Lcom/google/firebase/database/collection/LLRBNode;

    move-result-object v0

    .line 67
    .local v0, "node":Lcom/google/firebase/database/collection/LLRBNode;, "Lcom/google/firebase/database/collection/LLRBNode<TK;TV;>;"
    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/google/firebase/database/collection/LLRBNode;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return-object v1
.end method

.method public getComparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "TK;>;"
        }
    .end annotation

    .line 212
    .local p0, "this":Lcom/google/firebase/database/collection/RBTreeSortedMap;, "Lcom/google/firebase/database/collection/RBTreeSortedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public getMaxKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 95
    .local p0, "this":Lcom/google/firebase/database/collection/RBTreeSortedMap;, "Lcom/google/firebase/database/collection/RBTreeSortedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap;->root:Lcom/google/firebase/database/collection/LLRBNode;

    invoke-interface {v0}, Lcom/google/firebase/database/collection/LLRBNode;->getMax()Lcom/google/firebase/database/collection/LLRBNode;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/collection/LLRBNode;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getMinKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 90
    .local p0, "this":Lcom/google/firebase/database/collection/RBTreeSortedMap;, "Lcom/google/firebase/database/collection/RBTreeSortedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap;->root:Lcom/google/firebase/database/collection/LLRBNode;

    invoke-interface {v0}, Lcom/google/firebase/database/collection/LLRBNode;->getMin()Lcom/google/firebase/database/collection/LLRBNode;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/collection/LLRBNode;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPredecessorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 135
    .local p0, "this":Lcom/google/firebase/database/collection/RBTreeSortedMap;, "Lcom/google/firebase/database/collection/RBTreeSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap;->root:Lcom/google/firebase/database/collection/LLRBNode;

    .line 136
    .local v0, "node":Lcom/google/firebase/database/collection/LLRBNode;, "Lcom/google/firebase/database/collection/LLRBNode<TK;TV;>;"
    const/4 v1, 0x0

    .line 137
    .local v1, "rightParent":Lcom/google/firebase/database/collection/LLRBNode;, "Lcom/google/firebase/database/collection/LLRBNode<TK;TV;>;"
    :goto_3
    invoke-interface {v0}, Lcom/google/firebase/database/collection/LLRBNode;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4d

    .line 138
    iget-object v2, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap;->comparator:Ljava/util/Comparator;

    invoke-interface {v0}, Lcom/google/firebase/database/collection/LLRBNode;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 139
    .local v2, "cmp":I
    if-nez v2, :cond_40

    .line 140
    invoke-interface {v0}, Lcom/google/firebase/database/collection/LLRBNode;->getLeft()Lcom/google/firebase/database/collection/LLRBNode;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/firebase/database/collection/LLRBNode;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_37

    .line 141
    invoke-interface {v0}, Lcom/google/firebase/database/collection/LLRBNode;->getLeft()Lcom/google/firebase/database/collection/LLRBNode;

    move-result-object v0

    .line 142
    :goto_23
    invoke-interface {v0}, Lcom/google/firebase/database/collection/LLRBNode;->getRight()Lcom/google/firebase/database/collection/LLRBNode;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/firebase/database/collection/LLRBNode;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_32

    .line 143
    invoke-interface {v0}, Lcom/google/firebase/database/collection/LLRBNode;->getRight()Lcom/google/firebase/database/collection/LLRBNode;

    move-result-object v0

    goto :goto_23

    .line 145
    :cond_32
    invoke-interface {v0}, Lcom/google/firebase/database/collection/LLRBNode;->getKey()Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 146
    :cond_37
    if-eqz v1, :cond_3e

    .line 147
    invoke-interface {v1}, Lcom/google/firebase/database/collection/LLRBNode;->getKey()Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 149
    :cond_3e
    const/4 v3, 0x0

    return-object v3

    .line 151
    :cond_40
    if-gez v2, :cond_47

    .line 152
    invoke-interface {v0}, Lcom/google/firebase/database/collection/LLRBNode;->getLeft()Lcom/google/firebase/database/collection/LLRBNode;

    move-result-object v0

    goto :goto_4c

    .line 154
    :cond_47
    move-object v1, v0

    .line 155
    invoke-interface {v0}, Lcom/google/firebase/database/collection/LLRBNode;->getRight()Lcom/google/firebase/database/collection/LLRBNode;

    move-result-object v0

    .line 157
    .end local v2    # "cmp":I
    :goto_4c
    goto :goto_3

    .line 158
    :cond_4d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t find predecessor key of non-present key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method getRoot()Lcom/google/firebase/database/collection/LLRBNode;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/database/collection/LLRBNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 41
    .local p0, "this":Lcom/google/firebase/database/collection/RBTreeSortedMap;, "Lcom/google/firebase/database/collection/RBTreeSortedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap;->root:Lcom/google/firebase/database/collection/LLRBNode;

    return-object v0
.end method

.method public getSuccessorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 163
    .local p0, "this":Lcom/google/firebase/database/collection/RBTreeSortedMap;, "Lcom/google/firebase/database/collection/RBTreeSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap;->root:Lcom/google/firebase/database/collection/LLRBNode;

    .line 164
    .local v0, "node":Lcom/google/firebase/database/collection/LLRBNode;, "Lcom/google/firebase/database/collection/LLRBNode<TK;TV;>;"
    const/4 v1, 0x0

    .line 165
    .local v1, "leftParent":Lcom/google/firebase/database/collection/LLRBNode;, "Lcom/google/firebase/database/collection/LLRBNode<TK;TV;>;"
    :goto_3
    invoke-interface {v0}, Lcom/google/firebase/database/collection/LLRBNode;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4d

    .line 166
    iget-object v2, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap;->comparator:Ljava/util/Comparator;

    invoke-interface {v0}, Lcom/google/firebase/database/collection/LLRBNode;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 167
    .local v2, "cmp":I
    if-nez v2, :cond_40

    .line 168
    invoke-interface {v0}, Lcom/google/firebase/database/collection/LLRBNode;->getRight()Lcom/google/firebase/database/collection/LLRBNode;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/firebase/database/collection/LLRBNode;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_37

    .line 169
    invoke-interface {v0}, Lcom/google/firebase/database/collection/LLRBNode;->getRight()Lcom/google/firebase/database/collection/LLRBNode;

    move-result-object v0

    .line 170
    :goto_23
    invoke-interface {v0}, Lcom/google/firebase/database/collection/LLRBNode;->getLeft()Lcom/google/firebase/database/collection/LLRBNode;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/firebase/database/collection/LLRBNode;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_32

    .line 171
    invoke-interface {v0}, Lcom/google/firebase/database/collection/LLRBNode;->getLeft()Lcom/google/firebase/database/collection/LLRBNode;

    move-result-object v0

    goto :goto_23

    .line 173
    :cond_32
    invoke-interface {v0}, Lcom/google/firebase/database/collection/LLRBNode;->getKey()Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 174
    :cond_37
    if-eqz v1, :cond_3e

    .line 175
    invoke-interface {v1}, Lcom/google/firebase/database/collection/LLRBNode;->getKey()Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 177
    :cond_3e
    const/4 v3, 0x0

    return-object v3

    .line 179
    :cond_40
    if-gez v2, :cond_47

    .line 180
    invoke-interface {v0}, Lcom/google/firebase/database/collection/LLRBNode;->getRight()Lcom/google/firebase/database/collection/LLRBNode;

    move-result-object v0

    goto :goto_4c

    .line 182
    :cond_47
    move-object v1, v0

    .line 183
    invoke-interface {v0}, Lcom/google/firebase/database/collection/LLRBNode;->getLeft()Lcom/google/firebase/database/collection/LLRBNode;

    move-result-object v0

    .line 185
    .end local v2    # "cmp":I
    :goto_4c
    goto :goto_3

    .line 186
    :cond_4d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t find successor key of non-present key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public inOrderTraversal(Lcom/google/firebase/database/collection/LLRBNode$NodeVisitor;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/collection/LLRBNode$NodeVisitor<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 110
    .local p0, "this":Lcom/google/firebase/database/collection/RBTreeSortedMap;, "Lcom/google/firebase/database/collection/RBTreeSortedMap<TK;TV;>;"
    .local p1, "visitor":Lcom/google/firebase/database/collection/LLRBNode$NodeVisitor;, "Lcom/google/firebase/database/collection/LLRBNode$NodeVisitor<TK;TV;>;"
    iget-object v0, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap;->root:Lcom/google/firebase/database/collection/LLRBNode;

    invoke-interface {v0, p1}, Lcom/google/firebase/database/collection/LLRBNode;->inOrderTraversal(Lcom/google/firebase/database/collection/LLRBNode$NodeVisitor;)V

    .line 111
    return-void
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 192
    .local p0, "this":Lcom/google/firebase/database/collection/RBTreeSortedMap;, "Lcom/google/firebase/database/collection/RBTreeSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    .line 193
    .local v0, "prunedNodes":I
    iget-object v1, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap;->root:Lcom/google/firebase/database/collection/LLRBNode;

    .line 194
    .local v1, "node":Lcom/google/firebase/database/collection/LLRBNode;, "Lcom/google/firebase/database/collection/LLRBNode<TK;TV;>;"
    :goto_3
    invoke-interface {v1}, Lcom/google/firebase/database/collection/LLRBNode;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_36

    .line 195
    iget-object v2, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap;->comparator:Ljava/util/Comparator;

    invoke-interface {v1}, Lcom/google/firebase/database/collection/LLRBNode;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 196
    .local v2, "cmp":I
    if-nez v2, :cond_1f

    .line 197
    invoke-interface {v1}, Lcom/google/firebase/database/collection/LLRBNode;->getLeft()Lcom/google/firebase/database/collection/LLRBNode;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/firebase/database/collection/LLRBNode;->size()I

    move-result v3

    add-int/2addr v3, v0

    return v3

    .line 198
    :cond_1f
    if-gez v2, :cond_26

    .line 199
    invoke-interface {v1}, Lcom/google/firebase/database/collection/LLRBNode;->getLeft()Lcom/google/firebase/database/collection/LLRBNode;

    move-result-object v1

    goto :goto_35

    .line 202
    :cond_26
    invoke-interface {v1}, Lcom/google/firebase/database/collection/LLRBNode;->getLeft()Lcom/google/firebase/database/collection/LLRBNode;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/firebase/database/collection/LLRBNode;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 203
    invoke-interface {v1}, Lcom/google/firebase/database/collection/LLRBNode;->getRight()Lcom/google/firebase/database/collection/LLRBNode;

    move-result-object v1

    .line 205
    .end local v2    # "cmp":I
    :goto_35
    goto :goto_3

    .line 207
    :cond_36
    const/4 v2, -0x1

    return v2
.end method

.method public insert(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedMap;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 83
    .local p0, "this":Lcom/google/firebase/database/collection/RBTreeSortedMap;, "Lcom/google/firebase/database/collection/RBTreeSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap;->root:Lcom/google/firebase/database/collection/LLRBNode;

    iget-object v1, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap;->comparator:Ljava/util/Comparator;

    .line 84
    invoke-interface {v0, p1, p2, v1}, Lcom/google/firebase/database/collection/LLRBNode;->insert(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/firebase/database/collection/LLRBNode;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/google/firebase/database/collection/LLRBNode$Color;->BLACK:Lcom/google/firebase/database/collection/LLRBNode$Color;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/google/firebase/database/collection/LLRBNode;->copy(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/firebase/database/collection/LLRBNode$Color;Lcom/google/firebase/database/collection/LLRBNode;Lcom/google/firebase/database/collection/LLRBNode;)Lcom/google/firebase/database/collection/LLRBNode;

    move-result-object v0

    .line 85
    .local v0, "newRoot":Lcom/google/firebase/database/collection/LLRBNode;, "Lcom/google/firebase/database/collection/LLRBNode<TK;TV;>;"
    new-instance v1, Lcom/google/firebase/database/collection/RBTreeSortedMap;

    iget-object v2, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap;->comparator:Ljava/util/Comparator;

    invoke-direct {v1, v0, v2}, Lcom/google/firebase/database/collection/RBTreeSortedMap;-><init>(Lcom/google/firebase/database/collection/LLRBNode;Ljava/util/Comparator;)V

    return-object v1
.end method

.method public isEmpty()Z
    .registers 2

    .line 105
    .local p0, "this":Lcom/google/firebase/database/collection/RBTreeSortedMap;, "Lcom/google/firebase/database/collection/RBTreeSortedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap;->root:Lcom/google/firebase/database/collection/LLRBNode;

    invoke-interface {v0}, Lcom/google/firebase/database/collection/LLRBNode;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 115
    .local p0, "this":Lcom/google/firebase/database/collection/RBTreeSortedMap;, "Lcom/google/firebase/database/collection/RBTreeSortedMap<TK;TV;>;"
    new-instance v0, Lcom/google/firebase/database/collection/ImmutableSortedMapIterator;

    iget-object v1, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap;->root:Lcom/google/firebase/database/collection/LLRBNode;

    iget-object v2, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap;->comparator:Ljava/util/Comparator;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/google/firebase/database/collection/ImmutableSortedMapIterator;-><init>(Lcom/google/firebase/database/collection/LLRBNode;Ljava/lang/Object;Ljava/util/Comparator;Z)V

    return-object v0
.end method

.method public iteratorFrom(Ljava/lang/Object;)Ljava/util/Iterator;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 120
    .local p0, "this":Lcom/google/firebase/database/collection/RBTreeSortedMap;, "Lcom/google/firebase/database/collection/RBTreeSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    new-instance v0, Lcom/google/firebase/database/collection/ImmutableSortedMapIterator;

    iget-object v1, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap;->root:Lcom/google/firebase/database/collection/LLRBNode;

    iget-object v2, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap;->comparator:Ljava/util/Comparator;

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/google/firebase/database/collection/ImmutableSortedMapIterator;-><init>(Lcom/google/firebase/database/collection/LLRBNode;Ljava/lang/Object;Ljava/util/Comparator;Z)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedMap;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 72
    .local p0, "this":Lcom/google/firebase/database/collection/RBTreeSortedMap;, "Lcom/google/firebase/database/collection/RBTreeSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lcom/google/firebase/database/collection/RBTreeSortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 73
    return-object p0

    .line 75
    :cond_7
    iget-object v0, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap;->root:Lcom/google/firebase/database/collection/LLRBNode;

    iget-object v1, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap;->comparator:Ljava/util/Comparator;

    .line 76
    invoke-interface {v0, p1, v1}, Lcom/google/firebase/database/collection/LLRBNode;->remove(Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/firebase/database/collection/LLRBNode;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/google/firebase/database/collection/LLRBNode$Color;->BLACK:Lcom/google/firebase/database/collection/LLRBNode$Color;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/google/firebase/database/collection/LLRBNode;->copy(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/firebase/database/collection/LLRBNode$Color;Lcom/google/firebase/database/collection/LLRBNode;Lcom/google/firebase/database/collection/LLRBNode;)Lcom/google/firebase/database/collection/LLRBNode;

    move-result-object v0

    .line 77
    .local v0, "newRoot":Lcom/google/firebase/database/collection/LLRBNode;, "Lcom/google/firebase/database/collection/LLRBNode<TK;TV;>;"
    new-instance v1, Lcom/google/firebase/database/collection/RBTreeSortedMap;

    iget-object v2, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap;->comparator:Ljava/util/Comparator;

    invoke-direct {v1, v0, v2}, Lcom/google/firebase/database/collection/RBTreeSortedMap;-><init>(Lcom/google/firebase/database/collection/LLRBNode;Ljava/util/Comparator;)V

    return-object v1
.end method

.method public reverseIterator()Ljava/util/Iterator;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 130
    .local p0, "this":Lcom/google/firebase/database/collection/RBTreeSortedMap;, "Lcom/google/firebase/database/collection/RBTreeSortedMap<TK;TV;>;"
    new-instance v0, Lcom/google/firebase/database/collection/ImmutableSortedMapIterator;

    iget-object v1, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap;->root:Lcom/google/firebase/database/collection/LLRBNode;

    iget-object v2, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap;->comparator:Ljava/util/Comparator;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/google/firebase/database/collection/ImmutableSortedMapIterator;-><init>(Lcom/google/firebase/database/collection/LLRBNode;Ljava/lang/Object;Ljava/util/Comparator;Z)V

    return-object v0
.end method

.method public reverseIteratorFrom(Ljava/lang/Object;)Ljava/util/Iterator;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 125
    .local p0, "this":Lcom/google/firebase/database/collection/RBTreeSortedMap;, "Lcom/google/firebase/database/collection/RBTreeSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    new-instance v0, Lcom/google/firebase/database/collection/ImmutableSortedMapIterator;

    iget-object v1, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap;->root:Lcom/google/firebase/database/collection/LLRBNode;

    iget-object v2, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap;->comparator:Ljava/util/Comparator;

    const/4 v3, 0x1

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/google/firebase/database/collection/ImmutableSortedMapIterator;-><init>(Lcom/google/firebase/database/collection/LLRBNode;Ljava/lang/Object;Ljava/util/Comparator;Z)V

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 100
    .local p0, "this":Lcom/google/firebase/database/collection/RBTreeSortedMap;, "Lcom/google/firebase/database/collection/RBTreeSortedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/firebase/database/collection/RBTreeSortedMap;->root:Lcom/google/firebase/database/collection/LLRBNode;

    invoke-interface {v0}, Lcom/google/firebase/database/collection/LLRBNode;->size()I

    move-result v0

    return v0
.end method
