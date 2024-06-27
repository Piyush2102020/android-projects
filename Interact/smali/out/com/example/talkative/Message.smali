.class public Lcom/example/talkative/Message;
.super Ljava/lang/Object;
.source "Message.java"


# instance fields
.field private content:Ljava/lang/String;

.field private messageId:Ljava/lang/String;

.field private sentByCurrentUser:Z

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .param p1, "messageId"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "sentByCurrentUser"    # Z

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/example/talkative/Message;->messageId:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/example/talkative/Message;->content:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/example/talkative/Message;->username:Ljava/lang/String;

    .line 17
    iput-boolean p4, p0, Lcom/example/talkative/Message;->sentByCurrentUser:Z

    .line 18
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/example/talkative/Message;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/example/talkative/Message;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/example/talkative/Message;->username:Ljava/lang/String;

    return-object v0
.end method

.method public isSentByCurrentUser()Z
    .registers 2

    .line 45
    iget-boolean v0, p0, Lcom/example/talkative/Message;->sentByCurrentUser:Z

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .registers 2
    .param p1, "content"    # Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/example/talkative/Message;->content:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .registers 2
    .param p1, "messageId"    # Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/example/talkative/Message;->messageId:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setSentByCurrentUser(Z)V
    .registers 2
    .param p1, "sentByCurrentUser"    # Z

    .line 49
    iput-boolean p1, p0, Lcom/example/talkative/Message;->sentByCurrentUser:Z

    .line 50
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .registers 2
    .param p1, "username"    # Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/example/talkative/Message;->username:Ljava/lang/String;

    .line 42
    return-void
.end method
