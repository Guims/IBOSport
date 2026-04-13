.class public abstract Lr5/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:LE1/a;

.field public static final b:LE1/a;

.field public static final c:LE1/a;

.field public static final d:LE1/a;

.field public static final e:LE1/a;

.field public static final f:LE1/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, LE1/a;

    const-string v1, "NO_DECISION"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, LE1/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr5/a;->a:LE1/a;

    new-instance v0, LE1/a;

    const-string v1, "CLOSED"

    invoke-direct {v0, v1, v2}, LE1/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr5/a;->b:LE1/a;

    new-instance v0, LE1/a;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1, v2}, LE1/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr5/a;->c:LE1/a;

    new-instance v0, LE1/a;

    const-string v1, "REUSABLE_CLAIMED"

    invoke-direct {v0, v1, v2}, LE1/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr5/a;->d:LE1/a;

    new-instance v0, LE1/a;

    const-string v1, "CONDITION_FALSE"

    invoke-direct {v0, v1, v2}, LE1/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr5/a;->e:LE1/a;

    new-instance v0, LE1/a;

    const-string v1, "NO_THREAD_ELEMENTS"

    invoke-direct {v0, v1, v2}, LE1/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr5/a;->f:LE1/a;

    return-void
.end method

.method public static final a(Lr5/t;JLd5/p;)Ljava/lang/Object;
    .locals 5

    :goto_0
    iget-wide v0, p0, Lr5/t;->r:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lr5/t;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    return-object p0

    :cond_1
    :goto_1
    sget-object v0, Lr5/d;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lr5/a;->b:LE1/a;

    if-ne v1, v2, :cond_2

    return-object v2

    :cond_2
    check-cast v1, Lr5/d;

    check-cast v1, Lr5/t;

    if-eqz v1, :cond_4

    :cond_3
    :goto_2
    move-object p0, v1

    goto :goto_0

    :cond_4
    iget-wide v1, p0, Lr5/t;->r:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p3, v1, p0}, Ld5/p;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr5/t;

    :cond_5
    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lr5/t;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lr5/d;->d()V

    goto :goto_2

    :cond_6
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    goto :goto_0
.end method

.method public static final b(Ljava/lang/Object;)Lr5/t;
    .locals 1

    sget-object v0, Lr5/a;->b:LE1/a;

    if-eq p0, v0, :cond_0

    check-cast p0, Lr5/t;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Does not contain segment"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final c(LV4/i;Ljava/lang/Throwable;)V
    .locals 4

    sget-object v0, Lr5/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln5/b;

    :try_start_0
    invoke-virtual {v1, p1}, Ln5/b;->x(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    if-ne p1, v1, :cond_0

    move-object v2, p1

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Exception while trying to handle coroutine exception"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v2, p1}, LE5/d;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v0, Lr5/g;

    invoke-direct {v0, p0}, Lr5/g;-><init>(LV4/i;)V

    invoke-static {p1, v0}, LE5/d;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final d(Ljava/lang/Object;)Z
    .locals 1

    sget-object v0, Lr5/a;->b:LE1/a;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    instance-of v0, p0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static final f(LV4/i;Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lr5/a;->f:LE1/a;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lr5/y;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lr5/y;

    iget-object p0, p1, Lr5/y;->b:[Lm5/h0;

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    aget-object p0, p0, v0

    invoke-static {v1}, Le5/g;->c(Ljava/lang/Object;)V

    iget-object p0, p1, Lr5/y;->a:[Ljava/lang/Object;

    aget-object p0, p0, v0

    throw v1

    :cond_2
    sget-object p1, Lr5/w;->r:Lr5/w;

    invoke-interface {p0, v1, p1}, LV4/i;->f(Ljava/lang/Object;Ld5/p;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-static {p0, p1}, Le5/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, LB/f;->w(Ljava/lang/Object;)V

    throw v1
.end method

.method public static final g(LV4/d;Ljava/lang/Object;)V
    .locals 9

    instance-of v0, p0, Lr5/h;

    if-eqz v0, :cond_a

    check-cast p0, Lr5/h;

    iget-object v0, p0, Lr5/h;->s:Lm5/s;

    iget-object v1, p0, Lr5/h;->t:LX4/c;

    invoke-static {p1}, LS4/f;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v3, p1

    goto :goto_0

    :cond_0
    new-instance v3, Lm5/n;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lm5/n;-><init>(Ljava/lang/Throwable;Z)V

    :goto_0
    invoke-interface {v1}, LV4/d;->getContext()LV4/i;

    invoke-virtual {v0}, Lm5/s;->y()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    iput-object v3, p0, Lr5/h;->u:Ljava/lang/Object;

    iput v4, p0, Lm5/B;->r:I

    invoke-interface {v1}, LV4/d;->getContext()LV4/i;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lm5/s;->x(LV4/i;Ljava/lang/Runnable;)V

    return-void

    :cond_1
    invoke-static {}, Lm5/i0;->a()Lm5/I;

    move-result-object v0

    iget-wide v5, v0, Lm5/I;->r:J

    const-wide v7, 0x100000000L

    cmp-long v2, v5, v7

    if-ltz v2, :cond_3

    iput-object v3, p0, Lr5/h;->u:Ljava/lang/Object;

    iput v4, p0, Lm5/B;->r:I

    iget-object p1, v0, Lm5/I;->t:LT4/e;

    if-nez p1, :cond_2

    new-instance p1, LT4/e;

    invoke-direct {p1}, LT4/e;-><init>()V

    iput-object p1, v0, Lm5/I;->t:LT4/e;

    :cond_2
    invoke-virtual {p1, p0}, LT4/e;->addLast(Ljava/lang/Object;)V

    goto :goto_5

    :cond_3
    invoke-virtual {v0, v4}, Lm5/I;->B(Z)V

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1}, LV4/d;->getContext()LV4/i;

    move-result-object v5

    sget-object v6, Lm5/t;->q:Lm5/t;

    invoke-interface {v5, v6}, LV4/i;->h(LV4/h;)LV4/g;

    move-result-object v5

    check-cast v5, Lm5/Q;

    if-eqz v5, :cond_4

    invoke-interface {v5}, Lm5/Q;->a()Z

    move-result v6

    if-nez v6, :cond_4

    check-cast v5, Lm5/a0;

    invoke-virtual {v5}, Lm5/a0;->w()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lr5/h;->b(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V

    invoke-static {p1}, LE5/l;->q(Ljava/lang/Throwable;)LS4/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lr5/h;->resumeWith(Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_4
    iget-object v3, p0, Lr5/h;->v:Ljava/lang/Object;

    invoke-interface {v1}, LV4/d;->getContext()LV4/i;

    move-result-object v5

    invoke-static {v5, v3}, Lr5/a;->l(LV4/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v6, Lr5/a;->f:LE1/a;

    if-eq v3, v6, :cond_5

    invoke-static {v1, v5, v3}, Lm5/w;->l(LV4/d;LV4/i;Ljava/lang/Object;)Lm5/k0;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_5
    move-object v6, v2

    :goto_1
    :try_start_1
    invoke-interface {v1, p1}, LV4/d;->resumeWith(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v6, :cond_6

    :try_start_2
    invoke-virtual {v6}, Lm5/k0;->T()Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    invoke-static {v5, v3}, Lr5/a;->f(LV4/i;Ljava/lang/Object;)V

    :cond_7
    :goto_2
    invoke-virtual {v0}, Lm5/I;->D()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_7

    :goto_3
    invoke-virtual {v0, v4}, Lm5/I;->z(Z)V

    goto :goto_5

    :catchall_1
    move-exception p1

    if-eqz v6, :cond_8

    :try_start_3
    invoke-virtual {v6}, Lm5/k0;->T()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    invoke-static {v5, v3}, Lr5/a;->f(LV4/i;Ljava/lang/Object;)V

    :cond_9
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    :try_start_4
    invoke-virtual {p0, p1, v2}, Lm5/B;->f(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :goto_5
    return-void

    :catchall_2
    move-exception p0

    invoke-virtual {v0, v4}, Lm5/I;->z(Z)V

    throw p0

    :cond_a
    invoke-interface {p0, p1}, LV4/d;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic h(LV4/d;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lr5/a;->g(LV4/d;Ljava/lang/Object;)V

    return-void
.end method

.method public static final i(JJJLjava/lang/String;)J
    .locals 23

    move-wide/from16 v0, p2

    move-wide/from16 v2, p4

    move-object/from16 v4, p6

    sget v5, Lr5/v;->a:I

    :try_start_0
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v6, 0x0

    :goto_0
    if-nez v6, :cond_0

    return-wide p0

    :cond_0
    const/16 v7, 0xa

    invoke-static {v7}, LE2/g;->c(I)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_2

    :cond_1
    :goto_1
    move-object/from16 v19, v6

    goto/16 :goto_4

    :cond_2
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x30

    invoke-static {v10, v11}, Le5/g;->h(II)I

    move-result v11

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    if-gez v11, :cond_6

    const/4 v11, 0x1

    if-ne v8, v11, :cond_3

    goto :goto_1

    :cond_3
    const/16 v14, 0x2b

    if-eq v10, v14, :cond_5

    const/16 v9, 0x2d

    if-eq v10, v9, :cond_4

    goto :goto_1

    :cond_4
    const-wide/high16 v12, -0x8000000000000000L

    move v9, v11

    goto :goto_2

    :cond_5
    move/from16 v22, v11

    move v11, v9

    move/from16 v9, v22

    goto :goto_2

    :cond_6
    move v11, v9

    :goto_2
    const-wide/16 v16, 0x0

    move-wide/from16 v14, v16

    const-wide p0, -0x38e38e38e38e38eL    # -2.772000429909333E291

    const-wide v16, -0x38e38e38e38e38eL    # -2.772000429909333E291

    :goto_3
    if-ge v9, v8, :cond_b

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10, v7}, Ljava/lang/Character;->digit(II)I

    move-result v10

    if-gez v10, :cond_7

    goto :goto_1

    :cond_7
    cmp-long v18, v14, v16

    if-gez v18, :cond_8

    cmp-long v16, v16, p0

    if-nez v16, :cond_1

    move-object/from16 v19, v6

    int-to-long v5, v7

    div-long v16, v12, v5

    cmp-long v5, v14, v16

    if-gez v5, :cond_9

    goto :goto_4

    :cond_8
    move-object/from16 v19, v6

    :cond_9
    int-to-long v5, v7

    mul-long/2addr v14, v5

    int-to-long v5, v10

    add-long v20, v12, v5

    cmp-long v10, v14, v20

    if-gez v10, :cond_a

    :goto_4
    const/4 v5, 0x0

    goto :goto_5

    :cond_a
    sub-long/2addr v14, v5

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v6, v19

    goto :goto_3

    :cond_b
    move-object/from16 v19, v6

    if-eqz v11, :cond_c

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_5

    :cond_c
    neg-long v5, v14

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    :goto_5
    const/16 v6, 0x27

    const-string v7, "System property \'"

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v5, v0, v8

    if-gtz v5, :cond_d

    cmp-long v5, v8, v2

    if-gtz v5, :cond_d

    return-wide v8

    :cond_d
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' should be in range "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ".."

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", but is \'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' has unrecognized value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v19

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static j(Ljava/lang/String;II)I
    .locals 7

    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_0

    const p2, 0x7fffffff

    goto :goto_0

    :cond_0
    const p2, 0x1ffffe

    :goto_0
    int-to-long v0, p1

    const/4 p1, 0x1

    int-to-long v2, p1

    int-to-long v4, p2

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lr5/a;->i(JJJLjava/lang/String;)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public static final k(LV4/i;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lr5/w;->q:Lr5/w;

    invoke-interface {p0, v0, v1}, LV4/i;->f(Ljava/lang/Object;Ld5/p;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Le5/g;->c(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final l(LV4/i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    invoke-static {p0}, Lr5/a;->k(LV4/i;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    sget-object p0, Lr5/a;->f:LE1/a;

    return-object p0

    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    new-instance v0, Lr5/y;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {v0, p1, p0}, Lr5/y;-><init>(ILV4/i;)V

    sget-object p1, Lr5/w;->s:Lr5/w;

    invoke-interface {p0, v0, p1}, LV4/i;->f(Ljava/lang/Object;Ld5/p;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p1}, LB/f;->w(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method
