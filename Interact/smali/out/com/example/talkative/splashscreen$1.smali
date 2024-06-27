.class Lcom/example/talkative/splashscreen$1;
.super Ljava/lang/Object;
.source "splashscreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/talkative/splashscreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/talkative/splashscreen;


# direct methods
.method constructor <init>(Lcom/example/talkative/splashscreen;)V
    .registers 2
    .param p1, "this$0"    # Lcom/example/talkative/splashscreen;

    .line 16
    iput-object p1, p0, Lcom/example/talkative/splashscreen$1;->this$0:Lcom/example/talkative/splashscreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 19
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/talkative/splashscreen$1;->this$0:Lcom/example/talkative/splashscreen;

    invoke-virtual {v1}, Lcom/example/talkative/splashscreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/example/talkative/register;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/example/talkative/splashscreen$1;->this$0:Lcom/example/talkative/splashscreen;

    invoke-virtual {v1, v0}, Lcom/example/talkative/splashscreen;->startActivity(Landroid/content/Intent;)V

    .line 21
    iget-object v1, p0, Lcom/example/talkative/splashscreen$1;->this$0:Lcom/example/talkative/splashscreen;

    invoke-virtual {v1}, Lcom/example/talkative/splashscreen;->finish()V

    .line 22
    return-void
.end method
