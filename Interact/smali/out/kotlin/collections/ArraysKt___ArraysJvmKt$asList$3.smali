.class public final Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;
.super Lkotlin/collections/AbstractList;
.source "_ArraysJvm.kt"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/collections/ArraysKt___ArraysJvmKt;->asList([I)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/collections/AbstractList<",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0008*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00060\u0003j\u0002`\u0004J\u0011\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0096\u0002J\u0016\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u0002H\u0096\u0002\u00a2\u0006\u0002\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0008\u0010\u000f\u001a\u00020\tH\u0016J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016R\u0014\u0010\u0005\u001a\u00020\u00028VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0011"
    }
    d2 = {
        "kotlin/collections/ArraysKt___ArraysJvmKt$asList$3",
        "Lkotlin/collections/AbstractList;",
        "",
        "Ljava/util/RandomAccess;",
        "Lkotlin/collections/RandomAccess;",
        "size",
        "getSize",
        "()I",
        "contains",
        "",
        "element",
        "get",
        "index",
        "(I)Ljava/lang/Integer;",
        "indexOf",
        "isEmpty",
        "lastIndexOf",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $this_asList:[I


# direct methods
.method constructor <init>([I)V
    .registers 2
    .param p1, "$receiver"    # [I

    iput-object p1, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;->$this_asList:[I

    .line 168
    invoke-direct {p0}, Lkotlin/collections/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(I)Z
    .registers 3
    .param p1, "element"    # I

    .line 171
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;->$this_asList:[I

    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt;->contains([II)Z

    move-result v0

    return v0
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "element"    # Ljava/lang/Object;

    .line 168
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;->contains(I)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Integer;
    .registers 3
    .param p1, "index"    # I

    .line 172
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;->$this_asList:[I

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I

    .line 168
    invoke-virtual {p0, p1}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;->get(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .registers 2

    .line 169
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;->$this_asList:[I

    array-length v0, v0

    return v0
.end method

.method public indexOf(I)I
    .registers 3
    .param p1, "element"    # I

    .line 173
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;->$this_asList:[I

    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt;->indexOf([II)I

    move-result v0

    return v0
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .registers 3
    .param p1, "element"    # Ljava/lang/Object;

    .line 168
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    return v0

    :cond_6
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;->indexOf(I)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 170
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;->$this_asList:[I

    array-length v0, v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public lastIndexOf(I)I
    .registers 3
    .param p1, "element"    # I

    .line 174
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;->$this_asList:[I

    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt;->lastIndexOf([II)I

    move-result v0

    return v0
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .registers 3
    .param p1, "element"    # Ljava/lang/Object;

    .line 168
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    return v0

    :cond_6
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;->lastIndexOf(I)I

    move-result v0

    return v0
.end method
