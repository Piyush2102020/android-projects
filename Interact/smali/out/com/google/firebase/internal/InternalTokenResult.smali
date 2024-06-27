.class public Lcom/google/firebase/internal/InternalTokenResult;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth-interop@@20.0.0"


# instance fields
.field private zza:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/internal/InternalTokenResult;->zza:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 1
    .end local p0    # "this":Lcom/google/firebase/internal/InternalTokenResult;
    .end local p1    # "o":Ljava/lang/Object;
    instance-of v0, p1, Lcom/google/firebase/internal/InternalTokenResult;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_6
    check-cast p1, Lcom/google/firebase/internal/InternalTokenResult;

    iget-object v0, p0, Lcom/google/firebase/internal/InternalTokenResult;->zza:Ljava/lang/String;

    .line 3
    iget-object p1, p1, Lcom/google/firebase/internal/InternalTokenResult;->zza:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getToken()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/internal/InternalTokenResult;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x1

    .end local p0    # "this":Lcom/google/firebase/internal/InternalTokenResult;
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/firebase/internal/InternalTokenResult;->zza:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    .end local p0    # "this":Lcom/google/firebase/internal/InternalTokenResult;
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string/jumbo v1, "token"

    iget-object v2, p0, Lcom/google/firebase/internal/InternalTokenResult;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
