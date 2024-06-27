.class public final Lcom/google/android/material/color/utilities/DislikeAnalyzer;
.super Ljava/lang/Object;
.source "DislikeAnalyzer.java"


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static fixIfDisliked(Lcom/google/android/material/color/utilities/Hct;)Lcom/google/android/material/color/utilities/Hct;
    .registers 8
    .param p0, "hct"    # Lcom/google/android/material/color/utilities/Hct;

    .line 56
    invoke-static {p0}, Lcom/google/android/material/color/utilities/DislikeAnalyzer;->isDisliked(Lcom/google/android/material/color/utilities/Hct;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 57
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    move-result-wide v1

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v3

    const-wide v5, 0x4051800000000000L    # 70.0

    invoke-static/range {v1 .. v6}, Lcom/google/android/material/color/utilities/Hct;->from(DDD)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v0

    return-object v0

    .line 60
    :cond_18
    return-object p0
.end method

.method public static isDisliked(Lcom/google/android/material/color/utilities/Hct;)Z
    .registers 9
    .param p0, "hct"    # Lcom/google/android/material/color/utilities/Hct;

    .line 47
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x4056800000000000L    # 90.0

    cmpl-double v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_28

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-double v3, v3

    const-wide v5, 0x405bc00000000000L    # 111.0

    cmpg-double v0, v3, v5

    if-gtz v0, :cond_28

    move v0, v1

    goto :goto_29

    :cond_28
    move v0, v2

    .line 48
    .local v0, "huePasses":Z
    :goto_29
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-double v3, v3

    const-wide/high16 v5, 0x4030000000000000L    # 16.0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_3a

    move v3, v1

    goto :goto_3b

    :cond_3a
    move v3, v2

    .line 49
    .local v3, "chromaPasses":Z
    :goto_3b
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->getTone()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    const-wide v6, 0x4051800000000000L    # 70.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_4f

    move v4, v1

    goto :goto_50

    :cond_4f
    move v4, v2

    .line 51
    .local v4, "tonePasses":Z
    :goto_50
    if-eqz v0, :cond_57

    if-eqz v3, :cond_57

    if-eqz v4, :cond_57

    goto :goto_58

    :cond_57
    move v1, v2

    :goto_58
    return v1
.end method
