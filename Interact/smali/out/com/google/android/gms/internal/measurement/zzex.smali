.class public final Lcom/google/android/gms/internal/measurement/zzex;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@21.2.2"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzev;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzev;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzex;->zza:Lcom/google/android/gms/internal/measurement/zzle;

    return-void
.end method

.method public static zza(I)I
    .registers 1

    packed-switch p0, :pswitch_data_14

    const/4 p0, 0x0

    return p0

    :pswitch_5
    const/4 p0, 0x7

    return p0

    :pswitch_7
    const/4 p0, 0x6

    return p0

    :pswitch_9
    const/4 p0, 0x5

    return p0

    :pswitch_b
    const/4 p0, 0x4

    return p0

    :pswitch_d
    const/4 p0, 0x3

    return p0

    :pswitch_f
    const/4 p0, 0x2

    return p0

    :pswitch_11
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_11
        :pswitch_f
        :pswitch_d
        :pswitch_b
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method
