.class public final Lcom/google/android/gms/dynamite/DynamiteModule;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;,
        Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;,
        Lcom/google/android/gms/dynamite/DynamiteModule$DynamiteLoaderClassLoader;
    }
.end annotation


# static fields
.field public static final LOCAL:I = -0x1

.field public static final NONE:I = 0x0

.field public static final NO_SELECTION:I = 0x0

.field public static final PREFER_HIGHEST_OR_LOCAL_VERSION:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

.field public static final PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

.field public static final PREFER_HIGHEST_OR_REMOTE_VERSION:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

.field public static final PREFER_LOCAL:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

.field public static final PREFER_REMOTE:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

.field public static final PREFER_REMOTE_VERSION_NO_FORCE_STAGING:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

.field public static final REMOTE:I = 0x1

.field public static final zza:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

.field private static zzb:Ljava/lang/Boolean;

.field private static zzc:Ljava/lang/String;

.field private static zzd:Z

.field private static zze:I

.field private static zzf:Ljava/lang/Boolean;

.field private static final zzg:Ljava/lang/ThreadLocal;

.field private static final zzh:Ljava/lang/ThreadLocal;

.field private static final zzi:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;

.field private static zzk:Lcom/google/android/gms/dynamite/zzq;

.field private static zzl:Lcom/google/android/gms/dynamite/zzr;


# instance fields
.field private final zzj:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const/4 v0, -0x1

    sput v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zze:I

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/google/android/gms/dynamite/zzd;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/google/android/gms/dynamite/zze;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzi:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;

    new-instance v0, Lcom/google/android/gms/dynamite/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_REMOTE:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    new-instance v0, Lcom/google/android/gms/dynamite/zzg;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzg;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_LOCAL:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    new-instance v0, Lcom/google/android/gms/dynamite/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_REMOTE_VERSION_NO_FORCE_STAGING:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    new-instance v0, Lcom/google/android/gms/dynamite/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_HIGHEST_OR_LOCAL_VERSION:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    new-instance v0, Lcom/google/android/gms/dynamite/zzj;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzj;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    new-instance v0, Lcom/google/android/gms/dynamite/zzk;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzk;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_HIGHEST_OR_REMOTE_VERSION:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    new-instance v0, Lcom/google/android/gms/dynamite/zzl;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzl;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zza:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzj:Landroid/content/Context;

    return-void
.end method

.method public static getLocalVersion(Landroid/content/Context;Ljava/lang/String;)I
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "moduleId"    # Ljava/lang/String;

    .line 1
    const-string v0, "DynamiteModule"

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "moduleId":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.google.android.gms.dynamite.descriptors."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".ModuleDescriptor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {p0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v2, "MODULE_ID"

    .line 4
    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const-string v3, "MODULE_VERSION"

    .line 5
    invoke-virtual {p0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 6
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_66

    .line 7
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Module descriptor id \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' didn\'t match expected id \'"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_66
    nop

    .line 9
    invoke-virtual {p0, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_6b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_6b} :catch_7f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6b} :catch_6c

    return p0

    .line 11
    :catch_6c
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Failed to load module descriptor class: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_99

    .line 9
    :catch_7f
    move-exception p0

    new-instance p0, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Local module descriptor class for "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_99
    return v1
.end method

.method public static getRemoteVersion(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "moduleId"    # Ljava/lang/String;

    .line 1
    nop

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "moduleId":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zza(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static load(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;
    .registers 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "policy"    # Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;
    .param p2, "moduleId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg:Ljava/lang/ThreadLocal;

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "policy":Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;
    .end local p2    # "moduleId":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/dynamite/zzn;

    new-instance v5, Lcom/google/android/gms/dynamite/zzn;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/google/android/gms/dynamite/zzn;-><init>(Lcom/google/android/gms/dynamite/zzm;)V

    .line 2
    invoke-virtual {v0, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sget-object v7, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Ljava/lang/ThreadLocal;

    .line 3
    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 4
    const-wide/16 v10, 0x0

    :try_start_25
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sget-object v12, Lcom/google/android/gms/dynamite/DynamiteModule;->zzi:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;

    .line 5
    invoke-interface {v2, v1, v3, v12}, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;->selectModule(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;)Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;

    move-result-object v12

    .line 6
    iget v13, v12, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->localVersion:I

    iget v14, v12, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->remoteVersion:I

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Considering local module "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " and remote module "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "DynamiteModule"

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget v6, v12, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->selection:I

    if-eqz v6, :cond_2ae

    const/4 v13, -0x1

    if-ne v6, v13, :cond_74

    iget v6, v12, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->localVersion:I

    if-eqz v6, :cond_2ae

    move v6, v13

    :cond_74
    const/4 v14, 0x1

    if-ne v6, v14, :cond_7b

    iget v15, v12, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->remoteVersion:I

    if-eqz v15, :cond_2ae

    :cond_7b
    if-ne v6, v13, :cond_9d

    .line 66
    invoke-static {v1, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v1
    :try_end_81
    .catchall {:try_start_25 .. :try_end_81} :catchall_2df

    cmp-long v2, v8, v10

    if-nez v2, :cond_89

    .line 62
    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_91

    .line 65
    :cond_89
    nop

    .line 63
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 62
    :goto_91
    iget-object v2, v5, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    if-eqz v2, :cond_98

    .line 64
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_98
    nop

    .line 65
    invoke-virtual {v0, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v1

    .line 63
    :cond_9d
    if-ne v6, v14, :cond_296

    .line 9
    :try_start_9f
    iget v15, v12, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->remoteVersion:I
    :try_end_a1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_9f .. :try_end_a1} :catch_237
    .catchall {:try_start_9f .. :try_end_a1} :catchall_2df

    :try_start_a1
    const-class v16, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v16
    :try_end_a4
    .catch Landroid/os/RemoteException; {:try_start_a1 .. :try_end_a4} :catch_22d
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_a1 .. :try_end_a4} :catch_22b
    .catchall {:try_start_a1 .. :try_end_a4} :catchall_21e

    .line 10
    :try_start_a4
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_212

    .line 11
    sget-object v17, Lcom/google/android/gms/dynamite/DynamiteModule;->zzb:Ljava/lang/Boolean;

    .line 12
    monitor-exit v16
    :try_end_ad
    .catchall {:try_start_a4 .. :try_end_ad} :catchall_21b

    if-eqz v17, :cond_209

    .line 14
    :try_start_af
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    if-eqz v16, :cond_15f

    new-instance v13, Ljava/lang/StringBuilder;

    .line 31
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Selected remote version of "

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", version >= "

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "DynamiteModule"

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-class v6, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v6
    :try_end_d6
    .catch Landroid/os/RemoteException; {:try_start_af .. :try_end_d6} :catch_22d
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_af .. :try_end_d6} :catch_22b
    .catchall {:try_start_af .. :try_end_d6} :catchall_21e

    :try_start_d6
    sget-object v13, Lcom/google/android/gms/dynamite/DynamiteModule;->zzl:Lcom/google/android/gms/dynamite/zzr;

    .line 32
    monitor-exit v6
    :try_end_d9
    .catchall {:try_start_d6 .. :try_end_d9} :catchall_15c

    if-eqz v13, :cond_153

    .line 33
    nop

    .line 34
    :try_start_dc
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/dynamite/zzn;

    if-eqz v6, :cond_14a

    iget-object v10, v6, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    if-eqz v10, :cond_14a

    .line 36
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    iget-object v6, v6, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    .line 37
    const/4 v11, 0x0

    invoke-static {v11}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    const-class v11, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v11
    :try_end_f5
    .catch Landroid/os/RemoteException; {:try_start_dc .. :try_end_f5} :catch_22d
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_dc .. :try_end_f5} :catch_22b
    .catchall {:try_start_dc .. :try_end_f5} :catchall_21e

    :try_start_f5
    sget v14, Lcom/google/android/gms/dynamite/DynamiteModule;->zze:I

    const/4 v2, 0x2

    .restart local p1    # "policy":Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;
    if-lt v14, v2, :cond_fc

    .end local p1    # "policy":Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;
    const/4 v14, 0x1

    goto :goto_fd

    .line 48
    :cond_fc
    const/4 v14, 0x0

    .line 38
    :goto_fd
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    monitor-exit v11
    :try_end_102
    .catchall {:try_start_f5 .. :try_end_102} :catchall_147

    .line 40
    :try_start_102
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_11c

    const-string v2, "DynamiteModule"

    const-string v11, "Dynamite loader version >= 2, using loadModule2NoCrashUtils"

    .line 41
    invoke-static {v2, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-static {v10}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    .line 43
    invoke-static {v6}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v6

    .line 44
    invoke-virtual {v13, v2, v3, v15, v6}, Lcom/google/android/gms/dynamite/zzr;->zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;ILcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    goto :goto_12f

    .line 63
    :cond_11c
    const-string v2, "DynamiteModule"

    const-string v11, "Dynamite loader version < 2, falling back to loadModule2"

    .line 45
    invoke-static {v2, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-static {v10}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    .line 47
    invoke-static {v6}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v6

    .line 48
    invoke-virtual {v13, v2, v3, v15, v6}, Lcom/google/android/gms/dynamite/zzr;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;ILcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    .line 49
    :goto_12f
    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    if-eqz v2, :cond_13e

    .line 50
    new-instance v6, Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 51
    invoke-direct {v6, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1d9

    .line 49
    :cond_13e
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v2, "Failed to get module context"

    .line 50
    const/4 v6, 0x0

    invoke-direct {v0, v2, v6}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzp;)V

    throw v0
    :try_end_147
    .catch Landroid/os/RemoteException; {:try_start_102 .. :try_end_147} :catch_22d
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_102 .. :try_end_147} :catch_22b
    .catchall {:try_start_102 .. :try_end_147} :catchall_21e

    .line 32
    :catchall_147
    move-exception v0

    .line 39
    :try_start_148
    monitor-exit v11
    :try_end_149
    .catchall {:try_start_148 .. :try_end_149} :catchall_147

    :try_start_149
    throw v0

    .line 34
    :cond_14a
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v2, "No result cursor"

    .line 35
    const/4 v6, 0x0

    invoke-direct {v0, v2, v6}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzp;)V

    throw v0

    .line 32
    :cond_153
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v2, "DynamiteLoaderV2 was not cached."

    .line 33
    const/4 v6, 0x0

    invoke-direct {v0, v2, v6}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzp;)V

    throw v0
    :try_end_15c
    .catch Landroid/os/RemoteException; {:try_start_149 .. :try_end_15c} :catch_22d
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_149 .. :try_end_15c} :catch_22b
    .catchall {:try_start_149 .. :try_end_15c} :catchall_21e

    .line 12
    :catchall_15c
    move-exception v0

    .line 32
    :try_start_15d
    monitor-exit v6
    :try_end_15e
    .catchall {:try_start_15d .. :try_end_15e} :catchall_15c

    :try_start_15e
    throw v0

    .line 48
    :cond_15f
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Selected remote version of "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", version >= "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "DynamiteModule"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg(Landroid/content/Context;)Lcom/google/android/gms/dynamite/zzq;

    move-result-object v2

    if-eqz v2, :cond_200

    .line 18
    invoke-virtual {v2}, Lcom/google/android/gms/dynamite/zzq;->zze()I

    move-result v6

    const/4 v10, 0x3

    if-lt v6, v10, :cond_1aa

    .line 19
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/dynamite/zzn;

    if-eqz v6, :cond_1a1

    .line 21
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v10

    iget-object v6, v6, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    .line 22
    invoke-static {v6}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v6

    .line 23
    invoke-virtual {v2, v10, v3, v15, v6}, Lcom/google/android/gms/dynamite/zzq;->zzi(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;ILcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    goto :goto_1cc

    .line 19
    :cond_1a1
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v2, "No cached result cursor holder"

    .line 20
    const/4 v6, 0x0

    invoke-direct {v0, v2, v6}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzp;)V

    throw v0

    .line 30
    :cond_1aa
    const/4 v10, 0x2

    if-ne v6, v10, :cond_1bd

    const-string v6, "DynamiteModule"

    const-string v10, "IDynamite loader version = 2"

    .line 24
    invoke-static {v6, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v6

    invoke-virtual {v2, v6, v3, v15}, Lcom/google/android/gms/dynamite/zzq;->zzj(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;I)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    goto :goto_1cc

    :cond_1bd
    const-string v6, "DynamiteModule"

    const-string v10, "Dynamite loader version < 2, falling back to createModuleContext"

    .line 26
    invoke-static {v6, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v6

    invoke-virtual {v2, v6, v3, v15}, Lcom/google/android/gms/dynamite/zzq;->zzh(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;I)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    .line 28
    :goto_1cc
    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1f7

    .line 29
    new-instance v6, Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 30
    check-cast v2, Landroid/content/Context;

    invoke-direct {v6, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;-><init>(Landroid/content/Context;)V
    :try_end_1d9
    .catch Landroid/os/RemoteException; {:try_start_15e .. :try_end_1d9} :catch_22d
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_15e .. :try_end_1d9} :catch_22b
    .catchall {:try_start_15e .. :try_end_1d9} :catchall_21e

    .line 51
    :goto_1d9
    const-wide/16 v1, 0x0

    cmp-long v1, v8, v1

    if-nez v1, :cond_1e3

    .line 62
    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_1eb

    .line 65
    :cond_1e3
    nop

    .line 63
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 62
    :goto_1eb
    iget-object v1, v5, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    if-eqz v1, :cond_1f2

    .line 64
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1f2
    nop

    .line 65
    invoke-virtual {v0, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v6

    .line 28
    :cond_1f7
    :try_start_1f7
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v2, "Failed to load remote module."

    .line 29
    const/4 v6, 0x0

    invoke-direct {v0, v2, v6}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzp;)V

    throw v0

    .line 16
    :cond_200
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v2, "Failed to create IDynamiteLoader."

    .line 17
    const/4 v6, 0x0

    invoke-direct {v0, v2, v6}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzp;)V

    throw v0

    .line 12
    :cond_209
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v2, "Failed to determine which loading route to use."

    .line 13
    const/4 v6, 0x0

    invoke-direct {v0, v2, v6}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzp;)V

    throw v0
    :try_end_212
    .catch Landroid/os/RemoteException; {:try_start_1f7 .. :try_end_212} :catch_22d
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_1f7 .. :try_end_212} :catch_22b
    .catchall {:try_start_1f7 .. :try_end_212} :catchall_21e

    .line 10
    :cond_212
    :try_start_212
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v2, "Remote loading disabled"

    .line 11
    const/4 v6, 0x0

    invoke-direct {v0, v2, v6}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzp;)V

    throw v0

    .line 53
    :catchall_21b
    move-exception v0

    .line 12
    monitor-exit v16
    :try_end_21d
    .catchall {:try_start_212 .. :try_end_21d} :catchall_21b

    :try_start_21d
    throw v0
    :try_end_21e
    .catch Landroid/os/RemoteException; {:try_start_21d .. :try_end_21e} :catch_22d
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_21d .. :try_end_21e} :catch_22b
    .catchall {:try_start_21d .. :try_end_21e} :catchall_21e

    .line 54
    :catchall_21e
    move-exception v0

    .line 52
    :try_start_21f
    invoke-static {v1, v0}, Lcom/google/android/gms/common/util/CrashUtils;->addDynamiteErrorToDropBox(Landroid/content/Context;Ljava/lang/Throwable;)Z

    new-instance v2, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v6, "Failed to load remote module."

    .line 53
    const/4 v7, 0x0

    invoke-direct {v2, v6, v0, v7}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/zzp;)V

    throw v2

    .line 55
    :catch_22b
    move-exception v0

    .line 54
    throw v0

    .line 65
    :catch_22d
    move-exception v0

    new-instance v2, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v6, "Failed to load remote module."

    .line 55
    const/4 v7, 0x0

    invoke-direct {v2, v6, v0, v7}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/zzp;)V

    throw v2
    :try_end_237
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_21f .. :try_end_237} :catch_237
    .catchall {:try_start_21f .. :try_end_237} :catchall_2df

    .line 8
    :catch_237
    move-exception v0

    .line 56
    :try_start_238
    invoke-virtual {v0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to load remote module: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "DynamiteModule"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget v2, v12, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->localVersion:I

    if-eqz v2, :cond_28d

    new-instance v6, Lcom/google/android/gms/dynamite/zzo;

    const/4 v7, 0x0

    invoke-direct {v6, v2, v7}, Lcom/google/android/gms/dynamite/zzo;-><init>(II)V

    .line 58
    move-object/from16 v2, p1

    .restart local p1    # "policy":Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;
    invoke-interface {v2, v1, v3, v6}, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;->selectModule(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;)Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;

    move-result-object v2

    .line 59
    .end local p1    # "policy":Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;
    iget v2, v2, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->selection:I

    const/4 v6, -0x1

    if-ne v2, v6, :cond_28d

    .line 61
    invoke-static {v1, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v0
    :try_end_26b
    .catchall {:try_start_238 .. :try_end_26b} :catchall_2df

    const-wide/16 v1, 0x0

    cmp-long v1, v8, v1

    if-nez v1, :cond_277

    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Ljava/lang/ThreadLocal;

    .line 62
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_280

    .line 60
    :cond_277
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Ljava/lang/ThreadLocal;

    .line 63
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 62
    :goto_280
    iget-object v1, v5, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    if-eqz v1, :cond_287

    .line 64
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_287
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg:Ljava/lang/ThreadLocal;

    .line 65
    invoke-virtual {v1, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v0

    .line 63
    :cond_28d
    :try_start_28d
    new-instance v1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v2, "Remote load failed. No local fallback found."

    .line 60
    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/zzp;)V

    throw v1

    .line 67
    :cond_296
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VersionPolicy returned invalid code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzp;)V

    throw v0

    .line 68
    :cond_2ae
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 67
    iget v1, v12, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->localVersion:I

    iget v2, v12, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->remoteVersion:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No acceptable module "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " found. Local version is "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and remote version is "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzp;)V

    throw v0
    :try_end_2df
    .catchall {:try_start_28d .. :try_end_2df} :catchall_2df

    .line 27
    :catchall_2df
    move-exception v0

    const-wide/16 v1, 0x0

    cmp-long v1, v8, v1

    if-nez v1, :cond_2ec

    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Ljava/lang/ThreadLocal;

    .line 62
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_2f5

    .line 39
    :cond_2ec
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Ljava/lang/ThreadLocal;

    .line 63
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 62
    :goto_2f5
    iget-object v1, v5, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    if-eqz v1, :cond_2fc

    .line 64
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2fc
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg:Ljava/lang/ThreadLocal;

    .line 65
    invoke-virtual {v1, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 68
    throw v0
.end method

.method public static zza(Landroid/content/Context;Ljava/lang/String;Z)I
    .registers 13

    .line 1
    :try_start_0
    const-class v0, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v0
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_1cf

    :try_start_3
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzb:Ljava/lang/Boolean;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1cc

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_df

    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v4, Lcom/google/android/gms/dynamite/DynamiteModule$DynamiteLoaderClassLoader;

    .line 2
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v4, "sClassLoader"

    .line 3
    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    monitor-enter v4
    :try_end_26
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_26} :catch_c0
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_26} :catch_be
    .catch Ljava/lang/NoSuchFieldException; {:try_start_9 .. :try_end_26} :catch_bc
    .catchall {:try_start_9 .. :try_end_26} :catchall_1cc

    .line 5
    :try_start_26
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ClassLoader;

    .line 6
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    if-ne v5, v6, :cond_36

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_34
    .catchall {:try_start_26 .. :try_end_34} :catchall_b9

    goto/16 :goto_b7

    .line 44
    :cond_36
    if-eqz v5, :cond_41

    .line 7
    :try_start_38
    invoke-static {v5}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzd(Ljava/lang/ClassLoader;)V
    :try_end_3b
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_38 .. :try_end_3b} :catch_3c
    .catchall {:try_start_38 .. :try_end_3b} :catchall_b9

    goto :goto_3d

    .line 46
    :catch_3c
    move-exception v1

    .line 7
    :goto_3d
    :try_start_3d
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_b7

    .line 8
    :cond_41
    invoke-static {p0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_4a

    .line 9
    monitor-exit v4
    :try_end_48
    .catchall {:try_start_3d .. :try_end_48} :catchall_b9

    :try_start_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_1cc

    return v3

    :cond_4a
    :try_start_4a
    sget-boolean v5, Lcom/google/android/gms/dynamite/DynamiteModule;->zzd:Z

    if-nez v5, :cond_ad

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 10
    invoke-virtual {v5, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_54
    .catchall {:try_start_4a .. :try_end_54} :catchall_b9

    if-eqz v5, :cond_57

    goto :goto_ad

    .line 11
    :cond_57
    nop

    .line 12
    const/4 v5, 0x1

    :try_start_59
    invoke-static {p0, p1, p2, v5}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzb(Landroid/content/Context;Ljava/lang/String;ZZ)I

    move-result v5

    sget-object v6, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc:Ljava/lang/String;

    if-eqz v6, :cond_9f

    .line 13
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_68

    goto :goto_9f

    .line 15
    :cond_68
    invoke-static {}, Lcom/google/android/gms/dynamite/zzb;->zza()Ljava/lang/ClassLoader;

    move-result-object v6

    if-eqz v6, :cond_6f

    goto :goto_92

    .line 24
    :cond_6f
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1d

    if-lt v6, v7, :cond_84

    .line 16
    new-instance v6, Ldalvik/system/DelegateLastClassLoader;

    sget-object v7, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc:Ljava/lang/String;

    .line 17
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ldalvik/system/DelegateLastClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    goto :goto_92

    .line 18
    :cond_84
    new-instance v6, Lcom/google/android/gms/dynamite/zzc;

    sget-object v7, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc:Ljava/lang/String;

    .line 19
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/google/android/gms/dynamite/zzc;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 20
    :goto_92
    invoke-static {v6}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzd(Ljava/lang/ClassLoader;)V

    .line 21
    invoke-virtual {v1, v2, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v6, Lcom/google/android/gms/dynamite/DynamiteModule;->zzb:Ljava/lang/Boolean;
    :try_end_9c
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_59 .. :try_end_9c} :catch_a2
    .catchall {:try_start_59 .. :try_end_9c} :catchall_b9

    .line 24
    :try_start_9c
    monitor-exit v4
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_b9

    :try_start_9d
    monitor-exit v0
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_1cc

    return v5

    .line 14
    :cond_9f
    :goto_9f
    :try_start_9f
    monitor-exit v4
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_b9

    :try_start_a0
    monitor-exit v0
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_1cc

    return v5

    .line 46
    :catch_a2
    move-exception v5

    .line 22
    :try_start_a3
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_b7

    .line 10
    :cond_ad
    :goto_ad
    nop

    .line 11
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 23
    :goto_b7
    monitor-exit v4

    goto :goto_dd

    .line 25
    :catchall_b9
    move-exception v1

    .line 23
    monitor-exit v4
    :try_end_bb
    .catchall {:try_start_a3 .. :try_end_bb} :catchall_b9

    :try_start_bb
    throw v1
    :try_end_bc
    .catch Ljava/lang/ClassNotFoundException; {:try_start_bb .. :try_end_bc} :catch_c0
    .catch Ljava/lang/IllegalAccessException; {:try_start_bb .. :try_end_bc} :catch_be
    .catch Ljava/lang/NoSuchFieldException; {:try_start_bb .. :try_end_bc} :catch_bc
    .catchall {:try_start_bb .. :try_end_bc} :catchall_1cc

    .line 26
    :catch_bc
    move-exception v1

    goto :goto_c1

    :catch_be
    move-exception v1

    goto :goto_c1

    :catch_c0
    move-exception v1

    .line 25
    :goto_c1
    :try_start_c1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to load module via V2: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DynamiteModule"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 23
    :goto_dd
    sput-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzb:Ljava/lang/Boolean;

    .line 26
    :cond_df
    monitor-exit v0
    :try_end_e0
    .catchall {:try_start_c1 .. :try_end_e0} :catchall_1cc

    .line 27
    :try_start_e0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_e4
    .catchall {:try_start_e0 .. :try_end_e4} :catchall_1cf

    if-eqz v0, :cond_107

    .line 47
    :try_start_e6
    invoke-static {p0, p1, p2, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzb(Landroid/content/Context;Ljava/lang/String;ZZ)I

    move-result p0
    :try_end_ea
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_e6 .. :try_end_ea} :catch_eb
    .catchall {:try_start_e6 .. :try_end_ea} :catchall_1cf

    return p0

    .line 23
    :catch_eb
    move-exception p1

    .line 48
    :try_start_ec
    invoke-virtual {p1}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to retrieve remote module version: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "DynamiteModule"

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 28
    :cond_107
    invoke-static {p0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg(Landroid/content/Context;)Lcom/google/android/gms/dynamite/zzq;

    move-result-object v4
    :try_end_10b
    .catchall {:try_start_ec .. :try_end_10b} :catchall_1cf

    if-nez v4, :cond_10f

    goto/16 :goto_1c3

    .line 29
    :cond_10f
    :try_start_10f
    invoke-virtual {v4}, Lcom/google/android/gms/dynamite/zzq;->zze()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_17a

    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg:Ljava/lang/ThreadLocal;

    .line 30
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/dynamite/zzn;

    if-eqz v0, :cond_12a

    iget-object v0, v0, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    if-eqz v0, :cond_12a

    .line 39
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    goto/16 :goto_1c3

    .line 31
    :cond_12a
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 32
    move-object v6, p1

    move v7, p2

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/dynamite/zzq;->zzk(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;ZJ)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 33
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/database/Cursor;
    :try_end_146
    .catch Landroid/os/RemoteException; {:try_start_10f .. :try_end_146} :catch_1a0
    .catchall {:try_start_10f .. :try_end_146} :catchall_19d

    if-eqz p1, :cond_167

    .line 34
    :try_start_148
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-nez p2, :cond_14f

    goto :goto_167

    .line 36
    :cond_14f
    nop

    .line 37
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    if-lez p2, :cond_15d

    .line 38
    invoke-static {p1}, Lcom/google/android/gms/dynamite/DynamiteModule;->zze(Landroid/database/Cursor;)Z

    move-result v0
    :try_end_15a
    .catch Landroid/os/RemoteException; {:try_start_148 .. :try_end_15a} :catch_177
    .catchall {:try_start_148 .. :try_end_15a} :catchall_174

    if-eqz v0, :cond_15d

    goto :goto_15f

    .line 36
    :cond_15d
    nop

    .line 38
    move-object v2, p1

    :goto_15f
    if-eqz v2, :cond_164

    .line 36
    :try_start_161
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_164
    .catchall {:try_start_161 .. :try_end_164} :catchall_1cf

    :cond_164
    nop

    .line 28
    move v3, p2

    goto :goto_1c3

    .line 34
    :cond_167
    :goto_167
    :try_start_167
    const-string p2, "DynamiteModule"

    const-string v0, "Failed to retrieve remote module version."

    .line 35
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16e
    .catch Landroid/os/RemoteException; {:try_start_167 .. :try_end_16e} :catch_177
    .catchall {:try_start_167 .. :try_end_16e} :catchall_174

    if-eqz p1, :cond_1c1

    .line 36
    :try_start_170
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_173
    .catchall {:try_start_170 .. :try_end_173} :catchall_1cf

    goto :goto_1c1

    .line 46
    :catchall_174
    move-exception p2

    move-object v2, p1

    goto :goto_1c6

    :catch_177
    move-exception p2

    move-object v2, p1

    goto :goto_1a2

    .line 36
    :cond_17a
    const/4 v1, 0x2

    if-ne v0, v1, :cond_18d

    :try_start_17d
    const-string v0, "DynamiteModule"

    const-string v1, "IDynamite loader version = 2, no high precision latency measurement."

    .line 40
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    .line 42
    invoke-virtual {v4, v0, p1, p2}, Lcom/google/android/gms/dynamite/zzq;->zzg(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Z)I

    move-result v3

    goto :goto_1c3

    :cond_18d
    const-string v0, "DynamiteModule"

    const-string v1, "IDynamite loader version < 2, falling back to getModuleVersion2"

    .line 43
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-virtual {v4, v0, p1, p2}, Lcom/google/android/gms/dynamite/zzq;->zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Z)I

    move-result v3
    :try_end_19c
    .catch Landroid/os/RemoteException; {:try_start_17d .. :try_end_19c} :catch_1a0
    .catchall {:try_start_17d .. :try_end_19c} :catchall_19d

    goto :goto_1c3

    .line 36
    :catchall_19d
    move-exception p1

    move-object p2, p1

    goto :goto_1c6

    .line 48
    :catch_1a0
    move-exception p1

    move-object p2, p1

    .line 45
    :goto_1a2
    :try_start_1a2
    invoke-virtual {p2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to retrieve remote module version: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "DynamiteModule"

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1bc
    .catchall {:try_start_1a2 .. :try_end_1bc} :catchall_1c4

    if-eqz v2, :cond_1c2

    .line 36
    :try_start_1be
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1c1
    :goto_1c1
    goto :goto_1c3

    .line 22
    :cond_1c2
    nop

    .line 28
    :goto_1c3
    return v3

    .line 22
    :catchall_1c4
    move-exception p1

    move-object p2, p1

    .line 36
    :goto_1c6
    if-eqz v2, :cond_1cb

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 46
    :cond_1cb
    throw p2
    :try_end_1cc
    .catchall {:try_start_1be .. :try_end_1cc} :catchall_1cf

    .line 50
    :catchall_1cc
    move-exception p1

    .line 26
    :try_start_1cd
    monitor-exit v0
    :try_end_1ce
    .catchall {:try_start_1cd .. :try_end_1ce} :catchall_1cc

    :try_start_1ce
    throw p1
    :try_end_1cf
    .catchall {:try_start_1ce .. :try_end_1cf} :catchall_1cf

    .line 19
    :catchall_1cf
    move-exception p1

    .line 49
    invoke-static {p0, p1}, Lcom/google/android/gms/common/util/CrashUtils;->addDynamiteErrorToDropBox(Landroid/content/Context;Ljava/lang/Throwable;)Z

    .line 50
    throw p1
.end method

.method private static zzb(Landroid/content/Context;Ljava/lang/String;ZZ)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string p0, "api_force_staging"

    const-string v4, "api"

    const/4 v9, 0x1

    if-eq v9, p2, :cond_19

    move-object p0, v4

    :cond_19
    new-instance p2, Landroid/net/Uri$Builder;

    .line 3
    invoke-direct {p2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "content"

    .line 4
    invoke-virtual {p2, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    const-string v4, "com.google.android.gms.chimera"

    .line 5
    invoke-virtual {p2, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 6
    invoke-virtual {p2, p0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string p1, "requestStartTime"

    .line 8
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 10
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_48} :catch_c1
    .catchall {:try_start_1 .. :try_end_48} :catchall_be

    if-eqz p0, :cond_aa

    .line 11
    :try_start_4a
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_aa

    .line 13
    nop

    .line 14
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    if-lez p2, :cond_91

    const-class v1, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v1
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_5b} :catch_bc
    .catchall {:try_start_4a .. :try_end_5b} :catchall_b9

    .line 15
    const/4 v2, 0x2

    :try_start_5c
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc:Ljava/lang/String;

    const-string v2, "loaderVersion"

    .line 16
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_70

    .line 17
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    sput v2, Lcom/google/android/gms/dynamite/DynamiteModule;->zze:I

    :cond_70
    const-string v2, "disableStandaloneDynamiteLoader2"

    .line 18
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_84

    .line 19
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_7f

    goto :goto_80

    .line 22
    :cond_7f
    move v9, p1

    .line 19
    :goto_80
    sput-boolean v9, Lcom/google/android/gms/dynamite/DynamiteModule;->zzd:Z

    move p1, v9

    goto :goto_85

    .line 22
    :cond_84
    nop

    .line 20
    :goto_85
    monitor-exit v1
    :try_end_86
    .catchall {:try_start_5c .. :try_end_86} :catchall_8e

    .line 21
    :try_start_86
    invoke-static {p0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zze(Landroid/database/Cursor;)Z

    move-result v1
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_8a} :catch_bc
    .catchall {:try_start_86 .. :try_end_8a} :catchall_b9

    if-eqz v1, :cond_92

    move-object p0, v0

    goto :goto_92

    .line 27
    :catchall_8e
    move-exception p1

    .line 20
    :try_start_8f
    monitor-exit v1
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_8e

    :try_start_90
    throw p1
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_91} :catch_bc
    .catchall {:try_start_90 .. :try_end_91} :catchall_b9

    .line 22
    :cond_91
    nop

    .line 21
    :cond_92
    :goto_92
    if-eqz p3, :cond_a4

    if-nez p1, :cond_97

    goto :goto_a4

    .line 20
    :cond_97
    :try_start_97
    new-instance p1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string p2, "forcing fallback to container DynamiteLoader impl"

    .line 23
    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzp;)V

    throw p1
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_9f} :catch_a2
    .catchall {:try_start_97 .. :try_end_9f} :catchall_9f

    .line 26
    :catchall_9f
    move-exception p1

    move-object v0, p0

    goto :goto_d3

    :catch_a2
    move-exception p1

    goto :goto_c4

    .line 21
    :cond_a4
    :goto_a4
    if-eqz p0, :cond_a9

    .line 22
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_a9
    return p2

    .line 11
    :cond_aa
    :try_start_aa
    const-string p1, "DynamiteModule"

    const-string p2, "Failed to retrieve remote module version."

    .line 12
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string p2, "Failed to connect to dynamite module ContentResolver."

    .line 13
    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzp;)V

    throw p1
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_b9} :catch_bc
    .catchall {:try_start_aa .. :try_end_b9} :catchall_b9

    .line 27
    :catchall_b9
    move-exception p1

    move-object v0, p0

    goto :goto_d3

    :catch_bc
    move-exception p1

    goto :goto_c4

    .line 25
    :catchall_be
    move-exception p0

    move-object p1, p0

    goto :goto_d3

    .line 22
    :catch_c1
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .line 24
    :goto_c4
    :try_start_c4
    instance-of p2, p1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    if-eqz p2, :cond_c9

    .line 25
    throw p1

    .line 23
    :cond_c9
    new-instance p2, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string p3, "V2 version check failed"

    .line 26
    invoke-direct {p2, p3, p1, v0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/zzp;)V

    throw p2
    :try_end_d1
    .catchall {:try_start_c4 .. :try_end_d1} :catchall_d1

    .line 23
    :catchall_d1
    move-exception p1

    move-object v0, p0

    .line 25
    :goto_d3
    if-eqz v0, :cond_d8

    .line 22
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 27
    :cond_d8
    throw p1
.end method

.method private static zzc(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;
    .registers 3

    .line 1
    const-string v0, "Selected local version of "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "DynamiteModule"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/gms/dynamite/DynamiteModule;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method private static zzd(Ljava/lang/ClassLoader;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "com.google.android.gms.dynamiteloader.DynamiteLoaderV2"

    invoke-virtual {p0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    if-nez p0, :cond_1a

    move-object v1, v0

    goto :goto_2c

    :cond_1a
    const-string v1, "com.google.android.gms.dynamite.IDynamiteLoaderV2"

    .line 2
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 3
    instance-of v2, v1, Lcom/google/android/gms/dynamite/zzr;

    if-eqz v2, :cond_27

    .line 4
    check-cast v1, Lcom/google/android/gms/dynamite/zzr;

    goto :goto_2c

    .line 5
    :cond_27
    new-instance v1, Lcom/google/android/gms/dynamite/zzr;

    invoke-direct {v1, p0}, Lcom/google/android/gms/dynamite/zzr;-><init>(Landroid/os/IBinder;)V

    .line 1
    :goto_2c
    sput-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzl:Lcom/google/android/gms/dynamite/zzr;
    :try_end_2e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_2e} :catch_37
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_2e} :catch_35
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_2e} :catch_33
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_2e} :catch_31
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_2e} :catch_2f

    return-void

    .line 4
    :catch_2f
    move-exception p0

    goto :goto_38

    :catch_31
    move-exception p0

    goto :goto_38

    :catch_33
    move-exception p0

    goto :goto_38

    :catch_35
    move-exception p0

    goto :goto_38

    :catch_37
    move-exception p0

    :goto_38
    new-instance v1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 5
    const-string v2, "Failed to instantiate dynamite loader"

    invoke-direct {v1, v2, p0, v0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/zzp;)V

    throw v1
.end method

.method private static zze(Landroid/database/Cursor;)Z
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/dynamite/zzn;

    if-eqz v0, :cond_12

    iget-object v1, v0, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    if-nez v1, :cond_12

    iput-object p0, v0, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method private static zzf(Landroid/content/Context;)Z
    .registers 7

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    return v1

    :cond_b
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf:Ljava/lang/Boolean;

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    return v1

    :cond_16
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf:Ljava/lang/Boolean;

    const-string v2, "DynamiteModule"

    const/4 v3, 0x0

    if-nez v0, :cond_65

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 4
    const-string v4, "com.google.android.gms.chimera"

    invoke-virtual {v0, v4, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v4

    .line 6
    const v5, 0x989680

    invoke-virtual {v4, p0, v5}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Landroid/content/Context;I)I

    move-result p0

    if-nez p0, :cond_42

    if-eqz v0, :cond_42

    iget-object p0, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 7
    const-string v4, "com.google.android.gms"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_42

    move v3, v1

    goto :goto_43

    .line 11
    :cond_42
    nop

    .line 5
    :goto_43
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf:Ljava/lang/Boolean;

    .line 8
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_66

    if-eqz v0, :cond_66

    .line 9
    iget-object p0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_66

    iget-object p0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 p0, p0, 0x81

    if-nez p0, :cond_66

    .line 10
    const-string p0, "Non-system-image GmsCore APK, forcing V1"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzd:Z

    goto :goto_66

    .line 11
    :cond_65
    nop

    .line 10
    :cond_66
    :goto_66
    if-nez v3, :cond_6d

    .line 11
    const-string p0, "Invalid GmsCore APK, remote loading disabled."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6d
    return v3
.end method

.method private static zzg(Landroid/content/Context;)Lcom/google/android/gms/dynamite/zzq;
    .registers 5

    .line 1
    const-class v0, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzk:Lcom/google/android/gms/dynamite/zzq;

    if-eqz v1, :cond_9

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_5a

    return-object v1

    :cond_9
    const/4 v1, 0x0

    :try_start_a
    const-string v2, "com.google.android.gms"

    .line 2
    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v2, "com.google.android.gms.chimera.container.DynamiteLoaderImpl"

    .line 4
    invoke-virtual {p0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    if-nez p0, :cond_25

    move-object v2, v1

    goto :goto_37

    .line 10
    :cond_25
    const-string v2, "com.google.android.gms.dynamite.IDynamiteLoader"

    .line 6
    invoke-interface {p0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 7
    instance-of v3, v2, Lcom/google/android/gms/dynamite/zzq;

    if-eqz v3, :cond_32

    .line 8
    check-cast v2, Lcom/google/android/gms/dynamite/zzq;

    goto :goto_37

    :cond_32
    new-instance v2, Lcom/google/android/gms/dynamite/zzq;

    invoke-direct {v2, p0}, Lcom/google/android/gms/dynamite/zzq;-><init>(Landroid/os/IBinder;)V

    .line 5
    :goto_37
    if-eqz v2, :cond_58

    sput-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->zzk:Lcom/google/android/gms/dynamite/zzq;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_3b} :catch_3d
    .catchall {:try_start_a .. :try_end_3b} :catchall_5a

    .line 11
    :try_start_3b
    monitor-exit v0

    return-object v2

    .line 10
    :catch_3d
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load IDynamiteLoader from GmsCore: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "DynamiteModule"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_58
    monitor-exit v0

    return-object v1

    .line 8
    :catchall_5a
    move-exception p0

    .line 10
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_3b .. :try_end_5c} :catchall_5a

    throw p0
.end method


# virtual methods
.method public getModuleContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzj:Landroid/content/Context;

    return-object v0
.end method

.method public instantiate(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 5
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/dynamite/DynamiteModule;
    .end local p1    # "className":Ljava/lang/String;
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzj:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;
    :try_end_11
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_11} :catch_16
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_11} :catch_14
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_11} :catch_12

    .line 3
    return-object v0

    .line 2
    :catch_12
    move-exception v0

    goto :goto_17

    :catch_14
    move-exception v0

    goto :goto_17

    :catch_16
    move-exception v0

    :goto_17
    new-instance v1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v2, "Failed to instantiate module class: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/zzp;)V

    throw v1
.end method
