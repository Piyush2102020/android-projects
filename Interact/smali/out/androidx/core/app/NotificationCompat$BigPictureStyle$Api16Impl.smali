.class Landroidx/core/app/NotificationCompat$BigPictureStyle$Api16Impl;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$BigPictureStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api16Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 3264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3265
    return-void
.end method

.method static setBigLargeIcon(Landroid/app/Notification$BigPictureStyle;Landroid/graphics/Bitmap;)V
    .registers 2
    .param p0, "style"    # Landroid/app/Notification$BigPictureStyle;
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .line 3272
    invoke-virtual {p0, p1}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 3273
    return-void
.end method

.method static setSummaryText(Landroid/app/Notification$BigPictureStyle;Ljava/lang/CharSequence;)V
    .registers 2
    .param p0, "style"    # Landroid/app/Notification$BigPictureStyle;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 3280
    invoke-virtual {p0, p1}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    .line 3281
    return-void
.end method
