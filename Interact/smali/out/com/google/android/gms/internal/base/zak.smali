.class public final Lcom/google/android/gms/internal/base/zak;
.super Landroid/graphics/drawable/Drawable;
.source "com.google.android.gms:play-services-base@@18.1.0"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field private zaa:I

.field private zab:J

.field private zac:I

.field private zad:I

.field private zae:I

.field private zaf:I

.field private zag:Z

.field private zah:Z

.field private zai:Lcom/google/android/gms/internal/base/zaj;

.field private zaj:Landroid/graphics/drawable/Drawable;

.field private zak:Landroid/graphics/drawable/Drawable;

.field private zal:Z

.field private zam:Z

.field private zan:Z

.field private zao:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/base/zak;-><init>(Lcom/google/android/gms/internal/base/zaj;)V

    if-nez p1, :cond_a

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/base/zai;->zaa()Lcom/google/android/gms/internal/base/zai;

    move-result-object p1

    :cond_a
    iput-object p1, p0, Lcom/google/android/gms/internal/base/zak;->zaj:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/base/zak;->zai:Lcom/google/android/gms/internal/base/zaj;

    .line 4
    iget v1, v0, Lcom/google/android/gms/internal/base/zaj;->zab:I

    .line 5
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result p1

    or-int/2addr p1, v1

    iput p1, v0, Lcom/google/android/gms/internal/base/zaj;->zab:I

    if-nez p2, :cond_21

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/base/zai;->zaa()Lcom/google/android/gms/internal/base/zai;

    move-result-object p2

    goto :goto_22

    .line 8
    :cond_21
    nop

    .line 6
    :goto_22
    iput-object p2, p0, Lcom/google/android/gms/internal/base/zak;->zak:Landroid/graphics/drawable/Drawable;

    .line 7
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/base/zak;->zai:Lcom/google/android/gms/internal/base/zaj;

    .line 8
    iget v0, p1, Lcom/google/android/gms/internal/base/zaj;->zab:I

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result p2

    or-int/2addr p2, v0

    iput p2, p1, Lcom/google/android/gms/internal/base/zaj;->zab:I

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/base/zaj;)V
    .registers 4

    .line 9
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/base/zak;->zaa:I

    const/16 v1, 0xff

    iput v1, p0, Lcom/google/android/gms/internal/base/zak;->zad:I

    iput v0, p0, Lcom/google/android/gms/internal/base/zak;->zaf:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/base/zak;->zag:Z

    new-instance v0, Lcom/google/android/gms/internal/base/zaj;

    .line 10
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/base/zaj;-><init>(Lcom/google/android/gms/internal/base/zaj;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/base/zak;->zai:Lcom/google/android/gms/internal/base/zaj;

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .registers 9

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/base/zak;->zaa:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_84

    goto :goto_41

    .line 3
    :pswitch_8
    iget-wide v3, p0, Lcom/google/android/gms/internal/base/zak;->zab:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_36

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/gms/internal/base/zak;->zab:J

    sub-long/2addr v3, v5

    long-to-float v0, v3

    iget v3, p0, Lcom/google/android/gms/internal/base/zak;->zae:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v0, v3

    if-ltz v4, :cond_23

    goto :goto_24

    .line 2
    :cond_23
    move v1, v2

    .line 1
    :goto_24
    if-eqz v1, :cond_28

    iput v2, p0, Lcom/google/android/gms/internal/base/zak;->zaa:I

    .line 2
    :cond_28
    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v3, p0, Lcom/google/android/gms/internal/base/zak;->zac:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    const/4 v0, 0x0

    add-float/2addr v3, v0

    float-to-int v0, v3

    iput v0, p0, Lcom/google/android/gms/internal/base/zak;->zaf:I

    goto :goto_41

    :cond_36
    goto :goto_41

    .line 3
    :pswitch_37
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/base/zak;->zab:J

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/base/zak;->zaa:I

    move v1, v2

    .line 4
    :goto_41
    iget v0, p0, Lcom/google/android/gms/internal/base/zak;->zaf:I

    iget-boolean v3, p0, Lcom/google/android/gms/internal/base/zak;->zag:Z

    iget-object v4, p0, Lcom/google/android/gms/internal/base/zak;->zaj:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/google/android/gms/internal/base/zak;->zak:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_61

    if-eqz v3, :cond_51

    if-nez v0, :cond_50

    goto :goto_52

    .line 6
    :cond_50
    goto :goto_56

    :cond_51
    move v2, v0

    .line 4
    :goto_52
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move v0, v2

    :goto_56
    iget v1, p0, Lcom/google/android/gms/internal/base/zak;->zad:I

    if-ne v0, v1, :cond_60

    .line 5
    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 6
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_60
    return-void

    :cond_61
    if-eqz v3, :cond_69

    iget v1, p0, Lcom/google/android/gms/internal/base/zak;->zad:I

    sub-int/2addr v1, v0

    .line 7
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 8
    :cond_69
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz v3, :cond_73

    iget v1, p0, Lcom/google/android/gms/internal/base/zak;->zad:I

    .line 9
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_73
    if-lez v0, :cond_80

    .line 10
    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 11
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget p1, p0, Lcom/google/android/gms/internal/base/zak;->zad:I

    .line 12
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 13
    :cond_80
    invoke-virtual {p0}, Lcom/google/android/gms/internal/base/zak;->invalidateSelf()V

    return-void

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_37
        :pswitch_8
    .end packed-switch
.end method

.method public final getChangingConfigurations()I
    .registers 4

    .line 1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/base/zak;->zai:Lcom/google/android/gms/internal/base/zaj;

    iget v2, v1, Lcom/google/android/gms/internal/base/zaj;->zaa:I

    or-int/2addr v0, v2

    iget v1, v1, Lcom/google/android/gms/internal/base/zaj;->zab:I

    or-int/2addr v0, v1

    return v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/base/zak;->zac()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/base/zak;->zai:Lcom/google/android/gms/internal/base/zaj;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/base/zak;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/base/zaj;->zaa:I

    iget-object v0, p0, Lcom/google/android/gms/internal/base/zak;->zai:Lcom/google/android/gms/internal/base/zaj;

    return-object v0

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getIntrinsicHeight()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/base/zak;->zaj:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/base/zak;->zak:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final getIntrinsicWidth()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/base/zak;->zaj:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/base/zak;->zak:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final getOpacity()I
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/base/zak;->zan:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/base/zak;->zaj:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/base/zak;->zak:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/base/zak;->zao:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/base/zak;->zan:Z

    :cond_19
    iget v0, p0, Lcom/google/android/gms/internal/base/zak;->zao:I

    return v0
.end method

.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/base/zak;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 2
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    return-void
.end method

.method public final mutate()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/base/zak;->zah:Z

    if-nez v0, :cond_26

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_26

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/base/zak;->zac()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/base/zak;->zaj:Landroid/graphics/drawable/Drawable;

    .line 4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/google/android/gms/internal/base/zak;->zak:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/base/zak;->zah:Z

    goto :goto_26

    .line 2
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 3
    const-string v1, "One or more children of this LayerDrawable does not have constant state; this drawable cannot be mutated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_26
    :goto_26
    return-object p0
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/base/zak;->zaj:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/base/zak;->zak:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/base/zak;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 2
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_9
    return-void
.end method

.method public final setAlpha(I)V
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/base/zak;->zaf:I

    iget v1, p0, Lcom/google/android/gms/internal/base/zak;->zad:I

    if-ne v0, v1, :cond_8

    iput p1, p0, Lcom/google/android/gms/internal/base/zak;->zaf:I

    :cond_8
    iput p1, p0, Lcom/google/android/gms/internal/base/zak;->zad:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/base/zak;->invalidateSelf()V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/base/zak;->zaj:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/base/zak;->zak:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public final unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/base/zak;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 2
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_9
    return-void
.end method

.method public final zaa()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/base/zak;->zak:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final zab(I)V
    .registers 2

    .line 1
    iget p1, p0, Lcom/google/android/gms/internal/base/zak;->zad:I

    iput p1, p0, Lcom/google/android/gms/internal/base/zak;->zac:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/base/zak;->zaf:I

    const/16 p1, 0xfa

    iput p1, p0, Lcom/google/android/gms/internal/base/zak;->zae:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/base/zak;->zaa:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/base/zak;->invalidateSelf()V

    return-void
.end method

.method public final zac()Z
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/base/zak;->zal:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/base/zak;->zaj:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/base/zak;->zak:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_17

    move v2, v1

    :cond_17
    iput-boolean v2, p0, Lcom/google/android/gms/internal/base/zak;->zam:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/base/zak;->zal:Z

    :cond_1b
    iget-boolean v0, p0, Lcom/google/android/gms/internal/base/zak;->zam:Z

    return v0
.end method
