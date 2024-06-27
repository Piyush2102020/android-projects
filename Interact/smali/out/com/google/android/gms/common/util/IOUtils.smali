.class public final Lcom/google/android/gms/common/util/IOUtils;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.1.0"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Landroid/os/ParcelFileDescriptor;)V
    .registers 1
    .param p0, "p"    # Landroid/os/ParcelFileDescriptor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    nop

    .end local p0    # "p":Landroid/os/ParcelFileDescriptor;
    if-eqz p0, :cond_8

    :try_start_3
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_7

    return-void

    :catch_7
    move-exception p0

    :cond_8
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .registers 1
    .param p0, "c"    # Ljava/io/Closeable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    nop

    .end local p0    # "c":Ljava/io/Closeable;
    if-eqz p0, :cond_8

    :try_start_3
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_7

    return-void

    :catch_7
    move-exception p0

    :cond_8
    return-void
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .registers 4
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    nop

    .end local p0    # "inputStream":Ljava/io/InputStream;
    .end local p1    # "outputStream":Ljava/io/OutputStream;
    const/4 v0, 0x0

    const/16 v1, 0x400

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/common/util/IOUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;ZI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;ZI)J
    .registers 11
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "closeWhenDone"    # Z
    .param p3, "bufferSizeBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    nop

    .end local p0    # "inputStream":Ljava/io/InputStream;
    .end local p1    # "outputStream":Ljava/io/OutputStream;
    .end local p2    # "closeWhenDone":Z
    .end local p3    # "bufferSizeBytes":I
    new-array v0, p3, [B

    const-wide/16 v1, 0x0

    :goto_5
    nop

    .line 3
    const/4 v3, 0x0

    :try_start_7
    invoke-virtual {p0, v0, v3, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_14

    int-to-long v5, v4

    add-long/2addr v1, v5

    .line 4
    invoke-virtual {p1, v0, v3, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_1d

    goto :goto_5

    :cond_14
    if-eqz p2, :cond_1c

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_1c
    return-wide v1

    :catchall_1d
    move-exception p3

    if-nez p2, :cond_21

    goto :goto_27

    .line 5
    :cond_21
    invoke-static {p0}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 7
    :goto_27
    throw p3
.end method

.method public static isGzipByteBuffer([B)Z
    .registers 4
    .param p0, "inputBytes"    # [B

    .line 1
    nop

    .end local p0    # "inputBytes":[B
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_17

    aget-byte v0, p0, v1

    and-int/lit16 v0, v0, 0xff

    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    const v0, 0x8b1f

    if-ne p0, v0, :cond_17

    return v2

    :cond_17
    return v1
.end method

.method public static readInputStreamFully(Ljava/io/InputStream;)[B
    .registers 2
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    nop

    .end local p0    # "is":Ljava/io/InputStream;
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/gms/common/util/IOUtils;->readInputStreamFully(Ljava/io/InputStream;Z)[B

    move-result-object p0

    return-object p0
.end method

.method public static readInputStreamFully(Ljava/io/InputStream;Z)[B
    .registers 4
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "closeWhenDone"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .end local p0    # "is":Ljava/io/InputStream;
    .end local p1    # "closeWhenDone":Z
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3
    const/16 v1, 0x400

    invoke-static {p0, v0, p1, v1}, Lcom/google/android/gms/common/util/IOUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;ZI)J

    .line 4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .registers 5
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .end local p0    # "in":Ljava/io/InputStream;
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 4
    :goto_f
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1b

    .line 6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_1b
    nop

    .line 5
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_f
.end method
