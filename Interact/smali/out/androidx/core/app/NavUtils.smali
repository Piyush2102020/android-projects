.class public final Landroidx/core/app/NavUtils;
.super Ljava/lang/Object;
.source "NavUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NavUtils$Api16Impl;
    }
.end annotation


# static fields
.field public static final PARENT_ACTIVITY:Ljava/lang/String; = "android.support.PARENT_ACTIVITY"

.field private static final TAG:Ljava/lang/String; = "NavUtils"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    return-void
.end method

.method public static getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;
    .registers 7
    .param p0, "sourceActivity"    # Landroid/app/Activity;

    .line 131
    nop

    .line 134
    invoke-static {p0}, Landroidx/core/app/NavUtils$Api16Impl;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    .line 135
    .local v0, "result":Landroid/content/Intent;
    if-eqz v0, :cond_8

    .line 136
    return-object v0

    .line 139
    .end local v0    # "result":Landroid/content/Intent;
    :cond_8
    invoke-static {p0}, Landroidx/core/app/NavUtils;->getParentActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "parentName":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_10

    return-object v1

    .line 143
    :cond_10
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 145
    .local v2, "target":Landroid/content/ComponentName;
    :try_start_15
    invoke-static {p0, v2}, Landroidx/core/app/NavUtils;->getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, "grandparent":Ljava/lang/String;
    if-nez v3, :cond_20

    .line 147
    invoke-static {v2}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_29

    .line 148
    :cond_20
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15 .. :try_end_29} :catch_2a

    .line 146
    :goto_29
    return-object v1

    .line 149
    .end local v3    # "grandparent":Ljava/lang/String;
    :catch_2a
    move-exception v3

    .line 150
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getParentActivityIntent: bad parentActivityName \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' in manifest"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NavUtils"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-object v1
.end method

.method public static getParentActivityIntent(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 197
    invoke-static {p0, p1}, Landroidx/core/app/NavUtils;->getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "parentActivity":Ljava/lang/String;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    .line 201
    :cond_8
    new-instance v1, Landroid/content/ComponentName;

    .line 202
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .local v1, "target":Landroid/content/ComponentName;
    invoke-static {p0, v1}, Landroidx/core/app/NavUtils;->getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, "grandparent":Ljava/lang/String;
    if-nez v2, :cond_1c

    .line 205
    invoke-static {v1}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    goto :goto_25

    .line 206
    :cond_1c
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    :goto_25
    nop

    .line 207
    .local v3, "parentIntent":Landroid/content/Intent;
    return-object v3
.end method

.method public static getParentActivityIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 170
    .local p1, "sourceActivityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v0}, Landroidx/core/app/NavUtils;->getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "parentActivity":Ljava/lang/String;
    if-nez v0, :cond_d

    const/4 v1, 0x0

    return-object v1

    .line 175
    :cond_d
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 176
    .local v1, "target":Landroid/content/ComponentName;
    invoke-static {p0, v1}, Landroidx/core/app/NavUtils;->getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, "grandparent":Ljava/lang/String;
    if-nez v2, :cond_1d

    .line 178
    invoke-static {v1}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    goto :goto_26

    .line 179
    :cond_1d
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    :goto_26
    nop

    .line 180
    .local v3, "parentIntent":Landroid/content/Intent;
    return-object v3
.end method

.method public static getParentActivityName(Landroid/app/Activity;)Ljava/lang/String;
    .registers 3
    .param p0, "sourceActivity"    # Landroid/app/Activity;

    .line 222
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/core/app/NavUtils;->getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 223
    :catch_9
    move-exception v0

    .line 225
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 242
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 243
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/16 v1, 0x80

    .line 246
    .local v1, "flags":I
    nop

    .line 247
    or-int/lit16 v1, v1, 0x200

    .line 254
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_13

    .line 255
    const/high16 v2, 0x100c0000

    or-int/2addr v1, v2

    goto :goto_17

    .line 258
    :cond_13
    nop

    .line 259
    const/high16 v2, 0xc0000

    or-int/2addr v1, v2

    .line 263
    :goto_17
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 264
    .local v2, "info":Landroid/content/pm/ActivityInfo;
    nop

    .line 265
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 266
    .local v3, "result":Ljava/lang/String;
    if-eqz v3, :cond_21

    .line 267
    return-object v3

    .line 270
    .end local v3    # "result":Ljava/lang/String;
    :cond_21
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const/4 v4, 0x0

    if-nez v3, :cond_27

    .line 271
    return-object v4

    .line 273
    :cond_27
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "android.support.PARENT_ACTIVITY"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 274
    .local v3, "parentActivity":Ljava/lang/String;
    if-nez v3, :cond_32

    .line 275
    return-object v4

    .line 277
    :cond_32
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_50

    .line 278
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 280
    :cond_50
    return-object v3
.end method

.method public static navigateUpFromSameTask(Landroid/app/Activity;)V
    .registers 5
    .param p0, "sourceActivity"    # Landroid/app/Activity;

    .line 83
    invoke-static {p0}, Landroidx/core/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    .line 85
    .local v0, "upIntent":Landroid/content/Intent;
    if-eqz v0, :cond_a

    .line 93
    invoke-static {p0, v0}, Landroidx/core/app/NavUtils;->navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 94
    return-void

    .line 86
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not have a parent activity name specified. (Did you forget to add the android.support.PARENT_ACTIVITY <meta-data>  element in your manifest?)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 2
    .param p0, "sourceActivity"    # Landroid/app/Activity;
    .param p1, "upIntent"    # Landroid/content/Intent;

    .line 110
    nop

    .line 111
    invoke-static {p0, p1}, Landroidx/core/app/NavUtils$Api16Impl;->navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)Z

    .line 117
    return-void
.end method

.method public static shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z
    .registers 3
    .param p0, "sourceActivity"    # Landroid/app/Activity;
    .param p1, "targetIntent"    # Landroid/content/Intent;

    .line 62
    nop

    .line 63
    invoke-static {p0, p1}, Landroidx/core/app/NavUtils$Api16Impl;->shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
