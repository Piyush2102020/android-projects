.class Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$3;
.super Ljava/lang/Object;
.source "TimePickerTextInputPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;-><init>(Landroid/widget/LinearLayout;Lcom/google/android/material/timepicker/TimeModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;


# direct methods
.method constructor <init>(Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    .line 116
    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$3;->this$0:Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 119
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$3;->this$0:Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    sget v1, Lcom/google/android/material/R$id;->selection_type:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->onSelectionChanged(I)V

    .line 120
    return-void
.end method
