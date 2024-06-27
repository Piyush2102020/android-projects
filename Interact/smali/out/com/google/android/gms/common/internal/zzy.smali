.class public abstract Lcom/google/android/gms/common/internal/zzy;
.super Lcom/google/android/gms/internal/common/zzb;
.source "com.google.android.gms:play-services-basement@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/zzz;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    const-string v0, "com.google.android.gms.common.internal.ICertData"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/common/zzb;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzg(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzz;
    .registers 3

    .line 1
    const-string v0, "com.google.android.gms.common.internal.ICertData"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/common/internal/zzz;

    if-eqz v1, :cond_d

    .line 3
    check-cast v0, Lcom/google/android/gms/common/internal/zzz;

    return-object v0

    :cond_d
    new-instance v0, Lcom/google/android/gms/common/internal/zzx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/zzx;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    packed-switch p1, :pswitch_data_1c

    .line 2
    const/4 p1, 0x0

    return p1

    .line 5
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzy;->zzc()I

    move-result p1

    .line 1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1a

    .line 3
    :pswitch_10
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzy;->zzd()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/common/zzc;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_1a
    const/4 p1, 0x1

    return p1

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_10
        :pswitch_5
    .end packed-switch
.end method
