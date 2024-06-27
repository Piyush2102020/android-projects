.class public Lcom/example/talkative/PrivateMessage;
.super Ljava/lang/Object;
.source "PrivateMessage.java"


# instance fields
.field private messageId:Ljava/lang/String;

.field private messageText:Ljava/lang/String;

.field private receiverId:Ljava/lang/String;

.field private senderId:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 7
    .param p1, "messageId"    # Ljava/lang/String;
    .param p2, "messageText"    # Ljava/lang/String;
    .param p3, "senderId"    # Ljava/lang/String;
    .param p4, "receiverId"    # Ljava/lang/String;
    .param p5, "timestamp"    # J

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/example/talkative/PrivateMessage;->messageId:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/example/talkative/PrivateMessage;->messageText:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/example/talkative/PrivateMessage;->senderId:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/example/talkative/PrivateMessage;->receiverId:Ljava/lang/String;

    .line 19
    iput-wide p5, p0, Lcom/example/talkative/PrivateMessage;->timestamp:J

    .line 20
    return-void
.end method


# virtual methods
.method public getMessageId()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/example/talkative/PrivateMessage;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageText()Ljava/lang/String;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/example/talkative/PrivateMessage;->messageText:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverId()Ljava/lang/String;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/example/talkative/PrivateMessage;->receiverId:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderId()Ljava/lang/String;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/example/talkative/PrivateMessage;->senderId:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .line 55
    iget-wide v0, p0, Lcom/example/talkative/PrivateMessage;->timestamp:J

    return-wide v0
.end method

.method public setMessageId(Ljava/lang/String;)V
    .registers 2
    .param p1, "messageId"    # Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/example/talkative/PrivateMessage;->messageId:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setMessageText(Ljava/lang/String;)V
    .registers 2
    .param p1, "messageText"    # Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/example/talkative/PrivateMessage;->messageText:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setReceiverId(Ljava/lang/String;)V
    .registers 2
    .param p1, "receiverId"    # Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/example/talkative/PrivateMessage;->receiverId:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setSenderId(Ljava/lang/String;)V
    .registers 2
    .param p1, "senderId"    # Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/example/talkative/PrivateMessage;->senderId:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setTimestamp(J)V
    .registers 3
    .param p1, "timestamp"    # J

    .line 59
    iput-wide p1, p0, Lcom/example/talkative/PrivateMessage;->timestamp:J

    .line 60
    return-void
.end method
