.class public final enum Landroidx/lifecycle/Lifecycle$Event;
.super Ljava/lang/Enum;
.source "Lifecycle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/Lifecycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/lifecycle/Lifecycle$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/lifecycle/Lifecycle$Event;

.field public static final enum ON_ANY:Landroidx/lifecycle/Lifecycle$Event;

.field public static final enum ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

.field public static final enum ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

.field public static final enum ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

.field public static final enum ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

.field public static final enum ON_START:Landroidx/lifecycle/Lifecycle$Event;

.field public static final enum ON_STOP:Landroidx/lifecycle/Lifecycle$Event;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 99
    new-instance v0, Landroidx/lifecycle/Lifecycle$Event;

    const-string v1, "ON_CREATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/Lifecycle$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    .line 103
    new-instance v1, Landroidx/lifecycle/Lifecycle$Event;

    const-string v3, "ON_START"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroidx/lifecycle/Lifecycle$Event;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    .line 107
    new-instance v3, Landroidx/lifecycle/Lifecycle$Event;

    const-string v5, "ON_RESUME"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroidx/lifecycle/Lifecycle$Event;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    .line 111
    new-instance v5, Landroidx/lifecycle/Lifecycle$Event;

    const-string v7, "ON_PAUSE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroidx/lifecycle/Lifecycle$Event;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    .line 115
    new-instance v7, Landroidx/lifecycle/Lifecycle$Event;

    const-string v9, "ON_STOP"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Landroidx/lifecycle/Lifecycle$Event;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    .line 119
    new-instance v9, Landroidx/lifecycle/Lifecycle$Event;

    const-string v11, "ON_DESTROY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Landroidx/lifecycle/Lifecycle$Event;-><init>(Ljava/lang/String;I)V

    sput-object v9, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 123
    new-instance v11, Landroidx/lifecycle/Lifecycle$Event;

    const-string v13, "ON_ANY"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Landroidx/lifecycle/Lifecycle$Event;-><init>(Ljava/lang/String;I)V

    sput-object v11, Landroidx/lifecycle/Lifecycle$Event;->ON_ANY:Landroidx/lifecycle/Lifecycle$Event;

    .line 94
    const/4 v13, 0x7

    new-array v13, v13, [Landroidx/lifecycle/Lifecycle$Event;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Landroidx/lifecycle/Lifecycle$Event;->$VALUES:[Landroidx/lifecycle/Lifecycle$Event;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static downFrom(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;
    .registers 3
    .param p0, "state"    # Landroidx/lifecycle/Lifecycle$State;

    .line 135
    sget-object v0, Landroidx/lifecycle/Lifecycle$1;->$SwitchMap$androidx$lifecycle$Lifecycle$State:[I

    invoke-virtual {p0}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16

    .line 143
    const/4 v0, 0x0

    return-object v0

    .line 141
    :pswitch_d
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    return-object v0

    .line 139
    :pswitch_10
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    return-object v0

    .line 137
    :pswitch_13
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    return-object v0

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_13
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method

.method public static downTo(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;
    .registers 3
    .param p0, "state"    # Landroidx/lifecycle/Lifecycle$State;

    .line 157
    sget-object v0, Landroidx/lifecycle/Lifecycle$1;->$SwitchMap$androidx$lifecycle$Lifecycle$State:[I

    invoke-virtual {p0}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16

    .line 165
    :pswitch_b
    const/4 v0, 0x0

    return-object v0

    .line 159
    :pswitch_d
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    return-object v0

    .line 163
    :pswitch_10
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    return-object v0

    .line 161
    :pswitch_13
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    return-object v0

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_13
        :pswitch_10
        :pswitch_b
        :pswitch_d
    .end packed-switch
.end method

.method public static upFrom(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;
    .registers 3
    .param p0, "state"    # Landroidx/lifecycle/Lifecycle$State;

    .line 179
    sget-object v0, Landroidx/lifecycle/Lifecycle$1;->$SwitchMap$androidx$lifecycle$Lifecycle$State:[I

    invoke-virtual {p0}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16

    .line 187
    :pswitch_b
    const/4 v0, 0x0

    return-object v0

    .line 181
    :pswitch_d
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    return-object v0

    .line 185
    :pswitch_10
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    return-object v0

    .line 183
    :pswitch_13
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    return-object v0

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_13
        :pswitch_10
        :pswitch_b
        :pswitch_b
        :pswitch_d
    .end packed-switch
.end method

.method public static upTo(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;
    .registers 3
    .param p0, "state"    # Landroidx/lifecycle/Lifecycle$State;

    .line 201
    sget-object v0, Landroidx/lifecycle/Lifecycle$1;->$SwitchMap$androidx$lifecycle$Lifecycle$State:[I

    invoke-virtual {p0}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16

    .line 209
    const/4 v0, 0x0

    return-object v0

    .line 207
    :pswitch_d
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    return-object v0

    .line 205
    :pswitch_10
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    return-object v0

    .line 203
    :pswitch_13
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    return-object v0

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_13
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/lifecycle/Lifecycle$Event;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 94
    const-class v0, Landroidx/lifecycle/Lifecycle$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/Lifecycle$Event;

    return-object v0
.end method

.method public static values()[Landroidx/lifecycle/Lifecycle$Event;
    .registers 1

    .line 94
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->$VALUES:[Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0}, [Landroidx/lifecycle/Lifecycle$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/lifecycle/Lifecycle$Event;

    return-object v0
.end method


# virtual methods
.method public getTargetState()Landroidx/lifecycle/Lifecycle$State;
    .registers 4

    .line 224
    sget-object v0, Landroidx/lifecycle/Lifecycle$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    invoke-virtual {p0}, Landroidx/lifecycle/Lifecycle$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    .line 238
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has no target state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :pswitch_24
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    return-object v0

    .line 232
    :pswitch_27
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    return-object v0

    .line 230
    :pswitch_2a
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    return-object v0

    .line 227
    :pswitch_2d
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    return-object v0

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_2d
        :pswitch_2a
        :pswitch_2a
        :pswitch_27
        :pswitch_24
    .end packed-switch
.end method
