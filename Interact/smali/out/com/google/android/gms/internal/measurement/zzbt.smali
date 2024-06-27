.class public final Lcom/google/android/gms/internal/measurement/zzbt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@21.2.2"


# static fields
.field private static final zza:Ljava/lang/reflect/Method;

.field private static final zzb:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 1
    const-string v0, "JobSchedulerCompat"

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x0

    :try_start_5
    const-class v4, Landroid/app/job/JobScheduler;

    const-string v5, "scheduleAsPackage"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/app/job/JobInfo;

    aput-object v7, v6, v1

    const-class v7, Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v7, v6, v8

    const-class v7, Ljava/lang/String;

    const/4 v8, 0x3

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_23
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_23} :catch_24

    goto :goto_33

    .line 4
    :catch_24
    move-exception v4

    .line 2
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 3
    const-string v4, "No scheduleAsPackage method available, falling back to schedule"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v3

    goto :goto_33

    .line 6
    :cond_32
    move-object v4, v3

    .line 1
    :goto_33
    sput-object v4, Lcom/google/android/gms/internal/measurement/zzbt;->zza:Ljava/lang/reflect/Method;

    :try_start_35
    const-class v4, Landroid/os/UserHandle;

    const-string v5, "myUserId"

    new-array v1, v1, [Ljava/lang/Class;

    .line 4
    invoke-virtual {v4, v5, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_3f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_35 .. :try_end_3f} :catch_40

    goto :goto_4e

    .line 3
    :catch_40
    move-exception v1

    .line 5
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 6
    const-string v1, "No myUserId method available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    :cond_4d
    nop

    .line 4
    :goto_4e
    sput-object v3, Lcom/google/android/gms/internal/measurement/zzbt;->zzb:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static zza(Landroid/content/Context;Landroid/app/job/JobInfo;Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    .line 1
    const-string p2, "jobscheduler"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/job/JobScheduler;

    if-eqz p2, :cond_7c

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzbt;->zza:Ljava/lang/reflect/Method;

    if-eqz p3, :cond_77

    .line 2
    const-string p3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {p0, p3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_77

    .line 3
    :cond_17
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbt;->zzb:Ljava/lang/reflect/Method;

    const/4 p3, 0x0

    if-eqz p0, :cond_42

    :try_start_1c
    const-class v0, Landroid/os/UserHandle;

    new-array v1, p3, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_42

    .line 5
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_2c
    .catch Ljava/lang/IllegalAccessException; {:try_start_1c .. :try_end_2c} :catch_2f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1c .. :try_end_2c} :catch_2d

    goto :goto_43

    .line 12
    :catch_2d
    move-exception p0

    goto :goto_30

    :catch_2f
    move-exception p0

    .line 6
    :goto_30
    const-string v0, "JobSchedulerCompat"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 7
    const-string v1, "myUserId invocation illegal"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move p0, p3

    goto :goto_43

    .line 10
    :cond_40
    move p0, p3

    goto :goto_43

    .line 11
    :cond_42
    move p0, p3

    .line 5
    :goto_43
    const-string v0, "UploadAlarm"

    const-string v1, "com.google.android.gms"

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzbt;->zza:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_72

    const/4 v3, 0x4

    :try_start_4c
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, p3

    const/4 v4, 0x1

    aput-object v1, v3, v4

    .line 8
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v3, v1

    const/4 p0, 0x3

    aput-object v0, v3, p0

    invoke-virtual {v2, p2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_69

    .line 9
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p3
    :try_end_69
    .catch Ljava/lang/IllegalAccessException; {:try_start_4c .. :try_end_69} :catch_6c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4c .. :try_end_69} :catch_6a

    :cond_69
    goto :goto_76

    .line 7
    :catch_6a
    move-exception p0

    goto :goto_6d

    :catch_6c
    move-exception p0

    .line 10
    :goto_6d
    const-string p3, "error calling scheduleAsPackage"

    invoke-static {v0, p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    :cond_72
    invoke-virtual {p2, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p3

    .line 9
    :goto_76
    return p3

    .line 3
    :cond_77
    :goto_77
    invoke-virtual {p2, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p0

    return p0

    .line 11
    :cond_7c
    nop

    .line 12
    const/4 p0, 0x0

    throw p0
.end method
