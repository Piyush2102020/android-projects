.class public abstract Lcom/google/firebase/heartbeatinfo/SdkHeartBeatResult;
.super Ljava/lang/Object;
.source "SdkHeartBeatResult.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/firebase/heartbeatinfo/SdkHeartBeatResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;J)Lcom/google/firebase/heartbeatinfo/SdkHeartBeatResult;
    .registers 4
    .param p0, "sdkName"    # Ljava/lang/String;
    .param p1, "millis"    # J

    .line 27
    new-instance v0, Lcom/google/firebase/heartbeatinfo/AutoValue_SdkHeartBeatResult;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/heartbeatinfo/AutoValue_SdkHeartBeatResult;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/google/firebase/heartbeatinfo/SdkHeartBeatResult;)I
    .registers 6
    .param p1, "sdkHeartBeatResult"    # Lcom/google/firebase/heartbeatinfo/SdkHeartBeatResult;

    .line 32
    invoke-virtual {p0}, Lcom/google/firebase/heartbeatinfo/SdkHeartBeatResult;->getMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/firebase/heartbeatinfo/SdkHeartBeatResult;->getMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_e

    const/4 v0, -0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 20
    check-cast p1, Lcom/google/firebase/heartbeatinfo/SdkHeartBeatResult;

    invoke-virtual {p0, p1}, Lcom/google/firebase/heartbeatinfo/SdkHeartBeatResult;->compareTo(Lcom/google/firebase/heartbeatinfo/SdkHeartBeatResult;)I

    move-result p1

    return p1
.end method

.method public abstract getMillis()J
.end method

.method public abstract getSdkName()Ljava/lang/String;
.end method
