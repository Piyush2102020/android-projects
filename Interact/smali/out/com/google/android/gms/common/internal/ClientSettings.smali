.class public final Lcom/google/android/gms/common/internal/ClientSettings;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/ClientSettings$Builder;
    }
.end annotation


# instance fields
.field private final zaa:Landroid/accounts/Account;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final zab:Ljava/util/Set;

.field private final zac:Ljava/util/Set;

.field private final zad:Ljava/util/Map;

.field private final zae:I

.field private final zaf:Landroid/view/View;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final zag:Ljava/lang/String;

.field private final zah:Ljava/lang/String;

.field private final zai:Lcom/google/android/gms/signin/SignInOptions;

.field private zaj:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/signin/SignInOptions;)V
    .registers 19
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "scopes"    # Ljava/util/Set;
    .param p3, "optionalApiSettingsMap"    # Ljava/util/Map;
    .param p4, "gravityForPopups"    # I
    .param p5, "viewForPopups"    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "realClientPackageName"    # Ljava/lang/String;
    .param p7, "realClientClassName"    # Ljava/lang/String;
    .param p8, "signInOptions"    # Lcom/google/android/gms/signin/SignInOptions;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;",
            "Lcom/google/android/gms/common/internal/zab;",
            ">;I",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/signin/SignInOptions;",
            ")V"
        }
    .end annotation

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/common/internal/ClientSettings;
    .end local p1    # "account":Landroid/accounts/Account;
    .end local p2    # "scopes":Ljava/util/Set;
    .end local p3    # "optionalApiSettingsMap":Ljava/util/Map;
    .end local p4    # "gravityForPopups":I
    .end local p5    # "viewForPopups":Landroid/view/View;
    .end local p6    # "realClientPackageName":Ljava/lang/String;
    .end local p7    # "realClientClassName":Ljava/lang/String;
    .end local p8    # "signInOptions":Lcom/google/android/gms/signin/SignInOptions;
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/common/internal/ClientSettings;-><init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/signin/SignInOptions;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/signin/SignInOptions;Z)V
    .registers 10
    .param p1    # Landroid/accounts/Account;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/google/android/gms/signin/SignInOptions;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zaa:Landroid/accounts/Account;

    if-nez p2, :cond_c

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    goto :goto_10

    :cond_c
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    :goto_10
    iput-object p1, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zab:Ljava/util/Set;

    if-nez p3, :cond_19

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p3

    goto :goto_1a

    .line 7
    :cond_19
    nop

    .line 3
    :goto_1a
    iput-object p3, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zad:Ljava/util/Map;

    iput-object p5, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zaf:Landroid/view/View;

    iput p4, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zae:I

    iput-object p6, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zag:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zah:Ljava/lang/String;

    if-nez p8, :cond_29

    sget-object p8, Lcom/google/android/gms/signin/SignInOptions;->zaa:Lcom/google/android/gms/signin/SignInOptions;

    goto :goto_2a

    .line 7
    :cond_29
    nop

    .line 3
    :goto_2a
    iput-object p8, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zai:Lcom/google/android/gms/signin/SignInOptions;

    new-instance p2, Ljava/util/HashSet;

    .line 4
    invoke-direct {p2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 5
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_39
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/common/internal/zab;

    .line 6
    iget-object p3, p3, Lcom/google/android/gms/common/internal/zab;->zaa:Ljava/util/Set;

    invoke-interface {p2, p3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_39

    .line 7
    :cond_4b
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zac:Ljava/util/Set;

    return-void
.end method

.method public static createDefault(Landroid/content/Context;)Lcom/google/android/gms/common/internal/ClientSettings;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .end local p0    # "context":Landroid/content/Context;
    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zaa()Lcom/google/android/gms/common/internal/ClientSettings;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zaa:Landroid/accounts/Account;

    return-object v0
.end method

.method public getAccountName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/common/internal/ClientSettings;
    iget-object v0, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zaa:Landroid/accounts/Account;

    if-eqz v0, :cond_8

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    return-object v0

    :cond_8
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAccountOrDefault()Landroid/accounts/Account;
    .registers 4

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/common/internal/ClientSettings;
    iget-object v0, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zaa:Landroid/accounts/Account;

    if-eqz v0, :cond_6

    return-object v0

    :cond_6
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "<<default account>>"

    const-string v2, "com.google"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getAllRequestedScopes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zac:Ljava/util/Set;

    return-object v0
.end method

.method public getApplicableScopes(Lcom/google/android/gms/common/api/Api;)Ljava/util/Set;
    .registers 4
    .param p1, "api"    # Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;)",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/common/internal/ClientSettings;
    .end local p1    # "api":Lcom/google/android/gms/common/api/Api;
    iget-object v0, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zad:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/zab;

    if-eqz p1, :cond_21

    iget-object v0, p1, Lcom/google/android/gms/common/internal/zab;->zaa:Ljava/util/Set;

    .line 2
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_21

    :cond_14
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zab:Ljava/util/Set;

    .line 3
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object p1, p1, Lcom/google/android/gms/common/internal/zab;->zaa:Ljava/util/Set;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0

    .line 2
    :cond_21
    :goto_21
    iget-object p1, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zab:Ljava/util/Set;

    return-object p1
.end method

.method public getGravityForPopups()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zae:I

    return v0
.end method

.method public getRealClientPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zag:Ljava/lang/String;

    return-object v0
.end method

.method public getRequiredScopes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zab:Ljava/util/Set;

    return-object v0
.end method

.method public getViewForPopups()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zaf:Landroid/view/View;

    return-object v0
.end method

.method public final zaa()Lcom/google/android/gms/signin/SignInOptions;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zai:Lcom/google/android/gms/signin/SignInOptions;

    return-object v0
.end method

.method public final zab()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zaj:Ljava/lang/Integer;

    return-object v0
.end method

.method public final zac()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zah:Ljava/lang/String;

    return-object v0
.end method

.method public final zad()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zad:Ljava/util/Map;

    return-object v0
.end method

.method public final zae(Ljava/lang/Integer;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/internal/ClientSettings;->zaj:Ljava/lang/Integer;

    return-void
.end method
