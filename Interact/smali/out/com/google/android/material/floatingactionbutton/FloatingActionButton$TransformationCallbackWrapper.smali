.class Lcom/google/android/material/floatingactionbutton/FloatingActionButton$TransformationCallbackWrapper;
.super Ljava/lang/Object;
.source "FloatingActionButton.java"

# interfaces
.implements Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalTransformationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TransformationCallbackWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalTransformationCallback;"
    }
.end annotation


# instance fields
.field private final listener:Lcom/google/android/material/animation/TransformationCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/animation/TransformationCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;


# direct methods
.method constructor <init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/animation/TransformationCallback;)V
    .registers 3
    .param p1, "this$0"    # Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/animation/TransformationCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 1368
    .local p0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$TransformationCallbackWrapper;, "Lcom/google/android/material/floatingactionbutton/FloatingActionButton$TransformationCallbackWrapper<TT;>;"
    .local p2, "listener":Lcom/google/android/material/animation/TransformationCallback;, "Lcom/google/android/material/animation/TransformationCallback<TT;>;"
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$TransformationCallbackWrapper;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1369
    iput-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$TransformationCallbackWrapper;->listener:Lcom/google/android/material/animation/TransformationCallback;

    .line 1370
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1384
    .local p0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$TransformationCallbackWrapper;, "Lcom/google/android/material/floatingactionbutton/FloatingActionButton$TransformationCallbackWrapper<TT;>;"
    instance-of v0, p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$TransformationCallbackWrapper;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$TransformationCallbackWrapper;

    iget-object v0, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$TransformationCallbackWrapper;->listener:Lcom/google/android/material/animation/TransformationCallback;

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$TransformationCallbackWrapper;->listener:Lcom/google/android/material/animation/TransformationCallback;

    .line 1385
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 1384
    :goto_14
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 1390
    .local p0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$TransformationCallbackWrapper;, "Lcom/google/android/material/floatingactionbutton/FloatingActionButton$TransformationCallbackWrapper<TT;>;"
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$TransformationCallbackWrapper;->listener:Lcom/google/android/material/animation/TransformationCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public onScaleChanged()V
    .registers 3

    .line 1379
    .local p0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$TransformationCallbackWrapper;, "Lcom/google/android/material/floatingactionbutton/FloatingActionButton$TransformationCallbackWrapper<TT;>;"
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$TransformationCallbackWrapper;->listener:Lcom/google/android/material/animation/TransformationCallback;

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$TransformationCallbackWrapper;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-interface {v0, v1}, Lcom/google/android/material/animation/TransformationCallback;->onScaleChanged(Landroid/view/View;)V

    .line 1380
    return-void
.end method

.method public onTranslationChanged()V
    .registers 3

    .line 1374
    .local p0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButton$TransformationCallbackWrapper;, "Lcom/google/android/material/floatingactionbutton/FloatingActionButton$TransformationCallbackWrapper<TT;>;"
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$TransformationCallbackWrapper;->listener:Lcom/google/android/material/animation/TransformationCallback;

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$TransformationCallbackWrapper;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-interface {v0, v1}, Lcom/google/android/material/animation/TransformationCallback;->onTranslationChanged(Landroid/view/View;)V

    .line 1375
    return-void
.end method
