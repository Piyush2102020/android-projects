.class public Lcom/google/firebase/database/android/AndroidPlatform;
.super Ljava/lang/Object;
.source "AndroidPlatform.java"

# interfaces
.implements Lcom/google/firebase/database/core/Platform;


# static fields
.field private static final APP_IN_BACKGROUND_INTERRUPT_REASON:Ljava/lang/String; = "app_in_background"


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private final createdPersistenceCaches:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final firebaseApp:Lcom/google/firebase/FirebaseApp;


# direct methods
.method public constructor <init>(Lcom/google/firebase/FirebaseApp;)V
    .registers 5
    .param p1, "app"    # Lcom/google/firebase/FirebaseApp;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/android/AndroidPlatform;->createdPersistenceCaches:Ljava/util/Set;

    .line 54
    iput-object p1, p0, Lcom/google/firebase/database/android/AndroidPlatform;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 55
    if-eqz p1, :cond_15

    .line 71
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/android/AndroidPlatform;->applicationContext:Landroid/content/Context;

    .line 72
    return-void

    .line 58
    :cond_15
    const-string v0, "FirebaseDatabase"

    const-string v1, "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const-string v2, "ERROR: You must call FirebaseApp.initializeApp() before using Firebase Database."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You need to call FirebaseApp.initializeApp() before using Firebase Database."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lcom/google/firebase/database/android/AndroidPlatform;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/google/firebase/database/android/AndroidPlatform;

    .line 46
    iget-object v0, p0, Lcom/google/firebase/database/android/AndroidPlatform;->applicationContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public createPersistenceManager(Lcom/google/firebase/database/core/Context;Ljava/lang/String;)Lcom/google/firebase/database/core/persistence/PersistenceManager;
    .registers 9
    .param p1, "firebaseContext"    # Lcom/google/firebase/database/core/Context;
    .param p2, "firebaseId"    # Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Context;->getSessionPersistenceKey()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "sessionId":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "cacheId":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/firebase/database/android/AndroidPlatform;->createdPersistenceCaches:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 166
    iget-object v2, p0, Lcom/google/firebase/database/android/AndroidPlatform;->createdPersistenceCaches:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v2, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;

    iget-object v3, p0, Lcom/google/firebase/database/android/AndroidPlatform;->applicationContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1, v1}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;-><init>(Landroid/content/Context;Lcom/google/firebase/database/core/Context;Ljava/lang/String;)V

    .line 169
    .local v2, "engine":Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;
    new-instance v3, Lcom/google/firebase/database/core/persistence/LRUCachePolicy;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/Context;->getPersistenceCacheSizeBytes()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/google/firebase/database/core/persistence/LRUCachePolicy;-><init>(J)V

    .line 170
    .local v3, "cachePolicy":Lcom/google/firebase/database/core/persistence/CachePolicy;
    new-instance v4, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;

    invoke-direct {v4, p1, v2, v3}, Lcom/google/firebase/database/core/persistence/DefaultPersistenceManager;-><init>(Lcom/google/firebase/database/core/Context;Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;Lcom/google/firebase/database/core/persistence/CachePolicy;)V

    return-object v4

    .line 163
    .end local v2    # "engine":Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;
    .end local v3    # "cachePolicy":Lcom/google/firebase/database/core/persistence/CachePolicy;
    :cond_3e
    new-instance v2, Lcom/google/firebase/database/DatabaseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SessionPersistenceKey \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' has already been used."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getPlatformVersion()Ljava/lang/String;
    .registers 3

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSSLCacheDirectory()Ljava/io/File;
    .registers 4

    .line 176
    iget-object v0, p0, Lcom/google/firebase/database/android/AndroidPlatform;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sslcache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgent(Lcom/google/firebase/database/core/Context;)Ljava/lang/String;
    .registers 4
    .param p1, "context"    # Lcom/google/firebase/database/core/Context;

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public newEventTarget(Lcom/google/firebase/database/core/Context;)Lcom/google/firebase/database/core/EventTarget;
    .registers 3
    .param p1, "context"    # Lcom/google/firebase/database/core/Context;

    .line 76
    new-instance v0, Lcom/google/firebase/database/android/AndroidEventTarget;

    invoke-direct {v0}, Lcom/google/firebase/database/android/AndroidEventTarget;-><init>()V

    return-object v0
.end method

.method public newLogger(Lcom/google/firebase/database/core/Context;Lcom/google/firebase/database/logging/Logger$Level;Ljava/util/List;)Lcom/google/firebase/database/logging/Logger;
    .registers 5
    .param p1, "context"    # Lcom/google/firebase/database/core/Context;
    .param p2, "component"    # Lcom/google/firebase/database/logging/Logger$Level;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Context;",
            "Lcom/google/firebase/database/logging/Logger$Level;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/firebase/database/logging/Logger;"
        }
    .end annotation

    .line 142
    .local p3, "enabledComponents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/google/firebase/database/logging/AndroidLogger;

    invoke-direct {v0, p2, p3}, Lcom/google/firebase/database/logging/AndroidLogger;-><init>(Lcom/google/firebase/database/logging/Logger$Level;Ljava/util/List;)V

    return-object v0
.end method

.method public newPersistentConnection(Lcom/google/firebase/database/core/Context;Lcom/google/firebase/database/connection/ConnectionContext;Lcom/google/firebase/database/connection/HostInfo;Lcom/google/firebase/database/connection/PersistentConnection$Delegate;)Lcom/google/firebase/database/connection/PersistentConnection;
    .registers 8
    .param p1, "context"    # Lcom/google/firebase/database/core/Context;
    .param p2, "connectionContext"    # Lcom/google/firebase/database/connection/ConnectionContext;
    .param p3, "info"    # Lcom/google/firebase/database/connection/HostInfo;
    .param p4, "delegate"    # Lcom/google/firebase/database/connection/PersistentConnection$Delegate;

    .line 117
    new-instance v0, Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    invoke-direct {v0, p2, p3, p4}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;-><init>(Lcom/google/firebase/database/connection/ConnectionContext;Lcom/google/firebase/database/connection/HostInfo;Lcom/google/firebase/database/connection/PersistentConnection$Delegate;)V

    .line 122
    .local v0, "connection":Lcom/google/firebase/database/connection/PersistentConnection;
    iget-object v1, p0, Lcom/google/firebase/database/android/AndroidPlatform;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    new-instance v2, Lcom/google/firebase/database/android/AndroidPlatform$2;

    invoke-direct {v2, p0, v0}, Lcom/google/firebase/database/android/AndroidPlatform$2;-><init>(Lcom/google/firebase/database/android/AndroidPlatform;Lcom/google/firebase/database/connection/PersistentConnection;)V

    invoke-virtual {v1, v2}, Lcom/google/firebase/FirebaseApp;->addBackgroundStateChangeListener(Lcom/google/firebase/FirebaseApp$BackgroundStateChangeListener;)V

    .line 134
    return-object v0
.end method

.method public newRunLoop(Lcom/google/firebase/database/core/Context;)Lcom/google/firebase/database/core/RunLoop;
    .registers 4
    .param p1, "ctx"    # Lcom/google/firebase/database/core/Context;

    .line 81
    const-string v0, "RunLoop"

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/core/Context;->getLogger(Ljava/lang/String;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object v0

    .line 82
    .local v0, "logger":Lcom/google/firebase/database/logging/LogWrapper;
    new-instance v1, Lcom/google/firebase/database/android/AndroidPlatform$1;

    invoke-direct {v1, p0, v0}, Lcom/google/firebase/database/android/AndroidPlatform$1;-><init>(Lcom/google/firebase/database/android/AndroidPlatform;Lcom/google/firebase/database/logging/LogWrapper;)V

    return-object v1
.end method
