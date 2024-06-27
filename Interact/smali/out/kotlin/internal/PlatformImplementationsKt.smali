.class public final Lkotlin/internal/PlatformImplementationsKt;
.super Ljava/lang/Object;
.source "PlatformImplementations.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u001a \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H\u0001\u001a\"\u0010\u0008\u001a\u0002H\t\"\n\u0008\u0000\u0010\t\u0018\u0001*\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0083\u0008\u00a2\u0006\u0002\u0010\u000c\u001a\u0008\u0010\r\u001a\u00020\u0005H\u0002\"\u0010\u0010\u0000\u001a\u00020\u00018\u0000X\u0081\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "IMPLEMENTATIONS",
        "Lkotlin/internal/PlatformImplementations;",
        "apiVersionIsAtLeast",
        "",
        "major",
        "",
        "minor",
        "patch",
        "castToBaseType",
        "T",
        "",
        "instance",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "getJavaVersion",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final IMPLEMENTATIONS:Lkotlin/internal/PlatformImplementations;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, "$i$a$-run-PlatformImplementationsKt$IMPLEMENTATIONS$1":I
    invoke-static {}, Lkotlin/internal/PlatformImplementationsKt;->getJavaVersion()I

    move-result v1

    .line 52
    .local v1, "version":I
    const v2, 0x10008

    const/high16 v3, 0x10000

    const-string v4, ", base type classloader: "

    const-string v5, "Instance class was loaded from a different classloader: "

    const-string v6, "null cannot be cast to non-null type kotlin.internal.PlatformImplementations"

    const-string v7, "forName(\"kotlin.internal\u2026entations\").newInstance()"

    if-ge v1, v2, :cond_16

    if-ge v1, v3, :cond_bc

    .line 53
    :cond_16
    nop

    .line 54
    :try_start_17
    const-string v2, "kotlin.internal.jdk8.JDK8PlatformImplementations"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/ClassNotFoundException; {:try_start_17 .. :try_end_24} :catch_68

    if-eqz v2, :cond_2c

    :try_start_26
    check-cast v2, Lkotlin/internal/PlatformImplementations;

    goto/16 :goto_16d

    :catch_2a
    move-exception v8

    goto :goto_32

    :cond_2c
    new-instance v8, Ljava/lang/NullPointerException;

    invoke-direct {v8, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v0    # "$i$a$-run-PlatformImplementationsKt$IMPLEMENTATIONS$1":I
    .end local v1    # "version":I
    throw v8
    :try_end_32
    .catch Ljava/lang/ClassCastException; {:try_start_26 .. :try_end_32} :catch_2a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_26 .. :try_end_32} :catch_68

    .restart local v0    # "$i$a$-run-PlatformImplementationsKt$IMPLEMENTATIONS$1":I
    .restart local v1    # "version":I
    :goto_32
    :try_start_32
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-class v9, Lkotlin/internal/PlatformImplementations;

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_67

    new-instance v10, Ljava/lang/ClassNotFoundException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v8, Ljava/lang/Throwable;

    invoke-direct {v10, v2, v8}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "$i$a$-run-PlatformImplementationsKt$IMPLEMENTATIONS$1":I
    .end local v1    # "version":I
    throw v10

    :cond_67
    throw v8
    :try_end_68
    .catch Ljava/lang/ClassNotFoundException; {:try_start_32 .. :try_end_68} :catch_68

    .line 55
    .restart local v0    # "$i$a$-run-PlatformImplementationsKt$IMPLEMENTATIONS$1":I
    .restart local v1    # "version":I
    :catch_68
    move-exception v2

    .line 56
    nop

    .line 57
    :try_start_6a
    const-string v2, "kotlin.internal.JRE8PlatformImplementations"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_77
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6a .. :try_end_77} :catch_bb

    if-eqz v2, :cond_7f

    :try_start_79
    check-cast v2, Lkotlin/internal/PlatformImplementations;

    goto/16 :goto_16d

    :catch_7d
    move-exception v8

    goto :goto_85

    :cond_7f
    new-instance v8, Ljava/lang/NullPointerException;

    invoke-direct {v8, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v0    # "$i$a$-run-PlatformImplementationsKt$IMPLEMENTATIONS$1":I
    .end local v1    # "version":I
    throw v8
    :try_end_85
    .catch Ljava/lang/ClassCastException; {:try_start_79 .. :try_end_85} :catch_7d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_79 .. :try_end_85} :catch_bb

    .restart local v0    # "$i$a$-run-PlatformImplementationsKt$IMPLEMENTATIONS$1":I
    .restart local v1    # "version":I
    :goto_85
    :try_start_85
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-class v9, Lkotlin/internal/PlatformImplementations;

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_ba

    new-instance v10, Ljava/lang/ClassNotFoundException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v8, Ljava/lang/Throwable;

    invoke-direct {v10, v2, v8}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "$i$a$-run-PlatformImplementationsKt$IMPLEMENTATIONS$1":I
    .end local v1    # "version":I
    throw v10

    :cond_ba
    throw v8
    :try_end_bb
    .catch Ljava/lang/ClassNotFoundException; {:try_start_85 .. :try_end_bb} :catch_bb

    .line 58
    .restart local v0    # "$i$a$-run-PlatformImplementationsKt$IMPLEMENTATIONS$1":I
    .restart local v1    # "version":I
    :catch_bb
    move-exception v2

    .line 61
    :cond_bc
    const v2, 0x10007

    if-ge v1, v2, :cond_c3

    if-ge v1, v3, :cond_168

    .line 62
    :cond_c3
    nop

    .line 63
    :try_start_c4
    const-string v2, "kotlin.internal.jdk7.JDK7PlatformImplementations"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_d1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c4 .. :try_end_d1} :catch_115

    if-eqz v2, :cond_d9

    :try_start_d3
    check-cast v2, Lkotlin/internal/PlatformImplementations;

    goto/16 :goto_16d

    :catch_d7
    move-exception v3

    goto :goto_df

    :cond_d9
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v0    # "$i$a$-run-PlatformImplementationsKt$IMPLEMENTATIONS$1":I
    .end local v1    # "version":I
    throw v3
    :try_end_df
    .catch Ljava/lang/ClassCastException; {:try_start_d3 .. :try_end_df} :catch_d7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d3 .. :try_end_df} :catch_115

    .restart local v0    # "$i$a$-run-PlatformImplementationsKt$IMPLEMENTATIONS$1":I
    .restart local v1    # "version":I
    :goto_df
    :try_start_df
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-class v8, Lkotlin/internal/PlatformImplementations;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_114

    new-instance v9, Ljava/lang/ClassNotFoundException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v3, Ljava/lang/Throwable;

    invoke-direct {v9, v2, v3}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "$i$a$-run-PlatformImplementationsKt$IMPLEMENTATIONS$1":I
    .end local v1    # "version":I
    throw v9

    :cond_114
    throw v3
    :try_end_115
    .catch Ljava/lang/ClassNotFoundException; {:try_start_df .. :try_end_115} :catch_115

    .line 64
    .restart local v0    # "$i$a$-run-PlatformImplementationsKt$IMPLEMENTATIONS$1":I
    .restart local v1    # "version":I
    :catch_115
    move-exception v2

    .line 65
    nop

    .line 66
    :try_start_117
    const-string v2, "kotlin.internal.JRE7PlatformImplementations"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_124
    .catch Ljava/lang/ClassNotFoundException; {:try_start_117 .. :try_end_124} :catch_167

    if-eqz v2, :cond_12b

    :try_start_126
    check-cast v2, Lkotlin/internal/PlatformImplementations;

    goto :goto_16d

    :catch_129
    move-exception v3

    goto :goto_131

    :cond_12b
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v0    # "$i$a$-run-PlatformImplementationsKt$IMPLEMENTATIONS$1":I
    .end local v1    # "version":I
    throw v3
    :try_end_131
    .catch Ljava/lang/ClassCastException; {:try_start_126 .. :try_end_131} :catch_129
    .catch Ljava/lang/ClassNotFoundException; {:try_start_126 .. :try_end_131} :catch_167

    .restart local v0    # "$i$a$-run-PlatformImplementationsKt$IMPLEMENTATIONS$1":I
    .restart local v1    # "version":I
    :goto_131
    :try_start_131
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-class v6, Lkotlin/internal/PlatformImplementations;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_166

    new-instance v7, Ljava/lang/ClassNotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v3, Ljava/lang/Throwable;

    invoke-direct {v7, v2, v3}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "$i$a$-run-PlatformImplementationsKt$IMPLEMENTATIONS$1":I
    .end local v1    # "version":I
    throw v7

    :cond_166
    throw v3
    :try_end_167
    .catch Ljava/lang/ClassNotFoundException; {:try_start_131 .. :try_end_167} :catch_167

    .line 67
    .restart local v0    # "$i$a$-run-PlatformImplementationsKt$IMPLEMENTATIONS$1":I
    .restart local v1    # "version":I
    :catch_167
    move-exception v2

    .line 70
    :cond_168
    new-instance v2, Lkotlin/internal/PlatformImplementations;

    invoke-direct {v2}, Lkotlin/internal/PlatformImplementations;-><init>()V

    .line 50
    .end local v0    # "$i$a$-run-PlatformImplementationsKt$IMPLEMENTATIONS$1":I
    .end local v1    # "version":I
    :goto_16d
    sput-object v2, Lkotlin/internal/PlatformImplementationsKt;->IMPLEMENTATIONS:Lkotlin/internal/PlatformImplementations;

    return-void
.end method

.method public static final apiVersionIsAtLeast(III)Z
    .registers 4
    .param p0, "major"    # I
    .param p1, "minor"    # I
    .param p2, "patch"    # I

    .line 117
    sget-object v0, Lkotlin/KotlinVersion;->CURRENT:Lkotlin/KotlinVersion;

    invoke-virtual {v0, p0, p1, p2}, Lkotlin/KotlinVersion;->isAtLeast(III)Z

    move-result v0

    return v0
.end method

.method private static final synthetic castToBaseType(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p0, "instance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 75
    const-string v0, "T"

    .line 76
    const/4 v1, 0x1

    :try_start_3
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    move-object v1, p0

    check-cast v1, Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_9} :catch_a

    return-object v1

    .line 77
    :catch_a
    move-exception v1

    .line 78
    .local v1, "e":Ljava/lang/ClassCastException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .local v2, "instanceCL":Ljava/lang/ClassLoader;
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/Class;

    .line 79
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 80
    .local v0, "baseTypeCL":Ljava/lang/ClassLoader;
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    .line 81
    new-instance v3, Ljava/lang/ClassNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Instance class was loaded from a different classloader: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", base type classloader: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    check-cast v5, Ljava/lang/Throwable;

    invoke-direct {v3, v4, v5}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 83
    :cond_4c
    throw v1
.end method

.method private static final getJavaVersion()I
    .registers 11

    .line 88
    const v0, 0x10006

    .line 89
    .local v0, "default":I
    const-string v1, "java.specification.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    return v0

    .line 90
    .local v1, "version":Ljava/lang/String;
    :cond_c
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    const/16 v3, 0x2e

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v2

    .line 91
    .local v2, "firstDot":I
    const/high16 v3, 0x10000

    if-gez v2, :cond_26

    .line 92
    :try_start_1d
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_21} :catch_23

    mul-int/2addr v4, v3

    goto :goto_25

    :catch_23
    move-exception v3

    move v4, v0

    :goto_25
    return v4

    .line 94
    :cond_26
    move-object v5, v1

    check-cast v5, Ljava/lang/CharSequence;

    const/16 v6, 0x2e

    add-int/lit8 v7, v2, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v4

    .line 95
    .local v4, "secondDot":I
    if-gez v4, :cond_3a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    .line 97
    :cond_3a
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .local v5, "firstPart":Ljava/lang/String;
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v7

    .line 99
    .local v6, "secondPart":Ljava/lang/String;
    nop

    .line 100
    :try_start_50
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    mul-int/2addr v7, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_59
    .catch Ljava/lang/NumberFormatException; {:try_start_50 .. :try_end_59} :catch_5b

    add-int/2addr v7, v3

    goto :goto_5d

    .line 101
    :catch_5b
    move-exception v3

    .line 102
    .local v3, "e":Ljava/lang/NumberFormatException;
    move v7, v0

    .line 99
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :goto_5d
    return v7
.end method
