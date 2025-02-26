.class public Lcom/google/firebase/internal/DataCollectionConfigStorage;
.super Ljava/lang/Object;
.source "DataCollectionConfigStorage.java"


# static fields
.field public static final DATA_COLLECTION_DEFAULT_ENABLED:Ljava/lang/String; = "firebase_data_collection_default_enabled"

.field private static final FIREBASE_APP_PREFS:Ljava/lang/String; = "com.google.firebase.common.prefs:"


# instance fields
.field private dataCollectionDefaultEnabled:Z

.field private final deviceProtectedContext:Landroid/content/Context;

.field private final publisher:Lcom/google/firebase/events/Publisher;

.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/events/Publisher;)V
    .registers 7
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "persistenceKey"    # Ljava/lang/String;
    .param p3, "publisher"    # Lcom/google/firebase/events/Publisher;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Lcom/google/firebase/internal/DataCollectionConfigStorage;->directBootSafe(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/internal/DataCollectionConfigStorage;->deviceProtectedContext:Landroid/content/Context;

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.google.firebase.common.prefs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 45
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/internal/DataCollectionConfigStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 47
    iput-object p3, p0, Lcom/google/firebase/internal/DataCollectionConfigStorage;->publisher:Lcom/google/firebase/events/Publisher;

    .line 48
    invoke-direct {p0}, Lcom/google/firebase/internal/DataCollectionConfigStorage;->readAutoDataCollectionEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/firebase/internal/DataCollectionConfigStorage;->dataCollectionDefaultEnabled:Z

    .line 49
    return-void
.end method

.method private static directBootSafe(Landroid/content/Context;)Landroid/content/Context;
    .registers 2
    .param p0, "applicationContext"    # Landroid/content/Context;

    .line 52
    nop

    .line 55
    invoke-static {p0}, Landroidx/core/content/ContextCompat;->createDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private readAutoDataCollectionEnabled()Z
    .registers 4

    .line 102
    iget-object v0, p0, Lcom/google/firebase/internal/DataCollectionConfigStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "firebase_data_collection_default_enabled"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 103
    iget-object v0, p0, Lcom/google/firebase/internal/DataCollectionConfigStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 105
    :cond_12
    invoke-direct {p0}, Lcom/google/firebase/internal/DataCollectionConfigStorage;->readManifestDataCollectionEnabled()Z

    move-result v0

    return v0
.end method

.method private readManifestDataCollectionEnabled()Z
    .registers 5

    .line 84
    const-string v0, "firebase_data_collection_default_enabled"

    :try_start_2
    iget-object v1, p0, Lcom/google/firebase/internal/DataCollectionConfigStorage;->deviceProtectedContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 85
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_2b

    .line 86
    iget-object v2, p0, Lcom/google/firebase/internal/DataCollectionConfigStorage;->deviceProtectedContext:Landroid/content/Context;

    .line 88
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 87
    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 89
    .local v2, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_2b

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_2b

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 91
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 92
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_2a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2a} :catch_2c

    return v0

    .line 97
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v2    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_2b
    goto :goto_2d

    .line 95
    :catch_2c
    move-exception v0

    .line 98
    :goto_2d
    const/4 v0, 0x1

    return v0
.end method

.method private declared-synchronized updateDataCollectionDefaultEnabled(Z)V
    .registers 6
    .param p1, "enabled"    # Z

    monitor-enter p0

    .line 63
    :try_start_1
    iget-boolean v0, p0, Lcom/google/firebase/internal/DataCollectionConfigStorage;->dataCollectionDefaultEnabled:Z

    if-eq v0, p1, :cond_18

    .line 64
    iput-boolean p1, p0, Lcom/google/firebase/internal/DataCollectionConfigStorage;->dataCollectionDefaultEnabled:Z

    .line 65
    iget-object v0, p0, Lcom/google/firebase/internal/DataCollectionConfigStorage;->publisher:Lcom/google/firebase/events/Publisher;

    new-instance v1, Lcom/google/firebase/events/Event;

    const-class v2, Lcom/google/firebase/DataCollectionDefaultChange;

    new-instance v3, Lcom/google/firebase/DataCollectionDefaultChange;

    invoke-direct {v3, p1}, Lcom/google/firebase/DataCollectionDefaultChange;-><init>(Z)V

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/events/Event;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/google/firebase/events/Publisher;->publish(Lcom/google/firebase/events/Event;)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 68
    .end local p0    # "this":Lcom/google/firebase/internal/DataCollectionConfigStorage;
    :cond_18
    monitor-exit p0

    return-void

    .line 62
    .end local p1    # "enabled":Z
    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized isEnabled()Z
    .registers 2

    monitor-enter p0

    .line 59
    :try_start_1
    iget-boolean v0, p0, Lcom/google/firebase/internal/DataCollectionConfigStorage;->dataCollectionDefaultEnabled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 59
    .end local p0    # "this":Lcom/google/firebase/internal/DataCollectionConfigStorage;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setEnabled(Ljava/lang/Boolean;)V
    .registers 5
    .param p1, "enabled"    # Ljava/lang/Boolean;

    monitor-enter p0

    .line 71
    if-nez p1, :cond_1a

    .line 72
    :try_start_3
    iget-object v0, p0, Lcom/google/firebase/internal/DataCollectionConfigStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "firebase_data_collection_default_enabled"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 73
    invoke-direct {p0}, Lcom/google/firebase/internal/DataCollectionConfigStorage;->readManifestDataCollectionEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/firebase/internal/DataCollectionConfigStorage;->updateDataCollectionDefaultEnabled(Z)V

    goto :goto_32

    .line 76
    .end local p0    # "this":Lcom/google/firebase/internal/DataCollectionConfigStorage;
    :cond_1a
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 77
    .local v0, "apiSetting":Z
    iget-object v1, p0, Lcom/google/firebase/internal/DataCollectionConfigStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "firebase_data_collection_default_enabled"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 78
    invoke-direct {p0, v0}, Lcom/google/firebase/internal/DataCollectionConfigStorage;->updateDataCollectionDefaultEnabled(Z)V
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_34

    .line 80
    .end local v0    # "apiSetting":Z
    :goto_32
    monitor-exit p0

    return-void

    .line 70
    .end local p1    # "enabled":Ljava/lang/Boolean;
    :catchall_34
    move-exception p1

    monitor-exit p0

    throw p1
.end method
