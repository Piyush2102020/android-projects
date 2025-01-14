.class Lcom/google/firebase/components/CycleDetector$ComponentNode;
.super Ljava/lang/Object;
.source "CycleDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/components/CycleDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ComponentNode"
.end annotation


# instance fields
.field private final component:Lcom/google/firebase/components/Component;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/components/Component<",
            "*>;"
        }
    .end annotation
.end field

.field private final dependencies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/firebase/components/CycleDetector$ComponentNode;",
            ">;"
        }
    .end annotation
.end field

.field private final dependents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/firebase/components/CycleDetector$ComponentNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/firebase/components/Component;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/components/Component<",
            "*>;)V"
        }
    .end annotation

    .line 59
    .local p1, "component":Lcom/google/firebase/components/Component;, "Lcom/google/firebase/components/Component<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/components/CycleDetector$ComponentNode;->dependencies:Ljava/util/Set;

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/components/CycleDetector$ComponentNode;->dependents:Ljava/util/Set;

    .line 60
    iput-object p1, p0, Lcom/google/firebase/components/CycleDetector$ComponentNode;->component:Lcom/google/firebase/components/Component;

    .line 61
    return-void
.end method


# virtual methods
.method addDependency(Lcom/google/firebase/components/CycleDetector$ComponentNode;)V
    .registers 3
    .param p1, "node"    # Lcom/google/firebase/components/CycleDetector$ComponentNode;

    .line 64
    iget-object v0, p0, Lcom/google/firebase/components/CycleDetector$ComponentNode;->dependencies:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method addDependent(Lcom/google/firebase/components/CycleDetector$ComponentNode;)V
    .registers 3
    .param p1, "node"    # Lcom/google/firebase/components/CycleDetector$ComponentNode;

    .line 68
    iget-object v0, p0, Lcom/google/firebase/components/CycleDetector$ComponentNode;->dependents:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method getComponent()Lcom/google/firebase/components/Component;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/components/Component<",
            "*>;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/google/firebase/components/CycleDetector$ComponentNode;->component:Lcom/google/firebase/components/Component;

    return-object v0
.end method

.method getDependencies()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/firebase/components/CycleDetector$ComponentNode;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/google/firebase/components/CycleDetector$ComponentNode;->dependencies:Ljava/util/Set;

    return-object v0
.end method

.method isLeaf()Z
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/google/firebase/components/CycleDetector$ComponentNode;->dependencies:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method isRoot()Z
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/google/firebase/components/CycleDetector$ComponentNode;->dependents:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method removeDependent(Lcom/google/firebase/components/CycleDetector$ComponentNode;)V
    .registers 3
    .param p1, "node"    # Lcom/google/firebase/components/CycleDetector$ComponentNode;

    .line 76
    iget-object v0, p0, Lcom/google/firebase/components/CycleDetector$ComponentNode;->dependents:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method
