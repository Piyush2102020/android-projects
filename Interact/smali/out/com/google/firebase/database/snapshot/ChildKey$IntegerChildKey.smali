.class Lcom/google/firebase/database/snapshot/ChildKey$IntegerChildKey;
.super Lcom/google/firebase/database/snapshot/ChildKey;
.source "ChildKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/snapshot/ChildKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntegerChildKey"
.end annotation


# instance fields
.field private final intValue:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "intValue"    # I

    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/database/snapshot/ChildKey;-><init>(Ljava/lang/String;Lcom/google/firebase/database/snapshot/ChildKey$1;)V

    .line 131
    iput p2, p0, Lcom/google/firebase/database/snapshot/ChildKey$IntegerChildKey;->intValue:I

    .line 132
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 126
    check-cast p1, Lcom/google/firebase/database/snapshot/ChildKey;

    invoke-super {p0, p1}, Lcom/google/firebase/database/snapshot/ChildKey;->compareTo(Lcom/google/firebase/database/snapshot/ChildKey;)I

    move-result p1

    return p1
.end method

.method protected intValue()I
    .registers 2

    .line 141
    iget v0, p0, Lcom/google/firebase/database/snapshot/ChildKey$IntegerChildKey;->intValue:I

    return v0
.end method

.method protected isInt()Z
    .registers 2

    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IntegerChildName(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/google/firebase/database/snapshot/ChildKey;->access$100(Lcom/google/firebase/database/snapshot/ChildKey;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
