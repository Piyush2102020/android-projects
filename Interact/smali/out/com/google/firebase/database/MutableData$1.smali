.class Lcom/google/firebase/database/MutableData$1;
.super Ljava/lang/Object;
.source "MutableData.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/MutableData;->getChildren()Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/google/firebase/database/MutableData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/MutableData;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/MutableData;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/firebase/database/MutableData;

    .line 108
    iput-object p1, p0, Lcom/google/firebase/database/MutableData$1;->this$0:Lcom/google/firebase/database/MutableData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/firebase/database/MutableData;",
            ">;"
        }
    .end annotation

    .line 111
    new-instance v0, Lcom/google/firebase/database/MutableData$1$1;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/MutableData$1$1;-><init>(Lcom/google/firebase/database/MutableData$1;)V

    return-object v0
.end method
