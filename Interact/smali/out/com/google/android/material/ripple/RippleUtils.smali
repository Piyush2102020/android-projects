.class public Lcom/google/android/material/ripple/RippleUtils;
.super Ljava/lang/Object;
.source "RippleUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/ripple/RippleUtils$RippleUtilsLollipop;
    }
.end annotation


# static fields
.field private static final ENABLED_PRESSED_STATE_SET:[I

.field private static final FOCUSED_STATE_SET:[I

.field private static final HOVERED_FOCUSED_STATE_SET:[I

.field private static final HOVERED_STATE_SET:[I

.field static final LOG_TAG:Ljava/lang/String;

.field private static final PRESSED_STATE_SET:[I

.field private static final SELECTED_FOCUSED_STATE_SET:[I

.field private static final SELECTED_HOVERED_FOCUSED_STATE_SET:[I

.field private static final SELECTED_HOVERED_STATE_SET:[I

.field private static final SELECTED_PRESSED_STATE_SET:[I

.field private static final SELECTED_STATE_SET:[I

.field static final TRANSPARENT_DEFAULT_COLOR_WARNING:Ljava/lang/String; = "Use a non-transparent color for the default color as it will be used to finish ripple animations."

.field public static final USE_FRAMEWORK_RIPPLE:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 55
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/material/ripple/RippleUtils;->USE_FRAMEWORK_RIPPLE:Z

    .line 57
    new-array v1, v0, [I

    const v2, 0x10100a7

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/google/android/material/ripple/RippleUtils;->PRESSED_STATE_SET:[I

    .line 60
    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_5e

    sput-object v2, Lcom/google/android/material/ripple/RippleUtils;->HOVERED_FOCUSED_STATE_SET:[I

    .line 63
    new-array v2, v0, [I

    const v4, 0x101009c

    aput v4, v2, v3

    sput-object v2, Lcom/google/android/material/ripple/RippleUtils;->FOCUSED_STATE_SET:[I

    .line 66
    new-array v2, v0, [I

    const v4, 0x1010367

    aput v4, v2, v3

    sput-object v2, Lcom/google/android/material/ripple/RippleUtils;->HOVERED_STATE_SET:[I

    .line 70
    new-array v2, v1, [I

    fill-array-data v2, :array_66

    sput-object v2, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_PRESSED_STATE_SET:[I

    .line 73
    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_6e

    sput-object v2, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_HOVERED_FOCUSED_STATE_SET:[I

    .line 76
    new-array v2, v1, [I

    fill-array-data v2, :array_78

    sput-object v2, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_FOCUSED_STATE_SET:[I

    .line 79
    new-array v2, v1, [I

    fill-array-data v2, :array_80

    sput-object v2, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_HOVERED_STATE_SET:[I

    .line 82
    new-array v0, v0, [I

    const v2, 0x10100a1

    aput v2, v0, v3

    sput-object v0, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_STATE_SET:[I

    .line 86
    new-array v0, v1, [I

    fill-array-data v0, :array_88

    sput-object v0, Lcom/google/android/material/ripple/RippleUtils;->ENABLED_PRESSED_STATE_SET:[I

    .line 90
    const-class v0, Lcom/google/android/material/ripple/RippleUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/ripple/RippleUtils;->LOG_TAG:Ljava/lang/String;

    return-void

    nop

    :array_5e
    .array-data 4
        0x1010367
        0x101009c
    .end array-data

    :array_66
    .array-data 4
        0x10100a1
        0x10100a7
    .end array-data

    :array_6e
    .array-data 4
        0x10100a1
        0x1010367
        0x101009c
    .end array-data

    :array_78
    .array-data 4
        0x10100a1
        0x101009c
    .end array-data

    :array_80
    .array-data 4
        0x10100a1
        0x1010367
    .end array-data

    :array_88
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .registers 7
    .param p0, "rippleColor"    # Landroid/content/res/ColorStateList;

    .line 125
    sget-boolean v0, Lcom/google/android/material/ripple/RippleUtils;->USE_FRAMEWORK_RIPPLE:Z

    if-eqz v0, :cond_38

    .line 126
    const/4 v0, 0x3

    .line 128
    .local v0, "size":I
    new-array v1, v0, [[I

    .line 129
    .local v1, "states":[[I
    new-array v2, v0, [I

    .line 130
    .local v2, "colors":[I
    const/4 v3, 0x0

    .line 138
    .local v3, "i":I
    sget-object v4, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_STATE_SET:[I

    aput-object v4, v1, v3

    .line 139
    sget-object v4, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_PRESSED_STATE_SET:[I

    invoke-static {p0, v4}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    move-result v4

    aput v4, v2, v3

    .line 140
    add-int/lit8 v3, v3, 0x1

    .line 142
    sget-object v4, Lcom/google/android/material/ripple/RippleUtils;->FOCUSED_STATE_SET:[I

    aput-object v4, v1, v3

    .line 143
    invoke-static {p0, v4}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    move-result v4

    aput v4, v2, v3

    .line 144
    add-int/lit8 v3, v3, 0x1

    .line 147
    sget-object v4, Landroid/util/StateSet;->NOTHING:[I

    aput-object v4, v1, v3

    .line 148
    sget-object v4, Lcom/google/android/material/ripple/RippleUtils;->PRESSED_STATE_SET:[I

    invoke-static {p0, v4}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    move-result v4

    aput v4, v2, v3

    .line 149
    add-int/lit8 v3, v3, 0x1

    .line 151
    new-instance v4, Landroid/content/res/ColorStateList;

    invoke-direct {v4, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v4

    .line 153
    .end local v0    # "size":I
    .end local v1    # "states":[[I
    .end local v2    # "colors":[I
    .end local v3    # "i":I
    :cond_38
    const/16 v0, 0xa

    .line 155
    .restart local v0    # "size":I
    new-array v1, v0, [[I

    .line 156
    .restart local v1    # "states":[[I
    new-array v2, v0, [I

    .line 157
    .restart local v2    # "colors":[I
    const/4 v3, 0x0

    .line 159
    .restart local v3    # "i":I
    sget-object v4, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_PRESSED_STATE_SET:[I

    aput-object v4, v1, v3

    .line 160
    invoke-static {p0, v4}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    move-result v4

    aput v4, v2, v3

    .line 161
    add-int/lit8 v3, v3, 0x1

    .line 163
    sget-object v4, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_HOVERED_FOCUSED_STATE_SET:[I

    aput-object v4, v1, v3

    .line 164
    invoke-static {p0, v4}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    move-result v4

    aput v4, v2, v3

    .line 165
    add-int/lit8 v3, v3, 0x1

    .line 167
    sget-object v4, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_FOCUSED_STATE_SET:[I

    aput-object v4, v1, v3

    .line 168
    invoke-static {p0, v4}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    move-result v4

    aput v4, v2, v3

    .line 169
    add-int/lit8 v3, v3, 0x1

    .line 171
    sget-object v4, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_HOVERED_STATE_SET:[I

    aput-object v4, v1, v3

    .line 172
    invoke-static {p0, v4}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    move-result v4

    aput v4, v2, v3

    .line 173
    add-int/lit8 v3, v3, 0x1

    .line 176
    sget-object v4, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_STATE_SET:[I

    aput-object v4, v1, v3

    .line 177
    const/4 v4, 0x0

    aput v4, v2, v3

    .line 178
    add-int/lit8 v3, v3, 0x1

    .line 180
    sget-object v5, Lcom/google/android/material/ripple/RippleUtils;->PRESSED_STATE_SET:[I

    aput-object v5, v1, v3

    .line 181
    invoke-static {p0, v5}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    move-result v5

    aput v5, v2, v3

    .line 182
    add-int/lit8 v3, v3, 0x1

    .line 184
    sget-object v5, Lcom/google/android/material/ripple/RippleUtils;->HOVERED_FOCUSED_STATE_SET:[I

    aput-object v5, v1, v3

    .line 185
    invoke-static {p0, v5}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    move-result v5

    aput v5, v2, v3

    .line 186
    add-int/lit8 v3, v3, 0x1

    .line 188
    sget-object v5, Lcom/google/android/material/ripple/RippleUtils;->FOCUSED_STATE_SET:[I

    aput-object v5, v1, v3

    .line 189
    invoke-static {p0, v5}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    move-result v5

    aput v5, v2, v3

    .line 190
    add-int/lit8 v3, v3, 0x1

    .line 192
    sget-object v5, Lcom/google/android/material/ripple/RippleUtils;->HOVERED_STATE_SET:[I

    aput-object v5, v1, v3

    .line 193
    invoke-static {p0, v5}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    move-result v5

    aput v5, v2, v3

    .line 194
    add-int/lit8 v3, v3, 0x1

    .line 197
    sget-object v5, Landroid/util/StateSet;->NOTHING:[I

    aput-object v5, v1, v3

    .line 198
    aput v4, v2, v3

    .line 199
    add-int/lit8 v3, v3, 0x1

    .line 201
    new-instance v4, Landroid/content/res/ColorStateList;

    invoke-direct {v4, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v4
.end method

.method public static createOvalRippleLollipop(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "padding"    # I

    .line 264
    invoke-static {p0, p1}, Lcom/google/android/material/ripple/RippleUtils$RippleUtilsLollipop;->access$000(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static doubleAlpha(I)I
    .registers 3
    .param p0, "color"    # I

    .line 285
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/16 v1, 0xff

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 286
    .local v0, "alpha":I
    invoke-static {p0, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    return v1
.end method

.method private static getColorForState(Landroid/content/res/ColorStateList;[I)I
    .registers 4
    .param p0, "rippleColor"    # Landroid/content/res/ColorStateList;
    .param p1, "state"    # [I

    .line 270
    if-eqz p0, :cond_b

    .line 271
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .local v0, "color":I
    goto :goto_c

    .line 273
    .end local v0    # "color":I
    :cond_b
    const/4 v0, 0x0

    .line 275
    .restart local v0    # "color":I
    :goto_c
    sget-boolean v1, Lcom/google/android/material/ripple/RippleUtils;->USE_FRAMEWORK_RIPPLE:Z

    if-eqz v1, :cond_15

    invoke-static {v0}, Lcom/google/android/material/ripple/RippleUtils;->doubleAlpha(I)I

    move-result v1

    goto :goto_16

    :cond_15
    move v1, v0

    :goto_16
    return v1
.end method

.method public static sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .registers 4
    .param p0, "rippleColor"    # Landroid/content/res/ColorStateList;

    .line 220
    const/4 v0, 0x0

    if-eqz p0, :cond_27

    .line 221
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-gt v1, v2, :cond_26

    .line 223
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-nez v1, :cond_26

    sget-object v1, Lcom/google/android/material/ripple/RippleUtils;->ENABLED_PRESSED_STATE_SET:[I

    .line 224
    invoke-virtual {p0, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_26

    .line 226
    sget-object v0, Lcom/google/android/material/ripple/RippleUtils;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Use a non-transparent color for the default color as it will be used to finish ripple animations."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_26
    return-object p0

    .line 230
    :cond_27
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public static shouldDrawRippleCompat([I)Z
    .registers 8
    .param p0, "stateSet"    # [I

    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, "enabled":Z
    const/4 v1, 0x0

    .line 241
    .local v1, "interactedState":Z
    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_5
    if-ge v4, v2, :cond_27

    aget v5, p0, v4

    .line 242
    .local v5, "state":I
    const v6, 0x101009e

    if-ne v5, v6, :cond_10

    .line 243
    const/4 v0, 0x1

    goto :goto_24

    .line 244
    :cond_10
    const v6, 0x101009c

    if-ne v5, v6, :cond_17

    .line 245
    const/4 v1, 0x1

    goto :goto_24

    .line 246
    :cond_17
    const v6, 0x10100a7

    if-ne v5, v6, :cond_1e

    .line 247
    const/4 v1, 0x1

    goto :goto_24

    .line 248
    :cond_1e
    const v6, 0x1010367

    if-ne v5, v6, :cond_24

    .line 249
    const/4 v1, 0x1

    .line 241
    .end local v5    # "state":I
    :cond_24
    :goto_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 252
    :cond_27
    if-eqz v0, :cond_2c

    if-eqz v1, :cond_2c

    const/4 v3, 0x1

    :cond_2c
    return v3
.end method
