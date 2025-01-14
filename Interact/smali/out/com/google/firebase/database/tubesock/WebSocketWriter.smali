.class Lcom/google/firebase/database/tubesock/WebSocketWriter;
.super Ljava/lang/Object;
.source "WebSocketWriter.java"


# instance fields
.field private channel:Ljava/nio/channels/WritableByteChannel;

.field private closeSent:Z

.field private final innerThread:Ljava/lang/Thread;

.field private pendingBuffers:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final random:Ljava/util/Random;

.field private volatile stop:Z

.field private websocket:Lcom/google/firebase/database/tubesock/WebSocket;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/tubesock/WebSocket;Ljava/lang/String;I)V
    .registers 8
    .param p1, "websocket"    # Lcom/google/firebase/database/tubesock/WebSocket;
    .param p2, "threadBaseName"    # Ljava/lang/String;
    .param p3, "clientId"    # I

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->random:Ljava/util/Random;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->stop:Z

    .line 35
    iput-boolean v0, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->closeSent:Z

    .line 41
    nop

    .line 42
    invoke-static {}, Lcom/google/firebase/database/tubesock/WebSocket;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/database/tubesock/WebSocketWriter$1;

    invoke-direct {v1, p0}, Lcom/google/firebase/database/tubesock/WebSocketWriter$1;-><init>(Lcom/google/firebase/database/tubesock/WebSocketWriter;)V

    .line 43
    invoke-interface {v0, v1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->innerThread:Ljava/lang/Thread;

    .line 51
    invoke-static {}, Lcom/google/firebase/database/tubesock/WebSocket;->getIntializer()Lcom/google/firebase/database/tubesock/ThreadInitializer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/database/tubesock/WebSocketWriter;->getInnerThread()Ljava/lang/Thread;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Writer-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/firebase/database/tubesock/ThreadInitializer;->setName(Ljava/lang/Thread;Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->websocket:Lcom/google/firebase/database/tubesock/WebSocket;

    .line 53
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->pendingBuffers:Ljava/util/concurrent/BlockingQueue;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/database/tubesock/WebSocketWriter;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/firebase/database/tubesock/WebSocketWriter;

    .line 30
    invoke-direct {p0}, Lcom/google/firebase/database/tubesock/WebSocketWriter;->runWriter()V

    return-void
.end method

.method private frameInBuffer(BZ[B)Ljava/nio/ByteBuffer;
    .registers 13
    .param p1, "opcode"    # B
    .param p2, "masking"    # Z
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    const/4 v0, 0x2

    .line 62
    .local v0, "headerLength":I
    if-eqz p2, :cond_5

    .line 63
    add-int/lit8 v0, v0, 0x4

    .line 65
    :cond_5
    array-length v1, p3

    .line 66
    .local v1, "length":I
    const v2, 0xffff

    const/16 v3, 0x7e

    if-ge v1, v3, :cond_e

    goto :goto_15

    .line 68
    :cond_e
    if-gt v1, v2, :cond_13

    .line 69
    add-int/lit8 v0, v0, 0x2

    goto :goto_15

    .line 71
    :cond_13
    add-int/lit8 v0, v0, 0x8

    .line 73
    :goto_15
    array-length v4, p3

    add-int/2addr v4, v0

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 75
    .local v4, "frame":Ljava/nio/ByteBuffer;
    const/16 v5, -0x80

    .line 76
    .local v5, "fin":B
    or-int v6, v5, p1

    int-to-byte v6, v6

    .line 77
    .local v6, "startByte":B
    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 81
    if-ge v1, v3, :cond_2e

    .line 82
    if-eqz p2, :cond_29

    .line 83
    or-int/lit16 v1, v1, 0x80

    .line 85
    :cond_29
    int-to-byte v2, v1

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_50

    .line 86
    :cond_2e
    if-gt v1, v2, :cond_3f

    .line 87
    const/16 v2, 0x7e

    .line 88
    .local v2, "length_field":I
    if-eqz p2, :cond_36

    .line 89
    or-int/lit16 v2, v2, 0x80

    .line 91
    :cond_36
    int-to-byte v3, v2

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 93
    int-to-short v3, v1

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_50

    .line 95
    .end local v2    # "length_field":I
    :cond_3f
    const/16 v2, 0x7f

    .line 96
    .restart local v2    # "length_field":I
    if-eqz p2, :cond_45

    .line 97
    or-int/lit16 v2, v2, 0x80

    .line 99
    :cond_45
    int-to-byte v3, v2

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 101
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 102
    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 106
    .end local v2    # "length_field":I
    :goto_50
    if-eqz p2, :cond_6b

    .line 107
    invoke-direct {p0}, Lcom/google/firebase/database/tubesock/WebSocketWriter;->generateMask()[B

    move-result-object v2

    .line 108
    .local v2, "mask":[B
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 110
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5a
    array-length v7, p3

    if-ge v3, v7, :cond_6b

    .line 111
    aget-byte v7, p3, v3

    rem-int/lit8 v8, v3, 0x4

    aget-byte v8, v2, v8

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 110
    add-int/lit8 v3, v3, 0x1

    goto :goto_5a

    .line 115
    .end local v2    # "mask":[B
    .end local v3    # "i":I
    :cond_6b
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 116
    return-object v4
.end method

.method private generateMask()[B
    .registers 3

    .line 120
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 121
    .local v0, "mask":[B
    iget-object v1, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->random:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 122
    return-object v0
.end method

.method private handleError(Lcom/google/firebase/database/tubesock/WebSocketException;)V
    .registers 3
    .param p1, "e"    # Lcom/google/firebase/database/tubesock/WebSocketException;

    .line 146
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->websocket:Lcom/google/firebase/database/tubesock/WebSocket;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/tubesock/WebSocket;->handleReceiverError(Lcom/google/firebase/database/tubesock/WebSocketException;)V

    .line 147
    return-void
.end method

.method private runWriter()V
    .registers 4

    .line 151
    nop

    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->stop:Z

    if-nez v0, :cond_f

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_f

    .line 152
    invoke-direct {p0}, Lcom/google/firebase/database/tubesock/WebSocketWriter;->writeMessage()V

    goto :goto_1

    .line 155
    :cond_f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    iget-object v1, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->pendingBuffers:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 156
    invoke-direct {p0}, Lcom/google/firebase/database/tubesock/WebSocketWriter;->writeMessage()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1b} :catch_21
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1b} :catch_1f

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .end local v0    # "i":I
    :cond_1e
    goto :goto_2c

    .line 160
    :catch_1f
    move-exception v0

    goto :goto_2d

    .line 158
    :catch_21
    move-exception v0

    .line 159
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/google/firebase/database/tubesock/WebSocketException;

    const-string v2, "IO Exception"

    invoke-direct {v1, v2, v0}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/google/firebase/database/tubesock/WebSocketWriter;->handleError(Lcom/google/firebase/database/tubesock/WebSocketException;)V

    .line 163
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2c
    nop

    .line 164
    :goto_2d
    return-void
.end method

.method private writeMessage()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->pendingBuffers:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 138
    .local v0, "msg":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->channel:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 139
    return-void
.end method


# virtual methods
.method getInnerThread()Ljava/lang/Thread;
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->innerThread:Ljava/lang/Thread;

    return-object v0
.end method

.method declared-synchronized send(BZ[B)V
    .registers 7
    .param p1, "opcode"    # B
    .param p2, "masking"    # Z
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 126
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/database/tubesock/WebSocketWriter;->frameInBuffer(BZ[B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 127
    .local v0, "frame":Ljava/nio/ByteBuffer;
    iget-boolean v1, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->stop:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_1a

    iget-boolean v1, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->closeSent:Z

    if-nez v1, :cond_12

    if-ne p1, v2, :cond_12

    goto :goto_1a

    .line 128
    :cond_12
    new-instance v1, Lcom/google/firebase/database/tubesock/WebSocketException;

    const-string v2, "Shouldn\'t be sending"

    invoke-direct {v1, v2}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 130
    .end local p0    # "this":Lcom/google/firebase/database/tubesock/WebSocketWriter;
    :cond_1a
    :goto_1a
    if-ne p1, v2, :cond_1f

    .line 131
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->closeSent:Z

    .line 133
    :cond_1f
    iget-object v1, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->pendingBuffers:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    .line 134
    monitor-exit p0

    return-void

    .line 125
    .end local v0    # "frame":Ljava/nio/ByteBuffer;
    .end local p1    # "opcode":B
    .end local p2    # "masking":Z
    .end local p3    # "data":[B
    :catchall_26
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method setOutput(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "output"    # Ljava/io/OutputStream;

    .line 57
    invoke-static {p1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->channel:Ljava/nio/channels/WritableByteChannel;

    .line 58
    return-void
.end method

.method stopIt()V
    .registers 2

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/database/tubesock/WebSocketWriter;->stop:Z

    .line 143
    return-void
.end method
