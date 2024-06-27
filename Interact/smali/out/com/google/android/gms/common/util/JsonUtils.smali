.class public final Lcom/google/android/gms/common/util/JsonUtils;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.1.0"


# static fields
.field private static final zza:Ljava/util/regex/Pattern;

.field private static final zzb:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "\\\\."

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/JsonUtils;->zza:Ljava/util/regex/Pattern;

    const-string v0, "[\\\\\"/\u0008\u000c\n\r\t]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/JsonUtils;->zzb:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areJsonValuesEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 7
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .line 1
    nop

    .end local p0    # "a":Ljava/lang/Object;
    .end local p1    # "b":Ljava/lang/Object;
    const/4 v0, 0x1

    if-nez p0, :cond_8

    if-eqz p1, :cond_7

    goto :goto_8

    .line 3
    :cond_7
    return v0

    .line 1
    :cond_8
    :goto_8
    const/4 v1, 0x0

    if-eqz p0, :cond_8a

    if-nez p1, :cond_f

    goto/16 :goto_8a

    :cond_f
    instance-of v2, p0, Lorg/json/JSONObject;

    if-eqz v2, :cond_52

    instance-of v2, p1, Lorg/json/JSONObject;

    if-eqz v2, :cond_52

    .line 11
    check-cast p0, Lorg/json/JSONObject;

    .line 12
    check-cast p1, Lorg/json/JSONObject;

    .line 13
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v2

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-eq v2, v3, :cond_26

    return v1

    .line 14
    :cond_26
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 15
    :cond_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_51

    .line 16
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 17
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3d

    return v1

    .line 18
    :cond_3d
    :try_start_3d
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 19
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 20
    invoke-static {v4, v3}, Lcom/google/android/gms/common/util/JsonUtils;->areJsonValuesEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_4c
    .catch Lorg/json/JSONException; {:try_start_3d .. :try_end_4c} :catch_4f

    if-nez v3, :cond_2a

    return v1

    .line 3
    :catch_4f
    move-exception p0

    return v1

    .line 20
    :cond_51
    return v0

    .line 2
    :cond_52
    instance-of v2, p0, Lorg/json/JSONArray;

    if-eqz v2, :cond_85

    instance-of v2, p1, Lorg/json/JSONArray;

    if-eqz v2, :cond_85

    .line 4
    check-cast p0, Lorg/json/JSONArray;

    .line 5
    check-cast p1, Lorg/json/JSONArray;

    .line 6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ne v2, v3, :cond_84

    move v2, v1

    .line 7
    :goto_69
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_83

    .line 8
    :try_start_6f
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 9
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 10
    invoke-static {v3, v4}, Lcom/google/android/gms/common/util/JsonUtils;->areJsonValuesEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_7b
    .catch Lorg/json/JSONException; {:try_start_6f .. :try_end_7b} :catch_81

    if-eqz v3, :cond_80

    add-int/lit8 v2, v2, 0x1

    goto :goto_69

    :cond_80
    return v1

    .line 3
    :catch_81
    move-exception p0

    return v1

    .line 10
    :cond_83
    return v0

    :cond_84
    return v1

    .line 3
    :cond_85
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 1
    :cond_8a
    :goto_8a
    return v1
.end method

.method public static escapeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "text"    # Ljava/lang/String;

    .line 1
    nop

    .end local p0    # "text":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_69

    sget-object v0, Lcom/google/android/gms/common/util/JsonUtils;->zzb:Ljava/util/regex/Pattern;

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    :goto_e
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_5f

    if-nez v1, :cond_1b

    new-instance v1, Ljava/lang/StringBuffer;

    .line 4
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 5
    :cond_1b
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_6a

    goto :goto_e

    .line 6
    :sswitch_28
    const-string v2, "\\\\\\\\"

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_e

    :sswitch_2e
    nop

    .line 7
    const-string v2, "\\\\/"

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_e

    :sswitch_35
    nop

    .line 8
    const-string v2, "\\\\\\\""

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_e

    :sswitch_3c
    nop

    .line 9
    const-string v2, "\\\\r"

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_e

    :sswitch_43
    nop

    .line 10
    const-string v2, "\\\\f"

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_e

    :sswitch_4a
    nop

    .line 11
    const-string v2, "\\\\n"

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_e

    :sswitch_51
    nop

    .line 12
    const-string v2, "\\\\t"

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_e

    :sswitch_58
    nop

    .line 13
    const-string v2, "\\\\b"

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_e

    :cond_5f
    if-nez v1, :cond_62

    return-object p0

    .line 14
    :cond_62
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_69
    return-object p0

    :sswitch_data_6a
    .sparse-switch
        0x8 -> :sswitch_58
        0x9 -> :sswitch_51
        0xa -> :sswitch_4a
        0xc -> :sswitch_43
        0xd -> :sswitch_3c
        0x22 -> :sswitch_35
        0x2f -> :sswitch_2e
        0x5c -> :sswitch_28
    .end sparse-switch
.end method

.method public static unescapeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "text"    # Ljava/lang/String;

    .line 1
    nop

    .end local p0    # "text":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_75

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/common/util/zzc;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/common/util/JsonUtils;->zza:Ljava/util/regex/Pattern;

    .line 3
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    :goto_12
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_6a

    if-nez v1, :cond_1f

    new-instance v1, Ljava/lang/StringBuffer;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 6
    :cond_1f
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_76

    .line 16
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 15
    const-string v0, "Found an escaped character that should never be."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :sswitch_33
    const-string v2, "\t"

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_12

    :sswitch_39
    nop

    .line 8
    const-string v2, "\r"

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_12

    :sswitch_40
    nop

    .line 9
    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_12

    :sswitch_47
    nop

    .line 10
    const-string v2, "\u000c"

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_12

    :sswitch_4e
    nop

    .line 11
    const-string v2, "\u0008"

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_12

    :sswitch_55
    nop

    .line 12
    const-string v2, "\\\\"

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_12

    :sswitch_5c
    nop

    .line 13
    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_12

    :sswitch_63
    nop

    .line 14
    const-string v2, "\""

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_12

    :cond_6a
    if-nez v1, :cond_6d

    return-object p0

    .line 16
    :cond_6d
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 15
    :cond_75
    return-object p0

    :sswitch_data_76
    .sparse-switch
        0x22 -> :sswitch_63
        0x2f -> :sswitch_5c
        0x5c -> :sswitch_55
        0x62 -> :sswitch_4e
        0x66 -> :sswitch_47
        0x6e -> :sswitch_40
        0x72 -> :sswitch_39
        0x74 -> :sswitch_33
    .end sparse-switch
.end method
