.class final synthetic Lkotlinx/coroutines/flow/FlowKt__ChannelsKt;
.super Ljava/lang/Object;
.source "Channels.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChannels.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Channels.kt\nkotlinx/coroutines/flow/FlowKt__ChannelsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,201:1\n1#2:202\n106#3:203\n*S KotlinDebug\n*F\n+ 1 Channels.kt\nkotlinx/coroutines/flow/FlowKt__ChannelsKt\n*L\n177#1:203\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u001e\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u0003H\u0007\u001a\u001c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u0005\u001a/\u0010\u0006\u001a\u00020\u0007\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0005H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\n\u001a9\u0010\u000b\u001a\u00020\u0007\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u00052\u0006\u0010\u000c\u001a\u00020\rH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u001a&\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0005\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u0012H\u0007\u001a\u001c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u0005\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0014"
    }
    d2 = {
        "asFlow",
        "Lkotlinx/coroutines/flow/Flow;",
        "T",
        "Lkotlinx/coroutines/channels/BroadcastChannel;",
        "consumeAsFlow",
        "Lkotlinx/coroutines/channels/ReceiveChannel;",
        "emitAll",
        "",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "channel",
        "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "emitAllImpl",
        "consume",
        "",
        "emitAllImpl$FlowKt__ChannelsKt",
        "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/channels/ReceiveChannel;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "produceIn",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "receiveAsFlow",
        "kotlinx-coroutines-core"
    }
    k = 0x5
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
    xs = "kotlinx/coroutines/flow/FlowKt"
.end annotation


# direct methods
.method public static final synthetic access$emitAllImpl$FlowKt__ChannelsKt(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/channels/ReceiveChannel;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
    .param p0, "$receiver"    # Lkotlinx/coroutines/flow/FlowCollector;
    .param p1, "channel"    # Lkotlinx/coroutines/channels/ReceiveChannel;
    .param p2, "consume"    # Z
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 1
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt;->emitAllImpl$FlowKt__ChannelsKt(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/channels/ReceiveChannel;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final asFlow(Lkotlinx/coroutines/channels/BroadcastChannel;)Lkotlinx/coroutines/flow/Flow;
    .registers 3
    .param p0, "$this$asFlow"    # Lkotlinx/coroutines/channels/BroadcastChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/BroadcastChannel<",
            "TT;>;)",
            "Lkotlinx/coroutines/flow/Flow<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "\'BroadcastChannel\' is obsolete and all corresponding operators are deprecated in the favour of StateFlow and SharedFlow"
    .end annotation

    .line 177
    const/4 v0, 0x0

    .line 203
    .local v0, "$i$f$unsafeFlow":I
    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$asFlow$$inlined$unsafeFlow$1;

    invoke-direct {v1, p0}, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$asFlow$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/channels/BroadcastChannel;)V

    check-cast v1, Lkotlinx/coroutines/flow/Flow;

    .line 179
    .end local v0    # "$i$f$unsafeFlow":I
    return-object v1
.end method

.method public static final consumeAsFlow(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;
    .registers 10
    .param p0, "$this$consumeAsFlow"    # Lkotlinx/coroutines/channels/ReceiveChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TT;>;)",
            "Lkotlinx/coroutines/flow/Flow<",
            "TT;>;"
        }
    .end annotation

    .line 111
    new-instance v8, Lkotlinx/coroutines/flow/ChannelAsFlow;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lkotlinx/coroutines/flow/ChannelAsFlow;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;ZLkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v8, Lkotlinx/coroutines/flow/Flow;

    return-object v8
.end method

.method public static final emitAll(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
    .param p0, "$this$emitAll"    # Lkotlinx/coroutines/flow/FlowCollector;
    .param p1, "channel"    # Lkotlinx/coroutines/channels/ReceiveChannel;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-TT;>;",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 30
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt;->emitAllImpl$FlowKt__ChannelsKt(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/channels/ReceiveChannel;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_c

    return-object v0

    :cond_c
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final emitAllImpl$FlowKt__ChannelsKt(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/channels/ReceiveChannel;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-TT;>;",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TT;>;Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;

    if-eqz v0, :cond_14

    move-object v0, p3

    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    iget p3, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->label:I

    goto :goto_19

    :cond_14
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;

    invoke-direct {v0, p3}, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_19
    move-object p3, v0

    .local p3, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p3, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 32
    iget v2, p3, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->label:I

    packed-switch v2, :pswitch_data_c4

    .line 70
    .end local v0    # "$result":Ljava/lang/Object;
    .end local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 32
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_2d
    iget-boolean p0, p3, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->Z$0:Z

    .local p0, "consume":Z
    const/4 p1, 0x0

    .local p1, "cause":Ljava/lang/Throwable;
    iget-object p2, p3, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->L$1:Ljava/lang/Object;

    check-cast p2, Lkotlinx/coroutines/channels/ReceiveChannel;

    .local p2, "channel":Lkotlinx/coroutines/channels/ReceiveChannel;
    iget-object v2, p3, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    .local v2, "$this$emitAllImpl":Lkotlinx/coroutines/flow/FlowCollector;
    :try_start_38
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3d

    goto/16 :goto_b4

    .line 64
    :catchall_3d
    move-exception v1

    goto/16 :goto_b9

    .line 32
    .end local v2    # "$this$emitAllImpl":Lkotlinx/coroutines/flow/FlowCollector;
    .end local p0    # "consume":Z
    .end local p1    # "cause":Ljava/lang/Throwable;
    .end local p2    # "channel":Lkotlinx/coroutines/channels/ReceiveChannel;
    :pswitch_40
    const/4 p0, 0x0

    .local p0, "$i$a$-run-FlowKt__ChannelsKt$emitAllImpl$result$1":I
    iget-boolean p1, p3, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->Z$0:Z

    .local p1, "consume":Z
    iget-object p2, p3, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->L$1:Ljava/lang/Object;

    check-cast p2, Lkotlinx/coroutines/channels/ReceiveChannel;

    .restart local p2    # "channel":Lkotlinx/coroutines/channels/ReceiveChannel;
    iget-object v2, p3, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    .restart local v2    # "$this$emitAllImpl":Lkotlinx/coroutines/flow/FlowCollector;
    const/4 v3, 0x0

    :try_start_4c
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v0

    check-cast v4, Lkotlinx/coroutines/channels/ChannelResult;

    invoke-virtual {v4}, Lkotlinx/coroutines/channels/ChannelResult;->unbox-impl()Ljava/lang/Object;

    move-result-object v4
    :try_end_56
    .catchall {:try_start_4c .. :try_end_56} :catchall_57

    goto :goto_81

    .line 64
    .end local p0    # "$i$a$-run-FlowKt__ChannelsKt$emitAllImpl$result$1":I
    :catchall_57
    move-exception v1

    move-object p0, v3

    move v6, p1

    move-object p1, p0

    move p0, v6

    .local p0, "cause":Ljava/lang/Throwable;
    goto/16 :goto_b9

    .line 32
    .end local v2    # "$this$emitAllImpl":Lkotlinx/coroutines/flow/FlowCollector;
    .end local p0    # "cause":Ljava/lang/Throwable;
    .end local p1    # "consume":Z
    .end local p2    # "channel":Lkotlinx/coroutines/channels/ReceiveChannel;
    :pswitch_5e
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 33
    .local p0, "$this$emitAllImpl":Lkotlinx/coroutines/flow/FlowCollector;
    .local p1, "channel":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local p2, "consume":Z
    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->ensureActive(Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 39
    const/4 v2, 0x0

    .line 40
    .local v2, "cause":Ljava/lang/Throwable;
    move-object v6, v2

    move-object v2, p0

    move p0, p2

    move-object p2, p1

    move-object p1, v6

    .line 41
    .local v2, "$this$emitAllImpl":Lkotlinx/coroutines/flow/FlowCollector;
    .local p0, "consume":Z
    .local p1, "cause":Ljava/lang/Throwable;
    .local p2, "channel":Lkotlinx/coroutines/channels/ReceiveChannel;
    :goto_6a
    nop

    .line 51
    nop

    .line 202
    const/4 v3, 0x0

    .line 51
    .local v3, "$i$a$-run-FlowKt__ChannelsKt$emitAllImpl$result$1":I
    :try_start_6d
    iput-object v2, p3, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->L$0:Ljava/lang/Object;

    iput-object p2, p3, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->L$1:Ljava/lang/Object;

    iput-boolean p0, p3, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->Z$0:Z

    const/4 v4, 0x1

    iput v4, p3, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->label:I

    invoke-interface {p2, p3}, Lkotlinx/coroutines/channels/ReceiveChannel;->receiveCatching-JP2dKIU(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_7a
    .catchall {:try_start_6d .. :try_end_7a} :catchall_3d

    if-ne v4, v1, :cond_7d

    .line 32
    return-object v1

    .line 51
    :cond_7d
    move-object v6, p1

    move p1, p0

    move p0, v3

    move-object v3, v6

    .end local v3    # "$i$a$-run-FlowKt__ChannelsKt$emitAllImpl$result$1":I
    .local p0, "$i$a$-run-FlowKt__ChannelsKt$emitAllImpl$result$1":I
    .local p1, "consume":Z
    :goto_81
    nop

    .end local p0    # "$i$a$-run-FlowKt__ChannelsKt$emitAllImpl$result$1":I
    move-object p0, v3

    .local p0, "cause":Ljava/lang/Throwable;
    move-object v3, v4

    .line 52
    .local v3, "result":Ljava/lang/Object;
    :try_start_84
    invoke-static {v3}, Lkotlinx/coroutines/channels/ChannelResult;->isClosed-impl(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9d

    .line 53
    invoke-static {v3}, Lkotlinx/coroutines/channels/ChannelResult;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1
    :try_end_8e
    .catchall {:try_start_84 .. :try_end_8e} :catchall_b5

    .end local v3    # "result":Ljava/lang/Object;
    if-nez v1, :cond_9a

    .line 54
    nop

    .line 68
    if-eqz p1, :cond_96

    invoke-static {p2, p0}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    .line 69
    .end local p0    # "cause":Ljava/lang/Throwable;
    :cond_96
    nop

    .line 70
    .restart local p0    # "cause":Ljava/lang/Throwable;
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 202
    .local v1, "it":Ljava/lang/Throwable;
    :cond_9a
    const/4 v3, 0x0

    .line 53
    .local v3, "$i$a$-let-FlowKt__ChannelsKt$emitAllImpl$2":I
    nop

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v2    # "$this$emitAllImpl":Lkotlinx/coroutines/flow/FlowCollector;
    .end local p0    # "cause":Ljava/lang/Throwable;
    .end local p1    # "consume":Z
    .end local p2    # "channel":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    :try_start_9c
    throw v1

    .line 62
    .end local v1    # "it":Ljava/lang/Throwable;
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local v2    # "$this$emitAllImpl":Lkotlinx/coroutines/flow/FlowCollector;
    .local v3, "result":Ljava/lang/Object;
    .restart local p0    # "cause":Ljava/lang/Throwable;
    .restart local p1    # "consume":Z
    .restart local p2    # "channel":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    :cond_9d
    invoke-static {v3}, Lkotlinx/coroutines/channels/ChannelResult;->getOrThrow-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v2, p3, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->L$0:Ljava/lang/Object;

    iput-object p2, p3, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->L$1:Ljava/lang/Object;

    iput-boolean p1, p3, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->Z$0:Z

    const/4 v5, 0x2

    iput v5, p3, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->label:I

    invoke-interface {v2, v4, p3}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_ae
    .catchall {:try_start_9c .. :try_end_ae} :catchall_b5

    .end local v3    # "result":Ljava/lang/Object;
    if-ne v4, v1, :cond_b1

    .line 32
    return-object v1

    .line 62
    :cond_b1
    move v6, p1

    move-object p1, p0

    move p0, v6

    .local p0, "consume":Z
    .local p1, "cause":Ljava/lang/Throwable;
    :goto_b4
    goto :goto_6a

    .line 64
    .local p0, "cause":Ljava/lang/Throwable;
    .local p1, "consume":Z
    :catchall_b5
    move-exception v1

    move v6, p1

    move-object p1, p0

    move p0, v6

    .line 65
    .local v1, "e":Ljava/lang/Throwable;
    .local p0, "consume":Z
    .local p1, "cause":Ljava/lang/Throwable;
    :goto_b9
    move-object p1, v1

    .line 66
    nop

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v2    # "$this$emitAllImpl":Lkotlinx/coroutines/flow/FlowCollector;
    .end local p0    # "consume":Z
    .end local p1    # "cause":Ljava/lang/Throwable;
    .end local p2    # "channel":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    :try_start_bb
    throw v1
    :try_end_bc
    .catchall {:try_start_bb .. :try_end_bc} :catchall_bc

    .line 67
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local v2    # "$this$emitAllImpl":Lkotlinx/coroutines/flow/FlowCollector;
    .restart local p0    # "consume":Z
    .restart local p1    # "cause":Ljava/lang/Throwable;
    .restart local p2    # "channel":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    :catchall_bc
    move-exception v1

    .line 68
    if-eqz p0, :cond_c2

    invoke-static {p2, p1}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    :cond_c2
    throw v1

    nop

    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_5e
        :pswitch_40
        :pswitch_2d
    .end packed-switch
.end method

.method public static final produceIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/channels/ReceiveChannel;
    .registers 3
    .param p0, "$this$produceIn"    # Lkotlinx/coroutines/flow/Flow;
    .param p1, "scope"    # Lkotlinx/coroutines/CoroutineScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/Flow<",
            "+TT;>;",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "TT;>;"
        }
    .end annotation

    .line 200
    invoke-static {p0}, Lkotlinx/coroutines/flow/internal/ChannelFlowKt;->asChannelFlow(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/internal/ChannelFlow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/flow/internal/ChannelFlow;->produceImpl(Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object v0

    return-object v0
.end method

.method public static final receiveAsFlow(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;
    .registers 10
    .param p0, "$this$receiveAsFlow"    # Lkotlinx/coroutines/channels/ReceiveChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TT;>;)",
            "Lkotlinx/coroutines/flow/Flow<",
            "TT;>;"
        }
    .end annotation

    .line 90
    new-instance v8, Lkotlinx/coroutines/flow/ChannelAsFlow;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lkotlinx/coroutines/flow/ChannelAsFlow;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;ZLkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v8, Lkotlinx/coroutines/flow/Flow;

    return-object v8
.end method
