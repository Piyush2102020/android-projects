.class public Lcom/example/talkative/inbox;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "inbox.java"


# instance fields
.field private currentUsername:Ljava/lang/String;

.field private messageAdapter:Lcom/example/talkative/PrivateMessageAdapter;

.field private messageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/example/talkative/PrivateMessage;",
            ">;"
        }
    .end annotation
.end field

.field private messageRef:Lcom/google/firebase/database/DatabaseReference;

.field pm:Landroid/widget/EditText;

.field private receiver:Ljava/lang/String;

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field send:Landroid/widget/ImageView;

.field text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/example/talkative/inbox;)Lcom/google/firebase/database/DatabaseReference;
    .registers 2
    .param p0, "x0"    # Lcom/example/talkative/inbox;

    .line 24
    iget-object v0, p0, Lcom/example/talkative/inbox;->messageRef:Lcom/google/firebase/database/DatabaseReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/example/talkative/inbox;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/example/talkative/inbox;

    .line 24
    iget-object v0, p0, Lcom/example/talkative/inbox;->currentUsername:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/example/talkative/inbox;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/example/talkative/inbox;

    .line 24
    iget-object v0, p0, Lcom/example/talkative/inbox;->receiver:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/example/talkative/inbox;Lcom/example/talkative/PrivateMessage;)Z
    .registers 3
    .param p0, "x0"    # Lcom/example/talkative/inbox;
    .param p1, "x1"    # Lcom/example/talkative/PrivateMessage;

    .line 24
    invoke-direct {p0, p1}, Lcom/example/talkative/inbox;->isMessageValid(Lcom/example/talkative/PrivateMessage;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/example/talkative/inbox;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/example/talkative/inbox;

    .line 24
    iget-object v0, p0, Lcom/example/talkative/inbox;->messageList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/example/talkative/inbox;)Lcom/example/talkative/PrivateMessageAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/example/talkative/inbox;

    .line 24
    iget-object v0, p0, Lcom/example/talkative/inbox;->messageAdapter:Lcom/example/talkative/PrivateMessageAdapter;

    return-object v0
.end method

.method private isMessageValid(Lcom/example/talkative/PrivateMessage;)Z
    .registers 5
    .param p1, "message"    # Lcom/example/talkative/PrivateMessage;

    .line 132
    const/4 v0, 0x0

    if-eqz p1, :cond_41

    invoke-virtual {p1}, Lcom/example/talkative/PrivateMessage;->getSenderId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_41

    invoke-virtual {p1}, Lcom/example/talkative/PrivateMessage;->getReceiverId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_41

    .line 133
    invoke-virtual {p1}, Lcom/example/talkative/PrivateMessage;->getSenderId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/example/talkative/inbox;->currentUsername:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {p1}, Lcom/example/talkative/PrivateMessage;->getReceiverId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/example/talkative/inbox;->receiver:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 134
    :cond_27
    invoke-virtual {p1}, Lcom/example/talkative/PrivateMessage;->getSenderId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/example/talkative/inbox;->receiver:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-virtual {p1}, Lcom/example/talkative/PrivateMessage;->getReceiverId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/example/talkative/inbox;->currentUsername:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    :cond_3f
    const/4 v0, 0x1

    .line 133
    :cond_40
    return v0

    .line 136
    :cond_41
    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 39
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f0d001d

    invoke-virtual {p0, v0}, Lcom/example/talkative/inbox;->setContentView(I)V

    .line 41
    const v0, 0x7f0a0161

    invoke-virtual {p0, v0}, Lcom/example/talkative/inbox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/example/talkative/inbox;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 42
    const v0, 0x7f0a0162

    invoke-virtual {p0, v0}, Lcom/example/talkative/inbox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/talkative/inbox;->pm:Landroid/widget/EditText;

    .line 43
    const v0, 0x7f0a019b

    invoke-virtual {p0, v0}, Lcom/example/talkative/inbox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/example/talkative/inbox;->send:Landroid/widget/ImageView;

    .line 45
    const v0, 0x7f0a016a

    invoke-virtual {p0, v0}, Lcom/example/talkative/inbox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/talkative/inbox;->text:Landroid/widget/TextView;

    .line 47
    invoke-virtual {p0}, Lcom/example/talkative/inbox;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 48
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "currentUsername"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/example/talkative/inbox;->currentUsername:Ljava/lang/String;

    .line 49
    const-string v1, "receiver"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/example/talkative/inbox;->receiver:Ljava/lang/String;

    .line 51
    iget-object v2, p0, Lcom/example/talkative/inbox;->text:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v1

    const-string v2, "privateMessages"

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/FirebaseDatabase;->getReference(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v1

    iput-object v1, p0, Lcom/example/talkative/inbox;->messageRef:Lcom/google/firebase/database/DatabaseReference;

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/example/talkative/inbox;->messageList:Ljava/util/List;

    .line 56
    new-instance v1, Lcom/example/talkative/PrivateMessageAdapter;

    iget-object v2, p0, Lcom/example/talkative/inbox;->messageList:Ljava/util/List;

    iget-object v3, p0, Lcom/example/talkative/inbox;->currentUsername:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/example/talkative/PrivateMessageAdapter;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/example/talkative/inbox;->messageAdapter:Lcom/example/talkative/PrivateMessageAdapter;

    .line 57
    iget-object v1, p0, Lcom/example/talkative/inbox;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 58
    iget-object v1, p0, Lcom/example/talkative/inbox;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/example/talkative/inbox;->messageAdapter:Lcom/example/talkative/PrivateMessageAdapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 60
    iget-object v1, p0, Lcom/example/talkative/inbox;->send:Landroid/widget/ImageView;

    new-instance v2, Lcom/example/talkative/inbox$1;

    invoke-direct {v2, p0}, Lcom/example/talkative/inbox$1;-><init>(Lcom/example/talkative/inbox;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v1, p0, Lcom/example/talkative/inbox;->messageRef:Lcom/google/firebase/database/DatabaseReference;

    new-instance v2, Lcom/example/talkative/inbox$2;

    invoke-direct {v2, p0}, Lcom/example/talkative/inbox$2;-><init>(Lcom/example/talkative/inbox;)V

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/DatabaseReference;->addChildEventListener(Lcom/google/firebase/database/ChildEventListener;)Lcom/google/firebase/database/ChildEventListener;

    .line 128
    return-void
.end method
