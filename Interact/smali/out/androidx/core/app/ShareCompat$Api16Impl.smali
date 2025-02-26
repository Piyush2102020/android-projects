.class Landroidx/core/app/ShareCompat$Api16Impl;
.super Ljava/lang/Object;
.source "ShareCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/ShareCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api16Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1089
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1091
    return-void
.end method

.method static escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 2
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 1120
    invoke-static {p0}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static migrateExtraStreamToClipData(Landroid/content/Intent;Ljava/util/ArrayList;)V
    .registers 10
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 1096
    .local p1, "streams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1097
    .local v0, "text":Ljava/lang/CharSequence;
    const-string v1, "android.intent.extra.HTML_TEXT"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1099
    .local v1, "htmlText":Ljava/lang/String;
    new-instance v2, Landroid/content/ClipData;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    .line 1100
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-instance v5, Landroid/content/ClipData$Item;

    .line 1101
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-direct {v5, v0, v1, v7, v6}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V

    invoke-direct {v2, v7, v4, v5}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 1103
    .local v2, "clipData":Landroid/content/ClipData;
    const/4 v4, 0x1

    .local v4, "i":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, "end":I
    :goto_2c
    if-ge v4, v5, :cond_3f

    .line 1104
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 1105
    .local v6, "uri":Landroid/net/Uri;
    new-instance v7, Landroid/content/ClipData$Item;

    invoke-direct {v7, v6}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v2, v7}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 1103
    .end local v6    # "uri":Landroid/net/Uri;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 1108
    .end local v4    # "i":I
    .end local v5    # "end":I
    :cond_3f
    invoke-virtual {p0, v2}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 1109
    invoke-virtual {p0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1110
    return-void
.end method

.method static removeClipData(Landroid/content/Intent;)V
    .registers 2
    .param p0, "intent"    # Landroid/content/Intent;

    .line 1114
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 1115
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1116
    return-void
.end method
