.class public final Landroidx/core/os/LocaleListCompat;
.super Ljava/lang/Object;
.source "LocaleListCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/os/LocaleListCompat$Api24Impl;,
        Landroidx/core/os/LocaleListCompat$Api21Impl;
    }
.end annotation


# static fields
.field private static final sEmptyLocaleList:Landroidx/core/os/LocaleListCompat;


# instance fields
.field private final mImpl:Landroidx/core/os/LocaleListInterface;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Locale;

    invoke-static {v0}, Landroidx/core/os/LocaleListCompat;->create([Ljava/util/Locale;)Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    sput-object v0, Landroidx/core/os/LocaleListCompat;->sEmptyLocaleList:Landroidx/core/os/LocaleListCompat;

    return-void
.end method

.method private constructor <init>(Landroidx/core/os/LocaleListInterface;)V
    .registers 2
    .param p1, "impl"    # Landroidx/core/os/LocaleListInterface;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Landroidx/core/os/LocaleListCompat;->mImpl:Landroidx/core/os/LocaleListInterface;

    .line 43
    return-void
.end method

.method public static varargs create([Ljava/util/Locale;)Landroidx/core/os/LocaleListCompat;
    .registers 2
    .param p0, "localeList"    # [Ljava/util/Locale;

    .line 76
    nop

    .line 77
    invoke-static {p0}, Landroidx/core/os/LocaleListCompat$Api24Impl;->createLocaleList([Ljava/util/Locale;)Landroid/os/LocaleList;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/os/LocaleListCompat;->wrap(Landroid/os/LocaleList;)Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    return-object v0
.end method

.method static forLanguageTagCompat(Ljava/lang/String;)Ljava/util/Locale;
    .registers 7
    .param p0, "str"    # Ljava/lang/String;

    .line 178
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_38

    .line 179
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "args":[Ljava/lang/String;
    array-length v1, v0

    if-le v1, v3, :cond_1f

    .line 181
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v4

    aget-object v4, v0, v5

    aget-object v3, v0, v3

    invoke-direct {v1, v2, v4, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 182
    :cond_1f
    array-length v1, v0

    if-le v1, v5, :cond_2c

    .line 183
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v4

    aget-object v3, v0, v5

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 184
    :cond_2c
    array-length v1, v0

    if-ne v1, v5, :cond_37

    .line 185
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v4

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 187
    .end local v0    # "args":[Ljava/lang/String;
    :cond_37
    goto :goto_6c

    :cond_38
    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 188
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 189
    .restart local v0    # "args":[Ljava/lang/String;
    array-length v1, v0

    if-le v1, v3, :cond_53

    .line 190
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v4

    aget-object v4, v0, v5

    aget-object v3, v0, v3

    invoke-direct {v1, v2, v4, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 191
    :cond_53
    array-length v1, v0

    if-le v1, v5, :cond_60

    .line 192
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v4

    aget-object v3, v0, v5

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 193
    :cond_60
    array-length v1, v0

    if-ne v1, v5, :cond_6b

    .line 194
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v4

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 196
    .end local v0    # "args":[Ljava/lang/String;
    :cond_6b
    nop

    .line 200
    :goto_6c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not parse language tag: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_8b
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static forLanguageTags(Ljava/lang/String;)Landroidx/core/os/LocaleListCompat;
    .registers 5
    .param p0, "list"    # Ljava/lang/String;

    .line 162
    if-eqz p0, :cond_28

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_28

    .line 165
    :cond_9
    const-string v0, ","

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "tags":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [Ljava/util/Locale;

    .line 167
    .local v1, "localeArray":[Ljava/util/Locale;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    array-length v3, v1

    if-ge v2, v3, :cond_23

    .line 168
    nop

    .line 169
    aget-object v3, v0, v2

    invoke-static {v3}, Landroidx/core/os/LocaleListCompat$Api21Impl;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    .line 170
    aput-object v3, v1, v2

    .line 167
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 172
    .end local v2    # "i":I
    :cond_23
    invoke-static {v1}, Landroidx/core/os/LocaleListCompat;->create([Ljava/util/Locale;)Landroidx/core/os/LocaleListCompat;

    move-result-object v2

    return-object v2

    .line 163
    .end local v0    # "tags":[Ljava/lang/String;
    .end local v1    # "localeArray":[Ljava/util/Locale;
    :cond_28
    :goto_28
    invoke-static {}, Landroidx/core/os/LocaleListCompat;->getEmptyLocaleList()Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    return-object v0
.end method

.method public static getAdjustedDefault()Landroidx/core/os/LocaleListCompat;
    .registers 1

    .line 209
    nop

    .line 210
    invoke-static {}, Landroidx/core/os/LocaleListCompat$Api24Impl;->getAdjustedDefault()Landroid/os/LocaleList;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/os/LocaleListCompat;->wrap(Landroid/os/LocaleList;)Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    return-object v0
.end method

.method public static getDefault()Landroidx/core/os/LocaleListCompat;
    .registers 1

    .line 229
    nop

    .line 230
    invoke-static {}, Landroidx/core/os/LocaleListCompat$Api24Impl;->getDefault()Landroid/os/LocaleList;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/os/LocaleListCompat;->wrap(Landroid/os/LocaleList;)Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    return-object v0
.end method

.method public static getEmptyLocaleList()Landroidx/core/os/LocaleListCompat;
    .registers 1

    .line 149
    sget-object v0, Landroidx/core/os/LocaleListCompat;->sEmptyLocaleList:Landroidx/core/os/LocaleListCompat;

    return-object v0
.end method

.method public static matchesLanguageAndScript(Ljava/util/Locale;Ljava/util/Locale;)Z
    .registers 3
    .param p0, "supported"    # Ljava/util/Locale;
    .param p1, "desired"    # Ljava/util/Locale;

    .line 252
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 253
    invoke-static {p0, p1}, Landroid/os/LocaleList;->matchesLanguageAndScript(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v0

    return v0

    .line 254
    :cond_b
    nop

    .line 255
    invoke-static {p0, p1}, Landroidx/core/os/LocaleListCompat$Api21Impl;->matchesLanguageAndScript(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v0

    return v0
.end method

.method public static wrap(Landroid/os/LocaleList;)Landroidx/core/os/LocaleListCompat;
    .registers 3
    .param p0, "localeList"    # Landroid/os/LocaleList;

    .line 58
    new-instance v0, Landroidx/core/os/LocaleListCompat;

    new-instance v1, Landroidx/core/os/LocaleListPlatformWrapper;

    invoke-direct {v1, p0}, Landroidx/core/os/LocaleListPlatformWrapper;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Landroidx/core/os/LocaleListCompat;-><init>(Landroidx/core/os/LocaleListInterface;)V

    return-object v0
.end method

.method public static wrap(Ljava/lang/Object;)Landroidx/core/os/LocaleListCompat;
    .registers 2
    .param p0, "localeList"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 49
    move-object v0, p0

    check-cast v0, Landroid/os/LocaleList;

    invoke-static {v0}, Landroidx/core/os/LocaleListCompat;->wrap(Landroid/os/LocaleList;)Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 319
    instance-of v0, p1, Landroidx/core/os/LocaleListCompat;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroidx/core/os/LocaleListCompat;->mImpl:Landroidx/core/os/LocaleListInterface;

    move-object v1, p1

    check-cast v1, Landroidx/core/os/LocaleListCompat;

    iget-object v1, v1, Landroidx/core/os/LocaleListCompat;->mImpl:Landroidx/core/os/LocaleListInterface;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public get(I)Ljava/util/Locale;
    .registers 3
    .param p1, "index"    # I

    .line 90
    iget-object v0, p0, Landroidx/core/os/LocaleListCompat;->mImpl:Landroidx/core/os/LocaleListInterface;

    invoke-interface {v0, p1}, Landroidx/core/os/LocaleListInterface;->get(I)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getFirstMatch([Ljava/lang/String;)Ljava/util/Locale;
    .registers 3
    .param p1, "supportedLocales"    # [Ljava/lang/String;

    .line 141
    iget-object v0, p0, Landroidx/core/os/LocaleListCompat;->mImpl:Landroidx/core/os/LocaleListInterface;

    invoke-interface {v0, p1}, Landroidx/core/os/LocaleListInterface;->getFirstMatch([Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 324
    iget-object v0, p0, Landroidx/core/os/LocaleListCompat;->mImpl:Landroidx/core/os/LocaleListInterface;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/util/Locale;)I
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .line 121
    iget-object v0, p0, Landroidx/core/os/LocaleListCompat;->mImpl:Landroidx/core/os/LocaleListInterface;

    invoke-interface {v0, p1}, Landroidx/core/os/LocaleListInterface;->indexOf(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 100
    iget-object v0, p0, Landroidx/core/os/LocaleListCompat;->mImpl:Landroidx/core/os/LocaleListInterface;

    invoke-interface {v0}, Landroidx/core/os/LocaleListInterface;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    .line 108
    iget-object v0, p0, Landroidx/core/os/LocaleListCompat;->mImpl:Landroidx/core/os/LocaleListInterface;

    invoke-interface {v0}, Landroidx/core/os/LocaleListInterface;->size()I

    move-result v0

    return v0
.end method

.method public toLanguageTags()Ljava/lang/String;
    .registers 2

    .line 129
    iget-object v0, p0, Landroidx/core/os/LocaleListCompat;->mImpl:Landroidx/core/os/LocaleListInterface;

    invoke-interface {v0}, Landroidx/core/os/LocaleListInterface;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 330
    iget-object v0, p0, Landroidx/core/os/LocaleListCompat;->mImpl:Landroidx/core/os/LocaleListInterface;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unwrap()Ljava/lang/Object;
    .registers 2

    .line 68
    iget-object v0, p0, Landroidx/core/os/LocaleListCompat;->mImpl:Landroidx/core/os/LocaleListInterface;

    invoke-interface {v0}, Landroidx/core/os/LocaleListInterface;->getLocaleList()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
