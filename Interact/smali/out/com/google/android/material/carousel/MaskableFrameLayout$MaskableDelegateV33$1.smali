.class Lcom/google/android/material/carousel/MaskableFrameLayout$MaskableDelegateV33$1;
.super Landroid/view/ViewOutlineProvider;
.source "MaskableFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/carousel/MaskableFrameLayout$MaskableDelegateV33;->initMaskOutlineProvider(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/carousel/MaskableFrameLayout$MaskableDelegateV33;


# direct methods
.method constructor <init>(Lcom/google/android/material/carousel/MaskableFrameLayout$MaskableDelegateV33;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/android/material/carousel/MaskableFrameLayout$MaskableDelegateV33;

    .line 423
    iput-object p1, p0, Lcom/google/android/material/carousel/MaskableFrameLayout$MaskableDelegateV33$1;->this$0:Lcom/google/android/material/carousel/MaskableFrameLayout$MaskableDelegateV33;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .line 426
    iget-object v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout$MaskableDelegateV33$1;->this$0:Lcom/google/android/material/carousel/MaskableFrameLayout$MaskableDelegateV33;

    iget-object v0, v0, Lcom/google/android/material/carousel/MaskableFrameLayout$MaskableDelegateV33;->shapePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 427
    iget-object v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout$MaskableDelegateV33$1;->this$0:Lcom/google/android/material/carousel/MaskableFrameLayout$MaskableDelegateV33;

    iget-object v0, v0, Lcom/google/android/material/carousel/MaskableFrameLayout$MaskableDelegateV33;->shapePath:Landroid/graphics/Path;

    invoke-virtual {p2, v0}, Landroid/graphics/Outline;->setPath(Landroid/graphics/Path;)V

    .line 429
    :cond_11
    return-void
.end method
