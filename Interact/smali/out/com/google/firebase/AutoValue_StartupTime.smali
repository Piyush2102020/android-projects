.class final Lcom/google/firebase/AutoValue_StartupTime;
.super Lcom/google/firebase/StartupTime;
.source "AutoValue_StartupTime.java"


# instance fields
.field private final elapsedRealtime:J

.field private final epochMillis:J

.field private final uptimeMillis:J


# direct methods
.method constructor <init>(JJJ)V
    .registers 7
    .param p1, "epochMillis"    # J
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptimeMillis"    # J

    .line 15
    invoke-direct {p0}, Lcom/google/firebase/StartupTime;-><init>()V

    .line 16
    iput-wide p1, p0, Lcom/google/firebase/AutoValue_StartupTime;->epochMillis:J

    .line 17
    iput-wide p3, p0, Lcom/google/firebase/AutoValue_StartupTime;->elapsedRealtime:J

    .line 18
    iput-wide p5, p0, Lcom/google/firebase/AutoValue_StartupTime;->uptimeMillis:J

    .line 19
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 47
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 48
    return v0

    .line 50
    :cond_4
    instance-of v1, p1, Lcom/google/firebase/StartupTime;

    const/4 v2, 0x0

    if-eqz v1, :cond_2d

    .line 51
    move-object v1, p1

    check-cast v1, Lcom/google/firebase/StartupTime;

    .line 52
    .local v1, "that":Lcom/google/firebase/StartupTime;
    iget-wide v3, p0, Lcom/google/firebase/AutoValue_StartupTime;->epochMillis:J

    invoke-virtual {v1}, Lcom/google/firebase/StartupTime;->getEpochMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_2b

    iget-wide v3, p0, Lcom/google/firebase/AutoValue_StartupTime;->elapsedRealtime:J

    .line 53
    invoke-virtual {v1}, Lcom/google/firebase/StartupTime;->getElapsedRealtime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_2b

    iget-wide v3, p0, Lcom/google/firebase/AutoValue_StartupTime;->uptimeMillis:J

    .line 54
    invoke-virtual {v1}, Lcom/google/firebase/StartupTime;->getUptimeMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_2b

    goto :goto_2c

    :cond_2b
    move v0, v2

    .line 52
    :goto_2c
    return v0

    .line 56
    .end local v1    # "that":Lcom/google/firebase/StartupTime;
    :cond_2d
    return v2
.end method

.method public getElapsedRealtime()J
    .registers 3

    .line 28
    iget-wide v0, p0, Lcom/google/firebase/AutoValue_StartupTime;->elapsedRealtime:J

    return-wide v0
.end method

.method public getEpochMillis()J
    .registers 3

    .line 23
    iget-wide v0, p0, Lcom/google/firebase/AutoValue_StartupTime;->epochMillis:J

    return-wide v0
.end method

.method public getUptimeMillis()J
    .registers 3

    .line 33
    iget-wide v0, p0, Lcom/google/firebase/AutoValue_StartupTime;->uptimeMillis:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 8

    .line 61
    const/4 v0, 0x1

    .line 62
    .local v0, "h$":I
    const v1, 0xf4243

    mul-int/2addr v0, v1

    .line 63
    iget-wide v2, p0, Lcom/google/firebase/AutoValue_StartupTime;->epochMillis:J

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    xor-int/2addr v0, v2

    .line 64
    mul-int/2addr v0, v1

    .line 65
    iget-wide v2, p0, Lcom/google/firebase/AutoValue_StartupTime;->elapsedRealtime:J

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    xor-int/2addr v0, v2

    .line 66
    mul-int/2addr v0, v1

    .line 67
    iget-wide v1, p0, Lcom/google/firebase/AutoValue_StartupTime;->uptimeMillis:J

    ushr-long v3, v1, v4

    xor-long/2addr v1, v3

    long-to-int v1, v1

    xor-int/2addr v0, v1

    .line 68
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StartupTime{epochMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/firebase/AutoValue_StartupTime;->epochMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", elapsedRealtime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/firebase/AutoValue_StartupTime;->elapsedRealtime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uptimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/firebase/AutoValue_StartupTime;->uptimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
