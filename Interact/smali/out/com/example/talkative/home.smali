.class public Lcom/example/talkative/home;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "home.java"


# instance fields
.field activeUsers:Landroid/widget/ImageView;

.field currentUserMessageId:Ljava/lang/String;

.field currentUsername:Ljava/lang/String;

.field databaseReference:Lcom/google/firebase/database/DatabaseReference;

.field messageAdapter:Lcom/example/talkative/MessageAdapter;

.field messageEditText:Landroid/widget/EditText;

.field myChats:Landroid/widget/ImageView;

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field sendButton:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private addDestroyListener()V
    .registers 5

    .line 49
    iget-object v0, p0, Lcom/example/talkative/home;->databaseReference:Lcom/google/firebase/database/DatabaseReference;

    iget-object v1, p0, Lcom/example/talkative/home;->currentUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    .line 50
    .local v0, "currentUserRef":Lcom/google/firebase/database/DatabaseReference;
    const-string v1, "presence"

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v1

    .line 52
    .local v1, "userPresenceRef":Lcom/google/firebase/database/DatabaseReference;
    invoke-virtual {v1}, Lcom/google/firebase/database/DatabaseReference;->onDisconnect()Lcom/google/firebase/database/OnDisconnect;

    move-result-object v2

    new-instance v3, Lcom/example/talkative/home$1;

    invoke-direct {v3, p0, v0}, Lcom/example/talkative/home$1;-><init>(Lcom/example/talkative/home;Lcom/google/firebase/database/DatabaseReference;)V

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/OnDisconnect;->removeValue(Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V

    .line 59
    return-void
.end method

.method private deleteUserData()V
    .registers 3

    .line 43
    iget-object v0, p0, Lcom/example/talkative/home;->databaseReference:Lcom/google/firebase/database/DatabaseReference;

    const-string v1, "users"

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    iget-object v1, p0, Lcom/example/talkative/home;->currentUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    .line 44
    .local v0, "currentUserRef":Lcom/google/firebase/database/DatabaseReference;
    invoke-virtual {v0}, Lcom/google/firebase/database/DatabaseReference;->removeValue()Lcom/google/android/gms/tasks/Task;

    .line 45
    return-void
.end method

.method private retrieveMessages()V
    .registers 3

    .line 162
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/FirebaseDatabase;->getReference()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    const-string v1, "messages"

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    .line 163
    .local v0, "messagesRef":Lcom/google/firebase/database/DatabaseReference;
    new-instance v1, Lcom/example/talkative/home$5;

    invoke-direct {v1, p0}, Lcom/example/talkative/home$5;-><init>(Lcom/example/talkative/home;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->addValueEventListener(Lcom/google/firebase/database/ValueEventListener;)Lcom/google/firebase/database/ValueEventListener;

    .line 186
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 63
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f0d001c

    invoke-virtual {p0, v0}, Lcom/example/talkative/home;->setContentView(I)V

    .line 65
    const v0, 0x7f0a0046

    invoke-virtual {p0, v0}, Lcom/example/talkative/home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/example/talkative/home;->activeUsers:Landroid/widget/ImageView;

    .line 68
    new-instance v1, Lcom/example/talkative/home$2;

    invoke-direct {v1, p0}, Lcom/example/talkative/home$2;-><init>(Lcom/example/talkative/home;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    invoke-virtual {p0}, Lcom/example/talkative/home;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 79
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_2a

    .line 80
    const-string v1, "username"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/example/talkative/home;->currentUsername:Ljava/lang/String;

    .line 83
    :cond_2a
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/FirebaseDatabase;->getReference()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v1

    const-string v2, "messages"

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v1

    iput-object v1, p0, Lcom/example/talkative/home;->databaseReference:Lcom/google/firebase/database/DatabaseReference;

    .line 85
    const v1, 0x7f0a019a

    invoke-virtual {p0, v1}, Lcom/example/talkative/home;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/example/talkative/home;->sendButton:Landroid/widget/ImageView;

    .line 86
    const v1, 0x7f0a0117

    invoke-virtual {p0, v1}, Lcom/example/talkative/home;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/example/talkative/home;->messageEditText:Landroid/widget/EditText;

    .line 87
    const v1, 0x7f0a00fd

    invoke-virtual {p0, v1}, Lcom/example/talkative/home;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/example/talkative/home;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 89
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 90
    .local v1, "linearLayoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    iget-object v2, p0, Lcom/example/talkative/home;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 93
    new-instance v2, Lcom/example/talkative/MessageAdapter;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/example/talkative/home;->currentUsername:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/example/talkative/MessageAdapter;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/example/talkative/home;->messageAdapter:Lcom/example/talkative/MessageAdapter;

    .line 94
    iget-object v3, p0, Lcom/example/talkative/home;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 96
    iget-object v2, p0, Lcom/example/talkative/home;->databaseReference:Lcom/google/firebase/database/DatabaseReference;

    new-instance v3, Lcom/example/talkative/home$3;

    invoke-direct {v3, p0}, Lcom/example/talkative/home$3;-><init>(Lcom/example/talkative/home;)V

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/DatabaseReference;->addChildEventListener(Lcom/google/firebase/database/ChildEventListener;)Lcom/google/firebase/database/ChildEventListener;

    .line 141
    iget-object v2, p0, Lcom/example/talkative/home;->sendButton:Landroid/widget/ImageView;

    new-instance v3, Lcom/example/talkative/home$4;

    invoke-direct {v3, p0}, Lcom/example/talkative/home$4;-><init>(Lcom/example/talkative/home;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    invoke-direct {p0}, Lcom/example/talkative/home;->retrieveMessages()V

    .line 158
    invoke-direct {p0}, Lcom/example/talkative/home;->addDestroyListener()V

    .line 159
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .line 38
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 39
    invoke-direct {p0}, Lcom/example/talkative/home;->deleteUserData()V

    .line 40
    return-void
.end method
