.class public final Lp5/t;
.super Lq5/b;

# interfaces
.implements Lp5/b;
.implements Lp5/c;
.implements Lq5/g;


# static fields
.field public static final t:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _state:Ljava/lang/Object;

.field public s:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "_state"

    const-class v2, Lp5/t;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lp5/t;->t:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp5/t;->_state:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final B(LV4/i;II)Lp5/b;
    .locals 2

    const/4 v0, 0x2

    if-ltz p2, :cond_0

    if-ge p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x2

    if-ne p2, v1, :cond_1

    :goto_0
    if-ne p3, v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    const/4 v0, -0x3

    if-ne p2, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    if-ne p3, v0, :cond_3

    :goto_1
    return-object p0

    :cond_3
    new-instance v0, Lq5/e;

    invoke-direct {v0, p0, p1, p2, p3}, Lq5/e;-><init>(Lp5/b;LV4/i;II)V

    return-object v0
.end method

.method public final a(Ljava/lang/Object;LV4/d;)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lq5/i;->a:LE1/a;

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lp5/t;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    sget-object p1, LS4/i;->a:LS4/i;

    return-object p1
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 10

    monitor-enter p0

    :try_start_0
    sget-object v0, Lp5/t;->t:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-static {v1, p1}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    :try_start_1
    invoke-static {v1, p2}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    :try_start_2
    invoke-virtual {v0, p0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget p1, p0, Lp5/t;->s:I

    and-int/lit8 p2, p1, 0x1

    if-nez p2, :cond_b

    add-int/2addr p1, v1

    iput p1, p0, Lp5/t;->s:I

    iget-object p2, p0, Lq5/b;->b:[Lq5/c;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    :goto_0
    check-cast p2, [Lp5/v;

    if-eqz p2, :cond_9

    array-length v0, p2

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_9

    aget-object v4, p2, v3

    if-eqz v4, :cond_8

    sget-object v5, Lp5/v;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :goto_2
    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_3

    :cond_2
    sget-object v7, Lp5/u;->b:LE1/a;

    if-ne v6, v7, :cond_3

    goto :goto_3

    :cond_3
    sget-object v8, Lp5/u;->a:LE1/a;

    if-ne v6, v8, :cond_6

    :cond_4
    invoke-virtual {v5, v4, v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eq v8, v6, :cond_4

    goto :goto_2

    :cond_6
    invoke-virtual {v5, v4, v6, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    check-cast v6, Lm5/f;

    sget-object v4, LS4/i;->a:LS4/i;

    invoke-virtual {v6, v4}, Lm5/f;->resumeWith(Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eq v7, v6, :cond_6

    goto :goto_2

    :cond_8
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_9
    monitor-enter p0

    :try_start_3
    iget p2, p0, Lp5/t;->s:I

    if-ne p2, p1, :cond_a

    add-int/2addr p1, v1

    iput p1, p0, Lp5/t;->s:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return v1

    :catchall_1
    move-exception p1

    goto :goto_4

    :cond_a
    :try_start_4
    iget-object p1, p0, Lq5/b;->b:[Lq5/c;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    move v9, p2

    move-object p2, p1

    move p1, v9

    goto :goto_0

    :goto_4
    monitor-exit p0

    throw p1

    :cond_b
    add-int/lit8 p1, p1, 0x2

    :try_start_5
    iput p1, p0, Lp5/t;->s:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v1

    :goto_5
    monitor-exit p0

    throw p1
.end method

.method public final h(Lp5/c;LX4/c;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    instance-of v2, v0, Lp5/s;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lp5/s;

    iget v3, v2, Lp5/s;->w:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lp5/s;->w:I

    goto :goto_0

    :cond_0
    new-instance v2, Lp5/s;

    invoke-direct {v2, v1, v0}, Lp5/s;-><init>(Lp5/t;LX4/c;)V

    :goto_0
    iget-object v0, v2, Lp5/s;->u:Ljava/lang/Object;

    sget-object v3, LW4/a;->b:LW4/a;

    iget v4, v2, Lp5/s;->w:I

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v4, :cond_4

    if-eq v4, v9, :cond_3

    if-eq v4, v8, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v4, v2, Lp5/s;->t:Ljava/lang/Object;

    iget-object v10, v2, Lp5/s;->s:Lm5/Q;

    iget-object v11, v2, Lp5/s;->r:Lp5/v;

    iget-object v12, v2, Lp5/s;->q:Lp5/c;

    iget-object v13, v2, Lp5/s;->b:Lp5/t;

    :try_start_0
    invoke-static {v0}, LE5/l;->C(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v4

    goto/16 :goto_b

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v4, v2, Lp5/s;->t:Ljava/lang/Object;

    iget-object v10, v2, Lp5/s;->s:Lm5/Q;

    iget-object v11, v2, Lp5/s;->r:Lp5/v;

    iget-object v12, v2, Lp5/s;->q:Lp5/c;

    iget-object v13, v2, Lp5/s;->b:Lp5/t;

    :try_start_1
    invoke-static {v0}, LE5/l;->C(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_7

    :cond_3
    iget-object v11, v2, Lp5/s;->r:Lp5/v;

    iget-object v4, v2, Lp5/s;->q:Lp5/c;

    iget-object v13, v2, Lp5/s;->b:Lp5/t;

    :try_start_2
    invoke-static {v0}, LE5/l;->C(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_4
    invoke-static {v0}, LE5/l;->C(Ljava/lang/Object;)V

    monitor-enter p0

    :try_start_3
    iget-object v0, v1, Lq5/b;->b:[Lq5/c;

    if-nez v0, :cond_5

    new-array v0, v8, [Lp5/v;

    iput-object v0, v1, Lq5/b;->b:[Lq5/c;

    goto :goto_1

    :catchall_1
    move-exception v0

    goto/16 :goto_f

    :cond_5
    iget v4, v1, Lq5/b;->q:I

    array-length v10, v0

    if-lt v4, v10, :cond_6

    array-length v4, v0

    mul-int/2addr v4, v8

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v4, "copyOf(this, newSize)"

    invoke-static {v0, v4}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v0

    check-cast v4, [Lq5/c;

    iput-object v4, v1, Lq5/b;->b:[Lq5/c;

    check-cast v0, [Lq5/c;

    :cond_6
    :goto_1
    iget v4, v1, Lq5/b;->r:I

    :goto_2
    aget-object v10, v0, v4

    if-nez v10, :cond_7

    new-instance v10, Lp5/v;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    aput-object v10, v0, v4

    :cond_7
    add-int/lit8 v4, v4, 0x1

    array-length v11, v0

    if-lt v4, v11, :cond_8

    move v4, v7

    :cond_8
    move-object v11, v10

    check-cast v11, Lp5/v;

    sget-object v12, Lp5/v;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v12, v11}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_9

    goto :goto_2

    :cond_9
    sget-object v0, Lp5/u;->a:LE1/a;

    invoke-virtual {v12, v11, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iput v4, v1, Lq5/b;->r:I

    iget v0, v1, Lq5/b;->q:I

    add-int/2addr v0, v9

    iput v0, v1, Lq5/b;->q:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    check-cast v10, Lp5/v;

    move-object/from16 v4, p1

    move-object v13, v1

    move-object v11, v10

    :goto_3
    :try_start_4
    invoke-interface {v2}, LV4/d;->getContext()LV4/i;

    move-result-object v0

    sget-object v10, Lm5/t;->q:Lm5/t;

    invoke-interface {v0, v10}, LV4/i;->h(LV4/h;)LV4/g;

    move-result-object v0

    check-cast v0, Lm5/Q;

    move-object v10, v0

    move-object v12, v4

    move-object v0, v6

    :goto_4
    sget-object v4, Lp5/t;->t:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, v13}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v10, :cond_b

    invoke-interface {v10}, Lm5/Q;->a()Z

    move-result v14

    if-eqz v14, :cond_a

    goto :goto_5

    :cond_a
    check-cast v10, Lm5/a0;

    invoke-virtual {v10}, Lm5/a0;->w()Ljava/util/concurrent/CancellationException;

    move-result-object v0

    throw v0

    :cond_b
    :goto_5
    if-eqz v0, :cond_c

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_f

    :cond_c
    sget-object v0, Lq5/i;->a:LE1/a;

    if-ne v4, v0, :cond_d

    move-object v0, v6

    goto :goto_6

    :cond_d
    move-object v0, v4

    :goto_6
    iput-object v13, v2, Lp5/s;->b:Lp5/t;

    iput-object v12, v2, Lp5/s;->q:Lp5/c;

    iput-object v11, v2, Lp5/s;->r:Lp5/v;

    iput-object v10, v2, Lp5/s;->s:Lm5/Q;

    iput-object v4, v2, Lp5/s;->t:Ljava/lang/Object;

    iput v8, v2, Lp5/s;->w:I

    invoke-interface {v12, v0, v2}, Lp5/c;->a(Ljava/lang/Object;LV4/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_e

    goto :goto_a

    :cond_e
    :goto_7
    move-object v0, v4

    :cond_f
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lp5/v;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v14, Lp5/u;->a:LE1/a;

    invoke-virtual {v4, v11, v14}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15}, Le5/g;->c(Ljava/lang/Object;)V

    sget-object v8, Lp5/u;->b:LE1/a;

    if-ne v15, v8, :cond_10

    :goto_8
    const/4 v8, 0x2

    goto :goto_4

    :cond_10
    iput-object v13, v2, Lp5/s;->b:Lp5/t;

    iput-object v12, v2, Lp5/s;->q:Lp5/c;

    iput-object v11, v2, Lp5/s;->r:Lp5/v;

    iput-object v10, v2, Lp5/s;->s:Lm5/Q;

    iput-object v0, v2, Lp5/s;->t:Ljava/lang/Object;

    iput v5, v2, Lp5/s;->w:I

    sget-object v8, LS4/i;->a:LS4/i;

    new-instance v15, Lm5/f;

    invoke-static {v2}, LE5/d;->v(LV4/d;)LV4/d;

    move-result-object v5

    invoke-direct {v15, v9, v5}, Lm5/f;-><init>(ILV4/d;)V

    invoke-virtual {v15}, Lm5/f;->r()V

    :cond_11
    invoke-virtual {v4, v11, v14, v15}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    goto :goto_9

    :cond_12
    invoke-virtual {v4, v11}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v14, :cond_11

    invoke-virtual {v15, v8}, Lm5/f;->resumeWith(Ljava/lang/Object;)V

    :goto_9
    invoke-virtual {v15}, Lm5/f;->q()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, LW4/a;->b:LW4/a;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne v4, v5, :cond_13

    move-object v8, v4

    :cond_13
    if-ne v8, v3, :cond_14

    :goto_a
    return-object v3

    :cond_14
    :goto_b
    const/4 v5, 0x3

    goto :goto_8

    :goto_c
    monitor-enter v13

    :try_start_5
    iget v2, v13, Lq5/b;->q:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v13, Lq5/b;->q:I

    if-nez v2, :cond_15

    iput v7, v13, Lq5/b;->r:I

    goto :goto_d

    :catchall_2
    move-exception v0

    goto :goto_e

    :cond_15
    :goto_d
    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot<kotlin.Any>"

    invoke-static {v11, v2}, Le5/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lp5/v;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, v11, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit v13

    throw v0

    :goto_e
    monitor-exit v13

    throw v0

    :goto_f
    monitor-exit p0

    throw v0
.end method
