.class public final Lcom/google/firebase/components/ComponentDiscovery;
.super Ljava/lang/Object;
.source "ComponentDiscovery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/components/ComponentDiscovery$MetadataRegistrarNameRetriever;,
        Lcom/google/firebase/components/ComponentDiscovery$RegistrarNameRetriever;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final COMPONENT_KEY_PREFIX:Ljava/lang/String; = "com.google.firebase.components:"

.field private static final COMPONENT_SENTINEL_VALUE:Ljava/lang/String; = "com.google.firebase.components.ComponentRegistrar"

.field static final TAG:Ljava/lang/String; = "ComponentDiscovery"


# instance fields
.field private final context:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final retriever:Lcom/google/firebase/components/ComponentDiscovery$RegistrarNameRetriever;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/components/ComponentDiscovery$RegistrarNameRetriever<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/google/firebase/components/ComponentDiscovery$RegistrarNameRetriever;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/firebase/components/ComponentDiscovery$RegistrarNameRetriever<",
            "TT;>;)V"
        }
    .end annotation

    .line 68
    .local p0, "this":Lcom/google/firebase/components/ComponentDiscovery;, "Lcom/google/firebase/components/ComponentDiscovery<TT;>;"
    .local p1, "context":Ljava/lang/Object;, "TT;"
    .local p2, "retriever":Lcom/google/firebase/components/ComponentDiscovery$RegistrarNameRetriever;, "Lcom/google/firebase/components/ComponentDiscovery$RegistrarNameRetriever<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/google/firebase/components/ComponentDiscovery;->context:Ljava/lang/Object;

    .line 70
    iput-object p2, p0, Lcom/google/firebase/components/ComponentDiscovery;->retriever:Lcom/google/firebase/components/ComponentDiscovery$RegistrarNameRetriever;

    .line 71
    return-void
.end method

.method public static forContext(Landroid/content/Context;Ljava/lang/Class;)Lcom/google/firebase/components/ComponentDiscovery;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Service;",
            ">;)",
            "Lcom/google/firebase/components/ComponentDiscovery<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    .line 64
    .local p1, "discoveryService":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Service;>;"
    new-instance v0, Lcom/google/firebase/components/ComponentDiscovery;

    new-instance v1, Lcom/google/firebase/components/ComponentDiscovery$MetadataRegistrarNameRetriever;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/firebase/components/ComponentDiscovery$MetadataRegistrarNameRetriever;-><init>(Ljava/lang/Class;Lcom/google/firebase/components/ComponentDiscovery$1;)V

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/components/ComponentDiscovery;-><init>(Ljava/lang/Object;Lcom/google/firebase/components/ComponentDiscovery$RegistrarNameRetriever;)V

    return-object v0
.end method

.method private static instantiate(Ljava/lang/String;)Lcom/google/firebase/components/ComponentRegistrar;
    .registers 10
    .param p0, "registrarName"    # Ljava/lang/String;

    .line 120
    const-string v0, "Could not instantiate %s"

    const-string v1, "Could not instantiate %s."

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_6
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 121
    .local v4, "loadedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Lcom/google/firebase/components/ComponentRegistrar;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 126
    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/components/ComponentRegistrar;

    return-object v5

    .line 122
    :cond_21
    new-instance v5, Lcom/google/firebase/components/InvalidRegistrarException;

    const-string v6, "Class %s is not an instance of %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p0, v7, v3

    const-string v8, "com.google.firebase.components.ComponentRegistrar"

    aput-object v8, v7, v2

    .line 123
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/firebase/components/InvalidRegistrarException;-><init>(Ljava/lang/String;)V

    .end local p0    # "registrarName":Ljava/lang/String;
    throw v5
    :try_end_36
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_36} :catch_72
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_36} :catch_63
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_36} :catch_54
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_36} :catch_45
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_36} :catch_36

    .line 140
    .end local v4    # "loadedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p0    # "registrarName":Ljava/lang/String;
    :catch_36
    move-exception v1

    .line 141
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v4, Lcom/google/firebase/components/InvalidRegistrarException;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    .line 142
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v1}, Lcom/google/firebase/components/InvalidRegistrarException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 137
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_45
    move-exception v1

    .line 138
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v4, Lcom/google/firebase/components/InvalidRegistrarException;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    .line 139
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v1}, Lcom/google/firebase/components/InvalidRegistrarException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 134
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_54
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v4, Lcom/google/firebase/components/InvalidRegistrarException;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    .line 136
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1, v0}, Lcom/google/firebase/components/InvalidRegistrarException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 130
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_63
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Lcom/google/firebase/components/InvalidRegistrarException;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    .line 132
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1, v0}, Lcom/google/firebase/components/InvalidRegistrarException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 127
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_72
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p0, v1, v3

    const-string v2, "Class %s is not an found."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ComponentDiscovery"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v1, 0x0

    return-object v1
.end method

.method static synthetic lambda$discoverLazy$0(Ljava/lang/String;)Lcom/google/firebase/components/ComponentRegistrar;
    .registers 2
    .param p0, "registrarName"    # Ljava/lang/String;

    .line 112
    invoke-static {p0}, Lcom/google/firebase/components/ComponentDiscovery;->instantiate(Ljava/lang/String;)Lcom/google/firebase/components/ComponentRegistrar;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public discover()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/components/ComponentRegistrar;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 80
    .local p0, "this":Lcom/google/firebase/components/ComponentDiscovery;, "Lcom/google/firebase/components/ComponentDiscovery<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/components/ComponentRegistrar;>;"
    iget-object v1, p0, Lcom/google/firebase/components/ComponentDiscovery;->retriever:Lcom/google/firebase/components/ComponentDiscovery$RegistrarNameRetriever;

    iget-object v2, p0, Lcom/google/firebase/components/ComponentDiscovery;->context:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lcom/google/firebase/components/ComponentDiscovery$RegistrarNameRetriever;->retrieve(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 83
    .local v2, "registrarName":Ljava/lang/String;
    :try_start_1d
    invoke-static {v2}, Lcom/google/firebase/components/ComponentDiscovery;->instantiate(Ljava/lang/String;)Lcom/google/firebase/components/ComponentRegistrar;

    move-result-object v3

    .line 84
    .local v3, "registrar":Lcom/google/firebase/components/ComponentRegistrar;
    if-eqz v3, :cond_26

    .line 85
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_26
    .catch Lcom/google/firebase/components/InvalidRegistrarException; {:try_start_1d .. :try_end_26} :catch_27

    .line 89
    .end local v3    # "registrar":Lcom/google/firebase/components/ComponentRegistrar;
    :cond_26
    goto :goto_2f

    .line 87
    :catch_27
    move-exception v3

    .line 88
    .local v3, "ex":Lcom/google/firebase/components/InvalidRegistrarException;
    const-string v4, "ComponentDiscovery"

    const-string v5, "Invalid component registrar."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    .end local v2    # "registrarName":Ljava/lang/String;
    .end local v3    # "ex":Lcom/google/firebase/components/InvalidRegistrarException;
    :goto_2f
    goto :goto_11

    .line 91
    :cond_30
    return-object v0
.end method

.method public discoverLazy()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/components/ComponentRegistrar;",
            ">;>;"
        }
    .end annotation

    .line 110
    .local p0, "this":Lcom/google/firebase/components/ComponentDiscovery;, "Lcom/google/firebase/components/ComponentDiscovery<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/inject/Provider<Lcom/google/firebase/components/ComponentRegistrar;>;>;"
    iget-object v1, p0, Lcom/google/firebase/components/ComponentDiscovery;->retriever:Lcom/google/firebase/components/ComponentDiscovery$RegistrarNameRetriever;

    iget-object v2, p0, Lcom/google/firebase/components/ComponentDiscovery;->context:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lcom/google/firebase/components/ComponentDiscovery$RegistrarNameRetriever;->retrieve(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 112
    .local v2, "registrarName":Ljava/lang/String;
    new-instance v3, Lcom/google/firebase/components/ComponentDiscovery$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/google/firebase/components/ComponentDiscovery$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    .end local v2    # "registrarName":Ljava/lang/String;
    goto :goto_11

    .line 114
    :cond_26
    return-object v0
.end method
