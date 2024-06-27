.class Landroidx/core/provider/FontProvider;
.super Ljava/lang/Object;
.source "FontProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/provider/FontProvider$Api16Impl;
    }
.end annotation


# static fields
.field private static final sByteArrayComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 197
    new-instance v0, Landroidx/core/provider/FontProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/core/provider/FontProvider$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/core/provider/FontProvider;->sByteArrayComparator:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertToByteArrayList([Landroid/content/pm/Signature;)Ljava/util/List;
    .registers 6
    .param p0, "signatures"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v0, "shaList":Ljava/util/List;, "Ljava/util/List<[B>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_15

    aget-object v3, p0, v2

    .line 225
    .local v3, "signature":Landroid/content/pm/Signature;
    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    .end local v3    # "signature":Landroid/content/pm/Signature;
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 227
    :cond_15
    return-object v0
.end method

.method private static equalsByteArrayList(Ljava/util/List;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/util/List<",
            "[B>;)Z"
        }
    .end annotation

    .line 211
    .local p0, "signatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local p1, "requestSignatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    .line 212
    return v2

    .line 214
    :cond_c
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 215
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_26

    .line 216
    return v2

    .line 214
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 219
    .end local v0    # "i":I
    :cond_29
    const/4 v0, 0x1

    return v0
.end method

.method private static getCertificates(Landroidx/core/provider/FontRequest;Landroid/content/res/Resources;)Ljava/util/List;
    .registers 4
    .param p0, "request"    # Landroidx/core/provider/FontRequest;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/provider/FontRequest;",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "[B>;>;"
        }
    .end annotation

    .line 190
    invoke-virtual {p0}, Landroidx/core/provider/FontRequest;->getCertificates()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 191
    invoke-virtual {p0}, Landroidx/core/provider/FontRequest;->getCertificates()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 193
    :cond_b
    invoke-virtual {p0}, Landroidx/core/provider/FontRequest;->getCertificatesArrayResId()I

    move-result v0

    .line 194
    .local v0, "resourceId":I
    invoke-static {p1, v0}, Landroidx/core/content/res/FontResourcesParserCompat;->readCerts(Landroid/content/res/Resources;I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method static getFontFamilyResult(Landroid/content/Context;Landroidx/core/provider/FontRequest;Landroid/os/CancellationSignal;)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Landroidx/core/provider/FontRequest;
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 55
    nop

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 55
    invoke-static {v0, p1, v1}, Landroidx/core/provider/FontProvider;->getProvider(Landroid/content/pm/PackageManager;Landroidx/core/provider/FontRequest;Landroid/content/res/Resources;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 57
    .local v0, "providerInfo":Landroid/content/pm/ProviderInfo;
    if-nez v0, :cond_16

    .line 58
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->create(I[Landroidx/core/provider/FontsContractCompat$FontInfo;)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;

    move-result-object v1

    return-object v1

    .line 61
    :cond_16
    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {p0, p1, v1, p2}, Landroidx/core/provider/FontProvider;->query(Landroid/content/Context;Landroidx/core/provider/FontRequest;Ljava/lang/String;Landroid/os/CancellationSignal;)[Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-result-object v1

    .line 63
    .local v1, "fonts":[Landroidx/core/provider/FontsContractCompat$FontInfo;
    const/4 v2, 0x0

    invoke-static {v2, v1}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->create(I[Landroidx/core/provider/FontsContractCompat$FontInfo;)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;

    move-result-object v2

    return-object v2
.end method

.method static getProvider(Landroid/content/pm/PackageManager;Landroidx/core/provider/FontRequest;Landroid/content/res/Resources;)Landroid/content/pm/ProviderInfo;
    .registers 11
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "request"    # Landroidx/core/provider/FontRequest;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 77
    invoke-virtual {p1}, Landroidx/core/provider/FontRequest;->getProviderAuthority()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "providerAuthority":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    .line 79
    .local v1, "info":Landroid/content/pm/ProviderInfo;
    if-eqz v1, :cond_78

    .line 84
    iget-object v2, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/core/provider/FontRequest;->getProviderPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 93
    iget-object v2, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x40

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 95
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v3}, Landroidx/core/provider/FontProvider;->convertToByteArrayList([Landroid/content/pm/Signature;)Ljava/util/List;

    move-result-object v3

    .line 96
    .local v3, "signatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    sget-object v4, Landroidx/core/provider/FontProvider;->sByteArrayComparator:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 97
    invoke-static {p1, p2}, Landroidx/core/provider/FontProvider;->getCertificates(Landroidx/core/provider/FontRequest;Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v4

    .line 98
    .local v4, "requestCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<[B>;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2f
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4f

    .line 100
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 101
    .local v6, "requestSignatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    sget-object v7, Landroidx/core/provider/FontProvider;->sByteArrayComparator:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 102
    invoke-static {v3, v6}, Landroidx/core/provider/FontProvider;->equalsByteArrayList(Ljava/util/List;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_4c

    .line 103
    return-object v1

    .line 98
    .end local v6    # "requestSignatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_4c
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    .line 106
    .end local v5    # "i":I
    :cond_4f
    const/4 v5, 0x0

    return-object v5

    .line 85
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "signatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v4    # "requestCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<[B>;>;"
    :cond_51
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found content provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", but package was not "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 87
    invoke-virtual {p1}, Landroidx/core/provider/FontRequest;->getProviderPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    :cond_78
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No package found for authority: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static synthetic lambda$static$0([B[B)I
    .registers 5
    .param p0, "l"    # [B
    .param p1, "r"    # [B

    .line 198
    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_8

    .line 199
    array-length v0, p0

    array-length v1, p1

    sub-int/2addr v0, v1

    return v0

    .line 201
    :cond_8
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    array-length v1, p0

    if-ge v0, v1, :cond_1b

    .line 202
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    if-eq v1, v2, :cond_18

    .line 203
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    sub-int/2addr v1, v2

    return v1

    .line 201
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 206
    .end local v0    # "i":I
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method static query(Landroid/content/Context;Landroidx/core/provider/FontRequest;Ljava/lang/String;Landroid/os/CancellationSignal;)[Landroidx/core/provider/FontsContractCompat$FontInfo;
    .registers 27
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Landroidx/core/provider/FontRequest;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 120
    move-object/from16 v1, p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 121
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/provider/FontsContractCompat$FontInfo;>;"
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "content"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 122
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    .line 124
    .local v11, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 125
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 126
    const-string v3, "file"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 128
    .local v3, "fileBaseUri":Landroid/net/Uri;
    const/4 v12, 0x0

    .line 130
    .local v12, "cursor":Landroid/database/Cursor;
    :try_start_33
    const-string v4, "_id"

    const-string v5, "file_id"

    const-string v6, "font_ttc_index"

    const-string v7, "font_variation_settings"

    const-string v8, "font_weight"

    const-string v9, "font_italic"

    const-string v10, "result_code"

    filled-new-array/range {v4 .. v10}, [Ljava/lang/String;

    move-result-object v6

    .line 137
    .local v6, "projection":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 138
    .local v4, "resolver":Landroid/content/ContentResolver;
    nop

    .line 139
    const-string v7, "query = ?"

    const/4 v0, 0x1

    new-array v8, v0, [Ljava/lang/String;

    .line 140
    invoke-virtual/range {p1 .. p1}, Landroidx/core/provider/FontRequest;->getQuery()Ljava/lang/String;

    move-result-object v5

    const/4 v13, 0x0

    aput-object v5, v8, v13

    const/4 v9, 0x0

    .line 139
    move-object v5, v11

    move-object/from16 v10, p3

    invoke-static/range {v4 .. v10}, Landroidx/core/provider/FontProvider$Api16Impl;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v5

    move-object v12, v5

    .line 147
    if-eqz v12, :cond_103

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_103

    .line 148
    const-string v5, "result_code"

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 150
    .local v5, "resultCodeColumnIndex":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v7

    .line 151
    const-string v7, "_id"

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 152
    .local v7, "idColumnIndex":I
    const-string v8, "file_id"

    invoke-interface {v12, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 154
    .local v8, "fileIdColumnIndex":I
    const-string v9, "font_ttc_index"

    invoke-interface {v12, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 156
    .local v9, "ttcIndexColumnIndex":I
    const-string v10, "font_weight"

    invoke-interface {v12, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 158
    .local v10, "weightColumnIndex":I
    const-string v14, "font_italic"

    invoke-interface {v12, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 160
    .local v14, "italicColumnIndex":I
    :goto_91
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15
    :try_end_95
    .catchall {:try_start_33 .. :try_end_95} :catchall_116

    if-eqz v15, :cond_fe

    .line 161
    const/4 v15, -0x1

    if-eq v5, v15, :cond_a4

    .line 162
    :try_start_9a
    invoke-interface {v12, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    goto :goto_a6

    .line 182
    .end local v4    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "resultCodeColumnIndex":I
    .end local v6    # "projection":[Ljava/lang/String;
    .end local v7    # "idColumnIndex":I
    .end local v8    # "fileIdColumnIndex":I
    .end local v9    # "ttcIndexColumnIndex":I
    .end local v10    # "weightColumnIndex":I
    .end local v14    # "italicColumnIndex":I
    :catchall_9f
    move-exception v0

    move-object/from16 v17, v3

    goto/16 :goto_119

    .line 163
    .restart local v4    # "resolver":Landroid/content/ContentResolver;
    .restart local v5    # "resultCodeColumnIndex":I
    .restart local v6    # "projection":[Ljava/lang/String;
    .restart local v7    # "idColumnIndex":I
    .restart local v8    # "fileIdColumnIndex":I
    .restart local v9    # "ttcIndexColumnIndex":I
    .restart local v10    # "weightColumnIndex":I
    .restart local v14    # "italicColumnIndex":I
    :cond_a4
    move/from16 v16, v13

    :goto_a6
    move/from16 v17, v16

    .line 164
    .local v17, "resultCode":I
    if-eq v9, v15, :cond_af

    .line 165
    invoke-interface {v12, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    goto :goto_b1

    :cond_af
    move/from16 v16, v13

    :goto_b1
    move/from16 v18, v16

    .line 167
    .local v18, "ttcIndex":I
    if-ne v8, v15, :cond_c4

    .line 168
    invoke-interface {v12, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    move-wide/from16 v21, v19

    .line 169
    .local v21, "id":J
    move-wide/from16 v0, v21

    .end local v21    # "id":J
    .local v0, "id":J
    invoke-static {v11, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19
    :try_end_c1
    .catchall {:try_start_9a .. :try_end_c1} :catchall_9f

    move-object/from16 v0, v19

    .line 170
    .local v0, "fileUri":Landroid/net/Uri;
    goto :goto_ce

    .line 171
    .end local v0    # "fileUri":Landroid/net/Uri;
    :cond_c4
    :try_start_c4
    invoke-interface {v12, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 172
    .local v0, "id":J
    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19
    :try_end_cc
    .catchall {:try_start_c4 .. :try_end_cc} :catchall_116

    move-object/from16 v0, v19

    .line 175
    .local v0, "fileUri":Landroid/net/Uri;
    :goto_ce
    if-eq v10, v15, :cond_d5

    :try_start_d0
    invoke-interface {v12, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    goto :goto_d7

    :cond_d5
    const/16 v1, 0x190

    .line 176
    .local v1, "weight":I
    :goto_d7
    if-eq v14, v15, :cond_e2

    invoke-interface {v12, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v15
    :try_end_dd
    .catchall {:try_start_d0 .. :try_end_dd} :catchall_9f

    const/4 v13, 0x1

    if-ne v15, v13, :cond_e3

    move v15, v13

    goto :goto_e4

    :cond_e2
    const/4 v13, 0x1

    :cond_e3
    const/4 v15, 0x0

    .line 178
    .local v15, "italic":Z
    :goto_e4
    move/from16 v13, v17

    move-object/from16 v17, v3

    move/from16 v3, v18

    move-object/from16 v18, v4

    .end local v4    # "resolver":Landroid/content/ContentResolver;
    .local v3, "ttcIndex":I
    .local v13, "resultCode":I
    .local v17, "fileBaseUri":Landroid/net/Uri;
    .local v18, "resolver":Landroid/content/ContentResolver;
    :try_start_ec
    invoke-static {v0, v3, v1, v15, v13}, Landroidx/core/provider/FontsContractCompat$FontInfo;->create(Landroid/net/Uri;IIZI)Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_f3
    .catchall {:try_start_ec .. :try_end_f3} :catchall_fc

    .line 179
    move-object/from16 v1, p2

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    const/4 v0, 0x1

    const/4 v13, 0x0

    .end local v0    # "fileUri":Landroid/net/Uri;
    .end local v1    # "weight":I
    .end local v3    # "ttcIndex":I
    .end local v13    # "resultCode":I
    .end local v15    # "italic":Z
    goto :goto_91

    .line 182
    .end local v5    # "resultCodeColumnIndex":I
    .end local v6    # "projection":[Ljava/lang/String;
    .end local v7    # "idColumnIndex":I
    .end local v8    # "fileIdColumnIndex":I
    .end local v9    # "ttcIndexColumnIndex":I
    .end local v10    # "weightColumnIndex":I
    .end local v14    # "italicColumnIndex":I
    .end local v18    # "resolver":Landroid/content/ContentResolver;
    :catchall_fc
    move-exception v0

    goto :goto_119

    .line 160
    .end local v17    # "fileBaseUri":Landroid/net/Uri;
    .local v3, "fileBaseUri":Landroid/net/Uri;
    .restart local v4    # "resolver":Landroid/content/ContentResolver;
    .restart local v5    # "resultCodeColumnIndex":I
    .restart local v6    # "projection":[Ljava/lang/String;
    .restart local v7    # "idColumnIndex":I
    .restart local v8    # "fileIdColumnIndex":I
    .restart local v9    # "ttcIndexColumnIndex":I
    .restart local v10    # "weightColumnIndex":I
    .restart local v14    # "italicColumnIndex":I
    :cond_fe
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .end local v3    # "fileBaseUri":Landroid/net/Uri;
    .end local v4    # "resolver":Landroid/content/ContentResolver;
    .restart local v17    # "fileBaseUri":Landroid/net/Uri;
    .restart local v18    # "resolver":Landroid/content/ContentResolver;
    goto :goto_107

    .line 147
    .end local v5    # "resultCodeColumnIndex":I
    .end local v7    # "idColumnIndex":I
    .end local v8    # "fileIdColumnIndex":I
    .end local v9    # "ttcIndexColumnIndex":I
    .end local v10    # "weightColumnIndex":I
    .end local v14    # "italicColumnIndex":I
    .end local v17    # "fileBaseUri":Landroid/net/Uri;
    .end local v18    # "resolver":Landroid/content/ContentResolver;
    .restart local v3    # "fileBaseUri":Landroid/net/Uri;
    .restart local v4    # "resolver":Landroid/content/ContentResolver;
    :cond_103
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .line 182
    .end local v3    # "fileBaseUri":Landroid/net/Uri;
    .end local v4    # "resolver":Landroid/content/ContentResolver;
    .end local v6    # "projection":[Ljava/lang/String;
    .restart local v17    # "fileBaseUri":Landroid/net/Uri;
    :goto_107
    if-eqz v12, :cond_10c

    .line 183
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 186
    :cond_10c
    const/4 v0, 0x0

    new-array v0, v0, [Landroidx/core/provider/FontsContractCompat$FontInfo;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/core/provider/FontsContractCompat$FontInfo;

    return-object v0

    .line 182
    .end local v17    # "fileBaseUri":Landroid/net/Uri;
    .restart local v3    # "fileBaseUri":Landroid/net/Uri;
    :catchall_116
    move-exception v0

    move-object/from16 v17, v3

    .end local v3    # "fileBaseUri":Landroid/net/Uri;
    .restart local v17    # "fileBaseUri":Landroid/net/Uri;
    :goto_119
    if-eqz v12, :cond_11e

    .line 183
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 185
    :cond_11e
    throw v0
.end method
