.class public Lcom/google/firebase/components/Lazy;
.super Ljava/lang/Object;
.source "Lazy.java"

# interfaces
.implements Lcom/google/firebase/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/firebase/inject/Provider<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final UNINITIALIZED:Ljava/lang/Object;


# instance fields
.field private volatile instance:Ljava/lang/Object;

.field private volatile provider:Lcom/google/firebase/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Provider<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/firebase/components/Lazy;->UNINITIALIZED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/inject/Provider;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inject/Provider<",
            "TT;>;)V"
        }
    .end annotation

    .line 41
    .local p0, "this":Lcom/google/firebase/components/Lazy;, "Lcom/google/firebase/components/Lazy<TT;>;"
    .local p1, "provider":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lcom/google/firebase/components/Lazy;->UNINITIALIZED:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/firebase/components/Lazy;->instance:Ljava/lang/Object;

    .line 42
    iput-object p1, p0, Lcom/google/firebase/components/Lazy;->provider:Lcom/google/firebase/inject/Provider;

    .line 43
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 37
    .local p0, "this":Lcom/google/firebase/components/Lazy;, "Lcom/google/firebase/components/Lazy<TT;>;"
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lcom/google/firebase/components/Lazy;->UNINITIALIZED:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/firebase/components/Lazy;->instance:Ljava/lang/Object;

    .line 38
    iput-object p1, p0, Lcom/google/firebase/components/Lazy;->instance:Ljava/lang/Object;

    .line 39
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 48
    .local p0, "this":Lcom/google/firebase/components/Lazy;, "Lcom/google/firebase/components/Lazy<TT;>;"
    iget-object v0, p0, Lcom/google/firebase/components/Lazy;->instance:Ljava/lang/Object;

    .line 49
    .local v0, "result":Ljava/lang/Object;
    sget-object v1, Lcom/google/firebase/components/Lazy;->UNINITIALIZED:Ljava/lang/Object;

    if-ne v0, v1, :cond_1d

    .line 50
    monitor-enter p0

    .line 51
    :try_start_7
    iget-object v2, p0, Lcom/google/firebase/components/Lazy;->instance:Ljava/lang/Object;

    move-object v0, v2

    .line 52
    if-ne v0, v1, :cond_18

    .line 53
    iget-object v1, p0, Lcom/google/firebase/components/Lazy;->provider:Lcom/google/firebase/inject/Provider;

    invoke-interface {v1}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .line 54
    iput-object v0, p0, Lcom/google/firebase/components/Lazy;->instance:Ljava/lang/Object;

    .line 57
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/firebase/components/Lazy;->provider:Lcom/google/firebase/inject/Provider;

    .line 59
    :cond_18
    monitor-exit p0

    goto :goto_1d

    :catchall_1a
    move-exception v1

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw v1

    .line 63
    :cond_1d
    :goto_1d
    move-object v1, v0

    .line 64
    .local v1, "tResult":Ljava/lang/Object;, "TT;"
    return-object v1
.end method

.method isInitialized()Z
    .registers 3

    .line 69
    .local p0, "this":Lcom/google/firebase/components/Lazy;, "Lcom/google/firebase/components/Lazy<TT;>;"
    iget-object v0, p0, Lcom/google/firebase/components/Lazy;->instance:Ljava/lang/Object;

    sget-object v1, Lcom/google/firebase/components/Lazy;->UNINITIALIZED:Ljava/lang/Object;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
