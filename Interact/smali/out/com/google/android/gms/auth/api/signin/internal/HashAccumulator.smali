.class public Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.1.0"


# static fields
.field static zaa:I


# instance fields
.field private zab:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x1f

    sput v0, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->zaa:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->zab:I

    return-void
.end method


# virtual methods
.method public addObject(Ljava/lang/Object;)Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;
    .registers 4
    .param p1, "object"    # Ljava/lang/Object;

    .line 1
    sget v0, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->zaa:I

    .end local p0    # "this":Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;
    .end local p1    # "object":Ljava/lang/Object;
    iget v1, p0, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->zab:I

    mul-int/2addr v0, v1

    if-nez p1, :cond_9

    const/4 p1, 0x0

    goto :goto_d

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    :goto_d
    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->zab:I

    return-object p0
.end method

.method public hash()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->zab:I

    return v0
.end method

.method public final zaa(Z)Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;
    .registers 4

    sget v0, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->zaa:I

    iget v1, p0, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->zab:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->zab:I

    return-object p0
.end method
