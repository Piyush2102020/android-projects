.class public Lcom/google/android/gms/common/internal/AccountAccessor;
.super Lcom/google/android/gms/common/internal/IAccountAccessor$Stub;
.source "com.google.android.gms:play-services-basement@@18.1.0"


# direct methods
.method public static getAccountBinderSafe(Lcom/google/android/gms/common/internal/IAccountAccessor;)Landroid/accounts/Account;
    .registers 5
    .param p0, "accountAccessor"    # Lcom/google/android/gms/common/internal/IAccountAccessor;

    .line 1
    nop

    .end local p0    # "accountAccessor":Lcom/google/android/gms/common/internal/IAccountAccessor;
    const/4 v0, 0x0

    if-eqz p0, :cond_1f

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2
    :try_start_8
    invoke-interface {p0}, Lcom/google/android/gms/common/internal/IAccountAccessor;->zzb()Landroid/accounts/Account;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_12
    .catchall {:try_start_8 .. :try_end_c} :catchall_10

    .line 4
    :goto_c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_20

    .line 3
    :catchall_10
    move-exception p0

    goto :goto_1b

    .line 4
    :catch_12
    move-exception p0

    :try_start_13
    const-string p0, "AccountAccessor"

    const-string v3, "Remote account accessor probably died"

    .line 3
    invoke-static {p0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_10

    goto :goto_c

    .line 4
    :goto_1b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5
    throw p0

    .line 4
    :cond_1f
    nop

    :goto_20
    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzb()Landroid/accounts/Account;
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method
