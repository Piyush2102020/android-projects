.class Lcom/google/android/material/carousel/MaskableFrameLayout$MaskableDelegateV14;
.super Lcom/google/android/material/carousel/MaskableFrameLayout$MaskableDelegate;
.source "MaskableFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/carousel/MaskableFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MaskableDelegateV14"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 308
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/material/carousel/MaskableFrameLayout$MaskableDelegate;-><init>(Lcom/google/android/material/carousel/MaskableFrameLayout$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/carousel/MaskableFrameLayout$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/google/android/material/carousel/MaskableFrameLayout$1;

    .line 308
    invoke-direct {p0}, Lcom/google/android/material/carousel/MaskableFrameLayout$MaskableDelegateV14;-><init>()V

    return-void
.end method


# virtual methods
.method invalidateClippingMethod(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 317
    iget-object v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout$MaskableDelegateV14;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout$MaskableDelegateV14;->maskBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_17

    .line 321
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/material/carousel/MaskableFrameLayout$MaskableDelegateV14;->shouldUseCompatClipping()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 322
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 324
    :cond_16
    return-void

    .line 318
    :cond_17
    :goto_17
    return-void
.end method

.method shouldUseCompatClipping()Z
    .registers 2

    .line 312
    const/4 v0, 0x1

    return v0
.end method
