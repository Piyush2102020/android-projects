.class public Lcom/google/firebase/database/tubesock/WebSocket;
.super Ljava/lang/Object;
.source "WebSocket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/database/tubesock/WebSocket$State;
    }
.end annotation


# static fields
.field static final OPCODE_BINARY:B = 0x2t

.field static final OPCODE_CLOSE:B = 0x8t

.field static final OPCODE_NONE:B = 0x0t

.field static final OPCODE_PING:B = 0x9t

.field static final OPCODE_PONG:B = 0xat

.field static final OPCODE_TEXT:B = 0x1t

.field private static final SSL_HANDSHAKE_TIMEOUT_MS:I = 0xea60

.field private static final THREAD_BASE_NAME:Ljava/lang/String; = "TubeSock"

.field private static final UTF8:Ljava/nio/charset/Charset;

.field private static final clientCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static intializer:Lcom/google/firebase/database/tubesock/ThreadInitializer;

.field private static threadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final clientId:I

.field private eventHandler:Lcom/google/firebase/database/tubesock/WebSocketEventHandler;

.field private final handshake:Lcom/google/firebase/database/tubesock/WebSocketHandshake;

.field private final innerThread:Ljava/lang/Thread;

.field private final logger:Lcom/google/firebase/database/logging/LogWrapper;

.field private final receiver:Lcom/google/firebase/database/tubesock/WebSocketReceiver;

.field private volatile socket:Ljava/net/Socket;

.field private final sslCacheDirectory:Ljava/lang/String;

.field private volatile state:Lcom/google/firebase/database/tubesock/WebSocket$State;

.field private final url:Ljava/net/URI;

.field private final writer:Lcom/google/firebase/database/tubesock/WebSocketWriter;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/google/firebase/database/tubesock/WebSocket;->clientCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 60
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/tubesock/WebSocket;->UTF8:Ljava/nio/charset/Charset;

    .line 84
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/tubesock/WebSocket;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 85
    new-instance v0, Lcom/google/firebase/database/tubesock/WebSocket$1;

    invoke-direct {v0}, Lcom/google/firebase/database/tubesock/WebSocket$1;-><init>()V

    sput-object v0, Lcom/google/firebase/database/tubesock/WebSocket;->intializer:Lcom/google/firebase/database/tubesock/ThreadInitializer;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/database/connection/ConnectionContext;Ljava/net/URI;)V
    .registers 4
    .param p1, "context"    # Lcom/google/firebase/database/connection/ConnectionContext;
    .param p2, "url"    # Ljava/net/URI;

    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/firebase/database/tubesock/WebSocket;-><init>(Lcom/google/firebase/database/connection/ConnectionContext;Ljava/net/URI;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/database/connection/ConnectionContext;Ljava/net/URI;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Lcom/google/firebase/database/connection/ConnectionContext;
    .param p2, "url"    # Ljava/net/URI;
    .param p3, "protocol"    # Ljava/lang/String;

    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/firebase/database/tubesock/WebSocket;-><init>(Lcom/google/firebase/database/connection/ConnectionContext;Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/database/connection/ConnectionContext;Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)V
    .registers 10
    .param p1, "context"    # Lcom/google/firebase/database/connection/ConnectionContext;
    .param p2, "url"    # Ljava/net/URI;
    .param p3, "protocol"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/connection/ConnectionContext;",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 136
    .local p4, "extraHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    sget-object v0, Lcom/google/firebase/database/tubesock/WebSocket$State;->NONE:Lcom/google/firebase/database/tubesock/WebSocket$State;

    iput-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->state:Lcom/google/firebase/database/tubesock/WebSocket$State;

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->socket:Ljava/net/Socket;

    .line 72
    iput-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->eventHandler:Lcom/google/firebase/database/tubesock/WebSocketEventHandler;

    .line 81
    sget-object v0, Lcom/google/firebase/database/tubesock/WebSocket;->clientCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->clientId:I

    .line 137
    nop

    .line 138
    invoke-static {}, Lcom/google/firebase/database/tubesock/WebSocket;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/database/tubesock/WebSocket$2;

    invoke-direct {v2, p0}, Lcom/google/firebase/database/tubesock/WebSocket$2;-><init>(Lcom/google/firebase/database/tubesock/WebSocket;)V

    .line 139
    invoke-interface {v1, v2}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/database/tubesock/WebSocket;->innerThread:Ljava/lang/Thread;

    .line 146
    iput-object p2, p0, Lcom/google/firebase/database/tubesock/WebSocket;->url:Ljava/net/URI;

    .line 147
    invoke-virtual {p1}, Lcom/google/firebase/database/connection/ConnectionContext;->getSslCacheDirectory()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/database/tubesock/WebSocket;->sslCacheDirectory:Ljava/lang/String;

    .line 148
    new-instance v1, Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {p1}, Lcom/google/firebase/database/connection/ConnectionContext;->getLogger()Lcom/google/firebase/database/logging/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sk_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WebSocket"

    invoke-direct {v1, v2, v4, v3}, Lcom/google/firebase/database/logging/LogWrapper;-><init>(Lcom/google/firebase/database/logging/Logger;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/firebase/database/tubesock/WebSocket;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    .line 149
    new-instance v1, Lcom/google/firebase/database/tubesock/WebSocketHandshake;

    invoke-direct {v1, p2, p3, p4}, Lcom/google/firebase/database/tubesock/WebSocketHandshake;-><init>(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v1, p0, Lcom/google/firebase/database/tubesock/WebSocket;->handshake:Lcom/google/firebase/database/tubesock/WebSocketHandshake;

    .line 150
    new-instance v1, Lcom/google/firebase/database/tubesock/WebSocketReceiver;

    invoke-direct {v1, p0}, Lcom/google/firebase/database/tubesock/WebSocketReceiver;-><init>(Lcom/google/firebase/database/tubesock/WebSocket;)V

    iput-object v1, p0, Lcom/google/firebase/database/tubesock/WebSocket;->receiver:Lcom/google/firebase/database/tubesock/WebSocketReceiver;

    .line 151
    new-instance v1, Lcom/google/firebase/database/tubesock/WebSocketWriter;

    const-string v2, "TubeSock"

    invoke-direct {v1, p0, v2, v0}, Lcom/google/firebase/database/tubesock/WebSocketWriter;-><init>(Lcom/google/firebase/database/tubesock/WebSocket;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/google/firebase/database/tubesock/WebSocket;->writer:Lcom/google/firebase/database/tubesock/WebSocketWriter;

    .line 152
    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/database/tubesock/WebSocket;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/firebase/database/tubesock/WebSocket;

    .line 47
    invoke-direct {p0}, Lcom/google/firebase/database/tubesock/WebSocket;->runReader()V

    return-void
.end method

.method private declared-synchronized closeSocket()V
    .registers 5

    monitor-enter p0

    .line 256
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->state:Lcom/google/firebase/database/tubesock/WebSocket$State;

    sget-object v1, Lcom/google/firebase/database/tubesock/WebSocket$State;->DISCONNECTED:Lcom/google/firebase/database/tubesock/WebSocket$State;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_35

    if-ne v0, v1, :cond_9

    .line 257
    monitor-exit p0

    return-void

    .line 259
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->receiver:Lcom/google/firebase/database/tubesock/WebSocketReceiver;

    invoke-virtual {v0}, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->stopit()V

    .line 260
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->writer:Lcom/google/firebase/database/tubesock/WebSocketWriter;

    invoke-virtual {v0}, Lcom/google/firebase/database/tubesock/WebSocketWriter;->stopIt()V

    .line 261
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->socket:Ljava/net/Socket;
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_35

    if-eqz v0, :cond_2a

    .line 263
    :try_start_17
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1c} :catch_1d
    .catchall {:try_start_17 .. :try_end_1c} :catchall_35

    .line 266
    goto :goto_2a

    .line 264
    .end local p0    # "this":Lcom/google/firebase/database/tubesock/WebSocket;
    :catch_1d
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1e
    iget-object v1, p0, Lcom/google/firebase/database/tubesock/WebSocket;->eventHandler:Lcom/google/firebase/database/tubesock/WebSocketEventHandler;

    new-instance v2, Lcom/google/firebase/database/tubesock/WebSocketException;

    const-string v3, "Failed to close"

    invoke-direct {v2, v3, v0}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/google/firebase/database/tubesock/WebSocketEventHandler;->onError(Lcom/google/firebase/database/tubesock/WebSocketException;)V

    .line 268
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2a
    :goto_2a
    sget-object v0, Lcom/google/firebase/database/tubesock/WebSocket$State;->DISCONNECTED:Lcom/google/firebase/database/tubesock/WebSocket$State;

    iput-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->state:Lcom/google/firebase/database/tubesock/WebSocket$State;

    .line 270
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->eventHandler:Lcom/google/firebase/database/tubesock/WebSocketEventHandler;

    invoke-interface {v0}, Lcom/google/firebase/database/tubesock/WebSocketEventHandler;->onClose()V
    :try_end_33
    .catchall {:try_start_1e .. :try_end_33} :catchall_35

    .line 271
    monitor-exit p0

    return-void

    .line 255
    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private createSocket()Ljava/net/Socket;
    .registers 13

    .line 286
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->url:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "scheme":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/firebase/database/tubesock/WebSocket;->url:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, "host":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/firebase/database/tubesock/WebSocket;->url:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->getPort()I

    move-result v2

    .line 292
    .local v2, "port":I
    const-string/jumbo v3, "unknown host: "

    const/4 v4, -0x1

    if-eqz v0, :cond_61

    const-string/jumbo v5, "ws"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_61

    .line 293
    if-ne v2, v4, :cond_25

    .line 294
    const/16 v2, 0x50

    .line 297
    :cond_25
    :try_start_25
    new-instance v4, Ljava/net/Socket;

    invoke-direct {v4, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_2a
    .catch Ljava/net/UnknownHostException; {:try_start_25 .. :try_end_2a} :catch_49
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2a} :catch_2d

    move-object v3, v4

    .line 302
    .local v3, "socket":Ljava/net/Socket;
    goto/16 :goto_ad

    .line 300
    .end local v3    # "socket":Ljava/net/Socket;
    :catch_2d
    move-exception v3

    .line 301
    .local v3, "ioe":Ljava/io/IOException;
    new-instance v4, Lcom/google/firebase/database/tubesock/WebSocketException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error while creating socket to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/firebase/database/tubesock/WebSocket;->url:Ljava/net/URI;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 298
    .end local v3    # "ioe":Ljava/io/IOException;
    :catch_49
    move-exception v4

    .line 299
    .local v4, "uhe":Ljava/net/UnknownHostException;
    new-instance v5, Lcom/google/firebase/database/tubesock/WebSocketException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3, v4}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 303
    .end local v4    # "uhe":Ljava/net/UnknownHostException;
    :cond_61
    if-eqz v0, :cond_fd

    const-string/jumbo v5, "wss"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_fd

    .line 304
    if-ne v2, v4, :cond_70

    .line 305
    const/16 v2, 0x1bb

    .line 307
    :cond_70
    const/4 v4, 0x0

    .line 309
    .local v4, "sessionCache":Landroid/net/SSLSessionCache;
    :try_start_71
    iget-object v5, p0, Lcom/google/firebase/database/tubesock/WebSocket;->sslCacheDirectory:Ljava/lang/String;

    if-eqz v5, :cond_82

    .line 310
    new-instance v5, Landroid/net/SSLSessionCache;

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/google/firebase/database/tubesock/WebSocket;->sslCacheDirectory:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Landroid/net/SSLSessionCache;-><init>(Ljava/io/File;)V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_81} :catch_83

    move-object v4, v5

    .line 314
    :cond_82
    goto :goto_8e

    .line 312
    :catch_83
    move-exception v5

    .line 313
    .local v5, "e":Ljava/io/IOException;
    iget-object v6, p0, Lcom/google/firebase/database/tubesock/WebSocket;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "Failed to initialize SSL session cache"

    invoke-virtual {v6, v8, v5, v7}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 317
    .end local v5    # "e":Ljava/io/IOException;
    :goto_8e
    nop

    .line 318
    const v5, 0xea60

    :try_start_92
    invoke-static {v5, v4}, Landroid/net/SSLCertificateSocketFactory;->getDefault(ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    .line 320
    .local v5, "factory":Ljavax/net/SocketFactory;
    invoke-virtual {v5, v1, v2}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v6

    check-cast v6, Ljavax/net/ssl/SSLSocket;

    .line 323
    .local v6, "sslSocket":Ljavax/net/ssl/SSLSocket;
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v7

    .line 324
    .local v7, "hv":Ljavax/net/ssl/HostnameVerifier;
    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v8

    .line 326
    .local v8, "sslSession":Ljavax/net/ssl/SSLSession;
    invoke-interface {v7, v1, v8}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v9

    if-eqz v9, :cond_ae

    .line 330
    move-object v3, v6

    .line 335
    .end local v5    # "factory":Ljavax/net/SocketFactory;
    .end local v6    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .end local v7    # "hv":Ljavax/net/ssl/HostnameVerifier;
    .end local v8    # "sslSession":Ljavax/net/ssl/SSLSession;
    .local v3, "socket":Ljava/net/Socket;
    nop

    .line 336
    .end local v4    # "sessionCache":Landroid/net/SSLSessionCache;
    nop

    .line 340
    :goto_ad
    return-object v3

    .line 327
    .end local v3    # "socket":Ljava/net/Socket;
    .restart local v4    # "sessionCache":Landroid/net/SSLSessionCache;
    .restart local v5    # "factory":Ljavax/net/SocketFactory;
    .restart local v6    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .restart local v7    # "hv":Ljavax/net/ssl/HostnameVerifier;
    .restart local v8    # "sslSession":Ljavax/net/ssl/SSLSession;
    :cond_ae
    new-instance v9, Lcom/google/firebase/database/tubesock/WebSocketException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error while verifying secure socket to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/google/firebase/database/tubesock/WebSocket;->url:Ljava/net/URI;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    .end local v0    # "scheme":Ljava/lang/String;
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "port":I
    .end local v4    # "sessionCache":Landroid/net/SSLSessionCache;
    throw v9
    :try_end_c9
    .catch Ljava/net/UnknownHostException; {:try_start_92 .. :try_end_c9} :catch_e5
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_c9} :catch_c9

    .line 333
    .end local v5    # "factory":Ljavax/net/SocketFactory;
    .end local v6    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .end local v7    # "hv":Ljavax/net/ssl/HostnameVerifier;
    .end local v8    # "sslSession":Ljavax/net/ssl/SSLSession;
    .restart local v0    # "scheme":Ljava/lang/String;
    .restart local v1    # "host":Ljava/lang/String;
    .restart local v2    # "port":I
    .restart local v4    # "sessionCache":Landroid/net/SSLSessionCache;
    :catch_c9
    move-exception v3

    .line 334
    .local v3, "ioe":Ljava/io/IOException;
    new-instance v5, Lcom/google/firebase/database/tubesock/WebSocketException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error while creating secure socket to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/firebase/database/tubesock/WebSocket;->url:Ljava/net/URI;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 331
    .end local v3    # "ioe":Ljava/io/IOException;
    :catch_e5
    move-exception v5

    .line 332
    .local v5, "uhe":Ljava/net/UnknownHostException;
    new-instance v6, Lcom/google/firebase/database/tubesock/WebSocketException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3, v5}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 337
    .end local v4    # "sessionCache":Landroid/net/SSLSessionCache;
    .end local v5    # "uhe":Ljava/net/UnknownHostException;
    :cond_fd
    new-instance v3, Lcom/google/firebase/database/tubesock/WebSocketException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unsupported protocol: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method static getIntializer()Lcom/google/firebase/database/tubesock/ThreadInitializer;
    .registers 1

    .line 98
    sget-object v0, Lcom/google/firebase/database/tubesock/WebSocket;->intializer:Lcom/google/firebase/database/tubesock/ThreadInitializer;

    return-object v0
.end method

.method static getThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .registers 1

    .line 94
    sget-object v0, Lcom/google/firebase/database/tubesock/WebSocket;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    return-object v0
.end method

.method private runReader()V
    .registers 17

    .line 360
    move-object/from16 v1, p0

    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/google/firebase/database/tubesock/WebSocket;->createSocket()Ljava/net/Socket;

    move-result-object v0

    move-object v2, v0

    .line 361
    .local v2, "socket":Ljava/net/Socket;
    monitor-enter p0
    :try_end_8
    .catch Lcom/google/firebase/database/tubesock/WebSocketException; {:try_start_2 .. :try_end_8} :catch_142
    .catchall {:try_start_2 .. :try_end_8} :catchall_11f

    .line 362
    :try_start_8
    iput-object v2, v1, Lcom/google/firebase/database/tubesock/WebSocket;->socket:Ljava/net/Socket;

    .line 363
    iget-object v0, v1, Lcom/google/firebase/database/tubesock/WebSocket;->state:Lcom/google/firebase/database/tubesock/WebSocket$State;

    sget-object v3, Lcom/google/firebase/database/tubesock/WebSocket$State;->DISCONNECTED:Lcom/google/firebase/database/tubesock/WebSocket$State;
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_11c

    if-ne v0, v3, :cond_25

    .line 367
    :try_start_10
    iget-object v0, v1, Lcom/google/firebase/database/tubesock/WebSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_15} :catch_1e
    .catchall {:try_start_10 .. :try_end_15} :catchall_11c

    .line 370
    nop

    .line 371
    const/4 v0, 0x0

    :try_start_17
    iput-object v0, v1, Lcom/google/firebase/database/tubesock/WebSocket;->socket:Ljava/net/Socket;

    .line 372
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_11c

    .line 434
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/database/tubesock/WebSocket;->close()V

    .line 372
    return-void

    .line 368
    :catch_1e
    move-exception v0

    .line 369
    .local v0, "e":Ljava/io/IOException;
    :try_start_1f
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v2    # "socket":Ljava/net/Socket;
    throw v3

    .line 374
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "socket":Ljava/net/Socket;
    :cond_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_11c

    .line 376
    :try_start_26
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 377
    .local v0, "input":Ljava/io/DataInputStream;
    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 379
    .local v3, "output":Ljava/io/OutputStream;
    iget-object v4, v1, Lcom/google/firebase/database/tubesock/WebSocket;->handshake:Lcom/google/firebase/database/tubesock/WebSocketHandshake;

    invoke-virtual {v4}, Lcom/google/firebase/database/tubesock/WebSocketHandshake;->getHandshake()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 381
    const/4 v4, 0x0

    .line 382
    .local v4, "handshakeComplete":Z
    const/16 v5, 0x3e8

    .line 383
    .local v5, "len":I
    new-array v6, v5, [B

    .line 384
    .local v6, "buffer":[B
    const/4 v7, 0x0

    .line 385
    .local v7, "pos":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 387
    .local v8, "handshakeLines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_47
    if-nez v4, :cond_b4

    .line 388
    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v9

    .line 389
    .local v9, "b":I
    const/4 v10, -0x1

    if-eq v9, v10, :cond_ac

    .line 392
    int-to-byte v10, v9

    aput-byte v10, v6, v7

    .line 393
    add-int/lit8 v7, v7, 0x1

    .line 395
    add-int/lit8 v10, v7, -0x1

    aget-byte v10, v6, v10

    const/16 v11, 0xa

    if-ne v10, v11, :cond_86

    add-int/lit8 v10, v7, -0x2

    aget-byte v10, v6, v10

    const/16 v11, 0xd

    if-ne v10, v11, :cond_86

    .line 396
    new-instance v10, Ljava/lang/String;

    sget-object v11, Lcom/google/firebase/database/tubesock/WebSocket;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v10, v6, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 397
    .local v10, "line":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7a

    .line 398
    const/4 v4, 0x1

    goto :goto_81

    .line 400
    :cond_7a
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    :goto_81
    new-array v11, v5, [B

    move-object v6, v11

    .line 404
    const/4 v7, 0x0

    .end local v10    # "line":Ljava/lang/String;
    goto :goto_8a

    .line 405
    :cond_86
    const/16 v10, 0x3e8

    if-eq v7, v10, :cond_8c

    :goto_8a
    nop

    .line 410
    .end local v9    # "b":I
    goto :goto_47

    .line 407
    .restart local v9    # "b":I
    :cond_8c
    new-instance v10, Ljava/lang/String;

    sget-object v11, Lcom/google/firebase/database/tubesock/WebSocket;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v10, v6, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 408
    .restart local v10    # "line":Ljava/lang/String;
    new-instance v11, Lcom/google/firebase/database/tubesock/WebSocketException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unexpected long line in handshake: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 390
    .end local v10    # "line":Ljava/lang/String;
    :cond_ac
    new-instance v10, Lcom/google/firebase/database/tubesock/WebSocketException;

    const-string v11, "Connection closed before handshake was complete"

    invoke-direct {v10, v11}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 412
    .end local v9    # "b":I
    :cond_b4
    iget-object v9, v1, Lcom/google/firebase/database/tubesock/WebSocket;->handshake:Lcom/google/firebase/database/tubesock/WebSocketHandshake;

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v9, v11}, Lcom/google/firebase/database/tubesock/WebSocketHandshake;->verifyServerStatusLine(Ljava/lang/String;)V

    .line 413
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 415
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 416
    .local v9, "lowercaseHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_cc
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_f5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 417
    .local v12, "line":Ljava/lang/String;
    const-string v13, ": "

    const/4 v14, 0x2

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v13

    .line 418
    .local v13, "keyValue":[Ljava/lang/String;
    aget-object v14, v13, v10

    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 419
    invoke-virtual {v14, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    aget-object v15, v13, v15

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v15, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    .line 418
    invoke-virtual {v9, v14, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    const/4 v10, 0x0

    .end local v12    # "line":Ljava/lang/String;
    .end local v13    # "keyValue":[Ljava/lang/String;
    goto :goto_cc

    .line 421
    :cond_f5
    iget-object v10, v1, Lcom/google/firebase/database/tubesock/WebSocket;->handshake:Lcom/google/firebase/database/tubesock/WebSocketHandshake;

    invoke-virtual {v10, v9}, Lcom/google/firebase/database/tubesock/WebSocketHandshake;->verifyServerHandshakeHeaders(Ljava/util/HashMap;)V

    .line 423
    iget-object v10, v1, Lcom/google/firebase/database/tubesock/WebSocket;->writer:Lcom/google/firebase/database/tubesock/WebSocketWriter;

    invoke-virtual {v10, v3}, Lcom/google/firebase/database/tubesock/WebSocketWriter;->setOutput(Ljava/io/OutputStream;)V

    .line 424
    iget-object v10, v1, Lcom/google/firebase/database/tubesock/WebSocket;->receiver:Lcom/google/firebase/database/tubesock/WebSocketReceiver;

    invoke-virtual {v10, v0}, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->setInput(Ljava/io/DataInputStream;)V

    .line 425
    sget-object v10, Lcom/google/firebase/database/tubesock/WebSocket$State;->CONNECTED:Lcom/google/firebase/database/tubesock/WebSocket$State;

    iput-object v10, v1, Lcom/google/firebase/database/tubesock/WebSocket;->state:Lcom/google/firebase/database/tubesock/WebSocket$State;

    .line 426
    iget-object v10, v1, Lcom/google/firebase/database/tubesock/WebSocket;->writer:Lcom/google/firebase/database/tubesock/WebSocketWriter;

    invoke-virtual {v10}, Lcom/google/firebase/database/tubesock/WebSocketWriter;->getInnerThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    .line 427
    iget-object v10, v1, Lcom/google/firebase/database/tubesock/WebSocket;->eventHandler:Lcom/google/firebase/database/tubesock/WebSocketEventHandler;

    invoke-interface {v10}, Lcom/google/firebase/database/tubesock/WebSocketEventHandler;->onOpen()V

    .line 428
    iget-object v10, v1, Lcom/google/firebase/database/tubesock/WebSocket;->receiver:Lcom/google/firebase/database/tubesock/WebSocketReceiver;

    invoke-virtual {v10}, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->run()V
    :try_end_11b
    .catch Lcom/google/firebase/database/tubesock/WebSocketException; {:try_start_26 .. :try_end_11b} :catch_142
    .catchall {:try_start_26 .. :try_end_11b} :catchall_11f

    .end local v0    # "input":Ljava/io/DataInputStream;
    .end local v2    # "socket":Ljava/net/Socket;
    .end local v3    # "output":Ljava/io/OutputStream;
    .end local v4    # "handshakeComplete":Z
    .end local v5    # "len":I
    .end local v6    # "buffer":[B
    .end local v7    # "pos":I
    .end local v8    # "handshakeLines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "lowercaseHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_148

    .line 374
    .restart local v2    # "socket":Ljava/net/Socket;
    :catchall_11c
    move-exception v0

    :try_start_11d
    monitor-exit p0
    :try_end_11e
    .catchall {:try_start_11d .. :try_end_11e} :catchall_11c

    :try_start_11e
    throw v0
    :try_end_11f
    .catch Lcom/google/firebase/database/tubesock/WebSocketException; {:try_start_11e .. :try_end_11f} :catch_142
    .catchall {:try_start_11e .. :try_end_11f} :catchall_11f

    .line 431
    .end local v2    # "socket":Ljava/net/Socket;
    :catchall_11f
    move-exception v0

    .line 432
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_120
    iget-object v2, v1, Lcom/google/firebase/database/tubesock/WebSocket;->eventHandler:Lcom/google/firebase/database/tubesock/WebSocketEventHandler;

    new-instance v3, Lcom/google/firebase/database/tubesock/WebSocketException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error while connecting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v2, v3}, Lcom/google/firebase/database/tubesock/WebSocketEventHandler;->onError(Lcom/google/firebase/database/tubesock/WebSocketException;)V

    .end local v0    # "t":Ljava/lang/Throwable;
    goto :goto_148

    .line 429
    :catch_142
    move-exception v0

    .line 430
    .local v0, "wse":Lcom/google/firebase/database/tubesock/WebSocketException;
    iget-object v2, v1, Lcom/google/firebase/database/tubesock/WebSocket;->eventHandler:Lcom/google/firebase/database/tubesock/WebSocketEventHandler;

    invoke-interface {v2, v0}, Lcom/google/firebase/database/tubesock/WebSocketEventHandler;->onError(Lcom/google/firebase/database/tubesock/WebSocketException;)V
    :try_end_148
    .catchall {:try_start_120 .. :try_end_148} :catchall_14d

    .line 434
    .end local v0    # "wse":Lcom/google/firebase/database/tubesock/WebSocketException;
    :goto_148
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/database/tubesock/WebSocket;->close()V

    .line 435
    nop

    .line 436
    return-void

    .line 434
    :catchall_14d
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/database/tubesock/WebSocket;->close()V

    .line 435
    throw v0
.end method

.method private declared-synchronized send(B[B)V
    .registers 7
    .param p1, "opcode"    # B
    .param p2, "data"    # [B

    monitor-enter p0

    .line 205
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->state:Lcom/google/firebase/database/tubesock/WebSocket$State;

    sget-object v1, Lcom/google/firebase/database/tubesock/WebSocket$State;->CONNECTED:Lcom/google/firebase/database/tubesock/WebSocket$State;

    if-eq v0, v1, :cond_14

    .line 207
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->eventHandler:Lcom/google/firebase/database/tubesock/WebSocketEventHandler;

    new-instance v1, Lcom/google/firebase/database/tubesock/WebSocketException;

    const-string v2, "error while sending data: not connected"

    invoke-direct {v1, v2}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/firebase/database/tubesock/WebSocketEventHandler;->onError(Lcom/google/firebase/database/tubesock/WebSocketException;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_2d

    goto :goto_2b

    .line 210
    .end local p0    # "this":Lcom/google/firebase/database/tubesock/WebSocket;
    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->writer:Lcom/google/firebase/database/tubesock/WebSocketWriter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/firebase/database/tubesock/WebSocketWriter;->send(BZ[B)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1a} :catch_1b
    .catchall {:try_start_14 .. :try_end_1a} :catchall_2d

    .line 214
    goto :goto_2b

    .line 211
    :catch_1b
    move-exception v0

    .line 212
    .local v0, "e":Ljava/io/IOException;
    :try_start_1c
    iget-object v1, p0, Lcom/google/firebase/database/tubesock/WebSocket;->eventHandler:Lcom/google/firebase/database/tubesock/WebSocketEventHandler;

    new-instance v2, Lcom/google/firebase/database/tubesock/WebSocketException;

    const-string v3, "Failed to send frame"

    invoke-direct {v2, v3, v0}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/google/firebase/database/tubesock/WebSocketEventHandler;->onError(Lcom/google/firebase/database/tubesock/WebSocketException;)V

    .line 213
    invoke-virtual {p0}, Lcom/google/firebase/database/tubesock/WebSocket;->close()V
    :try_end_2b
    .catchall {:try_start_1c .. :try_end_2b} :catchall_2d

    .line 216
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2b
    monitor-exit p0

    return-void

    .line 204
    .end local p1    # "opcode":B
    .end local p2    # "data":[B
    :catchall_2d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private sendCloseHandshake()V
    .registers 5

    .line 275
    :try_start_0
    sget-object v0, Lcom/google/firebase/database/tubesock/WebSocket$State;->DISCONNECTING:Lcom/google/firebase/database/tubesock/WebSocket$State;

    iput-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->state:Lcom/google/firebase/database/tubesock/WebSocket$State;

    .line 278
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->writer:Lcom/google/firebase/database/tubesock/WebSocketWriter;

    invoke-virtual {v0}, Lcom/google/firebase/database/tubesock/WebSocketWriter;->stopIt()V

    .line 279
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->writer:Lcom/google/firebase/database/tubesock/WebSocketWriter;

    const/4 v1, 0x0

    new-array v1, v1, [B

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/firebase/database/tubesock/WebSocketWriter;->send(BZ[B)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_15

    .line 282
    goto :goto_22

    .line 280
    :catch_15
    move-exception v0

    .line 281
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/google/firebase/database/tubesock/WebSocket;->eventHandler:Lcom/google/firebase/database/tubesock/WebSocketEventHandler;

    new-instance v2, Lcom/google/firebase/database/tubesock/WebSocketException;

    const-string v3, "Failed to send close frame"

    invoke-direct {v2, v3, v0}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/google/firebase/database/tubesock/WebSocketEventHandler;->onError(Lcom/google/firebase/database/tubesock/WebSocketException;)V

    .line 283
    .end local v0    # "e":Ljava/io/IOException;
    :goto_22
    return-void
.end method

.method public static setThreadFactory(Ljava/util/concurrent/ThreadFactory;Lcom/google/firebase/database/tubesock/ThreadInitializer;)V
    .registers 2
    .param p0, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p1, "intializer"    # Lcom/google/firebase/database/tubesock/ThreadInitializer;

    .line 102
    sput-object p0, Lcom/google/firebase/database/tubesock/WebSocket;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 103
    sput-object p1, Lcom/google/firebase/database/tubesock/WebSocket;->intializer:Lcom/google/firebase/database/tubesock/ThreadInitializer;

    .line 104
    return-void
.end method


# virtual methods
.method public blockClose()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->writer:Lcom/google/firebase/database/tubesock/WebSocketWriter;

    invoke-virtual {v0}, Lcom/google/firebase/database/tubesock/WebSocketWriter;->getInnerThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_17

    .line 353
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->writer:Lcom/google/firebase/database/tubesock/WebSocketWriter;

    invoke-virtual {v0}, Lcom/google/firebase/database/tubesock/WebSocketWriter;->getInnerThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 355
    :cond_17
    invoke-virtual {p0}, Lcom/google/firebase/database/tubesock/WebSocket;->getInnerThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 356
    return-void
.end method

.method public declared-synchronized close()V
    .registers 3

    monitor-enter p0

    .line 231
    :try_start_1
    sget-object v0, Lcom/google/firebase/database/tubesock/WebSocket$3;->$SwitchMap$com$google$firebase$database$tubesock$WebSocket$State:[I

    iget-object v1, p0, Lcom/google/firebase/database/tubesock/WebSocket;->state:Lcom/google/firebase/database/tubesock/WebSocket$State;

    invoke-virtual {v1}, Lcom/google/firebase/database/tubesock/WebSocket$State;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_24

    packed-switch v0, :pswitch_data_28

    .line 249
    .end local p0    # "this":Lcom/google/firebase/database/tubesock/WebSocket;
    monitor-exit p0

    return-void

    .line 247
    .restart local p0    # "this":Lcom/google/firebase/database/tubesock/WebSocket;
    :pswitch_10
    monitor-exit p0

    return-void

    .line 245
    :pswitch_12
    monitor-exit p0

    return-void

    .line 242
    :pswitch_14
    :try_start_14
    invoke-direct {p0}, Lcom/google/firebase/database/tubesock/WebSocket;->sendCloseHandshake()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_24

    .line 243
    monitor-exit p0

    return-void

    .line 237
    .end local p0    # "this":Lcom/google/firebase/database/tubesock/WebSocket;
    :pswitch_19
    :try_start_19
    invoke-direct {p0}, Lcom/google/firebase/database/tubesock/WebSocket;->closeSocket()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_24

    .line 238
    monitor-exit p0

    return-void

    .line 233
    :pswitch_1e
    :try_start_1e
    sget-object v0, Lcom/google/firebase/database/tubesock/WebSocket$State;->DISCONNECTED:Lcom/google/firebase/database/tubesock/WebSocket$State;

    iput-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->state:Lcom/google/firebase/database/tubesock/WebSocket$State;
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_24

    .line 234
    monitor-exit p0

    return-void

    .line 230
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_19
        :pswitch_14
        :pswitch_12
        :pswitch_10
    .end packed-switch
.end method

.method public declared-synchronized connect()V
    .registers 5

    monitor-enter p0

    .line 172
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->state:Lcom/google/firebase/database/tubesock/WebSocket$State;

    sget-object v1, Lcom/google/firebase/database/tubesock/WebSocket$State;->NONE:Lcom/google/firebase/database/tubesock/WebSocket$State;

    if-eq v0, v1, :cond_18

    .line 173
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->eventHandler:Lcom/google/firebase/database/tubesock/WebSocketEventHandler;

    new-instance v1, Lcom/google/firebase/database/tubesock/WebSocketException;

    const-string v2, "connect() already called"

    invoke-direct {v1, v2}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/firebase/database/tubesock/WebSocketEventHandler;->onError(Lcom/google/firebase/database/tubesock/WebSocketException;)V

    .line 174
    invoke-virtual {p0}, Lcom/google/firebase/database/tubesock/WebSocket;->close()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_45

    .line 175
    monitor-exit p0

    return-void

    .line 177
    .end local p0    # "this":Lcom/google/firebase/database/tubesock/WebSocket;
    :cond_18
    :try_start_18
    invoke-static {}, Lcom/google/firebase/database/tubesock/WebSocket;->getIntializer()Lcom/google/firebase/database/tubesock/ThreadInitializer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/database/tubesock/WebSocket;->getInnerThread()Ljava/lang/Thread;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TubeSockReader-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/firebase/database/tubesock/WebSocket;->clientId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/firebase/database/tubesock/ThreadInitializer;->setName(Ljava/lang/Thread;Ljava/lang/String;)V

    .line 178
    sget-object v0, Lcom/google/firebase/database/tubesock/WebSocket$State;->CONNECTING:Lcom/google/firebase/database/tubesock/WebSocket$State;

    iput-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->state:Lcom/google/firebase/database/tubesock/WebSocket$State;

    .line 179
    invoke-virtual {p0}, Lcom/google/firebase/database/tubesock/WebSocket;->getInnerThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_43
    .catchall {:try_start_18 .. :try_end_43} :catchall_45

    .line 180
    monitor-exit p0

    return-void

    .line 171
    :catchall_45
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getEventHandler()Lcom/google/firebase/database/tubesock/WebSocketEventHandler;
    .registers 2

    .line 164
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->eventHandler:Lcom/google/firebase/database/tubesock/WebSocketEventHandler;

    return-object v0
.end method

.method getInnerThread()Ljava/lang/Thread;
    .registers 2

    .line 439
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->innerThread:Ljava/lang/Thread;

    return-object v0
.end method

.method handleReceiverError(Lcom/google/firebase/database/tubesock/WebSocketException;)V
    .registers 4
    .param p1, "e"    # Lcom/google/firebase/database/tubesock/WebSocketException;

    .line 219
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->eventHandler:Lcom/google/firebase/database/tubesock/WebSocketEventHandler;

    invoke-interface {v0, p1}, Lcom/google/firebase/database/tubesock/WebSocketEventHandler;->onError(Lcom/google/firebase/database/tubesock/WebSocketException;)V

    .line 220
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->state:Lcom/google/firebase/database/tubesock/WebSocket$State;

    sget-object v1, Lcom/google/firebase/database/tubesock/WebSocket$State;->CONNECTED:Lcom/google/firebase/database/tubesock/WebSocket$State;

    if-ne v0, v1, :cond_e

    .line 221
    invoke-virtual {p0}, Lcom/google/firebase/database/tubesock/WebSocket;->close()V

    .line 223
    :cond_e
    invoke-direct {p0}, Lcom/google/firebase/database/tubesock/WebSocket;->closeSocket()V

    .line 224
    return-void
.end method

.method onCloseOpReceived()V
    .registers 1

    .line 252
    invoke-direct {p0}, Lcom/google/firebase/database/tubesock/WebSocket;->closeSocket()V

    .line 253
    return-void
.end method

.method declared-synchronized pong([B)V
    .registers 3
    .param p1, "data"    # [B

    monitor-enter p0

    .line 201
    const/16 v0, 0xa

    :try_start_3
    invoke-direct {p0, v0, p1}, Lcom/google/firebase/database/tubesock/WebSocket;->send(B[B)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    .line 202
    monitor-exit p0

    return-void

    .line 200
    .end local p0    # "this":Lcom/google/firebase/database/tubesock/WebSocket;
    .end local p1    # "data":[B
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized send(Ljava/lang/String;)V
    .registers 4
    .param p1, "data"    # Ljava/lang/String;

    monitor-enter p0

    .line 188
    :try_start_1
    sget-object v0, Lcom/google/firebase/database/tubesock/WebSocket;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/google/firebase/database/tubesock/WebSocket;->send(B[B)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 189
    monitor-exit p0

    return-void

    .line 187
    .end local p0    # "this":Lcom/google/firebase/database/tubesock/WebSocket;
    .end local p1    # "data":Ljava/lang/String;
    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized send([B)V
    .registers 3
    .param p1, "data"    # [B

    monitor-enter p0

    .line 197
    const/4 v0, 0x2

    :try_start_2
    invoke-direct {p0, v0, p1}, Lcom/google/firebase/database/tubesock/WebSocket;->send(B[B)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 198
    monitor-exit p0

    return-void

    .line 196
    .end local p0    # "this":Lcom/google/firebase/database/tubesock/WebSocket;
    .end local p1    # "data":[B
    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setEventHandler(Lcom/google/firebase/database/tubesock/WebSocketEventHandler;)V
    .registers 2
    .param p1, "eventHandler"    # Lcom/google/firebase/database/tubesock/WebSocketEventHandler;

    .line 160
    iput-object p1, p0, Lcom/google/firebase/database/tubesock/WebSocket;->eventHandler:Lcom/google/firebase/database/tubesock/WebSocketEventHandler;

    .line 161
    return-void
.end method
