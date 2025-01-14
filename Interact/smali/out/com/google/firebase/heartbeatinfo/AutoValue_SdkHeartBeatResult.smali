.class final Lcom/google/firebase/heartbeatinfo/AutoValue_SdkHeartBeatResult;
.super Lcom/google/firebase/heartbeatinfo/SdkHeartBeatResult;
.source "AutoValue_SdkHeartBeatResult.java"


# instance fields
.field private final millis:J

.field private final sdkName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;J)V
    .registers 6
    .param p1, "sdkName"    # Ljava/lang/String;
    .param p2, "millis"    # J

    .line 12
    invoke-direct {p0}, Lcom/google/firebase/heartbeatinfo/SdkHeartBeatResult;-><init>()V

    .line 13
    if-eqz p1, :cond_a

    .line 16
    iput-object p1, p0, Lcom/google/firebase/heartbeatinfo/AutoValue_SdkHeartBeatResult;->sdkName:Ljava/lang/String;

    .line 17
    iput-wide p2, p0, Lcom/google/firebase/heartbeatinfo/AutoValue_SdkHeartBeatResult;->millis:J

    .line 18
    return-void

    .line 14
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null sdkName"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 40
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 41
    return v0

    .line 43
    :cond_4
    instance-of v1, p1, Lcom/google/firebase/heartbeatinfo/SdkHeartBeatResult;

    const/4 v2, 0x0

    if-eqz v1, :cond_25

    .line 44
    move-object v1, p1

    check-cast v1, Lcom/google/firebase/heartbeatinfo/SdkHeartBeatResult;

    .line 45
    .local v1, "that":Lcom/google/firebase/heartbeatinfo/SdkHeartBeatResult;
    iget-object v3, p0, Lcom/google/firebase/heartbeatinfo/AutoValue_SdkHeartBeatResult;->sdkName:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/firebase/heartbeatinfo/SdkHeartBeatResult;->getSdkName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    iget-wide v3, p0, Lcom/google/firebase/heartbeatinfo/AutoValue_SdkHeartBeatResult;->millis:J

    .line 46
    invoke-virtual {v1}, Lcom/google/firebase/heartbeatinfo/SdkHeartBeatResult;->getMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_23

    goto :goto_24

    :cond_23
    move v0, v2

    .line 45
    :goto_24
    return v0

    .line 48
    .end local v1    # "that":Lcom/google/firebase/heartbeatinfo/SdkHeartBeatResult;
    :cond_25
    return v2
.end method

.method public getMillis()J
    .registers 3

    .line 27
    iget-wide v0, p0, Lcom/google/firebase/heartbeatinfo/AutoValue_SdkHeartBeatResult;->millis:J

    return-wide v0
.end method

.method public getSdkName()Ljava/lang/String;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/AutoValue_SdkHeartBeatResult;->sdkName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 6

    .line 53
    const/4 v0, 0x1

    .line 54
    .local v0, "h$":I
    const v1, 0xf4243

    mul-int/2addr v0, v1

    .line 55
    iget-object v2, p0, Lcom/google/firebase/heartbeatinfo/AutoValue_SdkHeartBeatResult;->sdkName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 56
    mul-int/2addr v0, v1

    .line 57
    iget-wide v1, p0, Lcom/google/firebase/heartbeatinfo/AutoValue_SdkHeartBeatResult;->millis:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    xor-int/2addr v0, v1

    .line 58
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SdkHeartBeatResult{sdkName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/heartbeatinfo/AutoValue_SdkHeartBeatResult;->sdkName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", millis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/firebase/heartbeatinfo/AutoValue_SdkHeartBeatResult;->millis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
