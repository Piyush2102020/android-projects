.class public Lcom/google/android/gms/measurement/AppMeasurement;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.2.2"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;,
        Lcom/google/android/gms/measurement/AppMeasurement$OnEventListener;,
        Lcom/google/android/gms/measurement/AppMeasurement$EventInterceptor;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CRASH_ORIGIN:Ljava/lang/String; = "crash"

.field public static final FCM_ORIGIN:Ljava/lang/String; = "fcm"

.field public static final FIAM_ORIGIN:Ljava/lang/String; = "fiam"

.field private static volatile zza:Lcom/google/android/gms/measurement/AppMeasurement;


# instance fields
.field private final zzb:Lcom/google/android/gms/measurement/zzd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzge;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/measurement/zza;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/zza;-><init>(Lcom/google/android/gms/measurement/internal/zzge;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzb:Lcom/google/android/gms/measurement/zzd;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzik;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/measurement/zzb;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/zzb;-><init>(Lcom/google/android/gms/measurement/internal/zzik;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzb:Lcom/google/android/gms/measurement/zzd;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/gms/measurement/AppMeasurement;
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/AppMeasurement;->zza:Lcom/google/android/gms/measurement/AppMeasurement;

    .end local p0    # "context":Landroid/content/Context;
    if-nez v0, :cond_60

    const-class v0, Lcom/google/android/gms/measurement/AppMeasurement;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/google/android/gms/measurement/AppMeasurement;->zza:Lcom/google/android/gms/measurement/AppMeasurement;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_5d

    if-nez v1, :cond_5b

    const/4 v1, 0x0

    :try_start_c
    const-string v2, "com.google.firebase.analytics.FirebaseAnalytics"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_12
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_12} :catch_34
    .catchall {:try_start_c .. :try_end_12} :catchall_5d

    :try_start_12
    const-string v3, "getScionFrontendApiImplementation"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Landroid/os/Bundle;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    .line 2
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p0, v3, v7

    aput-object v1, v3, v8

    .line 3
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 4
    check-cast v2, Lcom/google/android/gms/measurement/internal/zzik;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_31} :catch_32
    .catchall {:try_start_12 .. :try_end_31} :catchall_5d

    goto :goto_36

    .line 8
    :catch_32
    move-exception v2

    goto :goto_35

    :catch_34
    move-exception v2

    :goto_35
    move-object v2, v1

    .line 4
    :goto_36
    if-eqz v2, :cond_40

    :try_start_38
    new-instance p0, Lcom/google/android/gms/measurement/AppMeasurement;

    .line 7
    invoke-direct {p0, v2}, Lcom/google/android/gms/measurement/AppMeasurement;-><init>(Lcom/google/android/gms/measurement/internal/zzik;)V

    sput-object p0, Lcom/google/android/gms/measurement/AppMeasurement;->zza:Lcom/google/android/gms/measurement/AppMeasurement;

    goto :goto_5b

    .line 5
    :cond_40
    new-instance v13, Lcom/google/android/gms/internal/measurement/zzcl;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v2, v13

    invoke-direct/range {v2 .. v12}, Lcom/google/android/gms/internal/measurement/zzcl;-><init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {p0, v13, v1}, Lcom/google/android/gms/measurement/internal/zzge;->zzp(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzcl;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/zzge;

    move-result-object p0

    new-instance v1, Lcom/google/android/gms/measurement/AppMeasurement;

    .line 6
    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/AppMeasurement;-><init>(Lcom/google/android/gms/measurement/internal/zzge;)V

    sput-object v1, Lcom/google/android/gms/measurement/AppMeasurement;->zza:Lcom/google/android/gms/measurement/AppMeasurement;

    .line 8
    :cond_5b
    :goto_5b
    monitor-exit v0

    goto :goto_60

    .line 6
    :catchall_5d
    move-exception p0

    .line 8
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_38 .. :try_end_5f} :catchall_5d

    throw p0

    :cond_60
    :goto_60
    sget-object p0, Lcom/google/android/gms/measurement/AppMeasurement;->zza:Lcom/google/android/gms/measurement/AppMeasurement;

    return-object p0
.end method


# virtual methods
.method public beginAdUnitExposure(Ljava/lang/String;)V
    .registers 3
    .param p1, "adUnitId"    # Ljava/lang/String;

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/measurement/AppMeasurement;
    .end local p1    # "adUnitId":Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzb:Lcom/google/android/gms/measurement/zzd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/zzd;->zzp(Ljava/lang/String;)V

    return-void
.end method

.method public clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "userPropertyName"    # Ljava/lang/String;
    .param p2, "clearEventName"    # Ljava/lang/String;
    .param p3, "clearEventParams"    # Landroid/os/Bundle;

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/measurement/AppMeasurement;
    .end local p1    # "userPropertyName":Ljava/lang/String;
    .end local p2    # "clearEventName":Ljava/lang/String;
    .end local p3    # "clearEventParams":Landroid/os/Bundle;
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzb:Lcom/google/android/gms/measurement/zzd;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/zzd;->zzq(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public endAdUnitExposure(Ljava/lang/String;)V
    .registers 3
    .param p1, "adUnitId"    # Ljava/lang/String;

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/measurement/AppMeasurement;
    .end local p1    # "adUnitId":Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzb:Lcom/google/android/gms/measurement/zzd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/zzd;->zzr(Ljava/lang/String;)V

    return-void
.end method

.method public generateEventId()J
    .registers 3

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/measurement/AppMeasurement;
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzb:Lcom/google/android/gms/measurement/zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/zzd;->zzb()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAppInstanceId()Ljava/lang/String;
    .registers 2

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/measurement/AppMeasurement;
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzb:Lcom/google/android/gms/measurement/zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/zzd;->zzh()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean()Ljava/lang/Boolean;
    .registers 2

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/measurement/AppMeasurement;
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzb:Lcom/google/android/gms/measurement/zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/zzd;->zzc()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "propertyNamePrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;",
            ">;"
        }
    .end annotation

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/measurement/AppMeasurement;
    .end local p1    # "origin":Ljava/lang/String;
    .end local p2    # "propertyNamePrefix":Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzb:Lcom/google/android/gms/measurement/zzd;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/zzd;->zzm(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    if-nez p1, :cond_d

    const/4 v0, 0x0

    goto :goto_11

    .line 2
    :cond_d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_11
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    new-instance v1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;

    .line 4
    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_2d
    return-object p2
.end method

.method public getCurrentScreenClass()Ljava/lang/String;
    .registers 2

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/measurement/AppMeasurement;
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzb:Lcom/google/android/gms/measurement/zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/zzd;->zzi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentScreenName()Ljava/lang/String;
    .registers 2

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/measurement/AppMeasurement;
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzb:Lcom/google/android/gms/measurement/zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/zzd;->zzj()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDouble()Ljava/lang/Double;
    .registers 2

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/measurement/AppMeasurement;
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzb:Lcom/google/android/gms/measurement/zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/zzd;->zzd()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getGmpAppId()Ljava/lang/String;
    .registers 2

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/measurement/AppMeasurement;
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzb:Lcom/google/android/gms/measurement/zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/zzd;->zzk()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInteger()Ljava/lang/Integer;
    .registers 2

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/measurement/AppMeasurement;
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzb:Lcom/google/android/gms/measurement/zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/zzd;->zze()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getLong()Ljava/lang/Long;
    .registers 2

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/measurement/AppMeasurement;
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzb:Lcom/google/android/gms/measurement/zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/zzd;->zzf()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getMaxUserProperties(Ljava/lang/String;)I
    .registers 3
    .param p1, "origin"    # Ljava/lang/String;

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/measurement/AppMeasurement;
    .end local p1    # "origin":Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzb:Lcom/google/android/gms/measurement/zzd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/zzd;->zza(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getString()Ljava/lang/String;
    .registers 2

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/measurement/AppMeasurement;
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzb:Lcom/google/android/gms/measurement/zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/zzd;->zzl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUserProperties(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .registers 5
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "propertyNamePrefix"    # Ljava/lang/String;
    .param p3, "includeInternal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/measurement/AppMeasurement;
    .end local p1    # "origin":Ljava/lang/String;
    .end local p2    # "propertyNamePrefix":Ljava/lang/String;
    .end local p3    # "includeInternal":Z
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzb:Lcom/google/android/gms/measurement/zzd;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/zzd;->zzo(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getUserProperties(Z)Ljava/util/Map;
    .registers 3
    .param p1, "includeInternal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2
    nop

    .end local p0    # "this":Lcom/google/android/gms/measurement/AppMeasurement;
    .end local p1    # "includeInternal":Z
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzb:Lcom/google/android/gms/measurement/zzd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/zzd;->zzn(Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public logEventInternal(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "params"    # Landroid/os/Bundle;

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/measurement/AppMeasurement;
    .end local p1    # "origin":Ljava/lang/String;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "params":Landroid/os/Bundle;
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzb:Lcom/google/android/gms/measurement/zzd;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/zzd;->zzs(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public logEventInternalNoInterceptor(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .registers 12
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "params"    # Landroid/os/Bundle;
    .param p4, "timestampInMillis"    # J

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/measurement/AppMeasurement;
    .end local p1    # "origin":Ljava/lang/String;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "params":Landroid/os/Bundle;
    .end local p4    # "timestampInMillis":J
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzb:Lcom/google/android/gms/measurement/zzd;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/zzd;->zzt(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    return-void
.end method

.method public registerOnMeasurementEventListener(Lcom/google/android/gms/measurement/AppMeasurement$OnEventListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/google/android/gms/measurement/AppMeasurement$OnEventListener;

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/measurement/AppMeasurement;
    .end local p1    # "listener":Lcom/google/android/gms/measurement/AppMeasurement$OnEventListener;
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzb:Lcom/google/android/gms/measurement/zzd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/zzd;->zzu(Lcom/google/android/gms/measurement/internal/zzhf;)V

    return-void
.end method

.method public setConditionalUserProperty(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .registers 7
    .param p1, "conditionalUserProperty"    # Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/measurement/AppMeasurement;
    .end local p1    # "conditionalUserProperty":Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzb:Lcom/google/android/gms/measurement/zzd;

    new-instance v1, Landroid/os/Bundle;

    .line 2
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    if-eqz v2, :cond_14

    .line 3
    const-string v3, "app_id"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    iget-object v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    if-eqz v2, :cond_1d

    .line 4
    const-string v3, "origin"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    iget-object v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    if-eqz v2, :cond_26

    .line 5
    const-string v3, "name"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    iget-object v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    if-eqz v2, :cond_2d

    .line 6
    invoke-static {v1, v2}, Lcom/google/android/gms/measurement/internal/zzha;->zzb(Landroid/os/Bundle;Ljava/lang/Object;)V

    :cond_2d
    iget-object v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerEventName:Ljava/lang/String;

    if-eqz v2, :cond_37

    .line 7
    const-string/jumbo v3, "trigger_event_name"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_37
    iget-wide v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerTimeout:J

    .line 8
    const-string/jumbo v4, "trigger_timeout"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimedOutEventName:Ljava/lang/String;

    if-eqz v2, :cond_49

    .line 9
    const-string/jumbo v3, "timed_out_event_name"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_49
    iget-object v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimedOutEventParams:Landroid/os/Bundle;

    if-eqz v2, :cond_53

    .line 10
    const-string/jumbo v3, "timed_out_event_params"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_53
    iget-object v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredEventName:Ljava/lang/String;

    if-eqz v2, :cond_5d

    .line 11
    const-string/jumbo v3, "triggered_event_name"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5d
    iget-object v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredEventParams:Landroid/os/Bundle;

    if-eqz v2, :cond_67

    .line 12
    const-string/jumbo v3, "triggered_event_params"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_67
    iget-wide v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimeToLive:J

    .line 13
    const-string/jumbo v4, "time_to_live"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventName:Ljava/lang/String;

    if-eqz v2, :cond_78

    .line 14
    const-string v3, "expired_event_name"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_78
    iget-object v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventParams:Landroid/os/Bundle;

    if-eqz v2, :cond_81

    .line 15
    const-string v3, "expired_event_params"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_81
    iget-wide v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    .line 16
    const-string v4, "creation_timestamp"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-boolean v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mActive:Z

    .line 17
    const-string v3, "active"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-wide v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredTimestamp:J

    .line 18
    const-string/jumbo p1, "triggered_timestamp"

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 19
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/zzd;->zzv(Landroid/os/Bundle;)V

    return-void
.end method

.method public setEventInterceptor(Lcom/google/android/gms/measurement/AppMeasurement$EventInterceptor;)V
    .registers 3
    .param p1, "interceptor"    # Lcom/google/android/gms/measurement/AppMeasurement$EventInterceptor;

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/measurement/AppMeasurement;
    .end local p1    # "interceptor":Lcom/google/android/gms/measurement/AppMeasurement$EventInterceptor;
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzb:Lcom/google/android/gms/measurement/zzd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/zzd;->zzw(Lcom/google/android/gms/measurement/internal/zzhe;)V

    return-void
.end method

.method public unregisterOnMeasurementEventListener(Lcom/google/android/gms/measurement/AppMeasurement$OnEventListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/google/android/gms/measurement/AppMeasurement$OnEventListener;

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/measurement/AppMeasurement;
    .end local p1    # "listener":Lcom/google/android/gms/measurement/AppMeasurement$OnEventListener;
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzb:Lcom/google/android/gms/measurement/zzd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/zzd;->zzx(Lcom/google/android/gms/measurement/internal/zzhf;)V

    return-void
.end method
