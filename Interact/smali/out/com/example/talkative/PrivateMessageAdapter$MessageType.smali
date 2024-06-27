.class Lcom/example/talkative/PrivateMessageAdapter$MessageType;
.super Ljava/lang/Object;
.source "PrivateMessageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/talkative/PrivateMessageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageType"
.end annotation


# static fields
.field static final RECEIVED:I = 0x2

.field static final SENT:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/example/talkative/PrivateMessageAdapter;


# direct methods
.method private constructor <init>(Lcom/example/talkative/PrivateMessageAdapter;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/example/talkative/PrivateMessageAdapter$MessageType;->this$0:Lcom/example/talkative/PrivateMessageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
