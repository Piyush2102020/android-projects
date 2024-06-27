.class public Lcom/example/talkative/myChat;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "myChat.java"


# instance fields
.field private currentUsername:Ljava/lang/String;

.field private tappedPersonsAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tappedPersonsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tappedPersonsListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/example/talkative/myChat;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/example/talkative/myChat;

    .line 19
    iget-object v0, p0, Lcom/example/talkative/myChat;->tappedPersonsList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/example/talkative/myChat;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/example/talkative/myChat;
    .param p1, "x1"    # Ljava/lang/String;

    .line 19
    invoke-direct {p0, p1}, Lcom/example/talkative/myChat;->openChatWindow(Ljava/lang/String;)V

    return-void
.end method

.method private openChatWindow(Ljava/lang/String;)V
    .registers 6
    .param p1, "person"    # Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/example/talkative/myChat;->tappedPersonsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 63
    iget-object v0, p0, Lcom/example/talkative/myChat;->tappedPersonsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/example/talkative/myChat;->tappedPersonsAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 67
    const-string v0, "MyPrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/example/talkative/myChat;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 68
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 69
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/example/talkative/myChat;->tappedPersonsList:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const-string v3, "tappedPersons"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 70
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 74
    .end local v0    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2c
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/example/talkative/inbox;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "receiver"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const-string v1, "currentUsername"

    iget-object v2, p0, Lcom/example/talkative/myChat;->currentUsername:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    invoke-virtual {p0, v0}, Lcom/example/talkative/myChat;->startActivity(Landroid/content/Intent;)V

    .line 78
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 28
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f0d001f

    invoke-virtual {p0, v0}, Lcom/example/talkative/myChat;->setContentView(I)V

    .line 31
    const v0, 0x7f0a00f8

    invoke-virtual {p0, v0}, Lcom/example/talkative/myChat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/example/talkative/myChat;->tappedPersonsListView:Landroid/widget/ListView;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/example/talkative/myChat;->tappedPersonsList:Ljava/util/List;

    .line 33
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090003

    iget-object v2, p0, Lcom/example/talkative/myChat;->tappedPersonsList:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/example/talkative/myChat;->tappedPersonsAdapter:Landroid/widget/ArrayAdapter;

    .line 34
    iget-object v1, p0, Lcom/example/talkative/myChat;->tappedPersonsListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 37
    const-string v0, "MyPrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/example/talkative/myChat;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 38
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string v2, "tappedPersons"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 39
    .local v1, "tappedPersonsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/example/talkative/myChat;->tappedPersonsList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 41
    iget-object v2, p0, Lcom/example/talkative/myChat;->tappedPersonsAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 44
    invoke-virtual {p0}, Lcom/example/talkative/myChat;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 45
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_56

    .line 46
    const-string v3, "currentUsername"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/example/talkative/myChat;->currentUsername:Ljava/lang/String;

    .line 49
    :cond_56
    iget-object v3, p0, Lcom/example/talkative/myChat;->tappedPersonsListView:Landroid/widget/ListView;

    new-instance v4, Lcom/example/talkative/myChat$1;

    invoke-direct {v4, p0}, Lcom/example/talkative/myChat$1;-><init>(Lcom/example/talkative/myChat;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 57
    return-void
.end method
