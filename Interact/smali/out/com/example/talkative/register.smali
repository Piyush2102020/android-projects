.class public Lcom/example/talkative/register;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "register.java"


# instance fields
.field databaseReference:Lcom/google/firebase/database/DatabaseReference;

.field login:Landroid/widget/Button;

.field tc:Landroid/widget/CheckBox;

.field username:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 31
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f0d0020

    invoke-virtual {p0, v0}, Lcom/example/talkative/register;->setContentView(I)V

    .line 34
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/FirebaseDatabase;->getReference()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    const-string v1, "users"

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    iput-object v0, p0, Lcom/example/talkative/register;->databaseReference:Lcom/google/firebase/database/DatabaseReference;

    .line 36
    const v0, 0x7f0a00fb

    invoke-virtual {p0, v0}, Lcom/example/talkative/register;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/talkative/register;->login:Landroid/widget/Button;

    .line 37
    const v0, 0x7f0a01d0

    invoke-virtual {p0, v0}, Lcom/example/talkative/register;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/example/talkative/register;->tc:Landroid/widget/CheckBox;

    .line 38
    const v0, 0x7f0a01f7

    invoke-virtual {p0, v0}, Lcom/example/talkative/register;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/talkative/register;->username:Landroid/widget/EditText;

    .line 40
    iget-object v0, p0, Lcom/example/talkative/register;->login:Landroid/widget/Button;

    new-instance v1, Lcom/example/talkative/register$1;

    invoke-direct {v1, p0}, Lcom/example/talkative/register$1;-><init>(Lcom/example/talkative/register;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    return-void
.end method
