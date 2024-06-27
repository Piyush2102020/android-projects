.class Lcom/example/talkative/home$2;
.super Ljava/lang/Object;
.source "home.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/talkative/home;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/talkative/home;


# direct methods
.method constructor <init>(Lcom/example/talkative/home;)V
    .registers 2
    .param p1, "this$0"    # Lcom/example/talkative/home;

    .line 68
    iput-object p1, p0, Lcom/example/talkative/home$2;->this$0:Lcom/example/talkative/home;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 71
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/talkative/home$2;->this$0:Lcom/example/talkative/home;

    invoke-virtual {v1}, Lcom/example/talkative/home;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/example/talkative/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/example/talkative/home$2;->this$0:Lcom/example/talkative/home;

    iget-object v1, v1, Lcom/example/talkative/home;->currentUsername:Ljava/lang/String;

    const-string v2, "username"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    iget-object v1, p0, Lcom/example/talkative/home$2;->this$0:Lcom/example/talkative/home;

    invoke-virtual {v1, v0}, Lcom/example/talkative/home;->startActivity(Landroid/content/Intent;)V

    .line 74
    return-void
.end method
