.class public Lcom/google/firebase/platforminfo/LibraryVersionComponent;
.super Ljava/lang/Object;
.source "LibraryVersionComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/platforminfo/LibraryVersionComponent$VersionExtractor;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/components/Component;
    .registers 4
    .param p0, "sdkName"    # Ljava/lang/String;
    .param p1, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/firebase/components/Component<",
            "*>;"
        }
    .end annotation

    .line 31
    invoke-static {p0, p1}, Lcom/google/firebase/platforminfo/LibraryVersion;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/platforminfo/LibraryVersion;

    move-result-object v0

    const-class v1, Lcom/google/firebase/platforminfo/LibraryVersion;

    invoke-static {v0, v1}, Lcom/google/firebase/components/Component;->intoSet(Ljava/lang/Object;Ljava/lang/Class;)Lcom/google/firebase/components/Component;

    move-result-object v0

    return-object v0
.end method

.method public static fromContext(Ljava/lang/String;Lcom/google/firebase/platforminfo/LibraryVersionComponent$VersionExtractor;)Lcom/google/firebase/components/Component;
    .registers 4
    .param p0, "sdkName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/firebase/platforminfo/LibraryVersionComponent$VersionExtractor<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/google/firebase/components/Component<",
            "*>;"
        }
    .end annotation

    .line 35
    .local p1, "extractor":Lcom/google/firebase/platforminfo/LibraryVersionComponent$VersionExtractor;, "Lcom/google/firebase/platforminfo/LibraryVersionComponent$VersionExtractor<Landroid/content/Context;>;"
    const-class v0, Lcom/google/firebase/platforminfo/LibraryVersion;

    invoke-static {v0}, Lcom/google/firebase/components/Component;->intoSetBuilder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    .line 36
    invoke-static {v1}, Lcom/google/firebase/components/Dependency;->required(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/platforminfo/LibraryVersionComponent$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/platforminfo/LibraryVersionComponent$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lcom/google/firebase/platforminfo/LibraryVersionComponent$VersionExtractor;)V

    .line 37
    invoke-virtual {v0, v1}, Lcom/google/firebase/components/Component$Builder;->factory(Lcom/google/firebase/components/ComponentFactory;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object v0

    .line 35
    return-object v0
.end method

.method static synthetic lambda$fromContext$0(Ljava/lang/String;Lcom/google/firebase/platforminfo/LibraryVersionComponent$VersionExtractor;Lcom/google/firebase/components/ComponentContainer;)Lcom/google/firebase/platforminfo/LibraryVersion;
    .registers 4
    .param p0, "sdkName"    # Ljava/lang/String;
    .param p1, "extractor"    # Lcom/google/firebase/platforminfo/LibraryVersionComponent$VersionExtractor;
    .param p2, "c"    # Lcom/google/firebase/components/ComponentContainer;

    .line 37
    const-class v0, Landroid/content/Context;

    invoke-interface {p2, v0}, Lcom/google/firebase/components/ComponentContainer;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/google/firebase/platforminfo/LibraryVersionComponent$VersionExtractor;->extract(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/firebase/platforminfo/LibraryVersion;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/platforminfo/LibraryVersion;

    move-result-object v0

    return-object v0
.end method
