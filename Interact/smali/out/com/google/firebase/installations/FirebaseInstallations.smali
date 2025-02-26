.class public Lcom/google/firebase/installations/FirebaseInstallations;
.super Ljava/lang/Object;
.source "FirebaseInstallations.java"

# interfaces
.implements Lcom/google/firebase/installations/FirebaseInstallationsApi;


# static fields
.field private static final API_KEY_VALIDATION_MSG:Ljava/lang/String; = "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options."

.field private static final APP_ID_VALIDATION_MSG:Ljava/lang/String; = "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

.field private static final AUTH_ERROR_MSG:Ljava/lang/String; = "Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request."

.field private static final CHIME_FIREBASE_APP_NAME:Ljava/lang/String; = "CHIME_ANDROID_SDK"

.field private static final CORE_POOL_SIZE:I = 0x0

.field private static final KEEP_ALIVE_TIME_IN_SECONDS:J = 0x1eL

.field private static final LOCKFILE_NAME_GENERATE_FID:Ljava/lang/String; = "generatefid.lock"

.field private static final MAXIMUM_POOL_SIZE:I = 0x1

.field private static final PROJECT_ID_VALIDATION_MSG:Ljava/lang/String; = "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

.field private static final THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

.field private static final lockGenerateFid:Ljava/lang/Object;


# instance fields
.field private final backgroundExecutor:Ljava/util/concurrent/ExecutorService;

.field private cachedFid:Ljava/lang/String;

.field private final fidGenerator:Lcom/google/firebase/installations/RandomFidGenerator;

.field private fidListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/firebase/installations/internal/FidListener;",
            ">;"
        }
    .end annotation
.end field

.field private final firebaseApp:Lcom/google/firebase/FirebaseApp;

.field private final iidStore:Lcom/google/firebase/components/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/components/Lazy<",
            "Lcom/google/firebase/installations/local/IidStore;",
            ">;"
        }
    .end annotation
.end field

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/installations/StateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private final networkExecutor:Ljava/util/concurrent/Executor;

.field private final persistedInstallation:Lcom/google/firebase/installations/local/PersistedInstallation;

.field private final serviceClient:Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;

.field private final utils:Lcom/google/firebase/installations/Utils;


# direct methods
.method public static synthetic $r8$lambda$ukIZcZ_XlkiT9OCDxQIhblgD6_Y(Lcom/google/firebase/installations/FirebaseInstallations;)Ljava/lang/Void;
    .registers 1

    invoke-direct {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->deleteFirebaseInstallationId()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/firebase/installations/FirebaseInstallations;->lockGenerateFid:Ljava/lang/Object;

    .line 93
    new-instance v0, Lcom/google/firebase/installations/FirebaseInstallations$1;

    invoke-direct {v0}, Lcom/google/firebase/installations/FirebaseInstallations$1;-><init>()V

    sput-object v0, Lcom/google/firebase/installations/FirebaseInstallations;->THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/inject/Provider;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Executor;)V
    .registers 14
    .param p1, "firebaseApp"    # Lcom/google/firebase/FirebaseApp;
    .param p3, "backgroundExecutor"    # Ljava/util/concurrent/ExecutorService;
    .param p4, "networkExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/heartbeatinfo/HeartBeatController;",
            ">;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 134
    .local p2, "heartBeatProvider":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<Lcom/google/firebase/heartbeatinfo/HeartBeatController;>;"
    new-instance v4, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;

    .line 139
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v0, p2}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;-><init>(Landroid/content/Context;Lcom/google/firebase/inject/Provider;)V

    new-instance v5, Lcom/google/firebase/installations/local/PersistedInstallation;

    invoke-direct {v5, p1}, Lcom/google/firebase/installations/local/PersistedInstallation;-><init>(Lcom/google/firebase/FirebaseApp;)V

    .line 141
    invoke-static {}, Lcom/google/firebase/installations/Utils;->getInstance()Lcom/google/firebase/installations/Utils;

    move-result-object v6

    new-instance v7, Lcom/google/firebase/components/Lazy;

    new-instance v0, Lcom/google/firebase/installations/FirebaseInstallations$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/google/firebase/installations/FirebaseInstallations$$ExternalSyntheticLambda4;-><init>(Lcom/google/firebase/FirebaseApp;)V

    invoke-direct {v7, v0}, Lcom/google/firebase/components/Lazy;-><init>(Lcom/google/firebase/inject/Provider;)V

    new-instance v8, Lcom/google/firebase/installations/RandomFidGenerator;

    invoke-direct {v8}, Lcom/google/firebase/installations/RandomFidGenerator;-><init>()V

    .line 134
    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/firebase/installations/FirebaseInstallations;-><init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Executor;Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;Lcom/google/firebase/installations/local/PersistedInstallation;Lcom/google/firebase/installations/Utils;Lcom/google/firebase/components/Lazy;Lcom/google/firebase/installations/RandomFidGenerator;)V

    .line 144
    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Executor;Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;Lcom/google/firebase/installations/local/PersistedInstallation;Lcom/google/firebase/installations/Utils;Lcom/google/firebase/components/Lazy;Lcom/google/firebase/installations/RandomFidGenerator;)V
    .registers 10
    .param p1, "backgroundExecutor"    # Ljava/util/concurrent/ExecutorService;
    .param p2, "networkExecutor"    # Ljava/util/concurrent/Executor;
    .param p3, "firebaseApp"    # Lcom/google/firebase/FirebaseApp;
    .param p4, "serviceClient"    # Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;
    .param p5, "persistedInstallation"    # Lcom/google/firebase/installations/local/PersistedInstallation;
    .param p6, "utils"    # Lcom/google/firebase/installations/Utils;
    .param p8, "fidGenerator"    # Lcom/google/firebase/installations/RandomFidGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;",
            "Lcom/google/firebase/installations/local/PersistedInstallation;",
            "Lcom/google/firebase/installations/Utils;",
            "Lcom/google/firebase/components/Lazy<",
            "Lcom/google/firebase/installations/local/IidStore;",
            ">;",
            "Lcom/google/firebase/installations/RandomFidGenerator;",
            ")V"
        }
    .end annotation

    .line 156
    .local p7, "iidStore":Lcom/google/firebase/components/Lazy;, "Lcom/google/firebase/components/Lazy<Lcom/google/firebase/installations/local/IidStore;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->lock:Ljava/lang/Object;

    .line 78
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->fidListeners:Ljava/util/Set;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->listeners:Ljava/util/List;

    .line 157
    iput-object p3, p0, Lcom/google/firebase/installations/FirebaseInstallations;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 158
    iput-object p4, p0, Lcom/google/firebase/installations/FirebaseInstallations;->serviceClient:Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;

    .line 159
    iput-object p5, p0, Lcom/google/firebase/installations/FirebaseInstallations;->persistedInstallation:Lcom/google/firebase/installations/local/PersistedInstallation;

    .line 160
    iput-object p6, p0, Lcom/google/firebase/installations/FirebaseInstallations;->utils:Lcom/google/firebase/installations/Utils;

    .line 161
    iput-object p7, p0, Lcom/google/firebase/installations/FirebaseInstallations;->iidStore:Lcom/google/firebase/components/Lazy;

    .line 162
    iput-object p8, p0, Lcom/google/firebase/installations/FirebaseInstallations;->fidGenerator:Lcom/google/firebase/installations/RandomFidGenerator;

    .line 163
    iput-object p1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    .line 164
    iput-object p2, p0, Lcom/google/firebase/installations/FirebaseInstallations;->networkExecutor:Ljava/util/concurrent/Executor;

    .line 165
    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/installations/FirebaseInstallations;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Lcom/google/firebase/installations/FirebaseInstallations;

    .line 63
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->fidListeners:Ljava/util/Set;

    return-object v0
.end method

.method private addGetAuthTokenListener()Lcom/google/android/gms/tasks/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/installations/InstallationTokenResult;",
            ">;"
        }
    .end annotation

    .line 303
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 305
    .local v0, "taskCompletionSource":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Lcom/google/firebase/installations/InstallationTokenResult;>;"
    new-instance v1, Lcom/google/firebase/installations/GetAuthTokenListener;

    iget-object v2, p0, Lcom/google/firebase/installations/FirebaseInstallations;->utils:Lcom/google/firebase/installations/Utils;

    invoke-direct {v1, v2, v0}, Lcom/google/firebase/installations/GetAuthTokenListener;-><init>(Lcom/google/firebase/installations/Utils;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 306
    .local v1, "l":Lcom/google/firebase/installations/StateListener;
    invoke-direct {p0, v1}, Lcom/google/firebase/installations/FirebaseInstallations;->addStateListeners(Lcom/google/firebase/installations/StateListener;)V

    .line 307
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    return-object v2
.end method

.method private addGetIdListener()Lcom/google/android/gms/tasks/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 296
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 297
    .local v0, "taskCompletionSource":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Ljava/lang/String;>;"
    new-instance v1, Lcom/google/firebase/installations/GetIdListener;

    invoke-direct {v1, v0}, Lcom/google/firebase/installations/GetIdListener;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 298
    .local v1, "l":Lcom/google/firebase/installations/StateListener;
    invoke-direct {p0, v1}, Lcom/google/firebase/installations/FirebaseInstallations;->addStateListeners(Lcom/google/firebase/installations/StateListener;)V

    .line 299
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    return-object v2
.end method

.method private addStateListeners(Lcom/google/firebase/installations/StateListener;)V
    .registers 4
    .param p1, "l"    # Lcom/google/firebase/installations/StateListener;

    .line 311
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 312
    :try_start_3
    iget-object v1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->listeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    monitor-exit v0

    .line 314
    return-void

    .line 313
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private deleteFirebaseInstallationId()Ljava/lang/Void;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/installations/FirebaseInstallationsException;
        }
    .end annotation

    .line 597
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/firebase/installations/FirebaseInstallations;->updateCacheFid(Ljava/lang/String;)V

    .line 598
    invoke-direct {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getMultiProcessSafePrefs()Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object v1

    .line 599
    .local v1, "entry":Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    invoke-virtual {v1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->isRegistered()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 601
    iget-object v2, p0, Lcom/google/firebase/installations/FirebaseInstallations;->serviceClient:Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;

    .line 602
    invoke-virtual {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getApiKey()Ljava/lang/String;

    move-result-object v3

    .line 603
    invoke-virtual {v1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getFirebaseInstallationId()Ljava/lang/String;

    move-result-object v4

    .line 604
    invoke-virtual {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getProjectIdentifier()Ljava/lang/String;

    move-result-object v5

    .line 605
    invoke-virtual {v1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getRefreshToken()Ljava/lang/String;

    move-result-object v6

    .line 601
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->deleteFirebaseInstallation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    :cond_23
    invoke-virtual {v1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->withNoGeneratedFid()Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/firebase/installations/FirebaseInstallations;->insertOrUpdatePrefs(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)V

    .line 608
    return-object v0
.end method

.method private doNetworkCallIfNecessary(Z)V
    .registers 6
    .param p1, "forceRefresh"    # Z

    .line 380
    invoke-direct {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getMultiProcessSafePrefs()Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object v0

    .line 386
    .local v0, "prefs":Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    :try_start_4
    invoke-virtual {v0}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->isErrored()Z

    move-result v1

    if-nez v1, :cond_22

    invoke-virtual {v0}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->isUnregistered()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_22

    .line 388
    :cond_11
    if-nez p1, :cond_1d

    iget-object v1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->utils:Lcom/google/firebase/installations/Utils;

    invoke-virtual {v1, v0}, Lcom/google/firebase/installations/Utils;->isAuthTokenExpired(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_1d

    .line 392
    :cond_1c
    return-void

    .line 389
    :cond_1d
    :goto_1d
    invoke-direct {p0, v0}, Lcom/google/firebase/installations/FirebaseInstallations;->fetchAuthTokenFromServer(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object v1

    .local v1, "updatedPrefs":Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    goto :goto_26

    .line 387
    .end local v1    # "updatedPrefs":Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    :cond_22
    :goto_22
    invoke-direct {p0, v0}, Lcom/google/firebase/installations/FirebaseInstallations;->registerFidWithServer(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object v1
    :try_end_26
    .catch Lcom/google/firebase/installations/FirebaseInstallationsException; {:try_start_4 .. :try_end_26} :catch_61

    .line 397
    .restart local v1    # "updatedPrefs":Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    :goto_26
    nop

    .line 400
    invoke-direct {p0, v1}, Lcom/google/firebase/installations/FirebaseInstallations;->insertOrUpdatePrefs(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)V

    .line 403
    invoke-direct {p0, v0, v1}, Lcom/google/firebase/installations/FirebaseInstallations;->updateFidListener(Lcom/google/firebase/installations/local/PersistedInstallationEntry;Lcom/google/firebase/installations/local/PersistedInstallationEntry;)V

    .line 405
    move-object v0, v1

    .line 408
    invoke-virtual {v0}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->isRegistered()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 409
    invoke-virtual {v0}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getFirebaseInstallationId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/firebase/installations/FirebaseInstallations;->updateCacheFid(Ljava/lang/String;)V

    .line 413
    :cond_3b
    invoke-virtual {v0}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->isErrored()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 414
    new-instance v2, Lcom/google/firebase/installations/FirebaseInstallationsException;

    sget-object v3, Lcom/google/firebase/installations/FirebaseInstallationsException$Status;->BAD_CONFIG:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    invoke-direct {v2, v3}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Lcom/google/firebase/installations/FirebaseInstallationsException$Status;)V

    invoke-direct {p0, v2}, Lcom/google/firebase/installations/FirebaseInstallations;->triggerOnException(Ljava/lang/Exception;)V

    goto :goto_60

    .line 415
    :cond_4c
    invoke-virtual {v0}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->isNotGenerated()Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 418
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/google/firebase/installations/FirebaseInstallations;->triggerOnException(Ljava/lang/Exception;)V

    goto :goto_60

    .line 420
    :cond_5d
    invoke-direct {p0, v0}, Lcom/google/firebase/installations/FirebaseInstallations;->triggerOnStateReached(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)V

    .line 422
    :goto_60
    return-void

    .line 394
    .end local v1    # "updatedPrefs":Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    :catch_61
    move-exception v1

    .line 395
    .local v1, "e":Lcom/google/firebase/installations/FirebaseInstallationsException;
    invoke-direct {p0, v1}, Lcom/google/firebase/installations/FirebaseInstallations;->triggerOnException(Ljava/lang/Exception;)V

    .line 396
    return-void
.end method

.method private final doRegistrationOrRefresh(Z)V
    .registers 5
    .param p1, "forceRefresh"    # Z

    .line 361
    invoke-direct {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getPrefsWithGeneratedIdMultiProcessSafe()Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object v0

    .line 365
    .local v0, "prefs":Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    if-eqz p1, :cond_a

    .line 366
    invoke-virtual {v0}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->withClearedAuthToken()Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object v0

    .line 369
    :cond_a
    invoke-direct {p0, v0}, Lcom/google/firebase/installations/FirebaseInstallations;->triggerOnStateReached(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)V

    .line 372
    iget-object v1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->networkExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/firebase/installations/FirebaseInstallations$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/google/firebase/installations/FirebaseInstallations$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/installations/FirebaseInstallations;Z)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 373
    return-void
.end method

.method private fetchAuthTokenFromServer(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    .registers 10
    .param p1, "prefs"    # Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/installations/FirebaseInstallationsException;
        }
    .end annotation

    .line 565
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->serviceClient:Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;

    .line 567
    invoke-virtual {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getApiKey()Ljava/lang/String;

    move-result-object v1

    .line 568
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getFirebaseInstallationId()Ljava/lang/String;

    move-result-object v2

    .line 569
    invoke-virtual {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getProjectIdentifier()Ljava/lang/String;

    move-result-object v3

    .line 570
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getRefreshToken()Ljava/lang/String;

    move-result-object v4

    .line 566
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->generateAuthToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/installations/remote/TokenResult;

    move-result-object v0

    .line 572
    .local v0, "tokenResult":Lcom/google/firebase/installations/remote/TokenResult;
    sget-object v1, Lcom/google/firebase/installations/FirebaseInstallations$3;->$SwitchMap$com$google$firebase$installations$remote$TokenResult$ResponseCode:[I

    invoke-virtual {v0}, Lcom/google/firebase/installations/remote/TokenResult;->getResponseCode()Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_54

    .line 586
    new-instance v1, Lcom/google/firebase/installations/FirebaseInstallationsException;

    const-string v2, "Firebase Installations Service is unavailable. Please try again later."

    sget-object v3, Lcom/google/firebase/installations/FirebaseInstallationsException$Status;->UNAVAILABLE:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$Status;)V

    throw v1

    .line 583
    :pswitch_2f
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/firebase/installations/FirebaseInstallations;->updateCacheFid(Ljava/lang/String;)V

    .line 584
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->withNoGeneratedFid()Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object v1

    return-object v1

    .line 579
    :pswitch_38
    const-string v1, "BAD CONFIG"

    invoke-virtual {p1, v1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->withFisError(Ljava/lang/String;)Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object v1

    return-object v1

    .line 574
    :pswitch_3f
    nop

    .line 575
    invoke-virtual {v0}, Lcom/google/firebase/installations/remote/TokenResult;->getToken()Ljava/lang/String;

    move-result-object v3

    .line 576
    invoke-virtual {v0}, Lcom/google/firebase/installations/remote/TokenResult;->getTokenExpirationTimestamp()J

    move-result-wide v4

    iget-object v1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->utils:Lcom/google/firebase/installations/Utils;

    .line 577
    invoke-virtual {v1}, Lcom/google/firebase/installations/Utils;->currentTimeInSecs()J

    move-result-wide v6

    .line 574
    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->withAuthToken(Ljava/lang/String;JJ)Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object v1

    return-object v1

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_38
        :pswitch_2f
    .end packed-switch
.end method

.method private declared-synchronized getCacheFid()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 347
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->cachedFid:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 347
    .end local p0    # "this":Lcom/google/firebase/installations/FirebaseInstallations;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getIidStore()Lcom/google/firebase/installations/local/IidStore;
    .registers 2

    .line 376
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->iidStore:Lcom/google/firebase/components/Lazy;

    invoke-virtual {v0}, Lcom/google/firebase/components/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/installations/local/IidStore;

    return-object v0
.end method

.method public static getInstance()Lcom/google/firebase/installations/FirebaseInstallations;
    .registers 2

    .line 194
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    .line 195
    .local v0, "defaultFirebaseApp":Lcom/google/firebase/FirebaseApp;
    invoke-static {v0}, Lcom/google/firebase/installations/FirebaseInstallations;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/installations/FirebaseInstallations;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/installations/FirebaseInstallations;
    .registers 3
    .param p0, "app"    # Lcom/google/firebase/FirebaseApp;

    .line 206
    if-eqz p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "Null is not a valid value of FirebaseApp."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 207
    const-class v0, Lcom/google/firebase/installations/FirebaseInstallationsApi;

    invoke-virtual {p0, v0}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/installations/FirebaseInstallations;

    return-object v0
.end method

.method private getMultiProcessSafePrefs()Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    .registers 4

    .line 619
    sget-object v0, Lcom/google/firebase/installations/FirebaseInstallations;->lockGenerateFid:Ljava/lang/Object;

    monitor-enter v0

    .line 620
    :try_start_3
    iget-object v1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 621
    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "generatefid.lock"

    invoke-static {v1, v2}, Lcom/google/firebase/installations/CrossProcessLock;->acquire(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/installations/CrossProcessLock;

    move-result-object v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_24

    .line 623
    .local v1, "lock":Lcom/google/firebase/installations/CrossProcessLock;
    :try_start_f
    iget-object v2, p0, Lcom/google/firebase/installations/FirebaseInstallations;->persistedInstallation:Lcom/google/firebase/installations/local/PersistedInstallation;

    .line 624
    invoke-virtual {v2}, Lcom/google/firebase/installations/local/PersistedInstallation;->readPersistedInstallationEntryValue()Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object v2
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_1d

    .line 625
    .local v2, "prefs":Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    nop

    .line 631
    if-eqz v1, :cond_1b

    .line 632
    :try_start_18
    invoke-virtual {v1}, Lcom/google/firebase/installations/CrossProcessLock;->releaseAndClose()V

    :cond_1b
    monitor-exit v0

    .line 625
    return-object v2

    .line 631
    .end local v2    # "prefs":Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    :catchall_1d
    move-exception v2

    if-eqz v1, :cond_23

    .line 632
    invoke-virtual {v1}, Lcom/google/firebase/installations/CrossProcessLock;->releaseAndClose()V

    .line 634
    :cond_23
    throw v2

    .line 635
    .end local v1    # "lock":Lcom/google/firebase/installations/CrossProcessLock;
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_24

    throw v1
.end method

.method private getPrefsWithGeneratedIdMultiProcessSafe()Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    .registers 7

    .line 473
    sget-object v0, Lcom/google/firebase/installations/FirebaseInstallations;->lockGenerateFid:Ljava/lang/Object;

    monitor-enter v0

    .line 474
    :try_start_3
    iget-object v1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 475
    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "generatefid.lock"

    invoke-static {v1, v2}, Lcom/google/firebase/installations/CrossProcessLock;->acquire(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/installations/CrossProcessLock;

    move-result-object v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_39

    .line 477
    .local v1, "lock":Lcom/google/firebase/installations/CrossProcessLock;
    :try_start_f
    iget-object v2, p0, Lcom/google/firebase/installations/FirebaseInstallations;->persistedInstallation:Lcom/google/firebase/installations/local/PersistedInstallation;

    .line 478
    invoke-virtual {v2}, Lcom/google/firebase/installations/local/PersistedInstallation;->readPersistedInstallationEntryValue()Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object v2

    .line 480
    .local v2, "prefs":Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    invoke-virtual {v2}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->isNotGenerated()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 486
    invoke-direct {p0, v2}, Lcom/google/firebase/installations/FirebaseInstallations;->readExistingIidOrCreateFid(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)Ljava/lang/String;

    move-result-object v3

    .line 487
    .local v3, "fid":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/firebase/installations/FirebaseInstallations;->persistedInstallation:Lcom/google/firebase/installations/local/PersistedInstallation;

    .line 489
    invoke-virtual {v2, v3}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->withUnregisteredFid(Ljava/lang/String;)Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object v5

    .line 488
    invoke-virtual {v4, v5}, Lcom/google/firebase/installations/local/PersistedInstallation;->insertOrUpdatePersistedInstallationEntry(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object v4
    :try_end_29
    .catchall {:try_start_f .. :try_end_29} :catchall_32

    move-object v2, v4

    .line 491
    .end local v3    # "fid":Ljava/lang/String;
    :cond_2a
    nop

    .line 497
    if-eqz v1, :cond_30

    .line 498
    :try_start_2d
    invoke-virtual {v1}, Lcom/google/firebase/installations/CrossProcessLock;->releaseAndClose()V

    :cond_30
    monitor-exit v0

    .line 491
    return-object v2

    .line 497
    .end local v2    # "prefs":Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    :catchall_32
    move-exception v2

    if-eqz v1, :cond_38

    .line 498
    invoke-virtual {v1}, Lcom/google/firebase/installations/CrossProcessLock;->releaseAndClose()V

    .line 500
    :cond_38
    throw v2

    .line 501
    .end local v1    # "lock":Lcom/google/firebase/installations/CrossProcessLock;
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_2d .. :try_end_3b} :catchall_39

    throw v1
.end method

.method private insertOrUpdatePrefs(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)V
    .registers 5
    .param p1, "prefs"    # Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    .line 442
    sget-object v0, Lcom/google/firebase/installations/FirebaseInstallations;->lockGenerateFid:Ljava/lang/Object;

    monitor-enter v0

    .line 443
    :try_start_3
    iget-object v1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 444
    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "generatefid.lock"

    invoke-static {v1, v2}, Lcom/google/firebase/installations/CrossProcessLock;->acquire(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/installations/CrossProcessLock;

    move-result-object v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_23

    .line 447
    .local v1, "lock":Lcom/google/firebase/installations/CrossProcessLock;
    :try_start_f
    iget-object v2, p0, Lcom/google/firebase/installations/FirebaseInstallations;->persistedInstallation:Lcom/google/firebase/installations/local/PersistedInstallation;

    invoke-virtual {v2, p1}, Lcom/google/firebase/installations/local/PersistedInstallation;->insertOrUpdatePersistedInstallationEntry(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_1b

    .line 452
    if-eqz v1, :cond_19

    .line 453
    :try_start_16
    invoke-virtual {v1}, Lcom/google/firebase/installations/CrossProcessLock;->releaseAndClose()V

    .line 456
    .end local v1    # "lock":Lcom/google/firebase/installations/CrossProcessLock;
    :cond_19
    monitor-exit v0

    .line 457
    return-void

    .line 452
    .restart local v1    # "lock":Lcom/google/firebase/installations/CrossProcessLock;
    :catchall_1b
    move-exception v2

    if-eqz v1, :cond_21

    .line 453
    invoke-virtual {v1}, Lcom/google/firebase/installations/CrossProcessLock;->releaseAndClose()V

    .line 455
    :cond_21
    nop

    .end local p1    # "prefs":Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    throw v2

    .line 456
    .end local v1    # "lock":Lcom/google/firebase/installations/CrossProcessLock;
    .restart local p1    # "prefs":Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_16 .. :try_end_25} :catchall_23

    throw v1
.end method

.method static synthetic lambda$new$0(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/installations/local/IidStore;
    .registers 2
    .param p0, "firebaseApp"    # Lcom/google/firebase/FirebaseApp;

    .line 142
    new-instance v0, Lcom/google/firebase/installations/local/IidStore;

    invoke-direct {v0, p0}, Lcom/google/firebase/installations/local/IidStore;-><init>(Lcom/google/firebase/FirebaseApp;)V

    return-object v0
.end method

.method private preConditionChecks()V
    .registers 4

    .line 173
    invoke-virtual {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 174
    invoke-virtual {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getProjectIdentifier()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 175
    invoke-virtual {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getApiKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 176
    nop

    .line 177
    invoke-virtual {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/installations/Utils;->isValidAppIdFormat(Ljava/lang/String;)Z

    move-result v0

    .line 176
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 178
    invoke-virtual {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getApiKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/installations/Utils;->isValidApiKeyFormat(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 179
    return-void
.end method

.method private readExistingIidOrCreateFid(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)Ljava/lang/String;
    .registers 4
    .param p1, "prefs"    # Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    .line 506
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHIME_ANDROID_SDK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->isDefaultApp()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 507
    :cond_16
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->shouldAttemptMigration()Z

    move-result v0

    if-nez v0, :cond_23

    .line 508
    :cond_1c
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->fidGenerator:Lcom/google/firebase/installations/RandomFidGenerator;

    invoke-virtual {v0}, Lcom/google/firebase/installations/RandomFidGenerator;->createRandomFid()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 511
    :cond_23
    invoke-direct {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getIidStore()Lcom/google/firebase/installations/local/IidStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/installations/local/IidStore;->readIid()Ljava/lang/String;

    move-result-object v0

    .line 512
    .local v0, "fid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 513
    iget-object v1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->fidGenerator:Lcom/google/firebase/installations/RandomFidGenerator;

    invoke-virtual {v1}, Lcom/google/firebase/installations/RandomFidGenerator;->createRandomFid()Ljava/lang/String;

    move-result-object v0

    .line 515
    :cond_37
    return-object v0
.end method

.method private registerFidWithServer(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    .registers 13
    .param p1, "prefs"    # Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/installations/FirebaseInstallationsException;
        }
    .end annotation

    .line 523
    const/4 v0, 0x0

    .line 525
    .local v0, "iidToken":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getFirebaseInstallationId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 526
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getFirebaseInstallationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1b

    .line 529
    invoke-direct {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getIidStore()Lcom/google/firebase/installations/local/IidStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/installations/local/IidStore;->readToken()Ljava/lang/String;

    move-result-object v0

    .line 532
    :cond_1b
    iget-object v1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->serviceClient:Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;

    .line 534
    invoke-virtual {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getApiKey()Ljava/lang/String;

    move-result-object v2

    .line 535
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getFirebaseInstallationId()Ljava/lang/String;

    move-result-object v3

    .line 536
    invoke-virtual {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getProjectIdentifier()Ljava/lang/String;

    move-result-object v4

    .line 537
    invoke-virtual {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getApplicationId()Ljava/lang/String;

    move-result-object v5

    .line 533
    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->createFirebaseInstallation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/installations/remote/InstallationResponse;

    move-result-object v1

    .line 540
    .local v1, "response":Lcom/google/firebase/installations/remote/InstallationResponse;
    sget-object v2, Lcom/google/firebase/installations/FirebaseInstallations$3;->$SwitchMap$com$google$firebase$installations$remote$InstallationResponse$ResponseCode:[I

    invoke-virtual {v1}, Lcom/google/firebase/installations/remote/InstallationResponse;->getResponseCode()Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_78

    .line 551
    new-instance v2, Lcom/google/firebase/installations/FirebaseInstallationsException;

    const-string v3, "Firebase Installations Service is unavailable. Please try again later."

    sget-object v4, Lcom/google/firebase/installations/FirebaseInstallationsException$Status;->UNAVAILABLE:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    invoke-direct {v2, v3, v4}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$Status;)V

    throw v2

    .line 549
    :pswitch_4b
    const-string v2, "BAD CONFIG"

    invoke-virtual {p1, v2}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->withFisError(Ljava/lang/String;)Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object v2

    return-object v2

    .line 542
    :pswitch_52
    nop

    .line 543
    invoke-virtual {v1}, Lcom/google/firebase/installations/remote/InstallationResponse;->getFid()Ljava/lang/String;

    move-result-object v4

    .line 544
    invoke-virtual {v1}, Lcom/google/firebase/installations/remote/InstallationResponse;->getRefreshToken()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/google/firebase/installations/FirebaseInstallations;->utils:Lcom/google/firebase/installations/Utils;

    .line 545
    invoke-virtual {v2}, Lcom/google/firebase/installations/Utils;->currentTimeInSecs()J

    move-result-wide v6

    .line 546
    invoke-virtual {v1}, Lcom/google/firebase/installations/remote/InstallationResponse;->getAuthToken()Lcom/google/firebase/installations/remote/TokenResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/installations/remote/TokenResult;->getToken()Ljava/lang/String;

    move-result-object v8

    .line 547
    invoke-virtual {v1}, Lcom/google/firebase/installations/remote/InstallationResponse;->getAuthToken()Lcom/google/firebase/installations/remote/TokenResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/installations/remote/TokenResult;->getTokenExpirationTimestamp()J

    move-result-wide v9

    .line 542
    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->withRegisteredFid(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    move-result-object v2

    return-object v2

    nop

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_52
        :pswitch_4b
    .end packed-switch
.end method

.method private triggerOnException(Ljava/lang/Exception;)V
    .registers 6
    .param p1, "exception"    # Ljava/lang/Exception;

    .line 330
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 331
    :try_start_3
    iget-object v1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 332
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/firebase/installations/StateListener;>;"
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 333
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/installations/StateListener;

    .line 334
    .local v2, "l":Lcom/google/firebase/installations/StateListener;
    invoke-interface {v2, p1}, Lcom/google/firebase/installations/StateListener;->onException(Ljava/lang/Exception;)Z

    move-result v3

    .line 335
    .local v3, "doneListening":Z
    if-eqz v3, :cond_1e

    .line 336
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 338
    .end local v2    # "l":Lcom/google/firebase/installations/StateListener;
    .end local v3    # "doneListening":Z
    :cond_1e
    goto :goto_9

    .line 339
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/firebase/installations/StateListener;>;"
    :cond_1f
    monitor-exit v0

    .line 340
    return-void

    .line 339
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method private triggerOnStateReached(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)V
    .registers 6
    .param p1, "persistedInstallationEntry"    # Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    .line 317
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 318
    :try_start_3
    iget-object v1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 319
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/firebase/installations/StateListener;>;"
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 320
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/installations/StateListener;

    .line 321
    .local v2, "l":Lcom/google/firebase/installations/StateListener;
    invoke-interface {v2, p1}, Lcom/google/firebase/installations/StateListener;->onStateReached(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)Z

    move-result v3

    .line 322
    .local v3, "doneListening":Z
    if-eqz v3, :cond_1e

    .line 323
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 325
    .end local v2    # "l":Lcom/google/firebase/installations/StateListener;
    .end local v3    # "doneListening":Z
    :cond_1e
    goto :goto_9

    .line 326
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/firebase/installations/StateListener;>;"
    :cond_1f
    monitor-exit v0

    .line 327
    return-void

    .line 326
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method private declared-synchronized updateCacheFid(Ljava/lang/String;)V
    .registers 2
    .param p1, "cachedFid"    # Ljava/lang/String;

    monitor-enter p0

    .line 343
    :try_start_1
    iput-object p1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->cachedFid:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 344
    monitor-exit p0

    return-void

    .line 342
    .end local p0    # "this":Lcom/google/firebase/installations/FirebaseInstallations;
    .end local p1    # "cachedFid":Ljava/lang/String;
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized updateFidListener(Lcom/google/firebase/installations/local/PersistedInstallationEntry;Lcom/google/firebase/installations/local/PersistedInstallationEntry;)V
    .registers 6
    .param p1, "prefs"    # Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    .param p2, "updatedPrefs"    # Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    monitor-enter p0

    .line 426
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->fidListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_31

    .line 428
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getFirebaseInstallationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getFirebaseInstallationId()Ljava/lang/String;

    move-result-object v1

    .line 427
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 430
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->fidListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/installations/internal/FidListener;

    .line 431
    .local v1, "listener":Lcom/google/firebase/installations/internal/FidListener;
    invoke-virtual {p2}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getFirebaseInstallationId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/firebase/installations/internal/FidListener;->onFidChanged(Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_33

    .line 432
    .end local v1    # "listener":Lcom/google/firebase/installations/internal/FidListener;
    goto :goto_1d

    .line 434
    .end local p0    # "this":Lcom/google/firebase/installations/FirebaseInstallations;
    :cond_31
    monitor-exit p0

    return-void

    .line 425
    .end local p1    # "prefs":Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    .end local p2    # "updatedPrefs":Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    :catchall_33
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public delete()Lcom/google/android/gms/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/firebase/installations/FirebaseInstallations$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/google/firebase/installations/FirebaseInstallations$$ExternalSyntheticLambda1;-><init>(Lcom/google/firebase/installations/FirebaseInstallations;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method getApiKey()Ljava/lang/String;
    .registers 2

    .line 219
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions;->getApiKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getApplicationId()Ljava/lang/String;
    .registers 2

    .line 213
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 235
    invoke-direct {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->preConditionChecks()V

    .line 238
    invoke-direct {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->getCacheFid()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "fid":Ljava/lang/String;
    if-eqz v0, :cond_e

    .line 240
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    return-object v1

    .line 243
    :cond_e
    invoke-direct {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->addGetIdListener()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    .line 244
    .local v1, "task":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/google/firebase/installations/FirebaseInstallations;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/google/firebase/installations/FirebaseInstallations$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/google/firebase/installations/FirebaseInstallations$$ExternalSyntheticLambda3;-><init>(Lcom/google/firebase/installations/FirebaseInstallations;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 245
    return-object v1
.end method

.method getName()Ljava/lang/String;
    .registers 2

    .line 225
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getProjectIdentifier()Ljava/lang/String;
    .registers 2

    .line 184
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions;->getProjectId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToken(Z)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .param p1, "forceRefresh"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/installations/InstallationTokenResult;",
            ">;"
        }
    .end annotation

    .line 259
    invoke-direct {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->preConditionChecks()V

    .line 260
    invoke-direct {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->addGetAuthTokenListener()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 261
    .local v0, "task":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Lcom/google/firebase/installations/InstallationTokenResult;>;"
    iget-object v1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/firebase/installations/FirebaseInstallations$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lcom/google/firebase/installations/FirebaseInstallations$$ExternalSyntheticLambda2;-><init>(Lcom/google/firebase/installations/FirebaseInstallations;Z)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 262
    return-object v0
.end method

.method synthetic lambda$doRegistrationOrRefresh$3$com-google-firebase-installations-FirebaseInstallations(Z)V
    .registers 2
    .param p1, "forceRefresh"    # Z

    .line 372
    invoke-direct {p0, p1}, Lcom/google/firebase/installations/FirebaseInstallations;->doNetworkCallIfNecessary(Z)V

    return-void
.end method

.method synthetic lambda$getId$1$com-google-firebase-installations-FirebaseInstallations()V
    .registers 2

    .line 244
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/firebase/installations/FirebaseInstallations;->doRegistrationOrRefresh(Z)V

    return-void
.end method

.method synthetic lambda$getToken$2$com-google-firebase-installations-FirebaseInstallations(Z)V
    .registers 2
    .param p1, "forceRefresh"    # Z

    .line 261
    invoke-direct {p0, p1}, Lcom/google/firebase/installations/FirebaseInstallations;->doRegistrationOrRefresh(Z)V

    return-void
.end method

.method public declared-synchronized registerFidListener(Lcom/google/firebase/installations/internal/FidListener;)Lcom/google/firebase/installations/internal/FidListenerHandle;
    .registers 3
    .param p1, "listener"    # Lcom/google/firebase/installations/internal/FidListener;

    monitor-enter p0

    .line 284
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->fidListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 285
    new-instance v0, Lcom/google/firebase/installations/FirebaseInstallations$2;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/installations/FirebaseInstallations$2;-><init>(Lcom/google/firebase/installations/FirebaseInstallations;Lcom/google/firebase/installations/internal/FidListener;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-object v0

    .line 283
    .end local p0    # "this":Lcom/google/firebase/installations/FirebaseInstallations;
    .end local p1    # "listener":Lcom/google/firebase/installations/internal/FidListener;
    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method
