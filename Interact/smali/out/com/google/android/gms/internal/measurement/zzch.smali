.class public abstract Lcom/google/android/gms/internal/measurement/zzch;
.super Lcom/google/android/gms/internal/measurement/zzbn;
.source "com.google.android.gms:play-services-measurement-base@@21.2.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzci;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    const-string v0, "com.google.android.gms.measurement.api.internal.IEventHandlerProxy"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzbn;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4
    packed-switch p1, :pswitch_data_32

    .line 3
    const/4 p1, 0x0

    return p1

    .line 1
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzch;->zzd()I

    move-result p1

    .line 2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2f

    .line 4
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/zzbo;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/os/Bundle;

    .line 7
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 8
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;)V

    .line 9
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzch;->zze(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    .line 10
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_2f
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_10
        :pswitch_5
    .end packed-switch
.end method
