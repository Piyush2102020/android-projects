.class public final Landroidx/activity/result/contract/ActivityResultContracts$GetMultipleContents$Companion;
.super Ljava/lang/Object;
.source "ActivityResultContracts.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/result/contract/ActivityResultContracts$GetMultipleContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0081\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004*\u00020\u0006H\u0000\u00a2\u0006\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Landroidx/activity/result/contract/ActivityResultContracts$GetMultipleContents$Companion;",
        "",
        "()V",
        "getClipDataUris",
        "",
        "Landroid/net/Uri;",
        "Landroid/content/Intent;",
        "getClipDataUris$activity_release",
        "activity_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Landroidx/activity/result/contract/ActivityResultContracts$GetMultipleContents$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getClipDataUris$activity_release(Landroid/content/Intent;)Ljava/util/List;
    .registers 7
    .param p1, "$this$getClipDataUris"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 446
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 447
    .local v0, "resultSet":Ljava/util/LinkedHashSet;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_15

    .local v1, "data":Landroid/net/Uri;
    const/4 v2, 0x0

    .line 448
    .local v2, "$i$a$-let-ActivityResultContracts$GetMultipleContents$Companion$getClipDataUris$1":I
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 447
    .end local v1    # "data":Landroid/net/Uri;
    .end local v2    # "$i$a$-let-ActivityResultContracts$GetMultipleContents$Companion$getClipDataUris$1":I
    nop

    .line 450
    :cond_15
    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    .line 451
    .local v1, "clipData":Landroid/content/ClipData;
    if-nez v1, :cond_26

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 452
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 453
    :cond_26
    if-eqz v1, :cond_3f

    .line 454
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    :goto_2d
    if-ge v2, v3, :cond_3f

    .line 455
    invoke-virtual {v1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 456
    .local v4, "uri":Landroid/net/Uri;
    if-eqz v4, :cond_3c

    .line 457
    invoke-virtual {v0, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 454
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 461
    .end local v2    # "i":I
    :cond_3f
    new-instance v2, Ljava/util/ArrayList;

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v2, Ljava/util/List;

    return-object v2
.end method
