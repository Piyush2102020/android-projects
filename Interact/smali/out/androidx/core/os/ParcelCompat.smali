.class public final Landroidx/core/os/ParcelCompat;
.super Ljava/lang/Object;
.source "ParcelCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/os/ParcelCompat$TiramisuImpl;,
        Landroidx/core/os/ParcelCompat$Api30Impl;,
        Landroidx/core/os/ParcelCompat$Api29Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readArray(Landroid/os/Parcel;Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 4
    .param p0, "in"    # Landroid/os/Parcel;
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcel;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 114
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 115
    invoke-static {p0, p1, p2}, Landroidx/core/os/ParcelCompat$TiramisuImpl;->readArray(Landroid/os/Parcel;Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 117
    :cond_b
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static readArrayList(Landroid/os/Parcel;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;
    .registers 4
    .param p0, "in"    # Landroid/os/Parcel;
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcel;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 93
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 94
    invoke-static {p0, p1, p2}, Landroidx/core/os/ParcelCompat$TiramisuImpl;->readArrayList(Landroid/os/Parcel;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 96
    :cond_b
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static readBoolean(Landroid/os/Parcel;)Z
    .registers 2
    .param p0, "in"    # Landroid/os/Parcel;

    .line 46
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static readHashMap(Landroid/os/Parcel;Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/HashMap;
    .registers 5
    .param p0, "in"    # Landroid/os/Parcel;
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcel;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "+TK;>;",
            "Ljava/lang/Class<",
            "+TV;>;)",
            "Ljava/util/HashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 175
    .local p2, "clazzKey":Ljava/lang/Class;, "Ljava/lang/Class<+TK;>;"
    .local p3, "clazzValue":Ljava/lang/Class;, "Ljava/lang/Class<+TV;>;"
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 176
    invoke-static {p0, p1, p2, p3}, Landroidx/core/os/ParcelCompat$TiramisuImpl;->readHashMap(Landroid/os/Parcel;Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0

    .line 178
    :cond_b
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static readList(Landroid/os/Parcel;Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V
    .registers 5
    .param p0, "in"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcel;",
            "Ljava/util/List<",
            "-TT;>;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 72
    .local p1, "outVal":Ljava/util/List;, "Ljava/util/List<-TT;>;"
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 73
    invoke-static {p0, p1, p2, p3}, Landroidx/core/os/ParcelCompat$TiramisuImpl;->readList(Landroid/os/Parcel;Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    goto :goto_d

    .line 75
    :cond_a
    invoke-virtual {p0, p1, p2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 77
    :goto_d
    return-void
.end method

.method public static readMap(Landroid/os/Parcel;Ljava/util/Map;Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 6
    .param p0, "in"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map<",
            "-TK;-TV;>;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Class<",
            "TV;>;)V"
        }
    .end annotation

    .line 155
    .local p1, "outVal":Ljava/util/Map;, "Ljava/util/Map<-TK;-TV;>;"
    .local p3, "clazzKey":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p4, "clazzValue":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 156
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/os/ParcelCompat$TiramisuImpl;->readMap(Landroid/os/Parcel;Ljava/util/Map;Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_d

    .line 158
    :cond_a
    invoke-virtual {p0, p1, p2}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 160
    :goto_d
    return-void
.end method

.method public static readParcelable(Landroid/os/Parcel;Ljava/lang/ClassLoader;Ljava/lang/Class;)Landroid/os/Parcelable;
    .registers 4
    .param p0, "in"    # Landroid/os/Parcel;
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 195
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 196
    invoke-static {p0, p1, p2}, Landroidx/core/os/ParcelCompat$TiramisuImpl;->readParcelable(Landroid/os/Parcel;Ljava/lang/ClassLoader;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0

    .line 198
    :cond_b
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public static readParcelableArray(Landroid/os/Parcel;Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 4
    .param p0, "in"    # Landroid/os/Parcel;
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcel;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 237
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 238
    invoke-static {p0, p1, p2}, Landroidx/core/os/ParcelCompat$TiramisuImpl;->readParcelableArray(Landroid/os/Parcel;Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 240
    :cond_b
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static readParcelableCreator(Landroid/os/Parcel;Ljava/lang/ClassLoader;Ljava/lang/Class;)Landroid/os/Parcelable$Creator;
    .registers 4
    .param p0, "in"    # Landroid/os/Parcel;
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcel;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;"
        }
    .end annotation

    .line 216
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 217
    invoke-static {p0, p1, p2}, Landroidx/core/os/ParcelCompat$TiramisuImpl;->readParcelableCreator(Landroid/os/Parcel;Ljava/lang/ClassLoader;Ljava/lang/Class;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    return-object v0

    .line 219
    :cond_b
    invoke-static {p0, p1}, Landroidx/core/os/ParcelCompat$Api30Impl;->readParcelableCreator(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    return-object v0
.end method

.method public static readParcelableList(Landroid/os/Parcel;Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;
    .registers 5
    .param p0, "in"    # Landroid/os/Parcel;
    .param p2, "cl"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcel;",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 258
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 259
    invoke-static {p0, p1, p2, p3}, Landroidx/core/os/ParcelCompat$TiramisuImpl;->readParcelableList(Landroid/os/Parcel;Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 261
    :cond_b
    invoke-static {p0, p1, p2}, Landroidx/core/os/ParcelCompat$Api29Impl;->readParcelableList(Landroid/os/Parcel;Ljava/util/List;Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static readSerializable(Landroid/os/Parcel;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/io/Serializable;
    .registers 4
    .param p0, "in"    # Landroid/os/Parcel;
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(",
            "Landroid/os/Parcel;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 279
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 280
    invoke-static {p0, p1, p2}, Landroidx/core/os/ParcelCompat$TiramisuImpl;->readSerializable(Landroid/os/Parcel;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v0

    return-object v0

    .line 282
    :cond_b
    invoke-virtual {p0}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    return-object v0
.end method

.method public static readSparseArray(Landroid/os/Parcel;Ljava/lang/ClassLoader;Ljava/lang/Class;)Landroid/util/SparseArray;
    .registers 4
    .param p0, "in"    # Landroid/os/Parcel;
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcel;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation

    .line 135
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 136
    invoke-static {p0, p1, p2}, Landroidx/core/os/ParcelCompat$TiramisuImpl;->readSparseArray(Landroid/os/Parcel;Ljava/lang/ClassLoader;Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0

    .line 138
    :cond_b
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public static writeBoolean(Landroid/os/Parcel;Z)V
    .registers 2
    .param p0, "out"    # Landroid/os/Parcel;
    .param p1, "value"    # Z

    .line 57
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    return-void
.end method
