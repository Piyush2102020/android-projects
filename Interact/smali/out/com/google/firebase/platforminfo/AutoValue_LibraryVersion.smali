.class final Lcom/google/firebase/platforminfo/AutoValue_LibraryVersion;
.super Lcom/google/firebase/platforminfo/LibraryVersion;
.source "AutoValue_LibraryVersion.java"


# instance fields
.field private final libraryName:Ljava/lang/String;

.field private final version:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "libraryName"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .line 14
    invoke-direct {p0}, Lcom/google/firebase/platforminfo/LibraryVersion;-><init>()V

    .line 15
    if-eqz p1, :cond_14

    .line 18
    iput-object p1, p0, Lcom/google/firebase/platforminfo/AutoValue_LibraryVersion;->libraryName:Ljava/lang/String;

    .line 19
    if-eqz p2, :cond_c

    .line 22
    iput-object p2, p0, Lcom/google/firebase/platforminfo/AutoValue_LibraryVersion;->version:Ljava/lang/String;

    .line 23
    return-void

    .line 20
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null version"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_14
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null libraryName"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 47
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 48
    return v0

    .line 50
    :cond_4
    instance-of v1, p1, Lcom/google/firebase/platforminfo/LibraryVersion;

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    .line 51
    move-object v1, p1

    check-cast v1, Lcom/google/firebase/platforminfo/LibraryVersion;

    .line 52
    .local v1, "that":Lcom/google/firebase/platforminfo/LibraryVersion;
    iget-object v3, p0, Lcom/google/firebase/platforminfo/AutoValue_LibraryVersion;->libraryName:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/firebase/platforminfo/LibraryVersion;->getLibraryName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    iget-object v3, p0, Lcom/google/firebase/platforminfo/AutoValue_LibraryVersion;->version:Ljava/lang/String;

    .line 53
    invoke-virtual {v1}, Lcom/google/firebase/platforminfo/LibraryVersion;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    goto :goto_26

    :cond_25
    move v0, v2

    .line 52
    :goto_26
    return v0

    .line 55
    .end local v1    # "that":Lcom/google/firebase/platforminfo/LibraryVersion;
    :cond_27
    return v2
.end method

.method public getLibraryName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/google/firebase/platforminfo/AutoValue_LibraryVersion;->libraryName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/google/firebase/platforminfo/AutoValue_LibraryVersion;->version:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 60
    const/4 v0, 0x1

    .line 61
    .local v0, "h$":I
    const v1, 0xf4243

    mul-int/2addr v0, v1

    .line 62
    iget-object v2, p0, Lcom/google/firebase/platforminfo/AutoValue_LibraryVersion;->libraryName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 63
    mul-int/2addr v0, v1

    .line 64
    iget-object v1, p0, Lcom/google/firebase/platforminfo/AutoValue_LibraryVersion;->version:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 65
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LibraryVersion{libraryName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/platforminfo/AutoValue_LibraryVersion;->libraryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/platforminfo/AutoValue_LibraryVersion;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
