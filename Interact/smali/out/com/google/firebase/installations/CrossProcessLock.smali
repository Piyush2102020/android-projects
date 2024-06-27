.class Lcom/google/firebase/installations/CrossProcessLock;
.super Ljava/lang/Object;
.source "CrossProcessLock.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CrossProcessLock"


# instance fields
.field private final channel:Ljava/nio/channels/FileChannel;

.field private final lock:Ljava/nio/channels/FileLock;


# direct methods
.method private constructor <init>(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileLock;)V
    .registers 3
    .param p1, "channel"    # Ljava/nio/channels/FileChannel;
    .param p2, "lock"    # Ljava/nio/channels/FileLock;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/firebase/installations/CrossProcessLock;->channel:Ljava/nio/channels/FileChannel;

    .line 34
    iput-object p2, p0, Lcom/google/firebase/installations/CrossProcessLock;->lock:Ljava/nio/channels/FileLock;

    .line 35
    return-void
.end method

.method static acquire(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/installations/CrossProcessLock;
    .registers 7
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "lockName"    # Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, "channel":Ljava/nio/channels/FileChannel;
    const/4 v1, 0x0

    .line 49
    .local v1, "lock":Ljava/nio/channels/FileLock;
    :try_start_2
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 50
    .local v2, "file":Ljava/io/File;
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v3, v2, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    move-object v0, v3

    .line 53
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v3

    move-object v1, v3

    .line 54
    new-instance v3, Lcom/google/firebase/installations/CrossProcessLock;

    invoke-direct {v3, v0, v1}, Lcom/google/firebase/installations/CrossProcessLock;-><init>(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileLock;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_21} :catch_26
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_21} :catch_24
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_2 .. :try_end_21} :catch_22

    return-object v3

    .line 55
    .end local v2    # "file":Ljava/io/File;
    :catch_22
    move-exception v2

    goto :goto_27

    :catch_24
    move-exception v2

    goto :goto_27

    :catch_26
    move-exception v2

    .line 62
    .local v2, "e":Ljava/lang/Throwable;
    :goto_27
    const-string v3, "CrossProcessLock"

    const-string v4, "encountered error while creating and acquiring the lock, ignoring"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    if-eqz v1, :cond_35

    .line 67
    :try_start_30
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_34

    .line 70
    goto :goto_35

    .line 68
    :catch_34
    move-exception v3

    .line 72
    :cond_35
    :goto_35
    if-eqz v0, :cond_3c

    .line 74
    :try_start_37
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    .line 77
    goto :goto_3c

    .line 75
    :catch_3b
    move-exception v3

    .line 80
    :cond_3c
    :goto_3c
    const/4 v3, 0x0

    return-object v3
.end method


# virtual methods
.method releaseAndClose()V
    .registers 4

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/installations/CrossProcessLock;->lock:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V

    .line 88
    iget-object v0, p0, Lcom/google/firebase/installations/CrossProcessLock;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    .line 92
    goto :goto_13

    .line 89
    :catch_b
    move-exception v0

    .line 91
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "CrossProcessLock"

    const-string v2, "encountered error while releasing, ignoring"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    .end local v0    # "e":Ljava/io/IOException;
    :goto_13
    return-void
.end method
