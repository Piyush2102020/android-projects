.class Lcom/example/talkative/MessageAdapter$MessageType;
.super Ljava/lang/Object;
.source "MessageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/talkative/MessageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageType"
.end annotation


# static fields
.field static final RECEIVED:I = 0x2

.field static final SENT:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/example/talkative/MessageAdapter;


# direct methods
.method private constructor <init>(Lcom/example/talkative/MessageAdapter;)V
    .registers 2

    .line 95
    iput-object p1, p0, Lcom/example/talkative/MessageAdapter$MessageType;->this$0:Lcom/example/talkative/MessageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
