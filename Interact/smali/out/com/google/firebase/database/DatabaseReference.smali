.class public Lcom/google/firebase/database/DatabaseReference;
.super Lcom/google/firebase/database/Query;
.source "DatabaseReference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/database/DatabaseReference$CompletionListener;
    }
.end annotation


# static fields
.field private static defaultConfig:Lcom/google/firebase/database/core/DatabaseConfig;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;)V
    .registers 3
    .param p1, "repo"    # Lcom/google/firebase/database/core/Repo;
    .param p2, "path"    # Lcom/google/firebase/database/core/Path;

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;)V

    .line 76
    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/database/core/utilities/ParsedUrl;Lcom/google/firebase/database/core/DatabaseConfig;)V
    .registers 5
    .param p1, "parsedUrl"    # Lcom/google/firebase/database/core/utilities/ParsedUrl;
    .param p2, "config"    # Lcom/google/firebase/database/core/DatabaseConfig;

    .line 84
    iget-object v0, p1, Lcom/google/firebase/database/core/utilities/ParsedUrl;->repoInfo:Lcom/google/firebase/database/core/RepoInfo;

    invoke-static {p2, v0}, Lcom/google/firebase/database/core/RepoManager;->getRepo(Lcom/google/firebase/database/core/Context;Lcom/google/firebase/database/core/RepoInfo;)Lcom/google/firebase/database/core/Repo;

    move-result-object v0

    iget-object v1, p1, Lcom/google/firebase/database/core/utilities/ParsedUrl;->path:Lcom/google/firebase/database/core/Path;

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/database/DatabaseReference;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;)V

    .line 85
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/firebase/database/core/DatabaseConfig;)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/google/firebase/database/core/DatabaseConfig;

    .line 80
    invoke-static {p1}, Lcom/google/firebase/database/core/utilities/Utilities;->parseUrl(Ljava/lang/String;)Lcom/google/firebase/database/core/utilities/ParsedUrl;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/firebase/database/DatabaseReference;-><init>(Lcom/google/firebase/database/core/utilities/ParsedUrl;Lcom/google/firebase/database/core/DatabaseConfig;)V

    .line 81
    return-void
.end method

.method private static declared-synchronized getDefaultConfig()Lcom/google/firebase/database/core/DatabaseConfig;
    .registers 2

    const-class v0, Lcom/google/firebase/database/DatabaseReference;

    monitor-enter v0

    .line 630
    :try_start_3
    sget-object v1, Lcom/google/firebase/database/DatabaseReference;->defaultConfig:Lcom/google/firebase/database/core/DatabaseConfig;

    if-nez v1, :cond_e

    .line 631
    new-instance v1, Lcom/google/firebase/database/core/DatabaseConfig;

    invoke-direct {v1}, Lcom/google/firebase/database/core/DatabaseConfig;-><init>()V

    sput-object v1, Lcom/google/firebase/database/DatabaseReference;->defaultConfig:Lcom/google/firebase/database/core/DatabaseConfig;

    .line 633
    :cond_e
    sget-object v1, Lcom/google/firebase/database/DatabaseReference;->defaultConfig:Lcom/google/firebase/database/core/DatabaseConfig;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 629
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static goOffline()V
    .registers 1

    .line 523
    invoke-static {}, Lcom/google/firebase/database/DatabaseReference;->getDefaultConfig()Lcom/google/firebase/database/core/DatabaseConfig;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/DatabaseReference;->goOffline(Lcom/google/firebase/database/core/DatabaseConfig;)V

    .line 524
    return-void
.end method

.method static goOffline(Lcom/google/firebase/database/core/DatabaseConfig;)V
    .registers 1
    .param p0, "config"    # Lcom/google/firebase/database/core/DatabaseConfig;

    .line 527
    invoke-static {p0}, Lcom/google/firebase/database/core/RepoManager;->interrupt(Lcom/google/firebase/database/core/Context;)V

    .line 528
    return-void
.end method

.method public static goOnline()V
    .registers 1

    .line 537
    invoke-static {}, Lcom/google/firebase/database/DatabaseReference;->getDefaultConfig()Lcom/google/firebase/database/core/DatabaseConfig;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/DatabaseReference;->goOnline(Lcom/google/firebase/database/core/DatabaseConfig;)V

    .line 538
    return-void
.end method

.method static goOnline(Lcom/google/firebase/database/core/DatabaseConfig;)V
    .registers 1
    .param p0, "config"    # Lcom/google/firebase/database/core/DatabaseConfig;

    .line 541
    invoke-static {p0}, Lcom/google/firebase/database/core/RepoManager;->resume(Lcom/google/firebase/database/core/Context;)V

    .line 542
    return-void
.end method

.method private setPriorityInternal(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .param p1, "priority"    # Lcom/google/firebase/database/snapshot/Node;
    .param p2, "optListener"    # Lcom/google/firebase/database/DatabaseReference$CompletionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/snapshot/Node;",
            "Lcom/google/firebase/database/DatabaseReference$CompletionListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 367
    invoke-virtual {p0}, Lcom/google/firebase/database/DatabaseReference;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/core/utilities/Validation;->validateWritablePath(Lcom/google/firebase/database/core/Path;)V

    .line 369
    invoke-static {p2}, Lcom/google/firebase/database/core/utilities/Utilities;->wrapOnComplete(Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/firebase/database/core/utilities/Pair;

    move-result-object v0

    .line 370
    .local v0, "wrapped":Lcom/google/firebase/database/core/utilities/Pair;, "Lcom/google/firebase/database/core/utilities/Pair<Lcom/google/android/gms/tasks/Task<Ljava/lang/Void;>;Lcom/google/firebase/database/DatabaseReference$CompletionListener;>;"
    iget-object v1, p0, Lcom/google/firebase/database/DatabaseReference;->repo:Lcom/google/firebase/database/core/Repo;

    new-instance v2, Lcom/google/firebase/database/DatabaseReference$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/firebase/database/DatabaseReference$2;-><init>(Lcom/google/firebase/database/DatabaseReference;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/utilities/Pair;)V

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V

    .line 378
    invoke-virtual {v0}, Lcom/google/firebase/database/core/utilities/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/tasks/Task;

    return-object v1
.end method

.method private setValueInternal(Ljava/lang/Object;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;
    .registers 9
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "priority"    # Lcom/google/firebase/database/snapshot/Node;
    .param p3, "optListener"    # Lcom/google/firebase/database/DatabaseReference$CompletionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/google/firebase/database/snapshot/Node;",
            "Lcom/google/firebase/database/DatabaseReference$CompletionListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 280
    invoke-virtual {p0}, Lcom/google/firebase/database/DatabaseReference;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/core/utilities/Validation;->validateWritablePath(Lcom/google/firebase/database/core/Path;)V

    .line 281
    invoke-virtual {p0}, Lcom/google/firebase/database/DatabaseReference;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/firebase/database/core/ValidationPath;->validateWithObject(Lcom/google/firebase/database/core/Path;Ljava/lang/Object;)V

    .line 282
    invoke-static {p1}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper;->convertToPlainJavaTypes(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 283
    .local v0, "bouncedValue":Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/firebase/database/core/utilities/Validation;->validateWritableObject(Ljava/lang/Object;)V

    .line 284
    invoke-static {v0, p2}, Lcom/google/firebase/database/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    .line 285
    .local v1, "node":Lcom/google/firebase/database/snapshot/Node;
    invoke-static {p3}, Lcom/google/firebase/database/core/utilities/Utilities;->wrapOnComplete(Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/firebase/database/core/utilities/Pair;

    move-result-object v2

    .line 286
    .local v2, "wrapped":Lcom/google/firebase/database/core/utilities/Pair;, "Lcom/google/firebase/database/core/utilities/Pair<Lcom/google/android/gms/tasks/Task<Ljava/lang/Void;>;Lcom/google/firebase/database/DatabaseReference$CompletionListener;>;"
    iget-object v3, p0, Lcom/google/firebase/database/DatabaseReference;->repo:Lcom/google/firebase/database/core/Repo;

    new-instance v4, Lcom/google/firebase/database/DatabaseReference$1;

    invoke-direct {v4, p0, v1, v2}, Lcom/google/firebase/database/DatabaseReference$1;-><init>(Lcom/google/firebase/database/DatabaseReference;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/utilities/Pair;)V

    invoke-virtual {v3, v4}, Lcom/google/firebase/database/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V

    .line 293
    invoke-virtual {v2}, Lcom/google/firebase/database/core/utilities/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/tasks/Task;

    return-object v3
.end method

.method private updateChildrenInternal(Ljava/util/Map;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;
    .registers 9
    .param p2, "optListener"    # Lcom/google/firebase/database/DatabaseReference$CompletionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/firebase/database/DatabaseReference$CompletionListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 409
    .local p1, "update":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_28

    .line 412
    invoke-static {p1}, Lcom/google/firebase/database/core/utilities/encoding/CustomClassMapper;->convertToPlainJavaTypes(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 413
    .local v0, "bouncedUpdate":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    nop

    .line 414
    invoke-virtual {p0}, Lcom/google/firebase/database/DatabaseReference;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/firebase/database/core/utilities/Validation;->parseAndValidateUpdate(Lcom/google/firebase/database/core/Path;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 415
    .local v1, "parsedUpdate":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;>;"
    invoke-static {v1}, Lcom/google/firebase/database/core/CompoundWrite;->fromPathMerge(Ljava/util/Map;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v2

    .line 417
    .local v2, "merge":Lcom/google/firebase/database/core/CompoundWrite;
    invoke-static {p2}, Lcom/google/firebase/database/core/utilities/Utilities;->wrapOnComplete(Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/firebase/database/core/utilities/Pair;

    move-result-object v3

    .line 418
    .local v3, "wrapped":Lcom/google/firebase/database/core/utilities/Pair;, "Lcom/google/firebase/database/core/utilities/Pair<Lcom/google/android/gms/tasks/Task<Ljava/lang/Void;>;Lcom/google/firebase/database/DatabaseReference$CompletionListener;>;"
    iget-object v4, p0, Lcom/google/firebase/database/DatabaseReference;->repo:Lcom/google/firebase/database/core/Repo;

    new-instance v5, Lcom/google/firebase/database/DatabaseReference$3;

    invoke-direct {v5, p0, v2, v3, v0}, Lcom/google/firebase/database/DatabaseReference$3;-><init>(Lcom/google/firebase/database/DatabaseReference;Lcom/google/firebase/database/core/CompoundWrite;Lcom/google/firebase/database/core/utilities/Pair;Ljava/util/Map;)V

    invoke-virtual {v4, v5}, Lcom/google/firebase/database/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V

    .line 425
    invoke-virtual {v3}, Lcom/google/firebase/database/core/utilities/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/tasks/Task;

    return-object v4

    .line 410
    .end local v0    # "bouncedUpdate":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "parsedUpdate":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;>;"
    .end local v2    # "merge":Lcom/google/firebase/database/core/CompoundWrite;
    .end local v3    # "wrapped":Lcom/google/firebase/database/core/utilities/Pair;, "Lcom/google/firebase/database/core/utilities/Pair<Lcom/google/android/gms/tasks/Task<Ljava/lang/Void;>;Lcom/google/firebase/database/DatabaseReference$CompletionListener;>;"
    :cond_28
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t pass null for argument \'update\' in updateChildren()"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;
    .registers 5
    .param p1, "pathString"    # Ljava/lang/String;

    .line 95
    if-eqz p1, :cond_28

    .line 98
    invoke-virtual {p0}, Lcom/google/firebase/database/DatabaseReference;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 100
    invoke-static {p1}, Lcom/google/firebase/database/core/utilities/Validation;->validateRootPathString(Ljava/lang/String;)V

    goto :goto_13

    .line 102
    :cond_10
    invoke-static {p1}, Lcom/google/firebase/database/core/utilities/Validation;->validatePathString(Ljava/lang/String;)V

    .line 104
    :goto_13
    invoke-virtual {p0}, Lcom/google/firebase/database/DatabaseReference;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/database/core/Path;

    invoke-direct {v1, p1}, Lcom/google/firebase/database/core/Path;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v0

    .line 105
    .local v0, "childPath":Lcom/google/firebase/database/core/Path;
    new-instance v1, Lcom/google/firebase/database/DatabaseReference;

    iget-object v2, p0, Lcom/google/firebase/database/DatabaseReference;->repo:Lcom/google/firebase/database/core/Repo;

    invoke-direct {v1, v2, v0}, Lcom/google/firebase/database/DatabaseReference;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;)V

    return-object v1

    .line 96
    .end local v0    # "childPath":Lcom/google/firebase/database/core/Path;
    :cond_28
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t pass null for argument \'pathString\' in child()"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 605
    instance-of v0, p1, Lcom/google/firebase/database/DatabaseReference;

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/google/firebase/database/DatabaseReference;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public getDatabase()Lcom/google/firebase/database/FirebaseDatabase;
    .registers 2

    .line 553
    iget-object v0, p0, Lcom/google/firebase/database/DatabaseReference;->repo:Lcom/google/firebase/database/core/Repo;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/Repo;->getDatabase()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .line 597
    invoke-virtual {p0}, Lcom/google/firebase/database/DatabaseReference;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 598
    const/4 v0, 0x0

    return-object v0

    .line 600
    :cond_c
    invoke-virtual {p0}, Lcom/google/firebase/database/DatabaseReference;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/Path;->getBack()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lcom/google/firebase/database/DatabaseReference;
    .registers 4

    .line 577
    invoke-virtual {p0}, Lcom/google/firebase/database/DatabaseReference;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/Path;->getParent()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    .line 578
    .local v0, "parentPath":Lcom/google/firebase/database/core/Path;
    if-eqz v0, :cond_12

    .line 579
    new-instance v1, Lcom/google/firebase/database/DatabaseReference;

    iget-object v2, p0, Lcom/google/firebase/database/DatabaseReference;->repo:Lcom/google/firebase/database/core/Repo;

    invoke-direct {v1, v2, v0}, Lcom/google/firebase/database/DatabaseReference;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;)V

    return-object v1

    .line 581
    :cond_12
    const/4 v1, 0x0

    return-object v1
.end method

.method public getRoot()Lcom/google/firebase/database/DatabaseReference;
    .registers 5

    .line 588
    new-instance v0, Lcom/google/firebase/database/DatabaseReference;

    iget-object v1, p0, Lcom/google/firebase/database/DatabaseReference;->repo:Lcom/google/firebase/database/core/Repo;

    new-instance v2, Lcom/google/firebase/database/core/Path;

    const-string v3, ""

    invoke-direct {v2, v3}, Lcom/google/firebase/database/core/Path;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/DatabaseReference;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;)V

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 610
    invoke-virtual {p0}, Lcom/google/firebase/database/DatabaseReference;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public onDisconnect()Lcom/google/firebase/database/OnDisconnect;
    .registers 4

    .line 458
    invoke-virtual {p0}, Lcom/google/firebase/database/DatabaseReference;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/core/utilities/Validation;->validateWritablePath(Lcom/google/firebase/database/core/Path;)V

    .line 459
    new-instance v0, Lcom/google/firebase/database/OnDisconnect;

    iget-object v1, p0, Lcom/google/firebase/database/DatabaseReference;->repo:Lcom/google/firebase/database/core/Repo;

    invoke-virtual {p0}, Lcom/google/firebase/database/DatabaseReference;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/OnDisconnect;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;)V

    return-object v0
.end method

.method public push()Lcom/google/firebase/database/DatabaseReference;
    .registers 6

    .line 118
    iget-object v0, p0, Lcom/google/firebase/database/DatabaseReference;->repo:Lcom/google/firebase/database/core/Repo;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/Repo;->getServerTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->generatePushChildName(J)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "childNameStr":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/firebase/database/snapshot/ChildKey;->fromString(Ljava/lang/String;)Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v1

    .line 120
    .local v1, "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    new-instance v2, Lcom/google/firebase/database/DatabaseReference;

    iget-object v3, p0, Lcom/google/firebase/database/DatabaseReference;->repo:Lcom/google/firebase/database/core/Repo;

    invoke-virtual {p0}, Lcom/google/firebase/database/DatabaseReference;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/Path;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/google/firebase/database/DatabaseReference;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;)V

    return-object v2
.end method

.method public removeValue()Lcom/google/android/gms/tasks/Task;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 437
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public removeValue(Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    .line 446
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V

    .line 447
    return-void
.end method

.method public runTransaction(Lcom/google/firebase/database/Transaction$Handler;)V
    .registers 3
    .param p1, "handler"    # Lcom/google/firebase/database/Transaction$Handler;

    .line 471
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/database/DatabaseReference;->runTransaction(Lcom/google/firebase/database/Transaction$Handler;Z)V

    .line 472
    return-void
.end method

.method public runTransaction(Lcom/google/firebase/database/Transaction$Handler;Z)V
    .registers 5
    .param p1, "handler"    # Lcom/google/firebase/database/Transaction$Handler;
    .param p2, "fireLocalEvents"    # Z

    .line 484
    if-eqz p1, :cond_14

    .line 487
    invoke-virtual {p0}, Lcom/google/firebase/database/DatabaseReference;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/core/utilities/Validation;->validateWritablePath(Lcom/google/firebase/database/core/Path;)V

    .line 488
    iget-object v0, p0, Lcom/google/firebase/database/DatabaseReference;->repo:Lcom/google/firebase/database/core/Repo;

    new-instance v1, Lcom/google/firebase/database/DatabaseReference$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/firebase/database/DatabaseReference$4;-><init>(Lcom/google/firebase/database/DatabaseReference;Lcom/google/firebase/database/Transaction$Handler;Z)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V

    .line 495
    return-void

    .line 485
    :cond_14
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t pass null for argument \'handler\' in runTransaction()"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setHijackHash(Z)V
    .registers 4
    .param p1, "hijackHash"    # Z

    .line 614
    iget-object v0, p0, Lcom/google/firebase/database/DatabaseReference;->repo:Lcom/google/firebase/database/core/Repo;

    new-instance v1, Lcom/google/firebase/database/DatabaseReference$5;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/database/DatabaseReference$5;-><init>(Lcom/google/firebase/database/DatabaseReference;Z)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V

    .line 621
    return-void
.end method

.method public setPriority(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .registers 4
    .param p1, "priority"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/google/firebase/database/DatabaseReference;->path:Lcom/google/firebase/database/core/Path;

    invoke-static {v0, p1}, Lcom/google/firebase/database/snapshot/PriorityUtilities;->parsePriority(Lcom/google/firebase/database/core/Path;Ljava/lang/Object;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/database/DatabaseReference;->setPriorityInternal(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public setPriority(Ljava/lang/Object;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .registers 4
    .param p1, "priority"    # Ljava/lang/Object;
    .param p2, "listener"    # Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    .line 363
    iget-object v0, p0, Lcom/google/firebase/database/DatabaseReference;->path:Lcom/google/firebase/database/core/Path;

    invoke-static {v0, p1}, Lcom/google/firebase/database/snapshot/PriorityUtilities;->parsePriority(Lcom/google/firebase/database/core/Path;Ljava/lang/Object;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/firebase/database/DatabaseReference;->setPriorityInternal(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;

    .line 364
    return-void
.end method

.method public setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .registers 4
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/google/firebase/database/DatabaseReference;->path:Lcom/google/firebase/database/core/Path;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/firebase/database/snapshot/PriorityUtilities;->parsePriority(Lcom/google/firebase/database/core/Path;Ljava/lang/Object;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/firebase/database/DatabaseReference;->setValueInternal(Ljava/lang/Object;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "priority"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/google/firebase/database/DatabaseReference;->path:Lcom/google/firebase/database/core/Path;

    invoke-static {v0, p2}, Lcom/google/firebase/database/snapshot/PriorityUtilities;->parsePriority(Lcom/google/firebase/database/core/Path;Ljava/lang/Object;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/firebase/database/DatabaseReference;->setValueInternal(Ljava/lang/Object;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .registers 5
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "listener"    # Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    .line 237
    iget-object v0, p0, Lcom/google/firebase/database/DatabaseReference;->path:Lcom/google/firebase/database/core/Path;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/firebase/database/snapshot/PriorityUtilities;->parsePriority(Lcom/google/firebase/database/core/Path;Ljava/lang/Object;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/firebase/database/DatabaseReference;->setValueInternal(Ljava/lang/Object;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;

    .line 238
    return-void
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .registers 5
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "priority"    # Ljava/lang/Object;
    .param p3, "listener"    # Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    .line 276
    iget-object v0, p0, Lcom/google/firebase/database/DatabaseReference;->path:Lcom/google/firebase/database/core/Path;

    invoke-static {v0, p2}, Lcom/google/firebase/database/snapshot/PriorityUtilities;->parsePriority(Lcom/google/firebase/database/core/Path;Ljava/lang/Object;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/google/firebase/database/DatabaseReference;->setValueInternal(Ljava/lang/Object;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;

    .line 277
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 559
    invoke-virtual {p0}, Lcom/google/firebase/database/DatabaseReference;->getParent()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    .line 560
    .local v0, "parent":Lcom/google/firebase/database/DatabaseReference;
    if-nez v0, :cond_d

    .line 561
    iget-object v1, p0, Lcom/google/firebase/database/DatabaseReference;->repo:Lcom/google/firebase/database/core/Repo;

    invoke-virtual {v1}, Lcom/google/firebase/database/core/Repo;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 564
    :cond_d
    :try_start_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/firebase/database/DatabaseReference;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firebase/database/DatabaseReference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "+"

    const-string v4, "%20"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_3a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d .. :try_end_3a} :catch_3b

    return-object v1

    .line 565
    :catch_3b
    move-exception v1

    .line 566
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Lcom/google/firebase/database/DatabaseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to URLEncode key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/firebase/database/DatabaseReference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public updateChildren(Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 392
    .local p1, "update":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/database/DatabaseReference;->updateChildrenInternal(Ljava/util/Map;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public updateChildren(Ljava/util/Map;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .registers 3
    .param p2, "listener"    # Lcom/google/firebase/database/DatabaseReference$CompletionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/firebase/database/DatabaseReference$CompletionListener;",
            ")V"
        }
    .end annotation

    .line 404
    .local p1, "update":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/database/DatabaseReference;->updateChildrenInternal(Ljava/util/Map;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;

    .line 405
    return-void
.end method
