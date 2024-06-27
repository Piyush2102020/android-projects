.class abstract Lcom/google/android/gms/internal/measurement/zzkv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@21.2.2"


# static fields
.field private static final zza:Ljava/util/logging/Logger;

.field private static final zzb:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lcom/google/android/gms/internal/measurement/zzki;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzkv;->zza:Ljava/util/logging/Logger;

    const-string v0, "com.google.protobuf.BlazeGeneratedExtensionRegistryLiteLoader"

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzkv;->zzb:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzkn;
    .registers 12

    .line 1
    const-class v0, Lcom/google/android/gms/internal/measurement/zzkn;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzkv;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzkv;->zzb:Ljava/lang/String;

    goto :goto_3a

    .line 3
    :cond_13
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    .line 4
    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f9

    .line 5
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 7
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    .line 8
    const-string v5, "%s.BlazeGenerated%sLoader"

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2
    :goto_3a
    nop

    .line 9
    :try_start_3b
    invoke-static {v0, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0
    :try_end_3f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3b .. :try_end_3f} :catch_74

    :try_start_3f
    new-array v5, v4, [Ljava/lang/Class;

    .line 10
    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzkv;
    :try_end_4d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3f .. :try_end_4d} :catch_6d
    .catch Ljava/lang/InstantiationException; {:try_start_3f .. :try_end_4d} :catch_66
    .catch Ljava/lang/IllegalAccessException; {:try_start_3f .. :try_end_4d} :catch_5f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3f .. :try_end_4d} :catch_58
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3f .. :try_end_4d} :catch_74

    .line 15
    :try_start_4d
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkv;->zza()Lcom/google/android/gms/internal/measurement/zzkn;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzkn;

    return-object v0

    .line 12
    :catch_58
    move-exception v0

    new-instance v5, Ljava/lang/IllegalStateException;

    .line 11
    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 13
    :catch_5f
    move-exception v0

    new-instance v5, Ljava/lang/IllegalStateException;

    .line 12
    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 14
    :catch_66
    move-exception v0

    new-instance v5, Ljava/lang/IllegalStateException;

    .line 13
    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 25
    :catch_6d
    move-exception v0

    new-instance v5, Ljava/lang/IllegalStateException;

    .line 14
    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_74
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4d .. :try_end_74} :catch_74

    .line 8
    :catch_74
    move-exception v0

    .line 16
    invoke-static {v1, v2}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    .line 18
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    :goto_82
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b8

    .line 20
    :try_start_88
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzkv;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzkv;->zza()Lcom/google/android/gms/internal/measurement/zzkn;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzkn;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9b
    .catch Ljava/util/ServiceConfigurationError; {:try_start_88 .. :try_end_9b} :catch_9c

    goto :goto_82

    .line 27
    :catch_9c
    move-exception v2

    move-object v10, v2

    sget-object v5, Lcom/google/android/gms/internal/measurement/zzkv;->zza:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 21
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "com.google.protobuf.GeneratedExtensionRegistryLoader"

    const-string v8, "load"

    const-string v9, "Unable to load "

    invoke-virtual {v9, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v5 .. v10}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_82

    .line 22
    :cond_b8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_c5

    .line 23
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzkn;

    return-object p0

    .line 24
    :cond_c5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_cd

    return-object v2

    :cond_cd
    :try_start_cd
    const-string v0, "combine"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Ljava/util/Collection;

    aput-object v6, v5, v4

    .line 25
    invoke-virtual {p0, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v1, v0, v4

    invoke-virtual {p0, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzkn;
    :try_end_e3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_cd .. :try_end_e3} :catch_f2
    .catch Ljava/lang/IllegalAccessException; {:try_start_cd .. :try_end_e3} :catch_eb
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_cd .. :try_end_e3} :catch_e4

    return-object p0

    .line 11
    :catch_e4
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 28
    :catch_eb
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 27
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 26
    :catch_f2
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 28
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 4
    :cond_f9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected abstract zza()Lcom/google/android/gms/internal/measurement/zzkn;
.end method
