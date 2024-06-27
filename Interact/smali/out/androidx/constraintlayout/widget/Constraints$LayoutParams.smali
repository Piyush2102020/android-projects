.class public Landroidx/constraintlayout/widget/Constraints$LayoutParams;
.super Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
.source "Constraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/Constraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public alpha:F

.field public applyElevation:Z

.field public elevation:F

.field public rotation:F

.field public rotationX:F

.field public rotationY:F

.field public scaleX:F

.field public scaleY:F

.field public transformPivotX:F

.field public transformPivotY:F

.field public translationX:F

.field public translationY:F

.field public translationZ:F


# direct methods
.method public constructor <init>(II)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    .line 82
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 67
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->alpha:F

    .line 68
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->applyElevation:Z

    .line 69
    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->elevation:F

    .line 70
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotation:F

    .line 71
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotationX:F

    .line 72
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotationY:F

    .line 73
    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->scaleX:F

    .line 74
    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->scaleY:F

    .line 75
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->transformPivotX:F

    .line 76
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->transformPivotY:F

    .line 77
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationX:F

    .line 78
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationY:F

    .line 79
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationZ:F

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "c",
            "attrs"
        }
    .end annotation

    .line 90
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->alpha:F

    .line 68
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->applyElevation:Z

    .line 69
    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->elevation:F

    .line 70
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotation:F

    .line 71
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotationX:F

    .line 72
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotationY:F

    .line 73
    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->scaleX:F

    .line 74
    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->scaleY:F

    .line 75
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->transformPivotX:F

    .line 76
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->transformPivotY:F

    .line 77
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationX:F

    .line 78
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationY:F

    .line 79
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationZ:F

    .line 91
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 92
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 93
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2c
    if-ge v2, v1, :cond_da

    .line 94
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 95
    .local v3, "attr":I
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_alpha:I

    if-ne v3, v4, :cond_40

    .line 96
    iget v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->alpha:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->alpha:F

    goto/16 :goto_d6

    .line 97
    :cond_40
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_elevation:I

    if-ne v3, v4, :cond_52

    .line 98
    nop

    .line 99
    iget v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->elevation:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->elevation:F

    .line 100
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->applyElevation:Z

    goto/16 :goto_d6

    .line 102
    :cond_52
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_rotationX:I

    if-ne v3, v4, :cond_60

    .line 103
    iget v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotationX:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotationX:F

    goto/16 :goto_d6

    .line 104
    :cond_60
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_rotationY:I

    if-ne v3, v4, :cond_6e

    .line 105
    iget v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotationY:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotationY:F

    goto/16 :goto_d6

    .line 106
    :cond_6e
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_rotation:I

    if-ne v3, v4, :cond_7b

    .line 107
    iget v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotation:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotation:F

    goto :goto_d6

    .line 108
    :cond_7b
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_scaleX:I

    if-ne v3, v4, :cond_88

    .line 109
    iget v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->scaleX:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->scaleX:F

    goto :goto_d6

    .line 110
    :cond_88
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_scaleY:I

    if-ne v3, v4, :cond_95

    .line 111
    iget v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->scaleY:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->scaleY:F

    goto :goto_d6

    .line 112
    :cond_95
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_transformPivotX:I

    if-ne v3, v4, :cond_a2

    .line 113
    iget v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->transformPivotX:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->transformPivotX:F

    goto :goto_d6

    .line 114
    :cond_a2
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_transformPivotY:I

    if-ne v3, v4, :cond_af

    .line 115
    iget v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->transformPivotY:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->transformPivotY:F

    goto :goto_d6

    .line 116
    :cond_af
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_translationX:I

    if-ne v3, v4, :cond_bc

    .line 117
    iget v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationX:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationX:F

    goto :goto_d6

    .line 118
    :cond_bc
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_translationY:I

    if-ne v3, v4, :cond_c9

    .line 119
    iget v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationY:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationY:F

    goto :goto_d6

    .line 120
    :cond_c9
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_translationZ:I

    if-ne v3, v4, :cond_d6

    .line 121
    nop

    .line 122
    iget v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationZ:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationZ:F

    .line 93
    .end local v3    # "attr":I
    :cond_d6
    :goto_d6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2c

    .line 126
    .end local v2    # "i":I
    :cond_da
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/widget/Constraints$LayoutParams;)V
    .registers 4
    .param p1, "source"    # Landroidx/constraintlayout/widget/Constraints$LayoutParams;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 67
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->alpha:F

    .line 68
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->applyElevation:Z

    .line 69
    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->elevation:F

    .line 70
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotation:F

    .line 71
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotationX:F

    .line 72
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotationY:F

    .line 73
    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->scaleX:F

    .line 74
    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->scaleY:F

    .line 75
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->transformPivotX:F

    .line 76
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->transformPivotY:F

    .line 77
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationX:F

    .line 78
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationY:F

    .line 79
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationZ:F

    .line 87
    return-void
.end method
