.class public Lu5/h;
.super Ljava/lang/Object;


# static fields
.field public static final b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile _availablePermits:I

.field public final a:LT/F;

.field private volatile deqIdx:J

.field private volatile enqIdx:J

.field private volatile head:Ljava/lang/Object;

.field private volatile tail:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "head"

    const-class v1, Lu5/h;

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lu5/h;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "deqIdx"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lu5/h;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "tail"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lu5/h;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "enqIdx"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lu5/h;->e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "_availablePermits"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lu5/h;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    new-instance v1, Lu5/j;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    invoke-direct {v1, v4, v5, v2, v3}, Lu5/j;-><init>(JLu5/j;I)V

    iput-object v1, p0, Lu5/h;->head:Ljava/lang/Object;

    iput-object v1, p0, Lu5/h;->tail:Ljava/lang/Object;

    sub-int/2addr v0, p1

    iput v0, p0, Lu5/h;->_availablePermits:I

    new-instance p1, LT/F;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p0}, LT/F;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lu5/h;->a:LT/F;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The number of acquired permits should be in 0..1"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Lu5/c;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lu5/c;->b:Lm5/f;

    iget-object v3, v1, Lu5/c;->q:Lu5/d;

    :cond_0
    :goto_0
    sget-object v4, Lu5/h;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndDecrement(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_0

    sget-object v5, LS4/i;->a:LS4/i;

    const/4 v6, 0x0

    if-lez v4, :cond_1

    sget-object v4, Lu5/d;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, v3, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Lu5/b;

    const/4 v6, 0x0

    invoke-direct {v4, v3, v1, v6}, Lu5/b;-><init>(Lu5/d;Lu5/c;I)V

    invoke-virtual {v2, v5, v4}, Lm5/f;->z(Ljava/lang/Object;Ld5/l;)V

    return-void

    :cond_1
    sget-object v4, Lu5/h;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lu5/j;

    sget-object v8, Lu5/h;->e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v8, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v8

    sget-object v10, Lu5/f;->x:Lu5/f;

    sget v11, Lu5/i;->f:I

    int-to-long v11, v11

    div-long v11, v8, v11

    :goto_1
    invoke-static {v7, v11, v12, v10}, Lr5/a;->a(Lr5/t;JLd5/p;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lr5/a;->d(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    invoke-static {v13}, Lr5/a;->b(Ljava/lang/Object;)Lr5/t;

    move-result-object v14

    :goto_2
    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lr5/t;

    move-object/from16 v16, v7

    iget-wide v6, v15, Lr5/t;->r:J

    move-wide/from16 v17, v6

    iget-wide v6, v14, Lr5/t;->r:J

    cmp-long v6, v17, v6

    if-ltz v6, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v14}, Lr5/t;->i()Z

    move-result v6

    if-nez v6, :cond_3

    move-object/from16 v7, v16

    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v4, v0, v15, v14}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v15}, Lr5/t;->e()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v15}, Lr5/d;->d()V

    goto :goto_3

    :cond_4
    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eq v6, v15, :cond_3

    invoke-virtual {v14}, Lr5/t;->e()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v14}, Lr5/d;->d()V

    :cond_5
    move-object/from16 v7, v16

    const/4 v6, 0x0

    goto :goto_2

    :cond_6
    :goto_3
    invoke-static {v13}, Lr5/a;->b(Ljava/lang/Object;)Lr5/t;

    move-result-object v4

    check-cast v4, Lu5/j;

    iget-object v6, v4, Lu5/j;->t:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    sget v7, Lu5/i;->f:I

    int-to-long v10, v7

    rem-long/2addr v8, v10

    long-to-int v7, v8

    :cond_7
    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v1, v4, v7}, Lm5/m0;->a(Lr5/t;I)V

    return-void

    :cond_8
    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_7

    sget-object v8, Lu5/i;->b:LE1/a;

    sget-object v9, Lu5/i;->c:LE1/a;

    :cond_9
    invoke-virtual {v6, v7, v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    sget-object v4, Lu5/d;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v10, 0x0

    invoke-virtual {v4, v3, v10}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Lu5/b;

    const/4 v6, 0x0

    invoke-direct {v4, v3, v1, v6}, Lu5/b;-><init>(Lu5/d;Lu5/c;I)V

    invoke-virtual {v2, v5, v4}, Lm5/f;->z(Ljava/lang/Object;Ld5/l;)V

    return-void

    :cond_a
    const/4 v10, 0x0

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v8, :cond_9

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 15

    :cond_0
    sget-object v0, Lu5/h;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndIncrement(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_10

    if-ltz v1, :cond_1

    goto/16 :goto_7

    :cond_1
    sget-object v0, Lu5/h;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu5/j;

    sget-object v3, Lu5/h;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v3

    sget v5, Lu5/i;->f:I

    int-to-long v5, v5

    div-long v5, v3, v5

    sget-object v7, Lu5/g;->x:Lu5/g;

    :goto_0
    invoke-static {v1, v5, v6, v7}, Lr5/a;->a(Lr5/t;JLd5/p;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lr5/a;->d(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-static {v8}, Lr5/a;->b(Ljava/lang/Object;)Lr5/t;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lr5/t;

    iget-wide v11, v10, Lr5/t;->r:J

    iget-wide v13, v9, Lr5/t;->r:J

    cmp-long v11, v11, v13

    if-ltz v11, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v9}, Lr5/t;->i()Z

    move-result v11

    if-nez v11, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v0, p0, v10, v9}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v10}, Lr5/t;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v10}, Lr5/d;->d()V

    goto :goto_2

    :cond_5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eq v11, v10, :cond_4

    invoke-virtual {v9}, Lr5/t;->e()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v9}, Lr5/d;->d()V

    goto :goto_1

    :cond_6
    :goto_2
    invoke-static {v8}, Lr5/a;->b(Ljava/lang/Object;)Lr5/t;

    move-result-object v0

    check-cast v0, Lu5/j;

    iget-object v1, v0, Lu5/j;->t:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Lr5/d;->a()V

    iget-wide v7, v0, Lr5/t;->r:J

    cmp-long v0, v7, v5

    const/4 v5, 0x0

    if-lez v0, :cond_8

    :cond_7
    :goto_3
    move v2, v5

    goto :goto_6

    :cond_8
    sget v0, Lu5/i;->f:I

    int-to-long v6, v0

    rem-long/2addr v3, v6

    long-to-int v0, v3

    sget-object v3, Lu5/i;->b:LE1/a;

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_d

    sget v3, Lu5/i;->a:I

    move v4, v5

    :goto_4
    if-ge v4, v3, :cond_a

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lu5/i;->c:LE1/a;

    if-ne v6, v7, :cond_9

    goto :goto_6

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_a
    sget-object v4, Lu5/i;->b:LE1/a;

    sget-object v6, Lu5/i;->d:LE1/a;

    :cond_b
    invoke-virtual {v1, v0, v4, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    move v5, v2

    goto :goto_5

    :cond_c
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v4, :cond_b

    :goto_5
    xor-int/2addr v2, v5

    goto :goto_6

    :cond_d
    sget-object v0, Lu5/i;->e:LE1/a;

    if-ne v3, v0, :cond_e

    goto :goto_3

    :cond_e
    instance-of v0, v3, Lm5/e;

    if-eqz v0, :cond_f

    check-cast v3, Lm5/e;

    sget-object v0, LS4/i;->a:LS4/i;

    iget-object v1, p0, Lu5/h;->a:LT/F;

    invoke-interface {v3, v0, v1}, Lm5/e;->i(Ljava/lang/Object;Ld5/l;)LE1/a;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v3, v0}, Lm5/e;->j(Ljava/lang/Object;)V

    :goto_6
    if-eqz v2, :cond_0

    :goto_7
    return-void

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    :goto_8
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    if-le v1, v2, :cond_11

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_8

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The number of released permits cannot be greater than 1"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
