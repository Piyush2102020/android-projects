.class Lcom/google/android/material/snackbar/SnackbarManager;
.super Ljava/lang/Object;
.source "SnackbarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;,
        Lcom/google/android/material/snackbar/SnackbarManager$Callback;
    }
.end annotation


# static fields
.field private static final LONG_DURATION_MS:I = 0xabe

.field static final MSG_TIMEOUT:I = 0x0

.field private static final SHORT_DURATION_MS:I = 0x5dc

.field private static snackbarManager:Lcom/google/android/material/snackbar/SnackbarManager;


# instance fields
.field private currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

.field private final handler:Landroid/os/Handler;

.field private final lock:Ljava/lang/Object;

.field private nextSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;


# direct methods
.method private constructor <init>()V
    .registers 4

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/snackbar/SnackbarManager;->lock:Ljava/lang/Object;

    .line 51
    new-instance v0, Landroid/os/Handler;

    .line 53
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/android/material/snackbar/SnackbarManager$1;

    invoke-direct {v2, p0}, Lcom/google/android/material/snackbar/SnackbarManager$1;-><init>(Lcom/google/android/material/snackbar/SnackbarManager;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/material/snackbar/SnackbarManager;->handler:Landroid/os/Handler;

    .line 66
    return-void
.end method

.method private cancelSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;I)Z
    .registers 5
    .param p1, "record"    # Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;
    .param p2, "event"    # I

    .line 205
    iget-object v0, p1, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/snackbar/SnackbarManager$Callback;

    .line 206
    .local v0, "callback":Lcom/google/android/material/snackbar/SnackbarManager$Callback;
    if-eqz v0, :cond_14

    .line 208
    iget-object v1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 209
    invoke-interface {v0, p2}, Lcom/google/android/material/snackbar/SnackbarManager$Callback;->dismiss(I)V

    .line 210
    const/4 v1, 0x1

    return v1

    .line 212
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method static getInstance()Lcom/google/android/material/snackbar/SnackbarManager;
    .registers 1

    .line 37
    sget-object v0, Lcom/google/android/material/snackbar/SnackbarManager;->snackbarManager:Lcom/google/android/material/snackbar/SnackbarManager;

    if-nez v0, :cond_b

    .line 38
    new-instance v0, Lcom/google/android/material/snackbar/SnackbarManager;

    invoke-direct {v0}, Lcom/google/android/material/snackbar/SnackbarManager;-><init>()V

    sput-object v0, Lcom/google/android/material/snackbar/SnackbarManager;->snackbarManager:Lcom/google/android/material/snackbar/SnackbarManager;

    .line 40
    :cond_b
    sget-object v0, Lcom/google/android/material/snackbar/SnackbarManager;->snackbarManager:Lcom/google/android/material/snackbar/SnackbarManager;

    return-object v0
.end method

.method private isCurrentSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z
    .registers 3
    .param p1, "callback"    # Lcom/google/android/material/snackbar/SnackbarManager$Callback;

    .line 216
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;->isSnackbar(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private isNextSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z
    .registers 3
    .param p1, "callback"    # Lcom/google/android/material/snackbar/SnackbarManager$Callback;

    .line 220
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarManager;->nextSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;->isSnackbar(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private scheduleTimeoutLocked(Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;)V
    .registers 7
    .param p1, "r"    # Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    .line 224
    iget v0, p1, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;->duration:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_6

    .line 226
    return-void

    .line 229
    :cond_6
    const/16 v0, 0xabe

    .line 230
    .local v0, "durationMs":I
    iget v1, p1, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;->duration:I

    if-lez v1, :cond_f

    .line 231
    iget v0, p1, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;->duration:I

    goto :goto_16

    .line 232
    :cond_f
    iget v1, p1, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;->duration:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_16

    .line 233
    const/16 v0, 0x5dc

    .line 235
    :cond_16
    :goto_16
    iget-object v1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 236
    iget-object v1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 237
    return-void
.end method

.method private showNextSnackbarLocked()V
    .registers 3

    .line 190
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarManager;->nextSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    if-eqz v0, :cond_19

    .line 191
    iput-object v0, p0, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    .line 192
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->nextSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    .line 194
    iget-object v0, v0, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/snackbar/SnackbarManager$Callback;

    .line 195
    .local v0, "callback":Lcom/google/android/material/snackbar/SnackbarManager$Callback;
    if-eqz v0, :cond_17

    .line 196
    invoke-interface {v0}, Lcom/google/android/material/snackbar/SnackbarManager$Callback;->show()V

    goto :goto_19

    .line 199
    :cond_17
    iput-object v1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    .line 202
    .end local v0    # "callback":Lcom/google/android/material/snackbar/SnackbarManager$Callback;
    :cond_19
    :goto_19
    return-void
.end method


# virtual methods
.method public dismiss(Lcom/google/android/material/snackbar/SnackbarManager$Callback;I)V
    .registers 5
    .param p1, "callback"    # Lcom/google/android/material/snackbar/SnackbarManager$Callback;
    .param p2, "event"    # I

    .line 107
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_3
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/SnackbarManager;->isCurrentSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 109
    iget-object v1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    invoke-direct {p0, v1, p2}, Lcom/google/android/material/snackbar/SnackbarManager;->cancelSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;I)Z

    goto :goto_1a

    .line 110
    :cond_f
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/SnackbarManager;->isNextSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 111
    iget-object v1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->nextSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    invoke-direct {p0, v1, p2}, Lcom/google/android/material/snackbar/SnackbarManager;->cancelSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;I)Z

    .line 113
    :cond_1a
    :goto_1a
    monitor-exit v0

    .line 114
    return-void

    .line 113
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method handleTimeout(Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;)V
    .registers 4
    .param p1, "record"    # Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    .line 240
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_3
    iget-object v1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    if-eq v1, p1, :cond_b

    iget-object v1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->nextSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    if-ne v1, p1, :cond_f

    .line 242
    :cond_b
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Lcom/google/android/material/snackbar/SnackbarManager;->cancelSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;I)Z

    .line 244
    :cond_f
    monitor-exit v0

    .line 245
    return-void

    .line 244
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public isCurrent(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z
    .registers 4
    .param p1, "callback"    # Lcom/google/android/material/snackbar/SnackbarManager$Callback;

    .line 163
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 164
    :try_start_3
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/SnackbarManager;->isCurrentSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 165
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public isCurrentOrNext(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z
    .registers 4
    .param p1, "callback"    # Lcom/google/android/material/snackbar/SnackbarManager$Callback;

    .line 169
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 170
    :try_start_3
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/SnackbarManager;->isCurrentSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    move-result v1

    if-nez v1, :cond_12

    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/SnackbarManager;->isNextSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_12

    :cond_10
    const/4 v1, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v1, 0x1

    :goto_13
    monitor-exit v0

    return v1

    .line 171
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public onDismissed(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)V
    .registers 4
    .param p1, "callback"    # Lcom/google/android/material/snackbar/SnackbarManager$Callback;

    .line 121
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_3
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/SnackbarManager;->isCurrentSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 124
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    .line 125
    iget-object v1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->nextSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    if-eqz v1, :cond_13

    .line 126
    invoke-direct {p0}, Lcom/google/android/material/snackbar/SnackbarManager;->showNextSnackbarLocked()V

    .line 129
    :cond_13
    monitor-exit v0

    .line 130
    return-void

    .line 129
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public onShown(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)V
    .registers 4
    .param p1, "callback"    # Lcom/google/android/material/snackbar/SnackbarManager$Callback;

    .line 137
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_3
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/SnackbarManager;->isCurrentSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 139
    iget-object v1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    invoke-direct {p0, v1}, Lcom/google/android/material/snackbar/SnackbarManager;->scheduleTimeoutLocked(Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;)V

    .line 141
    :cond_e
    monitor-exit v0

    .line 142
    return-void

    .line 141
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public pauseTimeout(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)V
    .registers 5
    .param p1, "callback"    # Lcom/google/android/material/snackbar/SnackbarManager$Callback;

    .line 145
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 146
    :try_start_3
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/SnackbarManager;->isCurrentSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    iget-boolean v1, v1, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;->paused:Z

    if-nez v1, :cond_1b

    .line 147
    iget-object v1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;->paused:Z

    .line 148
    iget-object v1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 150
    :cond_1b
    monitor-exit v0

    .line 151
    return-void

    .line 150
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public restoreTimeoutIfPaused(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)V
    .registers 5
    .param p1, "callback"    # Lcom/google/android/material/snackbar/SnackbarManager$Callback;

    .line 154
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 155
    :try_start_3
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/SnackbarManager;->isCurrentSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    iget-boolean v1, v1, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;->paused:Z

    if-eqz v1, :cond_19

    .line 156
    iget-object v1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;->paused:Z

    .line 157
    iget-object v1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    invoke-direct {p0, v1}, Lcom/google/android/material/snackbar/SnackbarManager;->scheduleTimeoutLocked(Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;)V

    .line 159
    :cond_19
    monitor-exit v0

    .line 160
    return-void

    .line 159
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public show(ILcom/google/android/material/snackbar/SnackbarManager$Callback;)V
    .registers 6
    .param p1, "duration"    # I
    .param p2, "callback"    # Lcom/google/android/material/snackbar/SnackbarManager$Callback;

    .line 75
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 76
    :try_start_3
    invoke-direct {p0, p2}, Lcom/google/android/material/snackbar/SnackbarManager;->isCurrentSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 78
    iget-object v1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    iput p1, v1, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;->duration:I

    .line 82
    iget-object v1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 83
    iget-object v1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    invoke-direct {p0, v1}, Lcom/google/android/material/snackbar/SnackbarManager;->scheduleTimeoutLocked(Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;)V

    .line 84
    monitor-exit v0

    return-void

    .line 85
    :cond_1b
    invoke-direct {p0, p2}, Lcom/google/android/material/snackbar/SnackbarManager;->isNextSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 87
    iget-object v1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->nextSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    iput p1, v1, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;->duration:I

    goto :goto_2d

    .line 90
    :cond_26
    new-instance v1, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    invoke-direct {v1, p1, p2}, Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;-><init>(ILcom/google/android/material/snackbar/SnackbarManager$Callback;)V

    iput-object v1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->nextSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    .line 93
    :goto_2d
    iget-object v1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    if-eqz v1, :cond_3a

    .line 94
    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lcom/google/android/material/snackbar/SnackbarManager;->cancelSnackbarLocked(Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;I)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 96
    monitor-exit v0

    return-void

    .line 99
    :cond_3a
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->currentSnackbar:Lcom/google/android/material/snackbar/SnackbarManager$SnackbarRecord;

    .line 101
    invoke-direct {p0}, Lcom/google/android/material/snackbar/SnackbarManager;->showNextSnackbarLocked()V

    .line 103
    monitor-exit v0

    .line 104
    return-void

    .line 103
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw v1
.end method