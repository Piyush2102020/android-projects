.class public Lcom/google/android/gms/common/api/CommonStatusCodes;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.1.0"


# static fields
.field public static final API_NOT_CONNECTED:I = 0x11

.field public static final CANCELED:I = 0x10

.field public static final CONNECTION_SUSPENDED_DURING_CALL:I = 0x14

.field public static final DEVELOPER_ERROR:I = 0xa

.field public static final ERROR:I = 0xd

.field public static final INTERNAL_ERROR:I = 0x8

.field public static final INTERRUPTED:I = 0xe

.field public static final INVALID_ACCOUNT:I = 0x5

.field public static final NETWORK_ERROR:I = 0x7

.field public static final RECONNECTION_TIMED_OUT:I = 0x16

.field public static final RECONNECTION_TIMED_OUT_DURING_UPDATE:I = 0x15

.field public static final REMOTE_EXCEPTION:I = 0x13

.field public static final RESOLUTION_REQUIRED:I = 0x6

.field public static final SERVICE_DISABLED:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SERVICE_VERSION_UPDATE_REQUIRED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SIGN_IN_REQUIRED:I = 0x4

.field public static final SUCCESS:I = 0x0

.field public static final SUCCESS_CACHE:I = -0x1

.field public static final TIMEOUT:I = 0xf


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStatusCodeString(I)Ljava/lang/String;
    .registers 3
    .param p0, "statusCode"    # I

    .line 1
    nop

    .end local p0    # "statusCode":I
    packed-switch p0, :pswitch_data_54

    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown status code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_17
    const-string p0, "RECONNECTION_TIMED_OUT"

    return-object p0

    :pswitch_1a
    const-string p0, "RECONNECTION_TIMED_OUT_DURING_UPDATE"

    return-object p0

    :pswitch_1d
    const-string p0, "CONNECTION_SUSPENDED_DURING_CALL"

    return-object p0

    :pswitch_20
    const-string p0, "REMOTE_EXCEPTION"

    return-object p0

    :pswitch_23
    const-string p0, "DEAD_CLIENT"

    return-object p0

    :pswitch_26
    const-string p0, "API_NOT_CONNECTED"

    return-object p0

    :pswitch_29
    const-string p0, "CANCELED"

    return-object p0

    :pswitch_2c
    const-string p0, "TIMEOUT"

    return-object p0

    :pswitch_2f
    const-string p0, "INTERRUPTED"

    return-object p0

    :pswitch_32
    const-string p0, "ERROR"

    return-object p0

    :pswitch_35
    const-string p0, "DEVELOPER_ERROR"

    return-object p0

    :pswitch_38
    const-string p0, "INTERNAL_ERROR"

    return-object p0

    :pswitch_3b
    const-string p0, "NETWORK_ERROR"

    return-object p0

    :pswitch_3e
    const-string p0, "RESOLUTION_REQUIRED"

    return-object p0

    :pswitch_41
    const-string p0, "INVALID_ACCOUNT"

    return-object p0

    :pswitch_44
    const-string p0, "SIGN_IN_REQUIRED"

    return-object p0

    :pswitch_47
    const-string p0, "SERVICE_DISABLED"

    return-object p0

    :pswitch_4a
    const-string p0, "SERVICE_VERSION_UPDATE_REQUIRED"

    return-object p0

    :pswitch_4d
    const-string p0, "SUCCESS"

    return-object p0

    :pswitch_50
    const-string p0, "SUCCESS_CACHE"

    return-object p0

    nop

    :pswitch_data_54
    .packed-switch -0x1
        :pswitch_50
        :pswitch_4d
        :pswitch_4
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_4
        :pswitch_35
        :pswitch_4
        :pswitch_4
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method
