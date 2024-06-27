.class Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;
.super Ljava/lang/Object;
.source "BottomSheetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateSettlingTracker"
.end annotation


# instance fields
.field private final continueSettlingRunnable:Ljava/lang/Runnable;

.field private isContinueSettlingRunnablePosted:Z

.field private targetState:I

.field final synthetic this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;


# direct methods
.method private constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .registers 2

    .line 1973
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>.StateSettlingTracker;"
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1977
    new-instance p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker$1;

    invoke-direct {p1, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker$1;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;)V

    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;->continueSettlingRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .param p2, "x1"    # Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;

    .line 1973
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>.StateSettlingTracker;"
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    return-void
.end method

.method static synthetic access$1702(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;
    .param p1, "x1"    # Z

    .line 1973
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;->isContinueSettlingRunnablePosted:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;

    .line 1973
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;->targetState:I

    return v0
.end method


# virtual methods
.method continueSettlingToState(I)V
    .registers 4
    .param p1, "targetState"    # I

    .line 1992
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>.StateSettlingTracker;"
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_2a

    .line 1995
    :cond_11
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;->targetState:I

    .line 1996
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;->isContinueSettlingRunnablePosted:Z

    if-nez v0, :cond_29

    .line 1997
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;->continueSettlingRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1998
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;->isContinueSettlingRunnablePosted:Z

    .line 2000
    :cond_29
    return-void

    .line 1993
    :cond_2a
    :goto_2a
    return-void
.end method
