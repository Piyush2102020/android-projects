.class public Lcom/google/android/gms/common/PackageSignatureVerifier;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.1.0"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/CheckReturnValue;
.end annotation

.annotation runtime Lcom/google/errorprone/annotations/RestrictedInheritance;
    allowedOnPath = ".*javatests.*/com/google/android/gms/common/.*"
    explanation = "Sub classing of GMS Core\'s APIs are restricted to testing fakes."
    link = "go/gmscore-restrictedinheritance"
.end annotation


# static fields
.field private static zza:Lcom/google/android/gms/common/zzad;


# instance fields
.field private volatile zzb:Lcom/google/android/gms/common/zzac;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static zza()Lcom/google/android/gms/common/zzad;
    .registers 2

    .line 1
    const-class v0, Lcom/google/android/gms/common/zzad;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/common/PackageSignatureVerifier;->zza:Lcom/google/android/gms/common/zzad;

    if-nez v1, :cond_e

    new-instance v1, Lcom/google/android/gms/common/zzad;

    invoke-direct {v1}, Lcom/google/android/gms/common/zzad;-><init>()V

    sput-object v1, Lcom/google/android/gms/common/PackageSignatureVerifier;->zza:Lcom/google/android/gms/common/zzad;

    :cond_e
    sget-object v1, Lcom/google/android/gms/common/PackageSignatureVerifier;->zza:Lcom/google/android/gms/common/zzad;

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method


# virtual methods
.method public queryPackageSignatureVerified(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/common/PackageVerificationResult;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/common/PackageSignatureVerifier;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "callingPackage":Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->honorsDebugCertificates(Landroid/content/Context;)Z

    move-result p1

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/PackageSignatureVerifier;->zza()Lcom/google/android/gms/common/zzad;

    .line 3
    invoke-static {}, Lcom/google/android/gms/common/zzn;->zzf()Z

    move-result v0

    if-eqz v0, :cond_63

    const/4 v0, 0x1

    if-eq v0, p1, :cond_14

    const-string v0, "-0"

    goto :goto_16

    .line 10
    :cond_14
    const-string v0, "-1"

    .line 3
    :goto_16
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/PackageSignatureVerifier;->zzb:Lcom/google/android/gms/common/zzac;

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/google/android/gms/common/PackageSignatureVerifier;->zzb:Lcom/google/android/gms/common/zzac;

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/common/zzac;->zzb(Lcom/google/android/gms/common/zzac;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object p1, p0, Lcom/google/android/gms/common/PackageSignatureVerifier;->zzb:Lcom/google/android/gms/common/zzac;

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/common/zzac;->zza(Lcom/google/android/gms/common/zzac;)Lcom/google/android/gms/common/PackageVerificationResult;

    move-result-object p1

    goto :goto_62

    .line 5
    :cond_35
    invoke-static {}, Lcom/google/android/gms/common/PackageSignatureVerifier;->zza()Lcom/google/android/gms/common/zzad;

    .line 6
    const/4 v1, 0x0

    invoke-static {p2, p1, v1, v1}, Lcom/google/android/gms/common/zzn;->zzc(Ljava/lang/String;ZZZ)Lcom/google/android/gms/common/zzx;

    move-result-object p1

    iget-boolean v1, p1, Lcom/google/android/gms/common/zzx;->zza:Z

    if-eqz v1, :cond_55

    new-instance v1, Lcom/google/android/gms/common/zzac;

    iget p1, p1, Lcom/google/android/gms/common/zzx;->zzd:I

    invoke-static {p2, p1}, Lcom/google/android/gms/common/PackageVerificationResult;->zzd(Ljava/lang/String;I)Lcom/google/android/gms/common/PackageVerificationResult;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/common/zzac;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/PackageVerificationResult;)V

    iput-object v1, p0, Lcom/google/android/gms/common/PackageSignatureVerifier;->zzb:Lcom/google/android/gms/common/zzac;

    iget-object p1, p0, Lcom/google/android/gms/common/PackageSignatureVerifier;->zzb:Lcom/google/android/gms/common/zzac;

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/common/zzac;->zza(Lcom/google/android/gms/common/zzac;)Lcom/google/android/gms/common/PackageVerificationResult;

    move-result-object p1

    goto :goto_62

    :cond_55
    iget-object v0, p1, Lcom/google/android/gms/common/zzx;->zzb:Ljava/lang/String;

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/common/zzx;->zzb:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/common/zzx;->zzc:Ljava/lang/Throwable;

    invoke-static {p2, v0, p1}, Lcom/google/android/gms/common/PackageVerificationResult;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/common/PackageVerificationResult;

    move-result-object p1

    .line 9
    :goto_62
    return-object p1

    .line 7
    :cond_63
    new-instance p1, Lcom/google/android/gms/common/zzae;

    .line 10
    invoke-direct {p1}, Lcom/google/android/gms/common/zzae;-><init>()V

    throw p1
.end method

.method public queryPackageSignatureVerifiedWithRetry(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/common/PackageVerificationResult;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/common/PackageSignatureVerifier;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "callingPackage":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/PackageSignatureVerifier;->queryPackageSignatureVerified(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/common/PackageVerificationResult;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/common/PackageVerificationResult;->zzb()V
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_8} :catch_9

    goto :goto_1d

    :catch_9
    move-exception v0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/PackageSignatureVerifier;->queryPackageSignatureVerified(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/common/PackageVerificationResult;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/common/PackageVerificationResult;->zzc()Z

    move-result p2

    if-eqz p2, :cond_1c

    .line 5
    const-string p2, "PkgSignatureVerifier"

    const-string v1, "Got flaky result during package signature verification"

    invoke-static {p2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p1

    .line 4
    :cond_1c
    move-object v0, p1

    .line 2
    :goto_1d
    return-object v0
.end method
