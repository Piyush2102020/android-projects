.class public Lkotlinx/coroutines/flow/SharedFlowImpl;
.super Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;
.source "SharedFlow.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/MutableSharedFlow;
.implements Lkotlinx/coroutines/flow/CancellableFlow;
.implements Lkotlinx/coroutines/flow/internal/FusibleFlow;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;,
        Lkotlinx/coroutines/flow/SharedFlowImpl$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/flow/internal/AbstractSharedFlow<",
        "Lkotlinx/coroutines/flow/SharedFlowSlot;",
        ">;",
        "Lkotlinx/coroutines/flow/MutableSharedFlow<",
        "TT;>;",
        "Lkotlinx/coroutines/flow/CancellableFlow<",
        "TT;>;",
        "Lkotlinx/coroutines/flow/internal/FusibleFlow<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSharedFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharedFlow.kt\nkotlinx/coroutines/flow/SharedFlowImpl\n+ 2 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 3 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 AbstractSharedFlow.kt\nkotlinx/coroutines/flow/internal/AbstractSharedFlow\n+ 6 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 7 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,733:1\n20#2:734\n20#2:736\n20#2:754\n20#2:757\n20#2:765\n20#2:775\n20#2:785\n329#3:735\n1#4:737\n97#5,2:738\n99#5,2:741\n101#5:744\n97#5,2:758\n99#5,2:761\n101#5:764\n97#5,2:778\n99#5,2:781\n101#5:784\n13536#6:740\n13537#6:743\n13536#6:760\n13537#6:763\n13536#6:780\n13537#6:783\n314#7,9:745\n323#7,2:755\n314#7,9:766\n323#7,2:776\n*S KotlinDebug\n*F\n+ 1 SharedFlow.kt\nkotlinx/coroutines/flow/SharedFlowImpl\n*L\n352#1:734\n392#1:736\n486#1:754\n507#1:757\n627#1:765\n662#1:775\n690#1:785\n374#1:735\n454#1:738,2\n454#1:741,2\n454#1:744\n530#1:758,2\n530#1:761,2\n530#1:764\n677#1:778,2\n677#1:781,2\n677#1:784\n454#1:740\n454#1:743\n530#1:760\n530#1:763\n677#1:780\n677#1:783\n484#1:745,9\n484#1:755,2\n661#1:766,9\n661#1:776,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u000f\n\u0002\u0010 \n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0012\u0008\u0010\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u00042\u0008\u0012\u0004\u0012\u0002H\u00010\u00052\u0008\u0012\u0004\u0012\u0002H\u00010\u0006:\u0001hB\u001d\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0019\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020\u0003H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010.J\u0010\u0010/\u001a\u00020,2\u0006\u00100\u001a\u000201H\u0002J\u0008\u00102\u001a\u00020,H\u0002J\u001f\u00103\u001a\u0002042\u000c\u00105\u001a\u0008\u0012\u0004\u0012\u00028\u000006H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00107J\u0010\u00108\u001a\u00020,2\u0006\u00109\u001a\u00020\u0012H\u0002J\u0008\u0010:\u001a\u00020\u0003H\u0014J\u001d\u0010;\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u000e2\u0006\u0010<\u001a\u00020\u0008H\u0014\u00a2\u0006\u0002\u0010=J\u0008\u0010>\u001a\u00020,H\u0002J\u0019\u0010?\u001a\u00020,2\u0006\u0010@\u001a\u00028\u0000H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010AJ\u0019\u0010B\u001a\u00020,2\u0006\u0010@\u001a\u00028\u0000H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010AJ\u0012\u0010C\u001a\u00020,2\u0008\u0010D\u001a\u0004\u0018\u00010\u000fH\u0002J1\u0010E\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020,\u0018\u00010F0\u000e2\u0014\u0010G\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020,\u0018\u00010F0\u000eH\u0002\u00a2\u0006\u0002\u0010HJ&\u0010I\u001a\u0008\u0012\u0004\u0012\u00028\u00000J2\u0006\u0010K\u001a\u00020L2\u0006\u0010M\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0012\u0010N\u001a\u0004\u0018\u00010\u000f2\u0006\u0010O\u001a\u00020\u0012H\u0002J7\u0010P\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000e2\u0010\u0010Q\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0018\u00010\u000e2\u0006\u0010R\u001a\u00020\u00082\u0006\u0010S\u001a\u00020\u0008H\u0002\u00a2\u0006\u0002\u0010TJ\u0008\u0010U\u001a\u00020,H\u0016J\u0015\u0010V\u001a\u00020W2\u0006\u0010@\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010XJ\u0015\u0010Y\u001a\u00020W2\u0006\u0010@\u001a\u00028\u0000H\u0002\u00a2\u0006\u0002\u0010XJ\u0015\u0010Z\u001a\u00020W2\u0006\u0010@\u001a\u00028\u0000H\u0002\u00a2\u0006\u0002\u0010XJ\u0010\u0010[\u001a\u00020\u00122\u0006\u0010-\u001a\u00020\u0003H\u0002J\u0012\u0010\\\u001a\u0004\u0018\u00010\u000f2\u0006\u0010-\u001a\u00020\u0003H\u0002J(\u0010]\u001a\u00020,2\u0006\u0010^\u001a\u00020\u00122\u0006\u0010_\u001a\u00020\u00122\u0006\u0010`\u001a\u00020\u00122\u0006\u0010a\u001a\u00020\u0012H\u0002J%\u0010b\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020,\u0018\u00010F0\u000e2\u0006\u0010c\u001a\u00020\u0012H\u0000\u00a2\u0006\u0004\u0008d\u0010eJ\r\u0010f\u001a\u00020\u0012H\u0000\u00a2\u0006\u0002\u0008gR\u001a\u0010\r\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0010R\u000e\u0010\t\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u00020\u00128BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u00020\u00128BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0014R\u001a\u0010\u0018\u001a\u00028\u00008DX\u0084\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001cR\u000e\u0010\u001d\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001e\u001a\u00020\u00128BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010\u0014R\u000e\u0010 \u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010!\u001a\u0008\u0012\u0004\u0012\u00028\u00000\"8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010$R\u000e\u0010%\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010&\u001a\u00020\u00088BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010(R\u0014\u0010)\u001a\u00020\u00088BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010(\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006i"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/SharedFlowImpl;",
        "T",
        "Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;",
        "Lkotlinx/coroutines/flow/SharedFlowSlot;",
        "Lkotlinx/coroutines/flow/MutableSharedFlow;",
        "Lkotlinx/coroutines/flow/CancellableFlow;",
        "Lkotlinx/coroutines/flow/internal/FusibleFlow;",
        "replay",
        "",
        "bufferCapacity",
        "onBufferOverflow",
        "Lkotlinx/coroutines/channels/BufferOverflow;",
        "(IILkotlinx/coroutines/channels/BufferOverflow;)V",
        "buffer",
        "",
        "",
        "[Ljava/lang/Object;",
        "bufferEndIndex",
        "",
        "getBufferEndIndex",
        "()J",
        "bufferSize",
        "head",
        "getHead",
        "lastReplayedLocked",
        "getLastReplayedLocked$annotations",
        "()V",
        "getLastReplayedLocked",
        "()Ljava/lang/Object;",
        "minCollectorIndex",
        "queueEndIndex",
        "getQueueEndIndex",
        "queueSize",
        "replayCache",
        "",
        "getReplayCache",
        "()Ljava/util/List;",
        "replayIndex",
        "replaySize",
        "getReplaySize",
        "()I",
        "totalSize",
        "getTotalSize",
        "awaitValue",
        "",
        "slot",
        "(Lkotlinx/coroutines/flow/SharedFlowSlot;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "cancelEmitter",
        "emitter",
        "Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;",
        "cleanupTailLocked",
        "collect",
        "",
        "collector",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "correctCollectorIndexesOnDropOldest",
        "newHead",
        "createSlot",
        "createSlotArray",
        "size",
        "(I)[Lkotlinx/coroutines/flow/SharedFlowSlot;",
        "dropOldestLocked",
        "emit",
        "value",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "emitSuspend",
        "enqueueLocked",
        "item",
        "findSlotsToResumeLocked",
        "Lkotlin/coroutines/Continuation;",
        "resumesIn",
        "([Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;",
        "fuse",
        "Lkotlinx/coroutines/flow/Flow;",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "capacity",
        "getPeekedValueLockedAt",
        "index",
        "growBuffer",
        "curBuffer",
        "curSize",
        "newSize",
        "([Ljava/lang/Object;II)[Ljava/lang/Object;",
        "resetReplayCache",
        "tryEmit",
        "",
        "(Ljava/lang/Object;)Z",
        "tryEmitLocked",
        "tryEmitNoCollectorsLocked",
        "tryPeekLocked",
        "tryTakeValue",
        "updateBufferLocked",
        "newReplayIndex",
        "newMinCollectorIndex",
        "newBufferEndIndex",
        "newQueueEndIndex",
        "updateCollectorIndexLocked",
        "oldIndex",
        "updateCollectorIndexLocked$kotlinx_coroutines_core",
        "(J)[Lkotlin/coroutines/Continuation;",
        "updateNewCollectorIndexLocked",
        "updateNewCollectorIndexLocked$kotlinx_coroutines_core",
        "Emitter",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private buffer:[Ljava/lang/Object;

.field private final bufferCapacity:I

.field private bufferSize:I

.field private minCollectorIndex:J

.field private final onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;

.field private queueSize:I

.field private final replay:I

.field private replayIndex:J


# direct methods
.method public constructor <init>(IILkotlinx/coroutines/channels/BufferOverflow;)V
    .registers 4
    .param p1, "replay"    # I
    .param p2, "bufferCapacity"    # I
    .param p3, "onBufferOverflow"    # Lkotlinx/coroutines/channels/BufferOverflow;

    .line 307
    invoke-direct {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;-><init>()V

    .line 304
    iput p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replay:I

    .line 305
    iput p2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferCapacity:I

    .line 306
    iput-object p3, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 303
    return-void
.end method

.method public static final synthetic access$awaitValue(Lkotlinx/coroutines/flow/SharedFlowImpl;Lkotlinx/coroutines/flow/SharedFlowSlot;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4
    .param p0, "$this"    # Lkotlinx/coroutines/flow/SharedFlowImpl;
    .param p1, "slot"    # Lkotlinx/coroutines/flow/SharedFlowSlot;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 303
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/flow/SharedFlowImpl;->awaitValue(Lkotlinx/coroutines/flow/SharedFlowSlot;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$cancelEmitter(Lkotlinx/coroutines/flow/SharedFlowImpl;Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;)V
    .registers 2
    .param p0, "$this"    # Lkotlinx/coroutines/flow/SharedFlowImpl;
    .param p1, "emitter"    # Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;

    .line 303
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->cancelEmitter(Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;)V

    return-void
.end method

.method public static final synthetic access$emitSuspend(Lkotlinx/coroutines/flow/SharedFlowImpl;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4
    .param p0, "$this"    # Lkotlinx/coroutines/flow/SharedFlowImpl;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 303
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emitSuspend(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$enqueueLocked(Lkotlinx/coroutines/flow/SharedFlowImpl;Ljava/lang/Object;)V
    .registers 2
    .param p0, "$this"    # Lkotlinx/coroutines/flow/SharedFlowImpl;
    .param p1, "item"    # Ljava/lang/Object;

    .line 303
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->enqueueLocked(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$findSlotsToResumeLocked(Lkotlinx/coroutines/flow/SharedFlowImpl;[Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;
    .registers 3
    .param p0, "$this"    # Lkotlinx/coroutines/flow/SharedFlowImpl;
    .param p1, "resumesIn"    # [Lkotlin/coroutines/Continuation;

    .line 303
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->findSlotsToResumeLocked([Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getBufferCapacity$p(Lkotlinx/coroutines/flow/SharedFlowImpl;)I
    .registers 2
    .param p0, "$this"    # Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 303
    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferCapacity:I

    return v0
.end method

.method public static final synthetic access$getHead(Lkotlinx/coroutines/flow/SharedFlowImpl;)J
    .registers 3
    .param p0, "$this"    # Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 303
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$getQueueSize$p(Lkotlinx/coroutines/flow/SharedFlowImpl;)I
    .registers 2
    .param p0, "$this"    # Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 303
    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    return v0
.end method

.method public static final synthetic access$getTotalSize(Lkotlinx/coroutines/flow/SharedFlowImpl;)I
    .registers 2
    .param p0, "$this"    # Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 303
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getTotalSize()I

    move-result v0

    return v0
.end method

.method public static final synthetic access$setQueueSize$p(Lkotlinx/coroutines/flow/SharedFlowImpl;I)V
    .registers 2
    .param p0, "$this"    # Lkotlinx/coroutines/flow/SharedFlowImpl;
    .param p1, "<set-?>"    # I

    .line 303
    iput p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    return-void
.end method

.method public static final synthetic access$tryEmitLocked(Lkotlinx/coroutines/flow/SharedFlowImpl;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "$this"    # Lkotlinx/coroutines/flow/SharedFlowImpl;
    .param p1, "value"    # Ljava/lang/Object;

    .line 303
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryEmitLocked(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$tryPeekLocked(Lkotlinx/coroutines/flow/SharedFlowImpl;Lkotlinx/coroutines/flow/SharedFlowSlot;)J
    .registers 4
    .param p0, "$this"    # Lkotlinx/coroutines/flow/SharedFlowImpl;
    .param p1, "slot"    # Lkotlinx/coroutines/flow/SharedFlowSlot;

    .line 303
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryPeekLocked(Lkotlinx/coroutines/flow/SharedFlowSlot;)J

    move-result-wide v0

    return-wide v0
.end method

.method private final awaitValue(Lkotlinx/coroutines/flow/SharedFlowSlot;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 15
    .param p1, "slot"    # Lkotlinx/coroutines/flow/SharedFlowSlot;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/SharedFlowSlot;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 661
    const/4 v0, 0x0

    .line 766
    .local v0, "$i$f$suspendCancellableCoroutine":I
    move-object v1, p2

    .local v1, "uCont$iv":Lkotlin/coroutines/Continuation;
    const/4 v2, 0x0

    .line 767
    .local v2, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    new-instance v3, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 773
    .local v3, "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 774
    move-object v4, v3

    check-cast v4, Lkotlinx/coroutines/CancellableContinuation;

    .local v4, "cont":Lkotlinx/coroutines/CancellableContinuation;
    const/4 v5, 0x0

    .line 662
    .local v5, "$i$a$-suspendCancellableCoroutine-SharedFlowImpl$awaitValue$2":I
    const/4 v6, 0x0

    .line 775
    .local v6, "$i$f$synchronized":I
    monitor-enter p0

    const/4 v7, 0x0

    .line 663
    .local v7, "$i$a$-synchronized-SharedFlowImpl$awaitValue$2$1":I
    :try_start_17
    invoke-static {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->access$tryPeekLocked(Lkotlinx/coroutines/flow/SharedFlowImpl;Lkotlinx/coroutines/flow/SharedFlowSlot;)J

    move-result-wide v8

    .line 664
    .local v8, "index":J
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-gez v10, :cond_2c

    .line 665
    move-object v10, v4

    check-cast v10, Lkotlin/coroutines/Continuation;

    iput-object v10, p1, Lkotlinx/coroutines/flow/SharedFlowSlot;->cont:Lkotlin/coroutines/Continuation;

    .line 670
    move-object v10, v4

    check-cast v10, Lkotlin/coroutines/Continuation;

    iput-object v10, p1, Lkotlinx/coroutines/flow/SharedFlowSlot;->cont:Lkotlin/coroutines/Continuation;

    .line 671
    goto :goto_3b

    .line 667
    :cond_2c
    move-object v10, v4

    check-cast v10, Lkotlin/coroutines/Continuation;

    sget-object v11, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v11}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 668
    nop

    .line 671
    .end local v7    # "$i$a$-synchronized-SharedFlowImpl$awaitValue$2$1":I
    .end local v8    # "index":J
    :goto_3b
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3d
    .catchall {:try_start_17 .. :try_end_3d} :catchall_58

    monitor-exit p0

    .line 775
    nop

    .line 672
    .end local v6    # "$i$f$synchronized":I
    nop

    .line 776
    .end local v4    # "cont":Lkotlinx/coroutines/CancellableContinuation;
    .end local v5    # "$i$a$-suspendCancellableCoroutine-SharedFlowImpl$awaitValue$2":I
    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v1

    .line 766
    .end local v1    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v2    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    .end local v3    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_4d

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 777
    :cond_4d
    nop

    .end local v0    # "$i$f$suspendCancellableCoroutine":I
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_55

    return-object v1

    :cond_55
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 672
    return-object v0

    .line 671
    .restart local v0    # "$i$f$suspendCancellableCoroutine":I
    .restart local v1    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v2    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    .restart local v3    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .restart local v4    # "cont":Lkotlinx/coroutines/CancellableContinuation;
    .restart local v5    # "$i$a$-suspendCancellableCoroutine-SharedFlowImpl$awaitValue$2":I
    .restart local v6    # "$i$f$synchronized":I
    :catchall_58
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method private final cancelEmitter(Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;)V
    .registers 8
    .param p1, "emitter"    # Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;

    .line 507
    const/4 v0, 0x0

    .line 757
    .local v0, "$i$f$synchronized":I
    monitor-enter p0

    const/4 v1, 0x0

    .line 508
    .local v1, "$i$a$-synchronized-SharedFlowImpl$cancelEmitter$1":I
    :try_start_3
    iget-wide v2, p1, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;->index:J

    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v4
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_2e

    cmp-long v2, v2, v4

    if-gez v2, :cond_f

    .end local v0    # "$i$f$synchronized":I
    .end local v1    # "$i$a$-synchronized-SharedFlowImpl$cancelEmitter$1":I
    monitor-exit p0

    return-void

    .line 509
    .restart local v0    # "$i$f$synchronized":I
    .restart local v1    # "$i$a$-synchronized-SharedFlowImpl$cancelEmitter$1":I
    :cond_f
    :try_start_f
    iget-object v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->buffer:[Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 510
    .local v2, "buffer":[Ljava/lang/Object;
    iget-wide v3, p1, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;->index:J

    invoke-static {v2, v3, v4}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$getBufferAt([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_2e

    if-eq v3, p1, :cond_1e

    .end local v0    # "$i$f$synchronized":I
    .end local v1    # "$i$a$-synchronized-SharedFlowImpl$cancelEmitter$1":I
    .end local v2    # "buffer":[Ljava/lang/Object;
    monitor-exit p0

    return-void

    .line 511
    .restart local v0    # "$i$f$synchronized":I
    .restart local v1    # "$i$a$-synchronized-SharedFlowImpl$cancelEmitter$1":I
    .restart local v2    # "buffer":[Ljava/lang/Object;
    :cond_1e
    :try_start_1e
    iget-wide v3, p1, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;->index:J

    sget-object v5, Lkotlinx/coroutines/flow/SharedFlowKt;->NO_VALUE:Lkotlinx/coroutines/internal/Symbol;

    invoke-static {v2, v3, v4, v5}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$setBufferAt([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 512
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->cleanupTailLocked()V

    .line 513
    nop

    .end local v1    # "$i$a$-synchronized-SharedFlowImpl$cancelEmitter$1":I
    .end local v2    # "buffer":[Ljava/lang/Object;
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_2e

    monitor-exit p0

    .line 757
    nop

    .line 513
    .end local v0    # "$i$f$synchronized":I
    return-void

    .restart local v0    # "$i$f$synchronized":I
    :catchall_2e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private final cleanupTailLocked()V
    .registers 6

    .line 616
    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferCapacity:I

    if-nez v0, :cond_a

    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_a

    return-void

    .line 617
    :cond_a
    iget-object v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->buffer:[Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 618
    .local v0, "buffer":[Ljava/lang/Object;
    :goto_f
    iget v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    if-lez v1, :cond_3d

    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v1

    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getTotalSize()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$getBufferAt([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/flow/SharedFlowKt;->NO_VALUE:Lkotlinx/coroutines/internal/Symbol;

    if-ne v1, v2, :cond_3d

    .line 619
    iget v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    .line 620
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v1

    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getTotalSize()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$setBufferAt([Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_f

    .line 622
    :cond_3d
    return-void
.end method

.method static synthetic collect$suspendImpl(Lkotlinx/coroutines/flow/SharedFlowImpl;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    instance-of v0, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;

    if-eqz v0, :cond_14

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;

    iget v1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    iget p2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->label:I

    goto :goto_19

    :cond_14
    new-instance v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;-><init>(Lkotlinx/coroutines/flow/SharedFlowImpl;Lkotlin/coroutines/Continuation;)V

    :goto_19
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 370
    iget v2, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->label:I

    packed-switch v2, :pswitch_data_dc

    .line 386
    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 370
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_2d
    iget-object p0, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$3:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/Job;

    .local p0, "collectorJob":Lkotlinx/coroutines/Job;
    iget-object p1, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/SharedFlowSlot;

    .local p1, "slot":Lkotlinx/coroutines/flow/SharedFlowSlot;
    iget-object v2, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    .local v2, "collector":Lkotlinx/coroutines/flow/FlowCollector;
    iget-object v3, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/flow/SharedFlowImpl;

    .local v3, "this":Lkotlinx/coroutines/flow/SharedFlowImpl;
    :try_start_3d
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_d4

    goto/16 :goto_c0

    .end local v2    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v3    # "this":Lkotlinx/coroutines/flow/SharedFlowImpl;
    .end local p0    # "collectorJob":Lkotlinx/coroutines/Job;
    .end local p1    # "slot":Lkotlinx/coroutines/flow/SharedFlowSlot;
    :pswitch_42
    iget-object p0, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$3:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/Job;

    .restart local p0    # "collectorJob":Lkotlinx/coroutines/Job;
    iget-object p1, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/SharedFlowSlot;

    .restart local p1    # "slot":Lkotlinx/coroutines/flow/SharedFlowSlot;
    iget-object v2, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    .restart local v2    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    iget-object v3, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/flow/SharedFlowImpl;

    .restart local v3    # "this":Lkotlinx/coroutines/flow/SharedFlowImpl;
    :try_start_52
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_d4

    goto/16 :goto_d3

    .end local v2    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v3    # "this":Lkotlinx/coroutines/flow/SharedFlowImpl;
    .end local p0    # "collectorJob":Lkotlinx/coroutines/Job;
    .end local p1    # "slot":Lkotlinx/coroutines/flow/SharedFlowSlot;
    :pswitch_57
    iget-object p0, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$2:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lkotlinx/coroutines/flow/SharedFlowSlot;

    .restart local p1    # "slot":Lkotlinx/coroutines/flow/SharedFlowSlot;
    iget-object p0, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$1:Ljava/lang/Object;

    move-object v2, p0

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    .restart local v2    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    iget-object p0, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$0:Ljava/lang/Object;

    move-object v3, p0

    check-cast v3, Lkotlinx/coroutines/flow/SharedFlowImpl;

    .restart local v3    # "this":Lkotlinx/coroutines/flow/SharedFlowImpl;
    :try_start_66
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_d4

    goto :goto_8e

    .end local v2    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v3    # "this":Lkotlinx/coroutines/flow/SharedFlowImpl;
    .end local p1    # "slot":Lkotlinx/coroutines/flow/SharedFlowSlot;
    :pswitch_6a
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, p0

    .restart local v3    # "this":Lkotlinx/coroutines/flow/SharedFlowImpl;
    move-object v2, p1

    .line 371
    .restart local v2    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    invoke-virtual {v3}, Lkotlinx/coroutines/flow/SharedFlowImpl;->allocateSlot()Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lkotlinx/coroutines/flow/SharedFlowSlot;

    .line 372
    .restart local p1    # "slot":Lkotlinx/coroutines/flow/SharedFlowSlot;
    nop

    .line 373
    :try_start_77
    instance-of p0, v2, Lkotlinx/coroutines/flow/SubscribedFlowCollector;

    if-eqz p0, :cond_8f

    move-object p0, v2

    check-cast p0, Lkotlinx/coroutines/flow/SubscribedFlowCollector;

    iput-object v3, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$0:Ljava/lang/Object;

    iput-object v2, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$1:Ljava/lang/Object;

    iput-object p1, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$2:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->label:I

    invoke-virtual {p0, p2}, Lkotlinx/coroutines/flow/SubscribedFlowCollector;->onSubscription(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_8e

    .line 370
    return-object v1

    .line 374
    :cond_8e
    :goto_8e
    nop

    :cond_8f
    const/4 p0, 0x0

    .line 735
    .local p0, "$i$f$currentCoroutineContext":I
    invoke-interface {p2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    .line 374
    .end local p0    # "$i$f$currentCoroutineContext":I
    sget-object p0, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    check-cast p0, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v4, p0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/Job;

    .line 375
    .local p0, "collectorJob":Lkotlinx/coroutines/Job;
    :goto_9e
    nop

    .line 377
    :goto_9f
    nop

    .line 378
    invoke-direct {v3, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryTakeValue(Lkotlinx/coroutines/flow/SharedFlowSlot;)Ljava/lang/Object;

    move-result-object v4

    .line 379
    .local v4, "newValue":Ljava/lang/Object;
    sget-object v5, Lkotlinx/coroutines/flow/SharedFlowKt;->NO_VALUE:Lkotlinx/coroutines/internal/Symbol;

    if-eq v4, v5, :cond_c1

    .line 382
    if-nez p0, :cond_ab

    goto :goto_ae

    :cond_ab
    invoke-static {p0}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlinx/coroutines/Job;)V

    .line 383
    :goto_ae
    iput-object v3, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$0:Ljava/lang/Object;

    iput-object v2, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$1:Ljava/lang/Object;

    iput-object p1, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$2:Ljava/lang/Object;

    iput-object p0, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$3:Ljava/lang/Object;

    const/4 v5, 0x3

    iput v5, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->label:I

    invoke-interface {v2, v4, p2}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    .end local v4    # "newValue":Ljava/lang/Object;
    if-ne v5, v1, :cond_c0

    .line 370
    return-object v1

    .line 383
    :cond_c0
    :goto_c0
    goto :goto_9e

    .line 380
    :cond_c1
    iput-object v3, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$0:Ljava/lang/Object;

    iput-object v2, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$1:Ljava/lang/Object;

    iput-object p1, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$2:Ljava/lang/Object;

    iput-object p0, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$3:Ljava/lang/Object;

    const/4 v4, 0x2

    iput v4, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->label:I

    invoke-direct {v3, p1, p2}, Lkotlinx/coroutines/flow/SharedFlowImpl;->awaitValue(Lkotlinx/coroutines/flow/SharedFlowSlot;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_d0
    .catchall {:try_start_77 .. :try_end_d0} :catchall_d4

    if-ne v4, v1, :cond_d3

    .line 370
    return-object v1

    .line 380
    :cond_d3
    :goto_d3
    goto :goto_9f

    .line 385
    .end local p0    # "collectorJob":Lkotlinx/coroutines/Job;
    :catchall_d4
    move-exception p0

    .line 386
    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    invoke-virtual {v3, v1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->freeSlot(Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;)V

    throw p0

    :pswitch_data_dc
    .packed-switch 0x0
        :pswitch_6a
        :pswitch_57
        :pswitch_42
        :pswitch_2d
    .end packed-switch
.end method

.method private final correctCollectorIndexesOnDropOldest(J)V
    .registers 21
    .param p1, "newHead"    # J

    .line 454
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;

    .local v3, "this_$iv":Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;
    const/4 v4, 0x0

    .line 738
    .local v4, "$i$f$forEachSlotLocked":I
    invoke-static {v3}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->access$getNCollectors(Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;)I

    move-result v5

    if-nez v5, :cond_f

    goto :goto_3c

    .line 739
    :cond_f
    invoke-static {v3}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->access$getSlots(Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;)[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    move-result-object v5

    if-nez v5, :cond_16

    goto :goto_3b

    .local v5, "$this$forEach$iv$iv":[Ljava/lang/Object;
    :cond_16
    const/4 v6, 0x0

    .line 740
    .local v6, "$i$f$forEach":I
    array-length v7, v5

    const/4 v8, 0x0

    :goto_19
    if-ge v8, v7, :cond_3a

    aget-object v9, v5, v8

    .local v9, "element$iv$iv":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    move-object v10, v9

    .local v10, "slot$iv":Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    const/4 v11, 0x0

    .line 741
    .local v11, "$i$a$-forEach-AbstractSharedFlow$forEachSlotLocked$1$iv":I
    if-eqz v10, :cond_38

    move-object v12, v10

    check-cast v12, Lkotlinx/coroutines/flow/SharedFlowSlot;

    .local v12, "slot":Lkotlinx/coroutines/flow/SharedFlowSlot;
    const/4 v13, 0x0

    .line 456
    .local v13, "$i$a$-forEachSlotLocked-SharedFlowImpl$correctCollectorIndexesOnDropOldest$1":I
    iget-wide v14, v12, Lkotlinx/coroutines/flow/SharedFlowSlot;->index:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-ltz v14, :cond_37

    iget-wide v14, v12, Lkotlinx/coroutines/flow/SharedFlowSlot;->index:J

    cmp-long v14, v14, v1

    if-gez v14, :cond_37

    .line 457
    iput-wide v1, v12, Lkotlinx/coroutines/flow/SharedFlowSlot;->index:J

    .line 459
    :cond_37
    nop

    .line 742
    .end local v12    # "slot":Lkotlinx/coroutines/flow/SharedFlowSlot;
    .end local v13    # "$i$a$-forEachSlotLocked-SharedFlowImpl$correctCollectorIndexesOnDropOldest$1":I
    :cond_38
    nop

    .end local v10    # "slot$iv":Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .end local v11    # "$i$a$-forEach-AbstractSharedFlow$forEachSlotLocked$1$iv":I
    goto :goto_19

    .line 743
    .end local v9    # "element$iv$iv":Ljava/lang/Object;
    :cond_3a
    nop

    .line 744
    .end local v5    # "$this$forEach$iv$iv":[Ljava/lang/Object;
    .end local v6    # "$i$f$forEach":I
    :goto_3b
    nop

    .line 460
    .end local v3    # "this_$iv":Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;
    .end local v4    # "$i$f$forEachSlotLocked":I
    :goto_3c
    iput-wide v1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    .line 461
    return-void
.end method

.method private final dropOldestLocked()V
    .registers 6

    .line 445
    iget-object v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->buffer:[Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$setBufferAt([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 446
    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    .line 447
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 448
    .local v0, "newHead":J
    iget-wide v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_22

    iput-wide v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    .line 449
    :cond_22
    iget-wide v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_2b

    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->correctCollectorIndexesOnDropOldest(J)V

    .line 450
    :cond_2b
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 737
    const/4 v2, 0x0

    .line 450
    .local v2, "$i$a$-assert-SharedFlowImpl$dropOldestLocked$1":I
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-nez v3, :cond_3c

    const/4 v3, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v3, 0x0

    .end local v2    # "$i$a$-assert-SharedFlowImpl$dropOldestLocked$1":I
    :goto_3d
    if-eqz v3, :cond_40

    goto :goto_46

    :cond_40
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 451
    :cond_46
    :goto_46
    return-void
.end method

.method static synthetic emit$suspendImpl(Lkotlinx/coroutines/flow/SharedFlowImpl;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
    .param p0, "this"    # Lkotlinx/coroutines/flow/SharedFlowImpl;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 405
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryEmit(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 406
    :cond_9
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emitSuspend(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_14

    return-object v0

    :cond_14
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 407
    return-object v0
.end method

.method private final emitSuspend(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 21
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 484
    move-object/from16 v7, p0

    const/4 v8, 0x0

    .line 745
    .local v8, "$i$f$suspendCancellableCoroutine":I
    move-object/from16 v9, p2

    .local v9, "uCont$iv":Lkotlin/coroutines/Continuation;
    const/4 v10, 0x0

    .line 746
    .local v10, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v9}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v11, 0x1

    invoke-direct {v0, v1, v11}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    move-object v12, v0

    .line 752
    .local v12, "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-virtual {v12}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 753
    move-object v13, v12

    check-cast v13, Lkotlinx/coroutines/CancellableContinuation;

    .local v13, "cont":Lkotlinx/coroutines/CancellableContinuation;
    const/4 v14, 0x0

    .line 485
    .local v14, "$i$a$-suspendCancellableCoroutine-SharedFlowImpl$emitSuspend$2":I
    const/4 v0, 0x0

    .local v0, "resumes":Ljava/lang/Object;
    sget-object v15, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowKt;->EMPTY_RESUMES:[Lkotlin/coroutines/Continuation;

    .line 486
    .end local v0    # "resumes":Ljava/lang/Object;
    .local v15, "resumes":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 754
    .local v16, "$i$f$synchronized":I
    monitor-enter p0

    const/4 v0, 0x0

    .line 488
    .local v0, "$i$a$-synchronized-SharedFlowImpl$emitSuspend$2$emitter$1":I
    :try_start_1f
    invoke-static/range {p0 .. p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->access$tryEmitLocked(Lkotlinx/coroutines/flow/SharedFlowImpl;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 489
    move-object v1, v13

    check-cast v1, Lkotlin/coroutines/Continuation;

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 490
    invoke-static {v7, v15}, Lkotlinx/coroutines/flow/SharedFlowImpl;->access$findSlotsToResumeLocked(Lkotlinx/coroutines/flow/SharedFlowImpl;[Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;

    move-result-object v1

    .line 491
    .end local v15    # "resumes":Ljava/lang/Object;
    .local v1, "resumes":Ljava/lang/Object;
    const/4 v2, 0x0

    goto :goto_6e

    .line 494
    .end local v1    # "resumes":Ljava/lang/Object;
    .restart local v15    # "resumes":Ljava/lang/Object;
    :cond_39
    new-instance v17, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;

    invoke-static/range {p0 .. p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->access$getHead(Lkotlinx/coroutines/flow/SharedFlowImpl;)J

    move-result-wide v1

    invoke-static/range {p0 .. p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->access$getTotalSize(Lkotlinx/coroutines/flow/SharedFlowImpl;)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v3, v1

    move-object v6, v13

    check-cast v6, Lkotlin/coroutines/Continuation;

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    invoke-direct/range {v1 .. v6}, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;-><init>(Lkotlinx/coroutines/flow/SharedFlowImpl;JLjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v1, v17

    .local v1, "it":Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;
    const/4 v2, 0x0

    .line 495
    .local v2, "$i$a$-also-SharedFlowImpl$emitSuspend$2$emitter$1$1":I
    invoke-static {v7, v1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->access$enqueueLocked(Lkotlinx/coroutines/flow/SharedFlowImpl;Ljava/lang/Object;)V

    .line 496
    invoke-static/range {p0 .. p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->access$getQueueSize$p(Lkotlinx/coroutines/flow/SharedFlowImpl;)I

    move-result v3

    add-int/2addr v3, v11

    invoke-static {v7, v3}, Lkotlinx/coroutines/flow/SharedFlowImpl;->access$setQueueSize$p(Lkotlinx/coroutines/flow/SharedFlowImpl;I)V

    .line 498
    invoke-static/range {p0 .. p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->access$getBufferCapacity$p(Lkotlinx/coroutines/flow/SharedFlowImpl;)I

    move-result v3

    if-nez v3, :cond_6a

    invoke-static {v7, v15}, Lkotlinx/coroutines/flow/SharedFlowImpl;->access$findSlotsToResumeLocked(Lkotlinx/coroutines/flow/SharedFlowImpl;[Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;

    move-result-object v3
    :try_end_69
    .catchall {:try_start_1f .. :try_end_69} :catchall_ac

    move-object v15, v3

    .line 499
    :cond_6a
    nop

    .line 494
    .end local v1    # "it":Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;
    .end local v2    # "$i$a$-also-SharedFlowImpl$emitSuspend$2$emitter$1$1":I
    move-object v1, v15

    move-object/from16 v2, v17

    .end local v0    # "$i$a$-synchronized-SharedFlowImpl$emitSuspend$2$emitter$1":I
    .end local v15    # "resumes":Ljava/lang/Object;
    .local v1, "resumes":Ljava/lang/Object;
    :goto_6e
    monitor-exit p0

    .line 754
    nop

    .line 486
    .end local v16    # "$i$f$synchronized":I
    move-object v0, v2

    .line 502
    .local v0, "emitter":Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;
    if-nez v0, :cond_74

    goto :goto_7c

    :cond_74
    move-object v2, v0

    .line 737
    .local v2, "it":Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;
    const/4 v3, 0x0

    .line 502
    .local v3, "$i$a$-let-SharedFlowImpl$emitSuspend$2$1":I
    move-object v4, v2

    check-cast v4, Lkotlinx/coroutines/DisposableHandle;

    invoke-static {v13, v4}, Lkotlinx/coroutines/CancellableContinuationKt;->disposeOnCancellation(Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/DisposableHandle;)V

    .line 504
    .end local v2    # "it":Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;
    .end local v3    # "$i$a$-let-SharedFlowImpl$emitSuspend$2$1":I
    :goto_7c
    array-length v2, v1

    const/4 v3, 0x0

    :goto_7e
    if-ge v3, v2, :cond_93

    aget-object v4, v1, v3

    .local v4, "r":Lkotlin/coroutines/Continuation;
    add-int/lit8 v3, v3, 0x1

    if-nez v4, :cond_87

    goto :goto_7e

    :cond_87
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_7e

    .line 505
    .end local v4    # "r":Lkotlin/coroutines/Continuation;
    :cond_93
    nop

    .line 755
    .end local v0    # "emitter":Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;
    .end local v1    # "resumes":Ljava/lang/Object;
    .end local v13    # "cont":Lkotlinx/coroutines/CancellableContinuation;
    .end local v14    # "$i$a$-suspendCancellableCoroutine-SharedFlowImpl$emitSuspend$2":I
    invoke-virtual {v12}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 745
    .end local v9    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v10    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    .end local v12    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_a1

    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 756
    :cond_a1
    nop

    .end local v8    # "$i$f$suspendCancellableCoroutine":I
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_a9

    return-object v0

    :cond_a9
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 505
    return-object v0

    .line 494
    .restart local v8    # "$i$f$suspendCancellableCoroutine":I
    .restart local v9    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v10    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    .restart local v12    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .restart local v13    # "cont":Lkotlinx/coroutines/CancellableContinuation;
    .restart local v14    # "$i$a$-suspendCancellableCoroutine-SharedFlowImpl$emitSuspend$2":I
    .restart local v15    # "resumes":Ljava/lang/Object;
    .restart local v16    # "$i$f$synchronized":I
    :catchall_ac
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final enqueueLocked(Ljava/lang/Object;)V
    .registers 8
    .param p1, "item"    # Ljava/lang/Object;

    .line 465
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getTotalSize()I

    move-result v0

    .line 466
    .local v0, "curSize":I
    iget-object v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->buffer:[Ljava/lang/Object;

    .line 467
    .local v1, "curBuffer":[Ljava/lang/Object;
    const/4 v2, 0x2

    if-nez v1, :cond_11

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, v2}, Lkotlinx/coroutines/flow/SharedFlowImpl;->growBuffer([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    goto :goto_1b

    .line 468
    :cond_11
    array-length v3, v1

    if-lt v0, v3, :cond_1b

    array-length v3, v1

    mul-int/2addr v3, v2

    invoke-direct {p0, v1, v0, v3}, Lkotlinx/coroutines/flow/SharedFlowImpl;->growBuffer([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 466
    .end local v1    # "curBuffer":[Ljava/lang/Object;
    :cond_1b
    :goto_1b
    nop

    .line 470
    .local v1, "buffer":[Ljava/lang/Object;
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v2

    int-to-long v4, v0

    add-long/2addr v2, v4

    invoke-static {v1, v2, v3, p1}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$setBufferAt([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 471
    return-void
.end method

.method private final findSlotsToResumeLocked([Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;
    .registers 22
    .param p1, "resumesIn"    # [Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;)[",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 675
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .local v1, "resumes":Ljava/lang/Object;
    move-object/from16 v1, p1

    .line 676
    const/4 v2, 0x0

    move-object/from16 v3, p1

    .local v2, "resumeCount":I
    array-length v2, v3

    .line 677
    move-object v4, v0

    check-cast v4, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;

    .local v4, "this_$iv":Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;
    const/4 v5, 0x0

    .line 778
    .local v5, "$i$f$forEachSlotLocked":I
    invoke-static {v4}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->access$getNCollectors(Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;)I

    move-result v6

    if-nez v6, :cond_15

    goto/16 :goto_7b

    .line 779
    :cond_15
    invoke-static {v4}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->access$getSlots(Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;)[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    move-result-object v6

    if-nez v6, :cond_1c

    goto :goto_7a

    .local v6, "$this$forEach$iv$iv":[Ljava/lang/Object;
    :cond_1c
    const/4 v7, 0x0

    .line 780
    .local v7, "$i$f$forEach":I
    array-length v8, v6

    const/4 v9, 0x0

    :goto_1f
    if-ge v9, v8, :cond_78

    aget-object v10, v6, v9

    .local v10, "element$iv$iv":Ljava/lang/Object;
    add-int/lit8 v9, v9, 0x1

    move-object v11, v10

    .local v11, "slot$iv":Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    const/4 v12, 0x0

    .line 781
    .local v12, "$i$a$-forEach-AbstractSharedFlow$forEachSlotLocked$1$iv":I
    if-eqz v11, :cond_6f

    move-object v13, v11

    check-cast v13, Lkotlinx/coroutines/flow/SharedFlowSlot;

    .local v13, "slot":Lkotlinx/coroutines/flow/SharedFlowSlot;
    const/4 v14, 0x0

    .line 678
    .local v14, "$i$a$-forEachSlotLocked-SharedFlowImpl$findSlotsToResumeLocked$1":I
    iget-object v15, v13, Lkotlinx/coroutines/flow/SharedFlowSlot;->cont:Lkotlin/coroutines/Continuation;

    if-nez v15, :cond_34

    move-object/from16 v16, v1

    goto :goto_71

    .line 679
    .local v15, "cont":Lkotlin/coroutines/Continuation;
    :cond_34
    invoke-direct {v0, v13}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryPeekLocked(Lkotlinx/coroutines/flow/SharedFlowSlot;)J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-gez v16, :cond_41

    move-object/from16 v16, v1

    goto :goto_71

    .line 680
    :cond_41
    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    if-lt v2, v0, :cond_61

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, [Ljava/lang/Object;

    array-length v3, v3

    move-object/from16 v16, v1

    .end local v1    # "resumes":Ljava/lang/Object;
    .local v16, "resumes":Ljava/lang/Object;
    const/4 v1, 0x2

    mul-int/2addr v3, v1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "copyOf(this, newSize)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    .end local v16    # "resumes":Ljava/lang/Object;
    .restart local v1    # "resumes":Ljava/lang/Object;
    goto :goto_63

    :cond_61
    move-object/from16 v16, v1

    .line 681
    :goto_63
    move-object v0, v1

    check-cast v0, [Lkotlin/coroutines/Continuation;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "resumeCount":I
    .local v3, "resumeCount":I
    aput-object v15, v0, v2

    .line 682
    const/4 v0, 0x0

    iput-object v0, v13, Lkotlinx/coroutines/flow/SharedFlowSlot;->cont:Lkotlin/coroutines/Continuation;

    .line 683
    move v2, v3

    goto :goto_73

    .line 781
    .end local v3    # "resumeCount":I
    .end local v13    # "slot":Lkotlinx/coroutines/flow/SharedFlowSlot;
    .end local v14    # "$i$a$-forEachSlotLocked-SharedFlowImpl$findSlotsToResumeLocked$1":I
    .end local v15    # "cont":Lkotlin/coroutines/Continuation;
    .restart local v2    # "resumeCount":I
    :cond_6f
    move-object/from16 v16, v1

    .line 782
    .end local v1    # "resumes":Ljava/lang/Object;
    .restart local v16    # "resumes":Ljava/lang/Object;
    :goto_71
    move-object/from16 v1, v16

    .end local v16    # "resumes":Ljava/lang/Object;
    .restart local v1    # "resumes":Ljava/lang/Object;
    :goto_73
    move-object/from16 v0, p0

    move-object/from16 v3, p1

    .end local v11    # "slot$iv":Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .end local v12    # "$i$a$-forEach-AbstractSharedFlow$forEachSlotLocked$1$iv":I
    goto :goto_1f

    .line 783
    .end local v10    # "element$iv$iv":Ljava/lang/Object;
    :cond_78
    move-object/from16 v16, v1

    .line 784
    .end local v6    # "$this$forEach$iv$iv":[Ljava/lang/Object;
    .end local v7    # "$i$f$forEach":I
    :goto_7a
    nop

    .line 684
    .end local v4    # "this_$iv":Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;
    .end local v5    # "$i$f$forEachSlotLocked":I
    :goto_7b
    move-object v0, v1

    check-cast v0, [Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method private final getBufferEndIndex()J
    .registers 5

    .line 348
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v0

    iget v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private final getHead()J
    .registers 5

    .line 345
    iget-wide v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    iget-wide v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method protected static synthetic getLastReplayedLocked$annotations()V
    .registers 0

    return-void
.end method

.method private final getPeekedValueLockedAt(J)Ljava/lang/Object;
    .registers 5
    .param p1, "index"    # J

    .line 656
    iget-object v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->buffer:[Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0, p1, p2}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$getBufferAt([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 657
    .local v0, "item":Ljava/lang/Object;
    instance-of v1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;

    iget-object v1, v1, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;->value:Ljava/lang/Object;

    move-object v0, v1

    goto :goto_15

    .line 658
    :cond_14
    nop

    .line 659
    .end local v0    # "item":Ljava/lang/Object;
    :goto_15
    return-object v0
.end method

.method private final getQueueEndIndex()J
    .registers 5

    .line 349
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v0

    iget v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private final getReplaySize()I
    .registers 5

    .line 346
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v0

    iget v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private final getTotalSize()I
    .registers 3

    .line 347
    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    iget v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    add-int/2addr v0, v1

    return v0
.end method

.method private final growBuffer([Ljava/lang/Object;II)[Ljava/lang/Object;
    .registers 13
    .param p1, "curBuffer"    # [Ljava/lang/Object;
    .param p2, "curSize"    # I
    .param p3, "newSize"    # I

    .line 474
    const/4 v0, 0x0

    if-lez p3, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    move v1, v0

    :goto_6
    if-eqz v1, :cond_28

    .line 475
    new-array v1, p3, [Ljava/lang/Object;

    move-object v2, v1

    .line 737
    .local v2, "it":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 475
    .local v3, "$i$a$-also-SharedFlowImpl$growBuffer$newBuffer$1":I
    iput-object v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->buffer:[Ljava/lang/Object;

    .line 476
    .end local v2    # "it":[Ljava/lang/Object;
    .end local v3    # "$i$a$-also-SharedFlowImpl$growBuffer$newBuffer$1":I
    .local v1, "newBuffer":[Ljava/lang/Object;
    if-nez p1, :cond_11

    return-object v1

    .line 477
    :cond_11
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v2

    .line 478
    .local v2, "head":J
    nop

    :goto_16
    if-ge v0, p2, :cond_27

    move v4, v0

    .local v4, "i":I
    add-int/lit8 v0, v0, 0x1

    .line 479
    int-to-long v5, v4

    add-long/2addr v5, v2

    int-to-long v7, v4

    add-long/2addr v7, v2

    invoke-static {p1, v7, v8}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$getBufferAt([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v1, v5, v6, v7}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$setBufferAt([Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_16

    .line 481
    .end local v4    # "i":I
    :cond_27
    return-object v1

    .line 737
    .end local v1    # "newBuffer":[Ljava/lang/Object;
    .end local v2    # "head":J
    :cond_28
    const/4 v0, 0x0

    .line 474
    .local v0, "$i$a$-check-SharedFlowImpl$growBuffer$1":I
    nop

    .end local v0    # "$i$a$-check-SharedFlowImpl$growBuffer$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Buffer size overflow"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final tryEmitLocked(Ljava/lang/Object;)Z
    .registers 16
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 412
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getNCollectors()I

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryEmitNoCollectorsLocked(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 415
    :cond_b
    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    iget v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferCapacity:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_2b

    iget-wide v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    iget-wide v3, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    cmp-long v0, v0, v3

    if-gtz v0, :cond_2b

    .line 416
    iget-object v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;

    sget-object v1, Lkotlinx/coroutines/flow/SharedFlowImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lkotlinx/coroutines/channels/BufferOverflow;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_58

    goto :goto_2b

    .line 418
    :pswitch_28
    return v2

    .line 417
    :pswitch_29
    const/4 v0, 0x0

    return v0

    .line 422
    :cond_2b
    :goto_2b
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->enqueueLocked(Ljava/lang/Object;)V

    .line 423
    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    add-int/2addr v0, v2

    iput v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    .line 425
    iget v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferCapacity:I

    if-le v0, v1, :cond_3a

    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->dropOldestLocked()V

    .line 427
    :cond_3a
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getReplaySize()I

    move-result v0

    iget v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replay:I

    if-le v0, v1, :cond_56

    .line 428
    iget-wide v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    const-wide/16 v3, 0x1

    add-long v6, v0, v3

    iget-wide v8, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getBufferEndIndex()J

    move-result-wide v10

    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getQueueEndIndex()J

    move-result-wide v12

    move-object v5, p0

    invoke-direct/range {v5 .. v13}, Lkotlinx/coroutines/flow/SharedFlowImpl;->updateBufferLocked(JJJJ)V

    .line 430
    :cond_56
    return v2

    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_29
        :pswitch_28
    .end packed-switch
.end method

.method private final tryEmitNoCollectorsLocked(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 434
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1a

    .line 737
    const/4 v0, 0x0

    .line 434
    .local v0, "$i$a$-assert-SharedFlowImpl$tryEmitNoCollectorsLocked$1":I
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getNCollectors()I

    move-result v2

    if-nez v2, :cond_10

    move v2, v1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    .end local v0    # "$i$a$-assert-SharedFlowImpl$tryEmitNoCollectorsLocked$1":I
    :goto_11
    if-eqz v2, :cond_14

    goto :goto_1a

    :cond_14
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 435
    :cond_1a
    :goto_1a
    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replay:I

    if-nez v0, :cond_1f

    return v1

    .line 436
    :cond_1f
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->enqueueLocked(Ljava/lang/Object;)V

    .line 437
    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    .line 439
    iget v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replay:I

    if-le v0, v2, :cond_2e

    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->dropOldestLocked()V

    .line 440
    :cond_2e
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v2

    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    .line 441
    return v1
.end method

.method private final tryPeekLocked(Lkotlinx/coroutines/flow/SharedFlowSlot;)J
    .registers 9
    .param p1, "slot"    # Lkotlinx/coroutines/flow/SharedFlowSlot;

    .line 646
    iget-wide v0, p1, Lkotlinx/coroutines/flow/SharedFlowSlot;->index:J

    .line 647
    .local v0, "index":J
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getBufferEndIndex()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_b

    return-wide v0

    .line 648
    :cond_b
    iget v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferCapacity:I

    const-wide/16 v3, -0x1

    if-lez v2, :cond_12

    return-wide v3

    .line 650
    :cond_12
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v5

    cmp-long v2, v0, v5

    if-lez v2, :cond_1b

    return-wide v3

    .line 651
    :cond_1b
    iget v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    if-nez v2, :cond_20

    return-wide v3

    .line 652
    :cond_20
    return-wide v0
.end method

.method private final tryTakeValue(Lkotlinx/coroutines/flow/SharedFlowSlot;)Ljava/lang/Object;
    .registers 12
    .param p1, "slot"    # Lkotlinx/coroutines/flow/SharedFlowSlot;

    .line 626
    const/4 v0, 0x0

    .local v0, "resumes":Ljava/lang/Object;
    sget-object v0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowKt;->EMPTY_RESUMES:[Lkotlin/coroutines/Continuation;

    .line 627
    const/4 v1, 0x0

    .line 765
    .local v1, "$i$f$synchronized":I
    monitor-enter p0

    const/4 v2, 0x0

    .line 628
    .local v2, "$i$a$-synchronized-SharedFlowImpl$tryTakeValue$value$1":I
    :try_start_6
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryPeekLocked(Lkotlinx/coroutines/flow/SharedFlowSlot;)J

    move-result-wide v3

    .line 629
    .local v3, "index":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gez v5, :cond_13

    .line 630
    sget-object v5, Lkotlinx/coroutines/flow/SharedFlowKt;->NO_VALUE:Lkotlinx/coroutines/internal/Symbol;

    goto :goto_24

    .line 632
    :cond_13
    iget-wide v5, p1, Lkotlinx/coroutines/flow/SharedFlowSlot;->index:J

    .line 633
    .local v5, "oldIndex":J
    invoke-direct {p0, v3, v4}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getPeekedValueLockedAt(J)Ljava/lang/Object;

    move-result-object v7

    .line 634
    .local v7, "newValue":Ljava/lang/Object;
    const-wide/16 v8, 0x1

    add-long/2addr v8, v3

    iput-wide v8, p1, Lkotlinx/coroutines/flow/SharedFlowSlot;->index:J

    .line 635
    invoke-virtual {p0, v5, v6}, Lkotlinx/coroutines/flow/SharedFlowImpl;->updateCollectorIndexLocked$kotlinx_coroutines_core(J)[Lkotlin/coroutines/Continuation;

    move-result-object v8
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_40

    move-object v0, v8

    .line 636
    move-object v5, v7

    .line 629
    .end local v5    # "oldIndex":J
    .end local v7    # "newValue":Ljava/lang/Object;
    :goto_24
    nop

    .end local v2    # "$i$a$-synchronized-SharedFlowImpl$tryTakeValue$value$1":I
    .end local v3    # "index":J
    monitor-exit p0

    .line 765
    nop

    .line 627
    .end local v1    # "$i$f$synchronized":I
    move-object v1, v5

    .line 639
    .local v1, "value":Ljava/lang/Object;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_2a
    if-ge v3, v2, :cond_3f

    aget-object v4, v0, v3

    .local v4, "resume":Lkotlin/coroutines/Continuation;
    add-int/lit8 v3, v3, 0x1

    if-nez v4, :cond_33

    goto :goto_2a

    :cond_33
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_2a

    .line 640
    .end local v4    # "resume":Lkotlin/coroutines/Continuation;
    :cond_3f
    return-object v1

    .line 629
    .local v1, "$i$f$synchronized":I
    :catchall_40
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private final updateBufferLocked(JJJJ)V
    .registers 25
    .param p1, "newReplayIndex"    # J
    .param p3, "newMinCollectorIndex"    # J
    .param p5, "newBufferEndIndex"    # J
    .param p7, "newQueueEndIndex"    # J

    .line 598
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 599
    .local v5, "newHead":J
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_27

    .line 737
    const/4 v7, 0x0

    .line 599
    .local v7, "$i$a$-assert-SharedFlowImpl$updateBufferLocked$1":I
    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v10

    cmp-long v10, v5, v10

    if-ltz v10, :cond_1d

    move v7, v8

    goto :goto_1e

    :cond_1d
    move v7, v9

    .end local v7    # "$i$a$-assert-SharedFlowImpl$updateBufferLocked$1":I
    :goto_1e
    if-eqz v7, :cond_21

    goto :goto_27

    :cond_21
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 601
    :cond_27
    :goto_27
    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v10

    :goto_2b
    cmp-long v7, v10, v5

    if-gez v7, :cond_3d

    move-wide v12, v10

    .local v12, "index":J
    const-wide/16 v14, 0x1

    add-long/2addr v10, v14

    iget-object v7, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->buffer:[Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v14, 0x0

    invoke-static {v7, v12, v13, v14}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$setBufferAt([Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_2b

    .line 603
    .end local v12    # "index":J
    :cond_3d
    iput-wide v1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    .line 604
    iput-wide v3, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    .line 605
    sub-long v10, p5, v5

    long-to-int v7, v10

    iput v7, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    .line 606
    sub-long v10, p7, p5

    long-to-int v7, v10

    iput v7, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    .line 608
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v7

    if-eqz v7, :cond_62

    .line 737
    const/4 v7, 0x0

    .line 608
    .local v7, "$i$a$-assert-SharedFlowImpl$updateBufferLocked$2":I
    iget v10, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    if-ltz v10, :cond_58

    move v7, v8

    goto :goto_59

    :cond_58
    move v7, v9

    .end local v7    # "$i$a$-assert-SharedFlowImpl$updateBufferLocked$2":I
    :goto_59
    if-eqz v7, :cond_5c

    goto :goto_62

    :cond_5c
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 609
    :cond_62
    :goto_62
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v7

    if-eqz v7, :cond_79

    .line 737
    const/4 v7, 0x0

    .line 609
    .local v7, "$i$a$-assert-SharedFlowImpl$updateBufferLocked$3":I
    iget v10, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    if-ltz v10, :cond_6f

    move v7, v8

    goto :goto_70

    :cond_6f
    move v7, v9

    .end local v7    # "$i$a$-assert-SharedFlowImpl$updateBufferLocked$3":I
    :goto_70
    if-eqz v7, :cond_73

    goto :goto_79

    :cond_73
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 610
    :cond_79
    :goto_79
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v7

    if-eqz v7, :cond_99

    .line 737
    const/4 v7, 0x0

    .line 610
    .local v7, "$i$a$-assert-SharedFlowImpl$updateBufferLocked$4":I
    iget-wide v10, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v12

    iget v14, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    int-to-long v14, v14

    add-long/2addr v12, v14

    cmp-long v10, v10, v12

    if-gtz v10, :cond_8f

    goto :goto_90

    :cond_8f
    move v8, v9

    .end local v7    # "$i$a$-assert-SharedFlowImpl$updateBufferLocked$4":I
    :goto_90
    if-eqz v8, :cond_93

    goto :goto_99

    :cond_93
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 611
    :cond_99
    :goto_99
    return-void
.end method


# virtual methods
.method public collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/flow/SharedFlowImpl;->collect$suspendImpl(Lkotlinx/coroutines/flow/SharedFlowImpl;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected createSlot()Lkotlinx/coroutines/flow/SharedFlowSlot;
    .registers 2

    .line 687
    new-instance v0, Lkotlinx/coroutines/flow/SharedFlowSlot;

    invoke-direct {v0}, Lkotlinx/coroutines/flow/SharedFlowSlot;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createSlot()Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .registers 2

    .line 303
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->createSlot()Lkotlinx/coroutines/flow/SharedFlowSlot;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    return-object v0
.end method

.method protected createSlotArray(I)[Lkotlinx/coroutines/flow/SharedFlowSlot;
    .registers 3
    .param p1, "size"    # I

    .line 688
    new-array v0, p1, [Lkotlinx/coroutines/flow/SharedFlowSlot;

    return-object v0
.end method

.method public bridge synthetic createSlotArray(I)[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .registers 3
    .param p1, "size"    # I

    .line 303
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->createSlotArray(I)[Lkotlinx/coroutines/flow/SharedFlowSlot;

    move-result-object v0

    check-cast v0, [Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    return-object v0
.end method

.method public emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit$suspendImpl(Lkotlinx/coroutines/flow/SharedFlowImpl;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fuse(Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/Flow;
    .registers 5
    .param p1, "context"    # Lkotlin/coroutines/CoroutineContext;
    .param p2, "capacity"    # I
    .param p3, "onBufferOverflow"    # Lkotlinx/coroutines/channels/BufferOverflow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "I",
            "Lkotlinx/coroutines/channels/BufferOverflow;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "TT;>;"
        }
    .end annotation

    .line 701
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/flow/SharedFlow;

    invoke-static {v0, p1, p2, p3}, Lkotlinx/coroutines/flow/SharedFlowKt;->fuseSharedFlow(Lkotlinx/coroutines/flow/SharedFlow;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    return-object v0
.end method

.method protected final getLastReplayedLocked()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->buffer:[Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-wide v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getReplaySize()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$getBufferAt([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getReplayCache()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 352
    const/4 v0, 0x0

    .line 734
    .local v0, "$i$f$synchronized":I
    monitor-enter p0

    const/4 v1, 0x0

    .line 353
    .local v1, "$i$a$-synchronized-SharedFlowImpl$replayCache$1":I
    :try_start_3
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getReplaySize()I

    move-result v2

    .line 354
    .local v2, "replaySize":I
    if-nez v2, :cond_f

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_35

    .end local v0    # "$i$f$synchronized":I
    .end local v1    # "$i$a$-synchronized-SharedFlowImpl$replayCache$1":I
    .end local v2    # "replaySize":I
    monitor-exit p0

    return-object v3

    .line 355
    .restart local v0    # "$i$f$synchronized":I
    .restart local v1    # "$i$a$-synchronized-SharedFlowImpl$replayCache$1":I
    .restart local v2    # "replaySize":I
    :cond_f
    :try_start_f
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 356
    .local v3, "result":Ljava/util/ArrayList;
    iget-object v4, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->buffer:[Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 358
    .local v4, "buffer":[Ljava/lang/Object;
    const/4 v5, 0x0

    :goto_1a
    if-ge v5, v2, :cond_2e

    move v6, v5

    .local v6, "i":I
    add-int/lit8 v5, v5, 0x1

    move-object v7, v3

    check-cast v7, Ljava/util/Collection;

    iget-wide v8, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    int-to-long v10, v6

    add-long/2addr v8, v10

    invoke-static {v4, v8, v9}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$getBufferAt([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_2d
    .catchall {:try_start_f .. :try_end_2d} :catchall_35

    goto :goto_1a

    .line 359
    .end local v6    # "i":I
    :cond_2e
    nop

    .end local v1    # "$i$a$-synchronized-SharedFlowImpl$replayCache$1":I
    .end local v2    # "replaySize":I
    .end local v3    # "result":Ljava/util/ArrayList;
    .end local v4    # "buffer":[Ljava/lang/Object;
    monitor-exit p0

    .line 734
    nop

    .end local v0    # "$i$f$synchronized":I
    move-object v0, v3

    check-cast v0, Ljava/util/List;

    .line 360
    return-object v0

    .line 359
    .restart local v0    # "$i$f$synchronized":I
    :catchall_35
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public resetReplayCache()V
    .registers 12

    .line 690
    const/4 v0, 0x0

    .line 785
    .local v0, "$i$f$synchronized":I
    monitor-enter p0

    const/4 v1, 0x0

    .line 692
    .local v1, "$i$a$-synchronized-SharedFlowImpl$resetReplayCache$1":I
    nop

    .line 693
    :try_start_4
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getBufferEndIndex()J

    move-result-wide v3

    .line 694
    iget-wide v5, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    .line 695
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getBufferEndIndex()J

    move-result-wide v7

    .line 696
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getQueueEndIndex()J

    move-result-wide v9

    .line 692
    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Lkotlinx/coroutines/flow/SharedFlowImpl;->updateBufferLocked(JJJJ)V

    .line 698
    nop

    .end local v1    # "$i$a$-synchronized-SharedFlowImpl$resetReplayCache$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_1c

    monitor-exit p0

    .line 785
    nop

    .line 698
    .end local v0    # "$i$f$synchronized":I
    return-void

    .restart local v0    # "$i$f$synchronized":I
    :catchall_1c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public tryEmit(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 391
    const/4 v0, 0x0

    .local v0, "resumes":Ljava/lang/Object;
    sget-object v0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowKt;->EMPTY_RESUMES:[Lkotlin/coroutines/Continuation;

    .line 392
    const/4 v1, 0x0

    .line 736
    .local v1, "$i$f$synchronized":I
    monitor-enter p0

    const/4 v2, 0x0

    .line 393
    .local v2, "$i$a$-synchronized-SharedFlowImpl$tryEmit$emitted$1":I
    :try_start_6
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryEmitLocked(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_14

    .line 394
    invoke-direct {p0, v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->findSlotsToResumeLocked([Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;

    move-result-object v3
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_30

    move-object v0, v3

    .line 395
    const/4 v3, 0x1

    goto :goto_15

    .line 397
    :cond_14
    move v3, v4

    .line 393
    :goto_15
    nop

    .end local v2    # "$i$a$-synchronized-SharedFlowImpl$tryEmit$emitted$1":I
    monitor-exit p0

    .line 736
    nop

    .line 392
    .end local v1    # "$i$f$synchronized":I
    move v1, v3

    .line 400
    .local v1, "emitted":Z
    array-length v2, v0

    :goto_1a
    if-ge v4, v2, :cond_2f

    aget-object v3, v0, v4

    .local v3, "cont":Lkotlin/coroutines/Continuation;
    add-int/lit8 v4, v4, 0x1

    if-nez v3, :cond_23

    goto :goto_1a

    :cond_23
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1a

    .line 401
    .end local v3    # "cont":Lkotlin/coroutines/Continuation;
    :cond_2f
    return v1

    .line 393
    .local v1, "$i$f$synchronized":I
    :catchall_30
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final updateCollectorIndexLocked$kotlinx_coroutines_core(J)[Lkotlin/coroutines/Continuation;
    .registers 29
    .param p1, "oldIndex"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)[",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 523
    move-object/from16 v9, p0

    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 737
    const/4 v0, 0x0

    .line 523
    .local v0, "$i$a$-assert-SharedFlowImpl$updateCollectorIndexLocked$1":I
    iget-wide v1, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    cmp-long v1, p1, v1

    if-ltz v1, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .end local v0    # "$i$a$-assert-SharedFlowImpl$updateCollectorIndexLocked$1":I
    :goto_12
    if-eqz v0, :cond_15

    goto :goto_1b

    :cond_15
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 524
    :cond_1b
    :goto_1b
    iget-wide v0, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_24

    sget-object v0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowKt;->EMPTY_RESUMES:[Lkotlin/coroutines/Continuation;

    return-object v0

    .line 526
    :cond_24
    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v12

    .line 527
    .local v12, "head":J
    const-wide/16 v0, 0x0

    .local v0, "newMinCollectorIndex":J
    iget v2, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    int-to-long v2, v2

    add-long/2addr v2, v12

    .line 529
    .end local v0    # "newMinCollectorIndex":J
    .local v2, "newMinCollectorIndex":J
    iget v0, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferCapacity:I

    const-wide/16 v4, 0x1

    if-nez v0, :cond_39

    iget v0, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    if-lez v0, :cond_39

    add-long/2addr v2, v4

    .line 530
    :cond_39
    move-object v0, v9

    check-cast v0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;

    .local v0, "this_$iv":Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;
    const/4 v1, 0x0

    .line 758
    .local v1, "$i$f$forEachSlotLocked":I
    invoke-static {v0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->access$getNCollectors(Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;)I

    move-result v6

    if-nez v6, :cond_46

    move-wide/from16 v20, v12

    goto :goto_7f

    .line 759
    :cond_46
    invoke-static {v0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->access$getSlots(Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;)[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    move-result-object v6

    if-nez v6, :cond_4f

    move-wide/from16 v20, v12

    goto :goto_7e

    .local v6, "$this$forEach$iv$iv":[Ljava/lang/Object;
    :cond_4f
    const/4 v7, 0x0

    .line 760
    .local v7, "$i$f$forEach":I
    array-length v8, v6

    const/4 v14, 0x0

    :goto_52
    if-ge v14, v8, :cond_7c

    aget-object v15, v6, v14

    .local v15, "element$iv$iv":Ljava/lang/Object;
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v16, v15

    .local v16, "slot$iv":Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    const/16 v17, 0x0

    .line 761
    .local v17, "$i$a$-forEach-AbstractSharedFlow$forEachSlotLocked$1$iv":I
    if-eqz v16, :cond_77

    move-object/from16 v10, v16

    check-cast v10, Lkotlinx/coroutines/flow/SharedFlowSlot;

    .local v10, "slot":Lkotlinx/coroutines/flow/SharedFlowSlot;
    const/16 v19, 0x0

    .line 532
    .local v19, "$i$a$-forEachSlotLocked-SharedFlowImpl$updateCollectorIndexLocked$2":I
    move-wide/from16 v20, v12

    .end local v12    # "head":J
    .local v20, "head":J
    iget-wide v11, v10, Lkotlinx/coroutines/flow/SharedFlowSlot;->index:J

    const-wide/16 v22, 0x0

    cmp-long v11, v11, v22

    if-ltz v11, :cond_76

    iget-wide v11, v10, Lkotlinx/coroutines/flow/SharedFlowSlot;->index:J

    cmp-long v11, v11, v2

    if-gez v11, :cond_76

    iget-wide v2, v10, Lkotlinx/coroutines/flow/SharedFlowSlot;->index:J

    .line 533
    :cond_76
    goto :goto_79

    .line 761
    .end local v10    # "slot":Lkotlinx/coroutines/flow/SharedFlowSlot;
    .end local v19    # "$i$a$-forEachSlotLocked-SharedFlowImpl$updateCollectorIndexLocked$2":I
    .end local v20    # "head":J
    .restart local v12    # "head":J
    :cond_77
    move-wide/from16 v20, v12

    .line 762
    .end local v12    # "head":J
    .restart local v20    # "head":J
    :goto_79
    move-wide/from16 v12, v20

    .end local v16    # "slot$iv":Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .end local v17    # "$i$a$-forEach-AbstractSharedFlow$forEachSlotLocked$1$iv":I
    goto :goto_52

    .line 763
    .end local v15    # "element$iv$iv":Ljava/lang/Object;
    .end local v20    # "head":J
    .restart local v12    # "head":J
    :cond_7c
    move-wide/from16 v20, v12

    .line 764
    .end local v6    # "$this$forEach$iv$iv":[Ljava/lang/Object;
    .end local v7    # "$i$f$forEach":I
    .end local v12    # "head":J
    .restart local v20    # "head":J
    :goto_7e
    nop

    .line 534
    .end local v0    # "this_$iv":Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;
    .end local v1    # "$i$f$forEachSlotLocked":I
    :goto_7f
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_98

    .line 737
    const/4 v0, 0x0

    .line 534
    .local v0, "$i$a$-assert-SharedFlowImpl$updateCollectorIndexLocked$3":I
    iget-wide v6, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    cmp-long v1, v2, v6

    if-ltz v1, :cond_8e

    const/4 v0, 0x1

    goto :goto_8f

    :cond_8e
    const/4 v0, 0x0

    .end local v0    # "$i$a$-assert-SharedFlowImpl$updateCollectorIndexLocked$3":I
    :goto_8f
    if-eqz v0, :cond_92

    goto :goto_98

    :cond_92
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 535
    :cond_98
    :goto_98
    iget-wide v0, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    cmp-long v0, v2, v0

    if-gtz v0, :cond_a1

    sget-object v0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowKt;->EMPTY_RESUMES:[Lkotlin/coroutines/Continuation;

    return-object v0

    .line 538
    :cond_a1
    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getBufferEndIndex()J

    move-result-wide v0

    .line 539
    .local v0, "newBufferEndIndex":J
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getNCollectors()I

    move-result v6

    if-lez v6, :cond_b8

    .line 543
    sub-long v6, v0, v2

    long-to-int v6, v6

    .line 544
    .local v6, "newBufferSize0":I
    iget v7, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    iget v8, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferCapacity:I

    sub-int/2addr v8, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .end local v6    # "newBufferSize0":I
    goto :goto_ba

    .line 547
    :cond_b8
    iget v6, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    .line 539
    :goto_ba
    move v10, v6

    .line 549
    .local v10, "maxResumeCount":I
    sget-object v6, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowKt;->EMPTY_RESUMES:[Lkotlin/coroutines/Continuation;

    .line 550
    .local v6, "resumes":[Lkotlin/coroutines/Continuation;
    iget v7, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    int-to-long v7, v7

    add-long v11, v0, v7

    .line 551
    .local v11, "newQueueEndIndex":J
    if-lez v10, :cond_118

    .line 552
    new-array v6, v10, [Lkotlin/coroutines/Continuation;

    .line 553
    const/4 v7, 0x0

    .line 554
    .local v7, "resumeCount":I
    iget-object v8, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->buffer:[Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 555
    .local v8, "buffer":[Ljava/lang/Object;
    move-wide v13, v0

    .end local v0    # "newBufferEndIndex":J
    .local v13, "newBufferEndIndex":J
    :goto_cd
    cmp-long v15, v0, v11

    if-gez v15, :cond_115

    move-wide v15, v0

    .local v15, "curEmitterIndex":J
    add-long/2addr v0, v4

    .line 556
    move-wide v4, v15

    .end local v15    # "curEmitterIndex":J
    .local v4, "curEmitterIndex":J
    invoke-static {v8, v4, v5}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$getBufferAt([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    .line 557
    .local v15, "emitter":Ljava/lang/Object;
    move-wide/from16 v16, v0

    sget-object v0, Lkotlinx/coroutines/flow/SharedFlowKt;->NO_VALUE:Lkotlinx/coroutines/internal/Symbol;

    if-eq v15, v0, :cond_110

    .line 558
    if-eqz v15, :cond_108

    move-object v0, v15

    check-cast v0, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;

    .line 559
    add-int/lit8 v0, v7, 0x1

    .end local v7    # "resumeCount":I
    .local v0, "resumeCount":I
    move-object v1, v15

    check-cast v1, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;

    iget-object v1, v1, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;->cont:Lkotlin/coroutines/Continuation;

    aput-object v1, v6, v7

    .line 560
    sget-object v1, Lkotlinx/coroutines/flow/SharedFlowKt;->NO_VALUE:Lkotlinx/coroutines/internal/Symbol;

    invoke-static {v8, v4, v5, v1}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$setBufferAt([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 561
    move-object v1, v15

    check-cast v1, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;

    iget-object v1, v1, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;->value:Ljava/lang/Object;

    invoke-static {v8, v13, v14, v1}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$setBufferAt([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 562
    const-wide/16 v22, 0x1

    add-long v13, v13, v22

    .line 563
    if-lt v0, v10, :cond_102

    move-wide v0, v13

    move-object v13, v6

    goto :goto_119

    :cond_102
    move v7, v0

    move-wide/from16 v0, v16

    const-wide/16 v4, 0x1

    goto :goto_cd

    .line 558
    .end local v0    # "resumeCount":I
    .restart local v7    # "resumeCount":I
    :cond_108
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.flow.SharedFlowImpl.Emitter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 557
    :cond_110
    move-wide/from16 v0, v16

    const-wide/16 v4, 0x1

    goto :goto_cd

    .line 555
    .end local v4    # "curEmitterIndex":J
    .end local v15    # "emitter":Ljava/lang/Object;
    :cond_115
    move-wide v0, v13

    move-object v13, v6

    goto :goto_119

    .line 551
    .end local v7    # "resumeCount":I
    .end local v8    # "buffer":[Ljava/lang/Object;
    .end local v13    # "newBufferEndIndex":J
    .local v0, "newBufferEndIndex":J
    :cond_118
    move-object v13, v6

    .line 568
    .end local v6    # "resumes":[Lkotlin/coroutines/Continuation;
    .local v13, "resumes":[Lkotlin/coroutines/Continuation;
    :goto_119
    sub-long v4, v0, v20

    long-to-int v14, v4

    .line 574
    .local v14, "newBufferSize1":I
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getNCollectors()I

    move-result v4

    if-nez v4, :cond_123

    move-wide v2, v0

    :cond_123
    move-wide v15, v2

    .line 576
    .end local v2    # "newMinCollectorIndex":J
    .local v15, "newMinCollectorIndex":J
    iget-wide v2, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    iget v4, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->replay:I

    invoke-static {v4, v14}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-long v4, v4

    sub-long v4, v0, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 578
    .local v2, "newReplayIndex":J
    iget v4, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferCapacity:I

    if-nez v4, :cond_155

    cmp-long v4, v2, v11

    if-gez v4, :cond_155

    iget-object v4, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->buffer:[Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4, v2, v3}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$getBufferAt([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lkotlinx/coroutines/flow/SharedFlowKt;->NO_VALUE:Lkotlinx/coroutines/internal/Symbol;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_155

    .line 579
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    .line 580
    add-long/2addr v2, v4

    move-wide/from16 v22, v0

    move-wide/from16 v24, v2

    goto :goto_159

    .line 583
    :cond_155
    move-wide/from16 v22, v0

    move-wide/from16 v24, v2

    .end local v0    # "newBufferEndIndex":J
    .end local v2    # "newReplayIndex":J
    .local v22, "newBufferEndIndex":J
    .local v24, "newReplayIndex":J
    :goto_159
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move-wide v3, v15

    move-wide/from16 v5, v22

    move-wide v7, v11

    invoke-direct/range {v0 .. v8}, Lkotlinx/coroutines/flow/SharedFlowImpl;->updateBufferLocked(JJJJ)V

    .line 585
    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->cleanupTailLocked()V

    .line 587
    array-length v0, v13

    if-nez v0, :cond_16d

    const/16 v18, 0x1

    goto :goto_16f

    :cond_16d
    const/16 v18, 0x0

    :goto_16f
    const/4 v0, 0x1

    xor-int/lit8 v0, v18, 0x1

    if-eqz v0, :cond_178

    invoke-direct {v9, v13}, Lkotlinx/coroutines/flow/SharedFlowImpl;->findSlotsToResumeLocked([Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;

    move-result-object v13

    .line 588
    :cond_178
    return-object v13
.end method

.method public final updateNewCollectorIndexLocked$kotlinx_coroutines_core()J
    .registers 5

    .line 516
    iget-wide v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    .line 517
    .local v0, "index":J
    iget-wide v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_a

    iput-wide v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    .line 518
    :cond_a
    return-wide v0
.end method
