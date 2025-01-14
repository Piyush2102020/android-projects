.class public Lcom/google/firebase/installations/RandomFidGenerator;
.super Ljava/lang/Object;
.source "RandomFidGenerator.java"


# static fields
.field private static final FID_4BIT_PREFIX:B

.field private static final FID_LENGTH:I = 0x16

.field private static final REMOVE_PREFIX_MASK:B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 29
    const-string v0, "01110000"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v0

    sput-byte v0, Lcom/google/firebase/installations/RandomFidGenerator;->FID_4BIT_PREFIX:B

    .line 35
    const-string v0, "00001111"

    invoke-static {v0, v1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v0

    sput-byte v0, Lcom/google/firebase/installations/RandomFidGenerator;->REMOVE_PREFIX_MASK:B

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static encodeFidBase64UrlSafe([B)Ljava/lang/String;
    .registers 4
    .param p0, "rawValue"    # [B

    .line 69
    new-instance v0, Ljava/lang/String;

    .line 70
    const/16 v1, 0xb

    invoke-static {p0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    .line 75
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 76
    const/4 v1, 0x0

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 69
    return-object v0
.end method

.method private static getBytesFromUUID(Ljava/util/UUID;[B)[B
    .registers 5
    .param p0, "uuid"    # Ljava/util/UUID;
    .param p1, "output"    # [B

    .line 80
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 81
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 82
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 83
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public createRandomFid()Ljava/lang/String;
    .registers 5

    .line 52
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    const/16 v1, 0x11

    new-array v1, v1, [B

    invoke-static {v0, v1}, Lcom/google/firebase/installations/RandomFidGenerator;->getBytesFromUUID(Ljava/util/UUID;[B)[B

    move-result-object v0

    .line 53
    .local v0, "uuidBytes":[B
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/16 v3, 0x10

    aput-byte v2, v0, v3

    .line 54
    sget-byte v2, Lcom/google/firebase/installations/RandomFidGenerator;->REMOVE_PREFIX_MASK:B

    aget-byte v3, v0, v1

    and-int/2addr v2, v3

    sget-byte v3, Lcom/google/firebase/installations/RandomFidGenerator;->FID_4BIT_PREFIX:B

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 55
    invoke-static {v0}, Lcom/google/firebase/installations/RandomFidGenerator;->encodeFidBase64UrlSafe([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
