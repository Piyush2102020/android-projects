.class public Lcom/example/talkative/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# instance fields
.field private activeUsersAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private activeUsersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private activeUsersListView:Landroid/widget/ListView;

.field private currentUsername:Ljava/lang/String;

.field userId:Landroid/widget/TextView;

.field private usersRef:Lcom/google/firebase/database/DatabaseReference;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/example/talkative/MainActivity;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/example/talkative/MainActivity;

    .line 27
    iget-object v0, p0, Lcom/example/talkative/MainActivity;->activeUsersList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/example/talkative/MainActivity;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/example/talkative/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0, p1}, Lcom/example/talkative/MainActivity;->chatBox(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/example/talkative/MainActivity;)Landroid/widget/ArrayAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/example/talkative/MainActivity;

    .line 27
    iget-object v0, p0, Lcom/example/talkative/MainActivity;->activeUsersAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method private chatBox(Ljava/lang/String;)V
    .registers 8
    .param p1, "person"    # Ljava/lang/String;

    .line 92
    const-string v0, "MyPrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/example/talkative/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 93
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string v2, "tappedPersons"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 94
    .local v1, "tappedPersonsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 97
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 98
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 101
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/example/talkative/inbox;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "receiver"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string v4, "currentUsername"

    iget-object v5, p0, Lcom/example/talkative/MainActivity;->currentUsername:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    invoke-virtual {p0, v2}, Lcom/example/talkative/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 105
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 39
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f0d001e

    invoke-virtual {p0, v0}, Lcom/example/talkative/MainActivity;->setContentView(I)V

    .line 41
    const v0, 0x7f0a01f6

    invoke-virtual {p0, v0}, Lcom/example/talkative/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/talkative/MainActivity;->userId:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f0a00f8

    invoke-virtual {p0, v0}, Lcom/example/talkative/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/example/talkative/MainActivity;->activeUsersListView:Landroid/widget/ListView;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/example/talkative/MainActivity;->activeUsersList:Ljava/util/List;

    .line 47
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090003

    iget-object v2, p0, Lcom/example/talkative/MainActivity;->activeUsersList:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/example/talkative/MainActivity;->activeUsersAdapter:Landroid/widget/ArrayAdapter;

    .line 48
    iget-object v1, p0, Lcom/example/talkative/MainActivity;->activeUsersListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 50
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/FirebaseDatabase;->getReference()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    const-string v1, "users"

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    iput-object v0, p0, Lcom/example/talkative/MainActivity;->usersRef:Lcom/google/firebase/database/DatabaseReference;

    .line 52
    invoke-virtual {p0}, Lcom/example/talkative/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 53
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "username"

    if-eqz v0, :cond_6f

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/example/talkative/MainActivity;->currentUsername:Ljava/lang/String;

    .line 55
    iget-object v2, p0, Lcom/example/talkative/MainActivity;->userId:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Your Id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/example/talkative/MainActivity;->currentUsername:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    :cond_6f
    iget-object v2, p0, Lcom/example/talkative/MainActivity;->usersRef:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v2, v1}, Lcom/google/firebase/database/DatabaseReference;->orderByChild(Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v1

    .line 61
    .local v1, "query":Lcom/google/firebase/database/Query;
    iget-object v2, p0, Lcom/example/talkative/MainActivity;->activeUsersListView:Landroid/widget/ListView;

    new-instance v3, Lcom/example/talkative/MainActivity$1;

    invoke-direct {v3, p0}, Lcom/example/talkative/MainActivity$1;-><init>(Lcom/example/talkative/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 70
    new-instance v2, Lcom/example/talkative/MainActivity$2;

    invoke-direct {v2, p0}, Lcom/example/talkative/MainActivity$2;-><init>(Lcom/example/talkative/MainActivity;)V

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/Query;->addValueEventListener(Lcom/google/firebase/database/ValueEventListener;)Lcom/google/firebase/database/ValueEventListener;

    .line 88
    return-void
.end method
