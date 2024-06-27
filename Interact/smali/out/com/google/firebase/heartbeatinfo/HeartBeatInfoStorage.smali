.class Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;
.super Ljava/lang/Object;
.source "HeartBeatInfoStorage.java"


# static fields
.field private static final GLOBAL:Ljava/lang/String; = "fire-global"

.field private static final HEARTBEAT_PREFERENCES_NAME:Ljava/lang/String; = "FirebaseHeartBeat"

.field private static final HEART_BEAT_COUNT_LIMIT:I = 0x1e

.field private static final HEART_BEAT_COUNT_TAG:Ljava/lang/String; = "fire-count"

.field private static final LAST_STORED_DATE:Ljava/lang/String; = "last-used-date"

.field private static final PREFERENCES_NAME:Ljava/lang/String; = "FirebaseAppHeartBeat"

.field private static instance:Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;


# instance fields
.field private final firebaseSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->instance:Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "persistenceKey"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FirebaseHeartBeat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->firebaseSharedPreferences:Landroid/content/SharedPreferences;

    .line 62
    return-void
.end method

.method constructor <init>(Landroid/content/SharedPreferences;)V
    .registers 2
    .param p1, "firebaseSharedPreferences"    # Landroid/content/SharedPreferences;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->firebaseSharedPreferences:Landroid/content/SharedPreferences;

    .line 68
    return-void
.end method

.method private declared-synchronized cleanUpStoredHeartBeats()V
    .registers 11

    monitor-enter p0

    .line 192
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->firebaseSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "fire-count"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 193
    .local v0, "heartBeatCount":J
    const/4 v2, 0x0

    .line 194
    .local v2, "lowestDate":Ljava/lang/String;
    const-string v3, ""

    .line 195
    .local v3, "userAgentString":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->firebaseSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_58

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 196
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/util/Set;

    if-eqz v6, :cond_57

    .line 197
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 198
    .local v6, "dateSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_57

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 199
    .local v8, "date":Ljava/lang/String;
    if-eqz v2, :cond_4e

    invoke-virtual {v2, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_56

    .line 200
    .end local p0    # "this":Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;
    :cond_4e
    move-object v2, v8

    .line 201
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object v3, v9

    .line 203
    .end local v8    # "date":Ljava/lang/String;
    :cond_56
    goto :goto_3a

    .line 205
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v6    # "dateSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_57
    goto :goto_1c

    .line 206
    :cond_58
    new-instance v4, Ljava/util/HashSet;

    iget-object v5, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->firebaseSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 208
    invoke-interface {v5, v3, v6}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 209
    .local v4, "userAgentDateSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 210
    iget-object v5, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->firebaseSharedPreferences:Landroid/content/SharedPreferences;

    .line 211
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 212
    invoke-interface {v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "fire-count"

    const-wide/16 v7, 0x1

    sub-long v7, v0, v7

    .line 213
    invoke-interface {v5, v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 214
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_82
    .catchall {:try_start_1 .. :try_end_82} :catchall_84

    .line 215
    monitor-exit p0

    return-void

    .line 191
    .end local v0    # "heartBeatCount":J
    .end local v2    # "lowestDate":Ljava/lang/String;
    .end local v3    # "userAgentString":Ljava/lang/String;
    .end local v4    # "userAgentDateSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_84
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getFormattedDate(J)Ljava/lang/String;
    .registers 6
    .param p1, "millis"    # J

    monitor-enter p0

    .line 147
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_22

    .line 148
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->toInstant()Ljava/time/Instant;

    move-result-object v0

    .line 149
    .local v0, "instant":Ljava/time/Instant;
    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-virtual {v0, v1}, Ljava/time/Instant;->atOffset(Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/OffsetDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v1

    .line 150
    .local v1, "ldt":Ljava/time/LocalDateTime;
    sget-object v2, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v1, v2}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v2
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_37

    monitor-exit p0

    return-object v2

    .line 152
    .end local v0    # "instant":Ljava/time/Instant;
    .end local v1    # "ldt":Ljava/time/LocalDateTime;
    .end local p0    # "this":Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;
    :cond_22
    :try_start_22
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0
    :try_end_35
    .catchall {:try_start_22 .. :try_end_35} :catchall_37

    monitor-exit p0

    return-object v0

    .line 146
    .end local p1    # "millis":J
    :catchall_37
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized getStoredUserAgentString(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "dateString"    # Ljava/lang/String;

    monitor-enter p0

    .line 101
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->firebaseSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 102
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/util/Set;

    if-eqz v2, :cond_48

    .line 103
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 104
    .local v2, "dateSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 105
    .local v4, "date":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 106
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_4c

    monitor-exit p0

    return-object v0

    .line 108
    .end local v4    # "date":Ljava/lang/String;
    .end local p0    # "this":Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;
    :cond_47
    goto :goto_2d

    .line 110
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v2    # "dateSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_48
    goto :goto_f

    .line 111
    :cond_49
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 100
    .end local p1    # "dateString":Ljava/lang/String;
    :catchall_4c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized removeStoredDate(Ljava/lang/String;)V
    .registers 6
    .param p1, "dateString"    # Ljava/lang/String;

    monitor-enter p0

    .line 125
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->getStoredUserAgentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_3f

    .line 126
    .local v0, "userAgentString":Ljava/lang/String;
    if-nez v0, :cond_9

    .line 127
    monitor-exit p0

    return-void

    .line 129
    :cond_9
    :try_start_9
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->firebaseSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 131
    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 132
    .local v1, "userAgentDateSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 133
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 134
    iget-object v2, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->firebaseSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3d

    .line 136
    .end local p0    # "this":Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;
    :cond_30
    iget-object v2, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->firebaseSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3d
    .catchall {:try_start_9 .. :try_end_3d} :catchall_3f

    .line 138
    :goto_3d
    monitor-exit p0

    return-void

    .line 124
    .end local v0    # "userAgentString":Ljava/lang/String;
    .end local v1    # "userAgentDateSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local p1    # "dateString":Ljava/lang/String;
    :catchall_3f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized updateStoredUserAgent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "userAgent"    # Ljava/lang/String;
    .param p2, "dateString"    # Ljava/lang/String;

    monitor-enter p0

    .line 115
    :try_start_1
    invoke-direct {p0, p2}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->removeStoredDate(Ljava/lang/String;)V

    .line 116
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->firebaseSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 118
    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 119
    .local v0, "userAgentDateSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v1, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->firebaseSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    .line 121
    monitor-exit p0

    return-void

    .line 114
    .end local v0    # "userAgentDateSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;
    .end local p1    # "userAgent":Ljava/lang/String;
    .end local p2    # "dateString":Ljava/lang/String;
    :catchall_26
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method declared-synchronized deleteAllHeartBeats()V
    .registers 5

    monitor-enter p0

    .line 77
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->firebaseSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 78
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->firebaseSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 79
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/util/Set;

    if-eqz v3, :cond_32

    .line 80
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 82
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local p0    # "this":Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;
    :cond_32
    goto :goto_15

    .line 83
    :cond_33
    const-string v1, "fire-count"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 84
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_3d

    .line 85
    monitor-exit p0

    return-void

    .line 76
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getAllHeartBeats()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/heartbeatinfo/HeartBeatResult;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 88
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v0, "heartBeatResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/firebase/heartbeatinfo/HeartBeatResult;>;"
    iget-object v1, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->firebaseSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 90
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/util/Set;

    if-eqz v3, :cond_41

    .line 91
    nop

    .line 93
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 92
    invoke-static {v3, v4}, Lcom/google/firebase/heartbeatinfo/HeartBeatResult;->create(Ljava/lang/String;Ljava/util/List;)Lcom/google/firebase/heartbeatinfo/HeartBeatResult;

    move-result-object v3

    .line 91
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local p0    # "this":Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;
    :cond_41
    goto :goto_14

    .line 96
    :cond_42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->updateGlobalHeartBeat(J)V
    :try_end_49
    .catchall {:try_start_1 .. :try_end_49} :catchall_4b

    .line 97
    monitor-exit p0

    return-object v0

    .line 87
    .end local v0    # "heartBeatResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/firebase/heartbeatinfo/HeartBeatResult;>;"
    :catchall_4b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getHeartBeatCount()I
    .registers 5

    .line 73
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->firebaseSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "fire-count"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method declared-synchronized getLastGlobalHeartBeat()J
    .registers 5

    monitor-enter p0

    .line 218
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->firebaseSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "fire-global"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-wide v0

    .line 218
    .end local p0    # "this":Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isSameDateUtc(JJ)Z
    .registers 7
    .param p1, "base"    # J
    .param p3, "target"    # J

    monitor-enter p0

    .line 226
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->getFormattedDate(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, p4}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->getFormattedDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return v0

    .line 226
    .end local p0    # "this":Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;
    .end local p1    # "base":J
    .end local p3    # "target":J
    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized postHeartBeatCleanUp()V
    .registers 4

    monitor-enter p0

    .line 141
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->getFormattedDate(J)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "dateString":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->firebaseSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last-used-date"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 143
    invoke-direct {p0, v0}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->removeStoredDate(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 144
    monitor-exit p0

    return-void

    .line 140
    .end local v0    # "dateString":Ljava/lang/String;
    .end local p0    # "this":Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized shouldSendGlobalHeartBeat(J)Z
    .registers 4
    .param p1, "millis"    # J

    monitor-enter p0

    .line 252
    :try_start_1
    const-string v0, "fire-global"

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->shouldSendSdkHeartBeat(Ljava/lang/String;J)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 252
    .end local p0    # "this":Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;
    .end local p1    # "millis":J
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized shouldSendSdkHeartBeat(Ljava/lang/String;J)Z
    .registers 8
    .param p1, "heartBeatTag"    # Ljava/lang/String;
    .param p2, "millis"    # J

    monitor-enter p0

    .line 235
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->firebaseSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2a

    .line 236
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->firebaseSharedPreferences:Landroid/content/SharedPreferences;

    const-wide/16 v2, -0x1

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, p2, p3}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->isSameDateUtc(JJ)Z

    move-result v0

    if-nez v0, :cond_27

    .line 237
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->firebaseSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_39

    .line 238
    monitor-exit p0

    return v1

    .line 240
    .end local p0    # "this":Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;
    :cond_27
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 242
    :cond_2a
    :try_start_2a
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->firebaseSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_39

    .line 243
    monitor-exit p0

    return v1

    .line 234
    .end local p1    # "heartBeatTag":Ljava/lang/String;
    .end local p2    # "millis":J
    :catchall_39
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized storeHeartBeat(JLjava/lang/String;)V
    .registers 16
    .param p1, "millis"    # J
    .param p3, "userAgentString"    # Ljava/lang/String;

    monitor-enter p0

    .line 157
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->getFormattedDate(J)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "dateString":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->firebaseSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "last-used-date"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "lastDateString":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 160
    invoke-direct {p0, v0}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->getStoredUserAgentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_79

    .line 161
    .local v2, "storedUserAgentString":Ljava/lang/String;
    if-nez v2, :cond_1d

    .line 163
    monitor-exit p0

    return-void

    .line 165
    :cond_1d
    :try_start_1d
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_79

    if-eqz v3, :cond_25

    .line 167
    monitor-exit p0

    return-void

    .line 169
    :cond_25
    :try_start_25
    invoke-direct {p0, p3, v0}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->updateStoredUserAgent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_79

    .line 170
    monitor-exit p0

    return-void

    .line 173
    .end local v2    # "storedUserAgentString":Ljava/lang/String;
    .end local p0    # "this":Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;
    :cond_2a
    :try_start_2a
    iget-object v2, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->firebaseSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "fire-count"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 174
    .local v2, "heartBeatCount":J
    const-wide/16 v6, 0x1

    add-long v8, v2, v6

    const-wide/16 v10, 0x1e

    cmp-long v8, v8, v10

    if-nez v8, :cond_4a

    .line 175
    invoke-direct {p0}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->cleanUpStoredHeartBeats()V

    .line 176
    iget-object v8, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->firebaseSharedPreferences:Landroid/content/SharedPreferences;

    const-string v9, "fire-count"

    invoke-interface {v8, v9, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    move-wide v2, v4

    .line 178
    :cond_4a
    new-instance v4, Ljava/util/HashSet;

    iget-object v5, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->firebaseSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 180
    invoke-interface {v5, p3, v8}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 181
    .local v4, "userAgentDateSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 182
    add-long/2addr v2, v6

    .line 183
    iget-object v5, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->firebaseSharedPreferences:Landroid/content/SharedPreferences;

    .line 184
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 185
    invoke-interface {v5, p3, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "fire-count"

    .line 186
    invoke-interface {v5, v6, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "last-used-date"

    .line 187
    invoke-interface {v5, v6, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 188
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_77
    .catchall {:try_start_2a .. :try_end_77} :catchall_79

    .line 189
    monitor-exit p0

    return-void

    .line 156
    .end local v0    # "dateString":Ljava/lang/String;
    .end local v1    # "lastDateString":Ljava/lang/String;
    .end local v2    # "heartBeatCount":J
    .end local v4    # "userAgentDateSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local p1    # "millis":J
    .end local p3    # "userAgentString":Ljava/lang/String;
    :catchall_79
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized updateGlobalHeartBeat(J)V
    .registers 5
    .param p1, "millis"    # J

    monitor-enter p0

    .line 222
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->firebaseSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "fire-global"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 223
    monitor-exit p0

    return-void

    .line 221
    .end local p0    # "this":Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;
    .end local p1    # "millis":J
    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method
