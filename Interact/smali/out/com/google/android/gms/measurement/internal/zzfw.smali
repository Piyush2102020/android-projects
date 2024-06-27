.class public final Lcom/google/android/gms/measurement/internal/zzfw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@21.2.2"


# direct methods
.method public static zza(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/gms/common/R$string;->common_google_play_services_unknown_issue:I

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object p0
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_10

    .line 3
    :catch_b
    move-exception v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 2
    :goto_10
    return-object p0
.end method

.method public static final zzb(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    const-string/jumbo v0, "string"

    invoke-virtual {p1, p0, v0, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const/4 p2, 0x0

    if-nez p0, :cond_b

    goto :goto_f

    .line 2
    :cond_b
    :try_start_b
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2
    :try_end_f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_f} :catch_10

    .line 1
    :goto_f
    return-object p2

    .line 2
    :catch_10
    move-exception p0

    return-object p2
.end method
