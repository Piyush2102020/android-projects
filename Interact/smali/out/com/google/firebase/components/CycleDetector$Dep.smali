.class Lcom/google/firebase/components/CycleDetector$Dep;
.super Ljava/lang/Object;
.source "CycleDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/components/CycleDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Dep"
.end annotation


# instance fields
.field private final anInterface:Lcom/google/firebase/components/Qualified;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/components/Qualified<",
            "*>;"
        }
    .end annotation
.end field

.field private final set:Z


# direct methods
.method private constructor <init>(Lcom/google/firebase/components/Qualified;Z)V
    .registers 3
    .param p2, "set"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/components/Qualified<",
            "*>;Z)V"
        }
    .end annotation

    .line 30
    .local p1, "anInterface":Lcom/google/firebase/components/Qualified;, "Lcom/google/firebase/components/Qualified<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/firebase/components/CycleDetector$Dep;->anInterface:Lcom/google/firebase/components/Qualified;

    .line 32
    iput-boolean p2, p0, Lcom/google/firebase/components/CycleDetector$Dep;->set:Z

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/components/Qualified;ZLcom/google/firebase/components/CycleDetector$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/google/firebase/components/Qualified;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lcom/google/firebase/components/CycleDetector$1;

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/components/CycleDetector$Dep;-><init>(Lcom/google/firebase/components/Qualified;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/firebase/components/CycleDetector$Dep;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/firebase/components/CycleDetector$Dep;

    .line 26
    iget-boolean v0, p0, Lcom/google/firebase/components/CycleDetector$Dep;->set:Z

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 37
    instance-of v0, p1, Lcom/google/firebase/components/CycleDetector$Dep;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 38
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/components/CycleDetector$Dep;

    .line 39
    .local v0, "dep":Lcom/google/firebase/components/CycleDetector$Dep;
    iget-object v2, v0, Lcom/google/firebase/components/CycleDetector$Dep;->anInterface:Lcom/google/firebase/components/Qualified;

    iget-object v3, p0, Lcom/google/firebase/components/CycleDetector$Dep;->anInterface:Lcom/google/firebase/components/Qualified;

    invoke-virtual {v2, v3}, Lcom/google/firebase/components/Qualified;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-boolean v2, v0, Lcom/google/firebase/components/CycleDetector$Dep;->set:Z

    iget-boolean v3, p0, Lcom/google/firebase/components/CycleDetector$Dep;->set:Z

    if-ne v2, v3, :cond_19

    const/4 v1, 0x1

    :cond_19
    return v1

    .line 41
    .end local v0    # "dep":Lcom/google/firebase/components/CycleDetector$Dep;
    :cond_1a
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 46
    const v0, 0xf4243

    .line 47
    .local v0, "h":I
    iget-object v1, p0, Lcom/google/firebase/components/CycleDetector$Dep;->anInterface:Lcom/google/firebase/components/Qualified;

    invoke-virtual {v1}, Lcom/google/firebase/components/Qualified;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 48
    const v1, 0xf4243

    mul-int/2addr v0, v1

    .line 49
    iget-boolean v1, p0, Lcom/google/firebase/components/CycleDetector$Dep;->set:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 50
    return v0
.end method
