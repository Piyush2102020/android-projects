.class public Lcom/google/firebase/database/collection/StandardComparator;
.super Ljava/lang/Object;
.source "StandardComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Ljava/lang/Comparable<",
        "TA;>;>",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TA;>;"
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/google/firebase/database/collection/StandardComparator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Lcom/google/firebase/database/collection/StandardComparator;

    invoke-direct {v0}, Lcom/google/firebase/database/collection/StandardComparator;-><init>()V

    sput-object v0, Lcom/google/firebase/database/collection/StandardComparator;->INSTANCE:Lcom/google/firebase/database/collection/StandardComparator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 23
    .local p0, "this":Lcom/google/firebase/database/collection/StandardComparator;, "Lcom/google/firebase/database/collection/StandardComparator<TA;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getComparator(Ljava/lang/Class;)Lcom/google/firebase/database/collection/StandardComparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/firebase/database/collection/StandardComparator<",
            "TT;>;"
        }
    .end annotation

    .line 27
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lcom/google/firebase/database/collection/StandardComparator;->INSTANCE:Lcom/google/firebase/database/collection/StandardComparator;

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TA;)I"
        }
    .end annotation

    .line 32
    .local p0, "this":Lcom/google/firebase/database/collection/StandardComparator;, "Lcom/google/firebase/database/collection/StandardComparator<TA;>;"
    .local p1, "o1":Ljava/lang/Comparable;, "TA;"
    .local p2, "o2":Ljava/lang/Comparable;, "TA;"
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 19
    .local p0, "this":Lcom/google/firebase/database/collection/StandardComparator;, "Lcom/google/firebase/database/collection/StandardComparator<TA;>;"
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/database/collection/StandardComparator;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method
