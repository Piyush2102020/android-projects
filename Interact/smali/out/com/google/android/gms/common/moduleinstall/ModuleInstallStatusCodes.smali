.class public final Lcom/google/android/gms/common/moduleinstall/ModuleInstallStatusCodes;
.super Lcom/google/android/gms/common/api/CommonStatusCodes;
.source "com.google.android.gms:play-services-base@@18.1.0"


# static fields
.field public static final INSUFFICIENT_STORAGE:I = 0xb3b3

.field public static final MODULE_NOT_FOUND:I = 0xb3b2

.field public static final NOT_ALLOWED_MODULE:I = 0xb3b1

.field public static final SUCCESS:I = 0x0

.field public static final UNKNOWN_MODULE:I = 0xb3b0


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;-><init>()V

    return-void
.end method

.method public static getStatusCodeString(I)Ljava/lang/String;
    .registers 1
    .param p0, "statusCode"    # I

    .line 1
    nop

    .end local p0    # "statusCode":I
    packed-switch p0, :pswitch_data_16

    invoke-static {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_9
    const-string p0, "INSUFFICIENT_STORAGE"

    return-object p0

    :pswitch_c
    const-string p0, "MODULE_NOT_FOUND"

    return-object p0

    :pswitch_f
    const-string p0, "NOT_ALLOWED_MODULE"

    return-object p0

    :pswitch_12
    const-string p0, "UNKNOWN_MODULE"

    return-object p0

    nop

    :pswitch_data_16
    .packed-switch 0xb3b0
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
    .end packed-switch
.end method