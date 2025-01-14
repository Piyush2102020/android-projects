.class public Lkotlin/jvm/internal/SpreadBuilder;
.super Ljava/lang/Object;
.source "SpreadBuilder.java"


# instance fields
.field private final list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "size"    # I

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lkotlin/jvm/internal/SpreadBuilder;->list:Ljava/util/ArrayList;

    .line 19
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 3
    .param p1, "element"    # Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lkotlin/jvm/internal/SpreadBuilder;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method

.method public addSpread(Ljava/lang/Object;)V
    .registers 6
    .param p1, "container"    # Ljava/lang/Object;

    .line 23
    if-nez p1, :cond_3

    return-void

    .line 25
    :cond_3
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_20

    .line 26
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 27
    .local v0, "array":[Ljava/lang/Object;
    array-length v1, v0

    if-lez v1, :cond_1f

    .line 28
    iget-object v1, p0, Lkotlin/jvm/internal/SpreadBuilder;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    array-length v3, v0

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 29
    iget-object v1, p0, Lkotlin/jvm/internal/SpreadBuilder;->list:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 31
    .end local v0    # "array":[Ljava/lang/Object;
    :cond_1f
    goto :goto_61

    .line 32
    :cond_20
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_2d

    .line 33
    iget-object v0, p0, Lkotlin/jvm/internal/SpreadBuilder;->list:Ljava/util/ArrayList;

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_61

    .line 35
    :cond_2d
    instance-of v0, p1, Ljava/lang/Iterable;

    if-eqz v0, :cond_49

    .line 36
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 37
    .local v1, "element":Ljava/lang/Object;
    iget-object v2, p0, Lkotlin/jvm/internal/SpreadBuilder;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_38

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "element":Ljava/lang/Object;
    :cond_48
    goto :goto_61

    .line 40
    :cond_49
    instance-of v0, p1, Ljava/util/Iterator;

    if-eqz v0, :cond_62

    .line 41
    move-object v0, p1

    check-cast v0, Ljava/util/Iterator;

    .local v0, "iterator":Ljava/util/Iterator;
    :goto_50
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_60

    .line 42
    iget-object v1, p0, Lkotlin/jvm/internal/SpreadBuilder;->list:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_50

    .end local v0    # "iterator":Ljava/util/Iterator;
    :cond_60
    nop

    .line 48
    :goto_61
    return-void

    .line 46
    :cond_62
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Don\'t know how to spread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .registers 2

    .line 51
    iget-object v0, p0, Lkotlin/jvm/internal/SpreadBuilder;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .param p1, "a"    # [Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lkotlin/jvm/internal/SpreadBuilder;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
