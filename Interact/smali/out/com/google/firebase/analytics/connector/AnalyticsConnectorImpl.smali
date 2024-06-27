.class public Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-api@@21.2.2"

# interfaces
.implements Lcom/google/firebase/analytics/connector/AnalyticsConnector;


# static fields
.field private static volatile zzc:Lcom/google/firebase/analytics/connector/AnalyticsConnector;


# instance fields
.field final zza:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

.field final zzb:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/api/AppMeasurementSdk;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;->zza:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;->zzb:Ljava/util/Map;

    return-void
.end method

.method public static getInstance()Lcom/google/firebase/analytics/connector/AnalyticsConnector;
    .registers 1

    .line 1
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/analytics/connector/AnalyticsConnector;
    .registers 2
    .param p0, "app"    # Lcom/google/firebase/FirebaseApp;

    .line 2
    nop

    .end local p0    # "app":Lcom/google/firebase/FirebaseApp;
    const-class v0, Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    invoke-virtual {p0, v0}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    return-object p0
.end method

.method public static getInstance(Lcom/google/firebase/FirebaseApp;Landroid/content/Context;Lcom/google/firebase/events/Subscriber;)Lcom/google/firebase/analytics/connector/AnalyticsConnector;
    .registers 8
    .param p0, "app"    # Lcom/google/firebase/FirebaseApp;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subscriber"    # Lcom/google/firebase/events/Subscriber;

    .line 3
    nop

    .end local p0    # "app":Lcom/google/firebase/FirebaseApp;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "subscriber":Lcom/google/firebase/events/Subscriber;
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;->zzc:Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    if-nez v0, :cond_4f

    const-class v0, Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;

    monitor-enter v0

    :try_start_18
    sget-object v1, Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;->zzc:Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    if-nez v1, :cond_4a

    new-instance v1, Landroid/os/Bundle;

    .line 7
    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 8
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->isDefaultApp()Z

    move-result v2

    if-eqz v2, :cond_3a

    const-class v2, Lcom/google/firebase/DataCollectionDefaultChange;

    sget-object v3, Lcom/google/firebase/analytics/connector/zza;->zza:Lcom/google/firebase/analytics/connector/zza;

    .line 9
    sget-object v4, Lcom/google/firebase/analytics/connector/zzb;->zza:Lcom/google/firebase/analytics/connector/zzb;

    invoke-interface {p2, v2, v3, v4}, Lcom/google/firebase/events/Subscriber;->subscribe(Ljava/lang/Class;Ljava/util/concurrent/Executor;Lcom/google/firebase/events/EventHandler;)V

    const-string p2, "dataCollectionDefaultEnabled"

    .line 10
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->isDataCollectionDefaultEnabled()Z

    move-result p0

    .line 11
    invoke-virtual {v1, p2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3a
    new-instance p0, Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;

    .line 12
    const/4 p2, 0x0

    invoke-static {p1, p2, p2, p2, v1}, Lcom/google/android/gms/internal/measurement/zzef;->zzg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/internal/measurement/zzef;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzef;->zzd()Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    move-result-object p1

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;-><init>(Lcom/google/android/gms/measurement/api/AppMeasurementSdk;)V

    sput-object p0, Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;->zzc:Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    .line 14
    :cond_4a
    monitor-exit v0

    goto :goto_4f

    :catchall_4c
    move-exception p0

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_18 .. :try_end_4e} :catchall_4c

    throw p0

    :cond_4f
    :goto_4f
    sget-object p0, Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;->zzc:Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/firebase/events/Event;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/events/Event;->getPayload()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/DataCollectionDefaultChange;

    iget-boolean p0, p0, Lcom/google/firebase/DataCollectionDefaultChange;->enabled:Z

    const-class v0, Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;

    monitor-enter v0

    :try_start_b
    sget-object v1, Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;->zzc:Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;

    iget-object v1, v1, Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;->zza:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    .line 3
    invoke-virtual {v1, p0}, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->zza(Z)V

    .line 4
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method static bridge synthetic zzb(Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;->zzc(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private final zzc(Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;->zzb:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;->zzb:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    return p1

    :cond_18
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "userPropertyName"    # Ljava/lang/String;
    .param p2, "clearEventName"    # Ljava/lang/String;
    .param p3, "clearEventParams"    # Landroid/os/Bundle;

    .line 1
    nop

    .end local p0    # "this":Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;
    .end local p1    # "userPropertyName":Ljava/lang/String;
    .end local p2    # "clearEventName":Ljava/lang/String;
    .end local p3    # "clearEventParams":Landroid/os/Bundle;
    if-eqz p2, :cond_a

    invoke-static {p2, p3}, Lcom/google/firebase/analytics/connector/internal/zzc;->zzb(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;->zza:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "propertyNamePrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .end local p0    # "this":Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;
    .end local p1    # "origin":Ljava/lang/String;
    .end local p2    # "propertyNamePrefix":Ljava/lang/String;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;->zza:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    .line 2
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_111

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 3
    sget v1, Lcom/google/firebase/analytics/connector/internal/zzc;->zza:I

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;

    invoke-direct {v1}, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;-><init>()V

    const-class v2, Ljava/lang/String;

    .line 6
    const-string v3, "origin"

    const/4 v4, 0x0

    invoke-static {p2, v3, v2, v4}, Lcom/google/android/gms/measurement/internal/zzha;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->origin:Ljava/lang/String;

    const-class v2, Ljava/lang/String;

    .line 8
    const-string v3, "name"

    invoke-static {p2, v3, v2, v4}, Lcom/google/android/gms/measurement/internal/zzha;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 9
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->name:Ljava/lang/String;

    const-class v2, Ljava/lang/Object;

    .line 10
    const-string/jumbo v3, "value"

    invoke-static {p2, v3, v2, v4}, Lcom/google/android/gms/measurement/internal/zzha;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->value:Ljava/lang/Object;

    const-class v2, Ljava/lang/String;

    .line 11
    const-string/jumbo v3, "trigger_event_name"

    invoke-static {p2, v3, v2, v4}, Lcom/google/android/gms/measurement/internal/zzha;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggerEventName:Ljava/lang/String;

    const-class v2, Ljava/lang/Long;

    .line 12
    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 13
    const-string/jumbo v5, "trigger_timeout"

    invoke-static {p2, v5, v2, v3}, Lcom/google/android/gms/measurement/internal/zzha;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, v1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggerTimeout:J

    const-class v2, Ljava/lang/String;

    .line 14
    const-string/jumbo v5, "timed_out_event_name"

    invoke-static {p2, v5, v2, v4}, Lcom/google/android/gms/measurement/internal/zzha;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->timedOutEventName:Ljava/lang/String;

    const-class v2, Landroid/os/Bundle;

    .line 15
    const-string/jumbo v5, "timed_out_event_params"

    invoke-static {p2, v5, v2, v4}, Lcom/google/android/gms/measurement/internal/zzha;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    iput-object v2, v1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->timedOutEventParams:Landroid/os/Bundle;

    const-class v2, Ljava/lang/String;

    .line 16
    const-string/jumbo v5, "triggered_event_name"

    invoke-static {p2, v5, v2, v4}, Lcom/google/android/gms/measurement/internal/zzha;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggeredEventName:Ljava/lang/String;

    const-class v2, Landroid/os/Bundle;

    .line 17
    const-string/jumbo v5, "triggered_event_params"

    invoke-static {p2, v5, v2, v4}, Lcom/google/android/gms/measurement/internal/zzha;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    iput-object v2, v1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggeredEventParams:Landroid/os/Bundle;

    const-class v2, Ljava/lang/Long;

    .line 18
    const-string/jumbo v5, "time_to_live"

    invoke-static {p2, v5, v2, v3}, Lcom/google/android/gms/measurement/internal/zzha;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, v1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->timeToLive:J

    const-class v2, Ljava/lang/String;

    .line 19
    const-string v5, "expired_event_name"

    invoke-static {p2, v5, v2, v4}, Lcom/google/android/gms/measurement/internal/zzha;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->expiredEventName:Ljava/lang/String;

    const-class v2, Landroid/os/Bundle;

    .line 20
    const-string v5, "expired_event_params"

    invoke-static {p2, v5, v2, v4}, Lcom/google/android/gms/measurement/internal/zzha;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    iput-object v2, v1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->expiredEventParams:Landroid/os/Bundle;

    const-class v2, Ljava/lang/Boolean;

    .line 21
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 22
    const-string v5, "active"

    invoke-static {p2, v5, v2, v4}, Lcom/google/android/gms/measurement/internal/zzha;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->active:Z

    const-class v2, Ljava/lang/Long;

    .line 23
    const-string v4, "creation_timestamp"

    invoke-static {p2, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/zzha;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->creationTimestamp:J

    const-class v2, Ljava/lang/Long;

    .line 24
    const-string/jumbo v4, "triggered_timestamp"

    invoke-static {p2, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/zzha;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggeredTimestamp:J

    .line 25
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    :cond_111
    return-object v0
.end method

.method public getMaxUserProperties(Ljava/lang/String;)I
    .registers 3
    .param p1, "origin"    # Ljava/lang/String;

    .line 1
    nop

    .end local p0    # "this":Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;
    .end local p1    # "origin":Ljava/lang/String;
    iget-object v0, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;->zza:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->getMaxUserProperties(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getUserProperties(Z)Ljava/util/Map;
    .registers 4
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

    .line 1
    nop

    .end local p0    # "this":Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;
    .end local p1    # "includeInternal":Z
    iget-object v0, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;->zza:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1}, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->getUserProperties(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "params"    # Landroid/os/Bundle;

    .line 1
    nop

    .end local p0    # "this":Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;
    .end local p1    # "origin":Ljava/lang/String;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "params":Landroid/os/Bundle;
    if-nez p3, :cond_8

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 2
    :cond_8
    invoke-static {p1}, Lcom/google/firebase/analytics/connector/internal/zzc;->zzd(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 3
    :cond_f
    invoke-static {p2, p3}, Lcom/google/firebase/analytics/connector/internal/zzc;->zzb(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_16

    return-void

    .line 4
    :cond_16
    invoke-static {p1, p2, p3}, Lcom/google/firebase/analytics/connector/internal/zzc;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 5
    const-string v0, "clx"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 6
    const-string v0, "_ae"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 7
    const-string v0, "_r"

    const-wide/16 v1, 0x1

    invoke-virtual {p3, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_33
    iget-object v0, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;->zza:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    .line 8
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_38
    return-void
.end method

.method public registerAnalyticsConnectorListener(Ljava/lang/String;Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorListener;)Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorHandle;
    .registers 6
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorListener;

    .line 1
    nop

    .end local p0    # "this":Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;
    .end local p1    # "origin":Ljava/lang/String;
    .end local p2    # "listener":Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorListener;
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/firebase/analytics/connector/internal/zzc;->zzd(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    .line 3
    :cond_c
    invoke-direct {p0, p1}, Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;->zzc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    return-object v1

    :cond_13
    iget-object v0, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;->zza:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    .line 4
    const-string v2, "fiam"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    new-instance v2, Lcom/google/firebase/analytics/connector/internal/zze;

    .line 5
    invoke-direct {v2, v0, p2}, Lcom/google/firebase/analytics/connector/internal/zze;-><init>(Lcom/google/android/gms/measurement/api/AppMeasurementSdk;Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorListener;)V

    goto :goto_33

    .line 9
    :cond_23
    nop

    .line 6
    const-string v2, "clx"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    new-instance v2, Lcom/google/firebase/analytics/connector/internal/zzg;

    .line 7
    invoke-direct {v2, v0, p2}, Lcom/google/firebase/analytics/connector/internal/zzg;-><init>(Lcom/google/android/gms/measurement/api/AppMeasurementSdk;Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorListener;)V

    goto :goto_33

    :cond_32
    move-object v2, v1

    .line 5
    :goto_33
    if-eqz v2, :cond_40

    iget-object p2, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;->zzb:Ljava/util/Map;

    .line 8
    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance p2, Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl$1;

    invoke-direct {p2, p0, p1}, Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl$1;-><init>(Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;Ljava/lang/String;)V

    return-object p2

    :cond_40
    return-object v1
.end method

.method public setConditionalUserProperty(Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;)V
    .registers 7
    .param p1, "conditionalUserProperty"    # Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;

    .line 1
    sget v0, Lcom/google/firebase/analytics/connector/internal/zzc;->zza:I

    .end local p0    # "this":Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;
    .end local p1    # "conditionalUserProperty":Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;
    if-nez p1, :cond_6

    goto/16 :goto_114

    .line 2
    :cond_6
    iget-object v0, p1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->origin:Ljava/lang/String;

    if-eqz v0, :cond_114

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_114

    .line 4
    iget-object v1, p1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->value:Ljava/lang/Object;

    if-eqz v1, :cond_1c

    iget-object v1, p1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->value:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzip;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_114

    .line 5
    :cond_1c
    invoke-static {v0}, Lcom/google/firebase/analytics/connector/internal/zzc;->zzd(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_114

    .line 6
    iget-object v1, p1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/firebase/analytics/connector/internal/zzc;->zze(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_114

    .line 7
    iget-object v1, p1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->expiredEventName:Ljava/lang/String;

    if-eqz v1, :cond_42

    .line 8
    iget-object v1, p1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->expiredEventName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->expiredEventParams:Landroid/os/Bundle;

    invoke-static {v1, v2}, Lcom/google/firebase/analytics/connector/internal/zzc;->zzb(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_114

    .line 9
    iget-object v1, p1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->expiredEventName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->expiredEventParams:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/google/firebase/analytics/connector/internal/zzc;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_114

    .line 10
    :cond_42
    iget-object v1, p1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggeredEventName:Ljava/lang/String;

    if-eqz v1, :cond_5a

    .line 11
    iget-object v1, p1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggeredEventName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggeredEventParams:Landroid/os/Bundle;

    invoke-static {v1, v2}, Lcom/google/firebase/analytics/connector/internal/zzc;->zzb(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_114

    .line 12
    iget-object v1, p1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggeredEventName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggeredEventParams:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/google/firebase/analytics/connector/internal/zzc;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_114

    .line 13
    :cond_5a
    iget-object v1, p1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->timedOutEventName:Ljava/lang/String;

    if-eqz v1, :cond_72

    .line 14
    iget-object v1, p1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->timedOutEventName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->timedOutEventParams:Landroid/os/Bundle;

    invoke-static {v1, v2}, Lcom/google/firebase/analytics/connector/internal/zzc;->zzb(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_114

    .line 15
    iget-object v1, p1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->timedOutEventName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->timedOutEventParams:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/google/firebase/analytics/connector/internal/zzc;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_114

    :cond_72
    iget-object v0, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;->zza:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    new-instance v1, Landroid/os/Bundle;

    .line 16
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 17
    iget-object v2, p1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->origin:Ljava/lang/String;

    if-eqz v2, :cond_84

    .line 18
    iget-object v2, p1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->origin:Ljava/lang/String;

    const-string v3, "origin"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_84
    iget-object v2, p1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->name:Ljava/lang/String;

    if-eqz v2, :cond_8f

    .line 20
    iget-object v2, p1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->name:Ljava/lang/String;

    const-string v3, "name"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_8f
    iget-object v2, p1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->value:Ljava/lang/Object;

    if-eqz v2, :cond_98

    .line 22
    iget-object v2, p1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->value:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/gms/measurement/internal/zzha;->zzb(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 23
    :cond_98
    iget-object v2, p1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggerEventName:Ljava/lang/String;

    if-eqz v2, :cond_a4

    .line 24
    iget-object v2, p1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggerEventName:Ljava/lang/String;

    const-string/jumbo v3, "trigger_event_name"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_a4
    iget-wide v2, p1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggerTimeout:J

    const-string/jumbo v4, "trigger_timeout"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 26
    iget-object v2, p1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->timedOutEventName:Ljava/lang/String;

    if-eqz v2, :cond_b8

    .line 27
    iget-object v2, p1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->timedOutEventName:Ljava/lang/String;

    const-string/jumbo v3, "timed_out_event_name"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_b8
    iget-object v2, p1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->timedOutEventParams:Landroid/os/Bundle;

    if-eqz v2, :cond_c4

    .line 29
    iget-object v2, p1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->timedOutEventParams:Landroid/os/Bundle;

    const-string/jumbo v3, "timed_out_event_params"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 30
    :cond_c4
    iget-object v2, p1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggeredEventName:Ljava/lang/String;

    if-eqz v2, :cond_d0

    .line 31
    iget-object v2, p1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggeredEventName:Ljava/lang/String;

    const-string/jumbo v3, "triggered_event_name"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_d0
    iget-object v2, p1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggeredEventParams:Landroid/os/Bundle;

    if-eqz v2, :cond_dc

    .line 33
    iget-object v2, p1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggeredEventParams:Landroid/os/Bundle;

    const-string/jumbo v3, "triggered_event_params"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 34
    :cond_dc
    iget-wide v2, p1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->timeToLive:J

    const-string/jumbo v4, "time_to_live"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 35
    iget-object v2, p1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->expiredEventName:Ljava/lang/String;

    if-eqz v2, :cond_ef

    .line 36
    iget-object v2, p1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->expiredEventName:Ljava/lang/String;

    const-string v3, "expired_event_name"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_ef
    iget-object v2, p1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->expiredEventParams:Landroid/os/Bundle;

    if-eqz v2, :cond_fa

    .line 38
    iget-object v2, p1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->expiredEventParams:Landroid/os/Bundle;

    const-string v3, "expired_event_params"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 39
    :cond_fa
    iget-wide v2, p1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->creationTimestamp:J

    const-string v4, "creation_timestamp"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 40
    iget-boolean v2, p1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->active:Z

    const-string v3, "active"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 41
    iget-wide v2, p1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggeredTimestamp:J

    const-string/jumbo p1, "triggered_timestamp"

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 42
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->setConditionalUserProperty(Landroid/os/Bundle;)V

    return-void

    .line 1
    :cond_114
    :goto_114
    return-void
.end method

.method public setUserProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 1
    nop

    .end local p0    # "this":Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;
    .end local p1    # "origin":Ljava/lang/String;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "value":Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/firebase/analytics/connector/internal/zzc;->zzd(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    return-void

    .line 2
    :cond_8
    invoke-static {p1, p2}, Lcom/google/firebase/analytics/connector/internal/zzc;->zze(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    iget-object v0, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;->zza:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->setUserProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
