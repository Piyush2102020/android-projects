.class public Lcom/google/firebase/installations/FirebaseInstallationsException;
.super Lcom/google/firebase/FirebaseException;
.source "FirebaseInstallationsException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/installations/FirebaseInstallationsException$Status;
    }
.end annotation


# instance fields
.field private final status:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;


# direct methods
.method public constructor <init>(Lcom/google/firebase/installations/FirebaseInstallationsException$Status;)V
    .registers 2
    .param p1, "status"    # Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    .line 46
    invoke-direct {p0}, Lcom/google/firebase/FirebaseException;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/google/firebase/installations/FirebaseInstallationsException;->status:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$Status;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "status"    # Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    .line 51
    invoke-direct {p0, p1}, Lcom/google/firebase/FirebaseException;-><init>(Ljava/lang/String;)V

    .line 52
    iput-object p2, p0, Lcom/google/firebase/installations/FirebaseInstallationsException;->status:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$Status;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "status"    # Lcom/google/firebase/installations/FirebaseInstallationsException$Status;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 57
    invoke-direct {p0, p1, p3}, Lcom/google/firebase/FirebaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    iput-object p2, p0, Lcom/google/firebase/installations/FirebaseInstallationsException;->status:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    .line 59
    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/firebase/installations/FirebaseInstallationsException$Status;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallationsException;->status:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    return-object v0
.end method
