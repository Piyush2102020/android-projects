.class Lcom/google/android/material/navigation/NavigationView$2;
.super Ljava/lang/Object;
.source "NavigationView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/navigation/NavigationView;->setupInsetScrimsListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/navigation/NavigationView;


# direct methods
.method constructor <init>(Lcom/google/android/material/navigation/NavigationView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/android/material/navigation/NavigationView;

    .line 964
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 11

    .line 967
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-static {v0}, Lcom/google/android/material/navigation/NavigationView;->access$000(Lcom/google/android/material/navigation/NavigationView;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/NavigationView;->getLocationOnScreen([I)V

    .line 968
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-static {v0}, Lcom/google/android/material/navigation/NavigationView;->access$000(Lcom/google/android/material/navigation/NavigationView;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_17

    move v0, v1

    goto :goto_18

    :cond_17
    move v0, v2

    .line 969
    .local v0, "isBehindStatusBar":Z
    :goto_18
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-static {v3}, Lcom/google/android/material/navigation/NavigationView;->access$100(Lcom/google/android/material/navigation/NavigationView;)Lcom/google/android/material/internal/NavigationMenuPresenter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setBehindStatusBar(Z)V

    .line 970
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    if-eqz v0, :cond_2d

    invoke-virtual {v3}, Lcom/google/android/material/navigation/NavigationView;->isTopInsetScrimEnabled()Z

    move-result v4

    if-eqz v4, :cond_2d

    move v4, v1

    goto :goto_2e

    :cond_2d
    move v4, v2

    :goto_2e
    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationView;->setDrawTopInsetForeground(Z)V

    .line 974
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-static {v3}, Lcom/google/android/material/navigation/NavigationView;->access$000(Lcom/google/android/material/navigation/NavigationView;)[I

    move-result-object v3

    aget v3, v3, v2

    if-eqz v3, :cond_4f

    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-static {v3}, Lcom/google/android/material/navigation/NavigationView;->access$000(Lcom/google/android/material/navigation/NavigationView;)[I

    move-result-object v3

    aget v3, v3, v2

    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v4}, Lcom/google/android/material/navigation/NavigationView;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    if-nez v3, :cond_4d

    goto :goto_4f

    :cond_4d
    move v3, v2

    goto :goto_50

    :cond_4f
    :goto_4f
    move v3, v1

    .line 975
    .local v3, "isOnLeftSide":Z
    :goto_50
    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v4, v3}, Lcom/google/android/material/navigation/NavigationView;->setDrawLeftInsetForeground(Z)V

    .line 977
    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v4}, Lcom/google/android/material/navigation/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/material/internal/ContextUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v4

    .line 978
    .local v4, "activity":Landroid/app/Activity;
    if-eqz v4, :cond_cf

    .line 979
    invoke-static {v4}, Lcom/google/android/material/internal/WindowUtils;->getCurrentWindowBounds(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v5

    .line 981
    .local v5, "displayBounds":Landroid/graphics/Rect;
    nop

    .line 982
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget-object v7, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v7}, Lcom/google/android/material/navigation/NavigationView;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-static {v7}, Lcom/google/android/material/navigation/NavigationView;->access$000(Lcom/google/android/material/navigation/NavigationView;)[I

    move-result-object v7

    aget v7, v7, v1

    if-ne v6, v7, :cond_7d

    move v6, v1

    goto :goto_7e

    :cond_7d
    move v6, v2

    .line 983
    .local v6, "isBehindSystemNav":Z
    :goto_7e
    nop

    .line 984
    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getNavigationBarColor()I

    move-result v7

    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    if-eqz v7, :cond_8f

    move v7, v1

    goto :goto_90

    :cond_8f
    move v7, v2

    .line 985
    .local v7, "hasNonZeroAlpha":Z
    :goto_90
    iget-object v8, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    if-eqz v6, :cond_9e

    if-eqz v7, :cond_9e

    .line 986
    invoke-virtual {v8}, Lcom/google/android/material/navigation/NavigationView;->isBottomInsetScrimEnabled()Z

    move-result v9

    if-eqz v9, :cond_9e

    move v9, v1

    goto :goto_9f

    :cond_9e
    move v9, v2

    .line 985
    :goto_9f
    invoke-virtual {v8, v9}, Lcom/google/android/material/navigation/NavigationView;->setDrawBottomInsetForeground(Z)V

    .line 990
    nop

    .line 991
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget-object v9, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-static {v9}, Lcom/google/android/material/navigation/NavigationView;->access$000(Lcom/google/android/material/navigation/NavigationView;)[I

    move-result-object v9

    aget v9, v9, v2

    if-eq v8, v9, :cond_c9

    .line 992
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget-object v9, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v9}, Lcom/google/android/material/navigation/NavigationView;->getWidth()I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-static {v9}, Lcom/google/android/material/navigation/NavigationView;->access$000(Lcom/google/android/material/navigation/NavigationView;)[I

    move-result-object v9

    aget v9, v9, v2

    if-ne v8, v9, :cond_c7

    goto :goto_c9

    :cond_c7
    move v1, v2

    goto :goto_ca

    :cond_c9
    :goto_c9
    nop

    .line 994
    .local v1, "isOnRightSide":Z
    :goto_ca
    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v2, v1}, Lcom/google/android/material/navigation/NavigationView;->setDrawRightInsetForeground(Z)V

    .line 996
    .end local v1    # "isOnRightSide":Z
    .end local v5    # "displayBounds":Landroid/graphics/Rect;
    .end local v6    # "isBehindSystemNav":Z
    .end local v7    # "hasNonZeroAlpha":Z
    :cond_cf
    return-void
.end method
