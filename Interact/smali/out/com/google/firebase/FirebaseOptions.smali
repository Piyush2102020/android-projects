.class public final Lcom/google/firebase/FirebaseOptions;
.super Ljava/lang/Object;
.source "FirebaseOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/FirebaseOptions$Builder;
    }
.end annotation


# static fields
.field private static final API_KEY_RESOURCE_NAME:Ljava/lang/String; = "google_api_key"

.field private static final APP_ID_RESOURCE_NAME:Ljava/lang/String; = "google_app_id"

.field private static final DATABASE_URL_RESOURCE_NAME:Ljava/lang/String; = "firebase_database_url"

.field private static final GA_TRACKING_ID_RESOURCE_NAME:Ljava/lang/String; = "ga_trackingId"

.field private static final GCM_SENDER_ID_RESOURCE_NAME:Ljava/lang/String; = "gcm_defaultSenderId"

.field private static final PROJECT_ID_RESOURCE_NAME:Ljava/lang/String; = "project_id"

.field private static final STORAGE_BUCKET_RESOURCE_NAME:Ljava/lang/String; = "google_storage_bucket"


# instance fields
.field private final apiKey:Ljava/lang/String;

.field private final applicationId:Ljava/lang/String;

.field private final databaseUrl:Ljava/lang/String;

.field private final gaTrackingId:Ljava/lang/String;

.field private final gcmSenderId:Ljava/lang/String;

.field private final projectId:Ljava/lang/String;

.field private final storageBucket:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "applicationId"    # Ljava/lang/String;
    .param p2, "apiKey"    # Ljava/lang/String;
    .param p3, "databaseUrl"    # Ljava/lang/String;
    .param p4, "gaTrackingId"    # Ljava/lang/String;
    .param p5, "gcmSenderId"    # Ljava/lang/String;
    .param p6, "storageBucket"    # Ljava/lang/String;
    .param p7, "projectId"    # Ljava/lang/String;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    invoke-static {p1}, Lcom/google/android/gms/common/util/Strings;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "ApplicationId must be set."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 140
    iput-object p1, p0, Lcom/google/firebase/FirebaseOptions;->applicationId:Ljava/lang/String;

    .line 141
    iput-object p2, p0, Lcom/google/firebase/FirebaseOptions;->apiKey:Ljava/lang/String;

    .line 142
    iput-object p3, p0, Lcom/google/firebase/FirebaseOptions;->databaseUrl:Ljava/lang/String;

    .line 143
    iput-object p4, p0, Lcom/google/firebase/FirebaseOptions;->gaTrackingId:Ljava/lang/String;

    .line 144
    iput-object p5, p0, Lcom/google/firebase/FirebaseOptions;->gcmSenderId:Ljava/lang/String;

    .line 145
    iput-object p6, p0, Lcom/google/firebase/FirebaseOptions;->storageBucket:Ljava/lang/String;

    .line 146
    iput-object p7, p0, Lcom/google/firebase/FirebaseOptions;->projectId:Ljava/lang/String;

    .line 147
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/FirebaseOptions$1;)V
    .registers 9
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # Ljava/lang/String;
    .param p8, "x7"    # Lcom/google/firebase/FirebaseOptions$1;

    .line 30
    invoke-direct/range {p0 .. p7}, Lcom/google/firebase/FirebaseOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/FirebaseOptions;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/firebase/FirebaseOptions;

    .line 30
    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firebase/FirebaseOptions;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/firebase/FirebaseOptions;

    .line 30
    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/firebase/FirebaseOptions;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/firebase/FirebaseOptions;

    .line 30
    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->databaseUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/firebase/FirebaseOptions;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/firebase/FirebaseOptions;

    .line 30
    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->gaTrackingId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/firebase/FirebaseOptions;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/firebase/FirebaseOptions;

    .line 30
    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->gcmSenderId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/firebase/FirebaseOptions;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/firebase/FirebaseOptions;

    .line 30
    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->storageBucket:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/firebase/FirebaseOptions;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/firebase/FirebaseOptions;

    .line 30
    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->projectId:Ljava/lang/String;

    return-object v0
.end method

.method public static fromResource(Landroid/content/Context;)Lcom/google/firebase/FirebaseOptions;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;

    .line 156
    new-instance v0, Lcom/google/android/gms/common/internal/StringResourceValueReader;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/StringResourceValueReader;-><init>(Landroid/content/Context;)V

    .line 157
    .local v0, "reader":Lcom/google/android/gms/common/internal/StringResourceValueReader;
    const-string v1, "google_app_id"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/StringResourceValueReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "applicationId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 159
    const/4 v2, 0x0

    return-object v2

    .line 161
    :cond_13
    new-instance v10, Lcom/google/firebase/FirebaseOptions;

    .line 163
    const-string v2, "google_api_key"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/internal/StringResourceValueReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 164
    const-string v2, "firebase_database_url"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/internal/StringResourceValueReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 165
    const-string v2, "ga_trackingId"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/internal/StringResourceValueReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 166
    const-string v2, "gcm_defaultSenderId"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/internal/StringResourceValueReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 167
    const-string v2, "google_storage_bucket"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/internal/StringResourceValueReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 168
    const-string v2, "project_id"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/internal/StringResourceValueReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v2, v10

    move-object v3, v1

    invoke-direct/range {v2 .. v9}, Lcom/google/firebase/FirebaseOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-object v10
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 227
    instance-of v0, p1, Lcom/google/firebase/FirebaseOptions;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 228
    return v1

    .line 230
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/FirebaseOptions;

    .line 231
    .local v0, "other":Lcom/google/firebase/FirebaseOptions;
    iget-object v2, p0, Lcom/google/firebase/FirebaseOptions;->applicationId:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/firebase/FirebaseOptions;->applicationId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    iget-object v2, p0, Lcom/google/firebase/FirebaseOptions;->apiKey:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/firebase/FirebaseOptions;->apiKey:Ljava/lang/String;

    .line 232
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    iget-object v2, p0, Lcom/google/firebase/FirebaseOptions;->databaseUrl:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/firebase/FirebaseOptions;->databaseUrl:Ljava/lang/String;

    .line 233
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    iget-object v2, p0, Lcom/google/firebase/FirebaseOptions;->gaTrackingId:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/firebase/FirebaseOptions;->gaTrackingId:Ljava/lang/String;

    .line 234
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    iget-object v2, p0, Lcom/google/firebase/FirebaseOptions;->gcmSenderId:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/firebase/FirebaseOptions;->gcmSenderId:Ljava/lang/String;

    .line 235
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    iget-object v2, p0, Lcom/google/firebase/FirebaseOptions;->storageBucket:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/firebase/FirebaseOptions;->storageBucket:Ljava/lang/String;

    .line 236
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    iget-object v2, p0, Lcom/google/firebase/FirebaseOptions;->projectId:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/firebase/FirebaseOptions;->projectId:Ljava/lang/String;

    .line 237
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    const/4 v1, 0x1

    goto :goto_52

    :cond_51
    nop

    .line 231
    :goto_52
    return v1
.end method

.method public getApiKey()Ljava/lang/String;
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationId()Ljava/lang/String;
    .registers 2

    .line 183
    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public getDatabaseUrl()Ljava/lang/String;
    .registers 2

    .line 189
    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->databaseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getGaTrackingId()Ljava/lang/String;
    .registers 2

    .line 201
    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->gaTrackingId:Ljava/lang/String;

    return-object v0
.end method

.method public getGcmSenderId()Ljava/lang/String;
    .registers 2

    .line 210
    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->gcmSenderId:Ljava/lang/String;

    return-object v0
.end method

.method public getProjectId()Ljava/lang/String;
    .registers 2

    .line 222
    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->projectId:Ljava/lang/String;

    return-object v0
.end method

.method public getStorageBucket()Ljava/lang/String;
    .registers 2

    .line 216
    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->storageBucket:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 242
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/firebase/FirebaseOptions;->applicationId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/firebase/FirebaseOptions;->apiKey:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/firebase/FirebaseOptions;->databaseUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/firebase/FirebaseOptions;->gaTrackingId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/firebase/FirebaseOptions;->gcmSenderId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/firebase/FirebaseOptions;->storageBucket:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/firebase/FirebaseOptions;->projectId:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 248
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/FirebaseOptions;->applicationId:Ljava/lang/String;

    .line 249
    const-string v2, "applicationId"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/FirebaseOptions;->apiKey:Ljava/lang/String;

    .line 250
    const-string v2, "apiKey"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/FirebaseOptions;->databaseUrl:Ljava/lang/String;

    .line 251
    const-string v2, "databaseUrl"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/FirebaseOptions;->gcmSenderId:Ljava/lang/String;

    .line 252
    const-string v2, "gcmSenderId"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/FirebaseOptions;->storageBucket:Ljava/lang/String;

    .line 253
    const-string/jumbo v2, "storageBucket"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/FirebaseOptions;->projectId:Ljava/lang/String;

    .line 254
    const-string v2, "projectId"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    return-object v0
.end method
