.class public Lo5/b;
.super Ljava/lang/Object;

# interfaces
.implements Lo5/f;


# static fields
.field public static final q:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final r:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final s:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final t:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final u:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final w:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final x:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final y:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _closeCause:Ljava/lang/Object;

.field public final b:I

.field private volatile bufferEnd:J

.field private volatile bufferEndSegment:Ljava/lang/Object;

.field private volatile closeHandler:Ljava/lang/Object;

.field private volatile completedExpandBuffersAndPauseFlag:J

.field private volatile receiveSegment:Ljava/lang/Object;

.field private volatile receivers:J

.field private volatile sendSegment:Ljava/lang/Object;

.field private volatile sendersAndCloseStatus:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "sendersAndCloseStatus"

    const-class v1, Lo5/b;

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lo5/b;->q:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "receivers"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lo5/b;->r:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "bufferEnd"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lo5/b;->s:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "completedExpandBuffersAndPauseFlag"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lo5/b;->t:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "sendSegment"

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lo5/b;->u:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "receiveSegment"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lo5/b;->v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "bufferEndSegment"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lo5/b;->w:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_closeCause"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lo5/b;->x:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "closeHandler"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lo5/b;->y:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lo5/b;->b:I

    if-ltz p1, :cond_3

    sget-object v0, Lo5/d;->a:Lo5/j;

    if-eqz p1, :cond_1

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_0

    int-to-long v0, p1

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Lo5/b;->bufferEnd:J

    sget-object p1, Lo5/b;->s:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    iput-wide v0, p0, Lo5/b;->completedExpandBuffersAndPauseFlag:J

    new-instance v2, Lo5/j;

    const/4 v5, 0x0

    const/4 v7, 0x3

    const-wide/16 v3, 0x0

    move-object v6, p0

    invoke-direct/range {v2 .. v7}, Lo5/j;-><init>(JLo5/j;Lo5/b;I)V

    iput-object v2, v6, Lo5/b;->sendSegment:Ljava/lang/Object;

    iput-object v2, v6, Lo5/b;->receiveSegment:Ljava/lang/Object;

    invoke-virtual {p0}, Lo5/b;->u()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object v2, Lo5/d;->a:Lo5/j;

    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.channels.ChannelSegment<E of kotlinx.coroutines.channels.BufferedChannel>"

    invoke-static {v2, p1}, Le5/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    iput-object v2, v6, Lo5/b;->bufferEndSegment:Ljava/lang/Object;

    sget-object p1, Lo5/d;->s:LE1/a;

    iput-object p1, v6, Lo5/b;->_closeCause:Ljava/lang/Object;

    return-void

    :cond_3
    move-object v6, p0

    const-string v0, "Invalid channel capacity: "

    const-string v1, ", should be >=0"

    invoke-static {v0, p1, v1}, LB/f;->n(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final a(Lo5/b;JLo5/j;)Lo5/j;
    .locals 11

    sget-object v0, Lo5/d;->a:Lo5/j;

    sget-object v0, Lo5/c;->x:Lo5/c;

    :goto_0
    invoke-static {p3, p1, p2, v0}, Lr5/a;->a(Lr5/t;JLd5/p;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lr5/a;->d(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v1}, Lr5/a;->b(Ljava/lang/Object;)Lr5/t;

    move-result-object v2

    :cond_0
    :goto_1
    sget-object v3, Lo5/b;->u:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr5/t;

    iget-wide v5, v4, Lr5/t;->r:J

    iget-wide v7, v2, Lr5/t;->r:J

    cmp-long v5, v5, v7

    if-ltz v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Lr5/t;->i()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v3, p0, v4, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lr5/t;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v4}, Lr5/d;->d()V

    goto :goto_2

    :cond_3
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v4, :cond_2

    invoke-virtual {v2}, Lr5/t;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lr5/d;->d()V

    goto :goto_1

    :cond_4
    :goto_2
    invoke-static {v1}, Lr5/a;->d(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    sget-object v3, Lo5/b;->r:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lo5/b;->j()V

    iget-wide p1, p3, Lr5/t;->r:J

    sget v0, Lo5/d;->b:I

    int-to-long v0, v0

    mul-long/2addr p1, v0

    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    cmp-long p0, p1, v0

    if-gez p0, :cond_7

    invoke-virtual {p3}, Lr5/d;->a()V

    return-object v2

    :cond_5
    invoke-static {v1}, Lr5/a;->b(Ljava/lang/Object;)Lr5/t;

    move-result-object p3

    check-cast p3, Lo5/j;

    iget-wide v0, p3, Lr5/t;->r:J

    cmp-long p1, v0, p1

    if-lez p1, :cond_9

    sget p1, Lo5/d;->b:I

    int-to-long p1, p1

    mul-long/2addr p1, v0

    :goto_3
    sget-object v4, Lo5/b;->q:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v7

    const-wide v4, 0xfffffffffffffffL

    and-long/2addr v4, v7

    cmp-long v6, v4, p1

    if-ltz v6, :cond_6

    move-object v6, p0

    goto :goto_4

    :cond_6
    const/16 v6, 0x3c

    shr-long v9, v7, v6

    long-to-int v9, v9

    int-to-long v9, v9

    shl-long/2addr v9, v6

    add-long/2addr v9, v4

    sget-object v5, Lo5/b;->q:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v6, p0

    invoke-virtual/range {v5 .. v10}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result p0

    if-eqz p0, :cond_8

    :goto_4
    sget p0, Lo5/d;->b:I

    int-to-long p0, p0

    mul-long/2addr v0, p0

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-gez p0, :cond_7

    invoke-virtual {p3}, Lr5/d;->a()V

    :cond_7
    return-object v2

    :cond_8
    move-object p0, v6

    goto :goto_3

    :cond_9
    return-object p3
.end method

.method public static final d(Lo5/b;Ljava/lang/Object;Lm5/f;)V
    .locals 0

    invoke-virtual {p0}, Lo5/b;->p()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, LE5/l;->q(Ljava/lang/Throwable;)LS4/e;

    move-result-object p0

    invoke-virtual {p2, p0}, Lm5/f;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public static final f(Lo5/b;Lo5/j;ILjava/lang/Object;JLjava/lang/Object;Z)I
    .locals 4

    invoke-virtual {p1, p2, p3}, Lo5/j;->m(ILjava/lang/Object;)V

    if-eqz p7, :cond_0

    invoke-virtual/range {p0 .. p7}, Lo5/b;->B(Lo5/j;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1, p2}, Lo5/j;->k(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0, p4, p5}, Lo5/b;->g(J)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lo5/d;->d:LE1/a;

    invoke-virtual {p1, v2, p2, v0}, Lo5/j;->j(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    :cond_1
    if-nez p6, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    invoke-virtual {p1, v2, p2, p6}, Lo5/j;->j(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p0, 0x2

    return p0

    :cond_3
    instance-of v3, v0, Lm5/m0;

    if-eqz v3, :cond_6

    invoke-virtual {p1, p2, v2}, Lo5/j;->m(ILjava/lang/Object;)V

    invoke-virtual {p0, v0, p3}, Lo5/b;->y(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lo5/d;->i:LE1/a;

    invoke-virtual {p1, p2, p0}, Lo5/j;->n(ILjava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    :cond_4
    sget-object p0, Lo5/d;->k:LE1/a;

    iget-object p3, p1, Lo5/j;->u:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    mul-int/lit8 p4, p2, 0x2

    add-int/2addr p4, v1

    invoke-virtual {p3, p4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eq p3, p0, :cond_5

    invoke-virtual {p1, p2, v1}, Lo5/j;->l(IZ)V

    :cond_5
    const/4 p0, 0x5

    return p0

    :cond_6
    invoke-virtual/range {p0 .. p7}, Lo5/b;->B(Lo5/j;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result p0

    return p0
.end method

.method public static r(Lo5/b;)V
    .locals 7

    sget-object v0, Lo5/b;->t:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    move-result-wide v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    and-long/2addr v1, v3

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-eqz v1, :cond_0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v1

    and-long/2addr v1, v3

    cmp-long v1, v1, v5

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static z(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p0, Lm5/e;

    if-eqz v0, :cond_1

    check-cast p0, Lm5/e;

    sget-object v0, Lo5/d;->a:Lo5/j;

    const/4 v0, 0x0

    sget-object v1, LS4/i;->a:LS4/i;

    invoke-interface {p0, v1, v0}, Lm5/e;->i(Ljava/lang/Object;Ld5/l;)LE1/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0, v0}, Lm5/e;->j(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected waiter: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final A(Lo5/j;IJLjava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p1, Lo5/j;->u:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {p1, p2}, Lo5/j;->k(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    const-wide v3, 0xfffffffffffffffL

    sget-object v5, Lo5/b;->q:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    if-nez v1, :cond_1

    invoke-virtual {v5, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v6

    and-long/2addr v6, v3

    cmp-long v6, p3, v6

    if-ltz v6, :cond_2

    if-nez p5, :cond_0

    sget-object p1, Lo5/d;->n:LE1/a;

    return-object p1

    :cond_0
    invoke-virtual {p1, v1, p2, p5}, Lo5/j;->j(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lo5/b;->l()V

    sget-object p1, Lo5/d;->m:LE1/a;

    return-object p1

    :cond_1
    sget-object v6, Lo5/d;->d:LE1/a;

    if-ne v1, v6, :cond_2

    sget-object v6, Lo5/d;->i:LE1/a;

    invoke-virtual {p1, v1, p2, v6}, Lo5/j;->j(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lo5/b;->l()V

    mul-int/lit8 p3, p2, 0x2

    invoke-virtual {v0, p3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, v2}, Lo5/j;->m(ILjava/lang/Object;)V

    return-object p3

    :cond_2
    invoke-virtual {p1, p2}, Lo5/j;->k(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_b

    sget-object v6, Lo5/d;->e:LE1/a;

    if-ne v1, v6, :cond_3

    goto :goto_0

    :cond_3
    sget-object v6, Lo5/d;->d:LE1/a;

    if-ne v1, v6, :cond_4

    sget-object v6, Lo5/d;->i:LE1/a;

    invoke-virtual {p1, v1, p2, v6}, Lo5/j;->j(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lo5/b;->l()V

    mul-int/lit8 p3, p2, 0x2

    invoke-virtual {v0, p3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, v2}, Lo5/j;->m(ILjava/lang/Object;)V

    return-object p3

    :cond_4
    sget-object v6, Lo5/d;->j:LE1/a;

    if-ne v1, v6, :cond_5

    sget-object p1, Lo5/d;->o:LE1/a;

    return-object p1

    :cond_5
    sget-object v7, Lo5/d;->h:LE1/a;

    if-ne v1, v7, :cond_6

    sget-object p1, Lo5/d;->o:LE1/a;

    return-object p1

    :cond_6
    sget-object v7, Lo5/d;->l:LE1/a;

    if-ne v1, v7, :cond_7

    invoke-virtual {p0}, Lo5/b;->l()V

    sget-object p1, Lo5/d;->o:LE1/a;

    return-object p1

    :cond_7
    sget-object v7, Lo5/d;->g:LE1/a;

    if-eq v1, v7, :cond_2

    sget-object v7, Lo5/d;->f:LE1/a;

    invoke-virtual {p1, v1, p2, v7}, Lo5/j;->j(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    instance-of p3, v1, Lo5/q;

    if-eqz p3, :cond_8

    check-cast v1, Lo5/q;

    iget-object v1, v1, Lo5/q;->a:Lm5/m0;

    :cond_8
    invoke-static {v1}, Lo5/b;->z(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_9

    sget-object p3, Lo5/d;->i:LE1/a;

    invoke-virtual {p1, p2, p3}, Lo5/j;->n(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lo5/b;->l()V

    mul-int/lit8 p3, p2, 0x2

    invoke-virtual {v0, p3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, v2}, Lo5/j;->m(ILjava/lang/Object;)V

    return-object p3

    :cond_9
    invoke-virtual {p1, p2, v6}, Lo5/j;->n(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lr5/t;->h()V

    if-eqz p3, :cond_a

    invoke-virtual {p0}, Lo5/b;->l()V

    :cond_a
    sget-object p1, Lo5/d;->o:LE1/a;

    return-object p1

    :cond_b
    :goto_0
    invoke-virtual {v5, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v6

    and-long/2addr v6, v3

    cmp-long v6, p3, v6

    if-gez v6, :cond_c

    sget-object v6, Lo5/d;->h:LE1/a;

    invoke-virtual {p1, v1, p2, v6}, Lo5/j;->j(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lo5/b;->l()V

    sget-object p1, Lo5/d;->o:LE1/a;

    return-object p1

    :cond_c
    if-nez p5, :cond_d

    sget-object p1, Lo5/d;->n:LE1/a;

    return-object p1

    :cond_d
    invoke-virtual {p1, v1, p2, p5}, Lo5/j;->j(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lo5/b;->l()V

    sget-object p1, Lo5/d;->m:LE1/a;

    return-object p1
.end method

.method public final B(Lo5/j;ILjava/lang/Object;JLjava/lang/Object;Z)I
    .locals 5

    :cond_0
    invoke-virtual {p1, p2}, Lo5/j;->k(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_4

    invoke-virtual {p0, p4, p5}, Lo5/b;->g(J)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p7, :cond_1

    sget-object v0, Lo5/d;->d:LE1/a;

    invoke-virtual {p1, v3, p2, v0}, Lo5/j;->j(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_1
    if-eqz p7, :cond_2

    sget-object v0, Lo5/d;->j:LE1/a;

    invoke-virtual {p1, v3, p2, v0}, Lo5/j;->j(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lr5/t;->h()V

    return v1

    :cond_2
    if-nez p6, :cond_3

    const/4 p1, 0x3

    return p1

    :cond_3
    invoke-virtual {p1, v3, p2, p6}, Lo5/j;->j(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_4
    sget-object v4, Lo5/d;->e:LE1/a;

    if-ne v0, v4, :cond_5

    sget-object v1, Lo5/d;->d:LE1/a;

    invoke-virtual {p1, v0, p2, v1}, Lo5/j;->j(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v2

    :cond_5
    sget-object p4, Lo5/d;->k:LE1/a;

    const/4 p5, 0x5

    if-ne v0, p4, :cond_6

    invoke-virtual {p1, p2, v3}, Lo5/j;->m(ILjava/lang/Object;)V

    return p5

    :cond_6
    sget-object p6, Lo5/d;->h:LE1/a;

    if-ne v0, p6, :cond_7

    invoke-virtual {p1, p2, v3}, Lo5/j;->m(ILjava/lang/Object;)V

    return p5

    :cond_7
    sget-object p6, Lo5/d;->l:LE1/a;

    if-ne v0, p6, :cond_8

    invoke-virtual {p1, p2, v3}, Lo5/j;->m(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lo5/b;->j()V

    return v1

    :cond_8
    invoke-virtual {p1, p2, v3}, Lo5/j;->m(ILjava/lang/Object;)V

    instance-of p6, v0, Lo5/q;

    if-eqz p6, :cond_9

    check-cast v0, Lo5/q;

    iget-object v0, v0, Lo5/q;->a:Lm5/m0;

    :cond_9
    invoke-virtual {p0, v0, p3}, Lo5/b;->y(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a

    sget-object p3, Lo5/d;->i:LE1/a;

    invoke-virtual {p1, p2, p3}, Lo5/j;->n(ILjava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    :cond_a
    iget-object p3, p1, Lo5/j;->u:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    mul-int/lit8 p6, p2, 0x2

    add-int/2addr p6, v2

    invoke-virtual {p3, p6, p4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eq p3, p4, :cond_b

    invoke-virtual {p1, p2, v2}, Lo5/j;->l(IZ)V

    :cond_b
    return p5
.end method

.method public final C(J)V
    .locals 18

    move-object/from16 v1, p0

    invoke-virtual {v1}, Lo5/b;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    :cond_0
    :goto_0
    sget-object v6, Lo5/b;->s:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    cmp-long v0, v2, p1

    if-lez v0, :cond_8

    sget v0, Lo5/d;->c:I

    const/4 v7, 0x0

    move v2, v7

    :goto_1
    sget-object v3, Lo5/b;->t:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide v8, 0x3fffffffffffffffL    # 1.9999999999999998

    if-ge v2, v0, :cond_2

    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v4

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v10

    and-long/2addr v8, v10

    cmp-long v3, v4, v8

    if-nez v3, :cond_1

    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v8

    cmp-long v3, v4, v8

    if-nez v3, :cond_1

    goto :goto_6

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v3

    :goto_2
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    and-long v4, v2, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    add-long/2addr v4, v10

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v2

    if-eqz v2, :cond_7

    :goto_3
    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    move-wide v4, v2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    and-long v12, v2, v8

    and-long v14, v2, v10

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_3

    const/4 v14, 0x1

    goto :goto_4

    :cond_3
    move v14, v7

    :goto_4
    cmp-long v15, v4, v12

    if-nez v15, :cond_5

    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v15

    cmp-long v4, v4, v15

    if-nez v4, :cond_5

    :goto_5
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    and-long v4, v2, v8

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_6
    return-void

    :cond_4
    move-object/from16 v1, p0

    goto :goto_5

    :cond_5
    if-nez v14, :cond_6

    add-long v4, v10, v12

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    goto :goto_3

    :cond_6
    move-object/from16 v1, p0

    goto :goto_3

    :cond_7
    move-object/from16 v1, p0

    goto :goto_2

    :cond_8
    move-object/from16 v1, p0

    goto/16 :goto_0
.end method

.method public final b(Ljava/util/concurrent/CancellationException;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/concurrent/CancellationException;

    const-string v0, "Channel was cancelled"

    invoke-direct {p1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lo5/b;->h(Ljava/lang/Throwable;Z)Z

    return-void
.end method

.method public c(LV4/d;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v1, p0

    sget-object v0, Lo5/b;->u:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo5/j;

    :cond_0
    :goto_0
    sget-object v9, Lo5/b;->q:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v9, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v3

    const-wide v10, 0xfffffffffffffffL

    and-long v5, v3, v10

    const/4 v12, 0x0

    invoke-virtual {v1, v3, v4, v12}, Lo5/b;->s(JZ)Z

    move-result v8

    sget v13, Lo5/d;->b:I

    int-to-long v3, v13

    div-long v14, v5, v3

    rem-long v3, v5, v3

    long-to-int v3, v3

    move-wide/from16 v16, v10

    iget-wide v10, v2, Lr5/t;->r:J

    cmp-long v4, v10, v14

    sget-object v10, LW4/a;->b:LW4/a;

    sget-object v11, LS4/i;->a:LS4/i;

    if-eqz v4, :cond_3

    invoke-static {v1, v14, v15, v2}, Lo5/b;->a(Lo5/b;JLo5/j;)Lo5/j;

    move-result-object v4

    if-nez v4, :cond_2

    if-eqz v8, :cond_0

    invoke-virtual/range {p0 .. p2}, Lo5/b;->w(LV4/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_1

    return-object v0

    :cond_1
    move-object v4, v1

    goto/16 :goto_9

    :cond_2
    move-object v2, v4

    :cond_3
    const/4 v7, 0x0

    move-object/from16 v4, p2

    invoke-static/range {v1 .. v8}, Lo5/b;->f(Lo5/b;Lo5/j;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v7

    if-eqz v7, :cond_1b

    const/4 v14, 0x1

    if-eq v7, v14, :cond_1

    const/4 v15, 0x2

    if-eq v7, v15, :cond_19

    sget-object v4, Lo5/b;->r:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const/4 v8, 0x5

    const/4 v12, 0x4

    const/4 v15, 0x3

    if-eq v7, v15, :cond_7

    if-eq v7, v12, :cond_5

    if-eq v7, v8, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Lr5/d;->a()V

    goto :goto_0

    :cond_5
    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v3

    cmp-long v0, v5, v3

    if-gez v0, :cond_6

    invoke-virtual {v2}, Lr5/d;->a()V

    :cond_6
    invoke-virtual/range {p0 .. p2}, Lo5/b;->w(LV4/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_1

    return-object v0

    :cond_7
    invoke-static/range {p1 .. p1}, LE5/d;->v(LV4/d;)LV4/d;

    move-result-object v7

    invoke-static {v7}, Lm5/w;->d(LV4/d;)Lm5/f;

    move-result-object v7

    move/from16 v18, v8

    const/4 v8, 0x0

    move-object/from16 v19, v4

    move/from16 v15, v18

    move-object/from16 v4, p2

    :try_start_0
    invoke-static/range {v1 .. v8}, Lo5/b;->f(Lo5/b;Lo5/j;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_17

    if-eq v8, v14, :cond_16

    const/4 v14, 0x2

    if-eq v8, v14, :cond_15

    if-eq v8, v12, :cond_14

    const-string v13, "unexpected"

    if-ne v8, v15, :cond_13

    :try_start_1
    invoke-virtual {v2}, Lr5/d;->a()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo5/j;

    :goto_1
    invoke-virtual {v9, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v2

    and-long v5, v2, v16

    const/4 v14, 0x0

    invoke-virtual {v1, v2, v3, v14}, Lo5/b;->s(JZ)Z

    move-result v8

    sget v2, Lo5/d;->b:I

    int-to-long v14, v2

    move-object/from16 v20, v13

    div-long v12, v5, v14

    rem-long v14, v5, v14

    long-to-int v3, v14

    iget-wide v14, v0, Lr5/t;->r:J

    cmp-long v14, v14, v12

    if-eqz v14, :cond_a

    invoke-static {v1, v12, v13, v0}, Lo5/b;->a(Lo5/b;JLo5/j;)Lo5/j;

    move-result-object v12

    if-nez v12, :cond_9

    if-eqz v8, :cond_8

    invoke-static {v1, v4, v7}, Lo5/b;->d(Lo5/b;Ljava/lang/Object;Lm5/f;)V

    move-object v4, v1

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    move-object v4, v1

    goto/16 :goto_8

    :cond_8
    move-object/from16 v13, v20

    const/4 v12, 0x4

    const/4 v15, 0x5

    goto :goto_1

    :cond_9
    move v0, v2

    move-object v2, v12

    goto :goto_2

    :cond_a
    move/from16 v21, v2

    move-object v2, v0

    move/from16 v0, v21

    :goto_2
    invoke-static/range {v1 .. v8}, Lo5/b;->f(Lo5/b;Lo5/j;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v21, v4

    move-object v4, v1

    move-object v1, v2

    move v2, v3

    move-object/from16 v3, v21

    if-eqz v12, :cond_12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_11

    const/4 v14, 0x2

    if-eq v12, v14, :cond_f

    const/4 v15, 0x3

    if-eq v12, v15, :cond_e

    const/4 v0, 0x4

    if-eq v12, v0, :cond_c

    const/4 v2, 0x5

    if-eq v12, v2, :cond_b

    goto :goto_3

    :cond_b
    :try_start_2
    invoke-virtual {v1}, Lr5/d;->a()V

    :goto_3
    move v12, v0

    move-object v0, v1

    move v15, v2

    move-object v1, v4

    move-object/from16 v13, v20

    move-object v4, v3

    goto :goto_1

    :catchall_1
    move-exception v0

    goto/16 :goto_8

    :cond_c
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v8

    cmp-long v0, v5, v8

    if-gez v0, :cond_d

    invoke-virtual {v1}, Lr5/d;->a()V

    :cond_d
    :goto_4
    invoke-static {v4, v3, v7}, Lo5/b;->d(Lo5/b;Ljava/lang/Object;Lm5/f;)V

    goto :goto_6

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    if-eqz v8, :cond_10

    invoke-virtual {v1}, Lr5/t;->h()V

    goto :goto_4

    :cond_10
    add-int v3, v2, v0

    invoke-virtual {v7, v1, v3}, Lm5/f;->a(Lr5/t;I)V

    goto :goto_6

    :cond_11
    :goto_5
    invoke-virtual {v7, v11}, Lm5/f;->resumeWith(Ljava/lang/Object;)V

    goto :goto_6

    :cond_12
    invoke-virtual {v1}, Lr5/d;->a()V

    goto :goto_5

    :cond_13
    move-object v4, v1

    move-object v1, v13

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    move-object v3, v4

    move-object/from16 v0, v19

    move-object v4, v1

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    cmp-long v0, v5, v0

    if-gez v0, :cond_d

    invoke-virtual {v2}, Lr5/d;->a()V

    goto :goto_4

    :cond_15
    move-object v4, v1

    add-int/2addr v3, v13

    invoke-virtual {v7, v2, v3}, Lm5/f;->a(Lr5/t;I)V

    goto :goto_6

    :cond_16
    move-object v4, v1

    invoke-virtual {v7, v11}, Lm5/f;->resumeWith(Ljava/lang/Object;)V

    goto :goto_6

    :cond_17
    move-object v4, v1

    invoke-virtual {v2}, Lr5/d;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :goto_6
    invoke-virtual {v7}, Lm5/f;->q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_18

    goto :goto_7

    :cond_18
    move-object v0, v11

    :goto_7
    if-ne v0, v10, :cond_1a

    return-object v0

    :goto_8
    invoke-virtual {v7}, Lm5/f;->y()V

    throw v0

    :cond_19
    move-object/from16 v3, p2

    move-object v4, v1

    if-eqz v8, :cond_1a

    invoke-virtual {v2}, Lr5/t;->h()V

    invoke-virtual/range {p0 .. p2}, Lo5/b;->w(LV4/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_1a

    return-object v0

    :cond_1a
    :goto_9
    return-object v11

    :cond_1b
    move-object v4, v1

    invoke-virtual {v2}, Lr5/d;->a()V

    return-object v11
.end method

.method public e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15

    sget-object v8, Lo5/b;->q:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v8, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v1

    const/4 v9, 0x0

    invoke-virtual {p0, v1, v2, v9}, Lo5/b;->s(JZ)Z

    move-result v3

    const/4 v10, 0x1

    const-wide v11, 0xfffffffffffffffL

    if-eqz v3, :cond_0

    move v1, v9

    goto :goto_0

    :cond_0
    and-long/2addr v1, v11

    invoke-virtual {p0, v1, v2}, Lo5/b;->g(J)Z

    move-result v1

    xor-int/2addr v1, v10

    :goto_0
    sget-object v13, Lo5/i;->a:Lo5/h;

    if-eqz v1, :cond_1

    return-object v13

    :cond_1
    sget-object v6, Lo5/d;->j:LE1/a;

    sget-object v1, Lo5/b;->u:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo5/j;

    :goto_1
    invoke-virtual {v8, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v2

    and-long v4, v2, v11

    invoke-virtual {p0, v2, v3, v9}, Lo5/b;->s(JZ)Z

    move-result v7

    sget v14, Lo5/d;->b:I

    int-to-long v2, v14

    div-long v11, v4, v2

    rem-long v2, v4, v2

    long-to-int v2, v2

    iget-wide v9, v1, Lr5/t;->r:J

    cmp-long v3, v9, v11

    if-eqz v3, :cond_4

    invoke-static {p0, v11, v12, v1}, Lo5/b;->a(Lo5/b;JLo5/j;)Lo5/j;

    move-result-object v3

    if-nez v3, :cond_3

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lo5/b;->p()Ljava/lang/Throwable;

    move-result-object v1

    new-instance v2, Lo5/g;

    invoke-direct {v2, v1}, Lo5/g;-><init>(Ljava/lang/Throwable;)V

    return-object v2

    :cond_2
    const/4 v9, 0x0

    const/4 v10, 0x1

    :goto_2
    const-wide v11, 0xfffffffffffffffL

    goto :goto_1

    :cond_3
    move-object v1, v3

    :cond_4
    move-object v0, p0

    move-object/from16 v3, p1

    invoke-static/range {v0 .. v7}, Lo5/b;->f(Lo5/b;Lo5/j;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v9

    sget-object v3, LS4/i;->a:LS4/i;

    if-eqz v9, :cond_e

    const/4 v10, 0x1

    if-eq v9, v10, :cond_d

    const/4 v3, 0x2

    if-eq v9, v3, :cond_9

    const/4 v2, 0x3

    if-eq v9, v2, :cond_8

    const/4 v2, 0x4

    if-eq v9, v2, :cond_6

    const/4 v2, 0x5

    if-eq v9, v2, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Lr5/d;->a()V

    :goto_3
    const/4 v9, 0x0

    goto :goto_2

    :cond_6
    sget-object v2, Lo5/b;->r:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-gez v2, :cond_7

    invoke-virtual {v1}, Lr5/d;->a()V

    :cond_7
    invoke-virtual {p0}, Lo5/b;->p()Ljava/lang/Throwable;

    move-result-object v1

    new-instance v2, Lo5/g;

    invoke-direct {v2, v1}, Lo5/g;-><init>(Ljava/lang/Throwable;)V

    return-object v2

    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "unexpected"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    if-eqz v7, :cond_a

    invoke-virtual {v1}, Lr5/t;->h()V

    invoke-virtual {p0}, Lo5/b;->p()Ljava/lang/Throwable;

    move-result-object v1

    new-instance v2, Lo5/g;

    invoke-direct {v2, v1}, Lo5/g;-><init>(Ljava/lang/Throwable;)V

    return-object v2

    :cond_a
    instance-of v3, v6, Lm5/m0;

    if-eqz v3, :cond_b

    check-cast v6, Lm5/m0;

    goto :goto_4

    :cond_b
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_c

    add-int/2addr v2, v14

    invoke-interface {v6, v1, v2}, Lm5/m0;->a(Lr5/t;I)V

    :cond_c
    invoke-virtual {v1}, Lr5/t;->h()V

    return-object v13

    :cond_d
    return-object v3

    :cond_e
    invoke-virtual {v1}, Lr5/d;->a()V

    return-object v3
.end method

.method public final g(J)Z
    .locals 4

    sget-object v0, Lo5/b;->s:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    sget-object v0, Lo5/b;->r:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    iget v2, p0, Lo5/b;->b:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    cmp-long p1, p1, v0

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final h(Ljava/lang/Throwable;Z)Z
    .locals 12

    const/16 v0, 0x3c

    const-wide v1, 0xfffffffffffffffL

    sget-object v3, Lo5/b;->q:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const/4 v9, 0x1

    if-eqz p2, :cond_1

    :cond_0
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v5

    shr-long v7, v5, v0

    long-to-int v4, v7

    if-nez v4, :cond_1

    and-long v7, v5, v1

    sget-object v4, Lo5/d;->a:Lo5/j;

    int-to-long v10, v9

    shl-long/2addr v10, v0

    add-long/2addr v7, v10

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_1
    move-object v4, p0

    :goto_0
    sget-object v5, Lo5/d;->s:LE1/a;

    :cond_2
    sget-object v6, Lo5/b;->x:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v6, p0, v5, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v10, v9

    goto :goto_1

    :cond_3
    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eq v6, v5, :cond_2

    const/4 p1, 0x0

    move v10, p1

    :goto_1
    const/4 v11, 0x3

    if-eqz p2, :cond_5

    :cond_4
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v5

    and-long p1, v5, v1

    int-to-long v7, v11

    shl-long/2addr v7, v0

    add-long/2addr v7, p1

    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_5
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v5

    shr-long p1, v5, v0

    long-to-int p1, p1

    if-eqz p1, :cond_7

    if-eq p1, v9, :cond_6

    goto :goto_4

    :cond_6
    and-long p1, v5, v1

    int-to-long v7, v11

    :goto_2
    shl-long/2addr v7, v0

    add-long/2addr v7, p1

    goto :goto_3

    :cond_7
    and-long p1, v5, v1

    const/4 v7, 0x2

    int-to-long v7, v7

    goto :goto_2

    :goto_3
    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result p1

    if-eqz p1, :cond_5

    :goto_4
    invoke-virtual {p0}, Lo5/b;->j()V

    if-eqz v10, :cond_c

    :goto_5
    sget-object p1, Lo5/b;->y:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_8

    sget-object v0, Lo5/d;->q:LE1/a;

    goto :goto_6

    :cond_8
    sget-object v0, Lo5/d;->r:LE1/a;

    :cond_9
    :goto_6
    invoke-virtual {p1, p0, p2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    if-nez p2, :cond_a

    goto :goto_7

    :cond_a
    invoke-static {v9, p2}, Le5/p;->a(ILjava/lang/Object;)V

    check-cast p2, Ld5/l;

    invoke-virtual {p0}, Lo5/b;->n()Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Ld5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return v10

    :cond_b
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p2, :cond_9

    goto :goto_5

    :cond_c
    :goto_7
    return v10
.end method

.method public final i(J)Lo5/j;
    .locals 12

    sget-object v0, Lo5/b;->w:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lo5/b;->u:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo5/j;

    iget-wide v2, v1, Lr5/t;->r:J

    move-object v4, v0

    check-cast v4, Lo5/j;

    iget-wide v4, v4, Lr5/t;->r:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move-object v0, v1

    :cond_0
    sget-object v1, Lo5/b;->v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo5/j;

    iget-wide v2, v1, Lr5/t;->r:J

    move-object v4, v0

    check-cast v4, Lo5/j;

    iget-wide v4, v4, Lr5/t;->r:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    move-object v0, v1

    :cond_1
    check-cast v0, Lr5/d;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lr5/d;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lr5/a;->b:LE1/a;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    goto :goto_1

    :cond_2
    check-cast v2, Lr5/d;

    if-nez v2, :cond_15

    :cond_3
    invoke-virtual {v1, v0, v4, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    :goto_1
    check-cast v0, Lo5/j;

    invoke-virtual {p0}, Lo5/b;->t()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eqz v1, :cond_a

    move-object v1, v0

    :cond_4
    sget v5, Lo5/d;->b:I

    sub-int/2addr v5, v2

    :goto_2
    const-wide/16 v6, -0x1

    if-ge v3, v5, :cond_9

    iget-wide v8, v1, Lr5/t;->r:J

    sget v10, Lo5/d;->b:I

    int-to-long v10, v10

    mul-long/2addr v8, v10

    int-to-long v10, v5

    add-long/2addr v8, v10

    sget-object v10, Lo5/b;->r:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v10, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v10

    cmp-long v10, v8, v10

    if-gez v10, :cond_5

    :goto_3
    move-wide v8, v6

    goto :goto_5

    :cond_5
    invoke-virtual {v1, v5}, Lo5/j;->k(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_7

    sget-object v11, Lo5/d;->e:LE1/a;

    if-ne v10, v11, :cond_6

    goto :goto_4

    :cond_6
    sget-object v11, Lo5/d;->d:LE1/a;

    if-ne v10, v11, :cond_8

    goto :goto_5

    :cond_7
    :goto_4
    sget-object v11, Lo5/d;->l:LE1/a;

    invoke-virtual {v1, v10, v5, v11}, Lo5/j;->j(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v1}, Lr5/t;->h()V

    :cond_8
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_9
    sget-object v5, Lr5/d;->q:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr5/d;

    check-cast v1, Lo5/j;

    if-nez v1, :cond_4

    goto :goto_3

    :goto_5
    cmp-long v1, v8, v6

    if-eqz v1, :cond_a

    invoke-virtual {p0, v8, v9}, Lo5/b;->k(J)V

    :cond_a
    move-object v1, v0

    :goto_6
    if-eqz v1, :cond_11

    sget v5, Lo5/d;->b:I

    sub-int/2addr v5, v2

    :goto_7
    if-ge v3, v5, :cond_10

    iget-wide v6, v1, Lr5/t;->r:J

    sget v8, Lo5/d;->b:I

    int-to-long v8, v8

    mul-long/2addr v6, v8

    int-to-long v8, v5

    add-long/2addr v6, v8

    cmp-long v6, v6, p1

    if-ltz v6, :cond_11

    :cond_b
    invoke-virtual {v1, v5}, Lo5/j;->k(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_e

    sget-object v7, Lo5/d;->e:LE1/a;

    if-ne v6, v7, :cond_c

    goto :goto_8

    :cond_c
    instance-of v7, v6, Lo5/q;

    if-eqz v7, :cond_d

    sget-object v7, Lo5/d;->l:LE1/a;

    invoke-virtual {v1, v6, v5, v7}, Lo5/j;->j(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    check-cast v6, Lo5/q;

    iget-object v6, v6, Lo5/q;->a:Lm5/m0;

    invoke-static {v4, v6}, Lr5/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v5, v2}, Lo5/j;->l(IZ)V

    goto :goto_9

    :cond_d
    instance-of v7, v6, Lm5/m0;

    if-eqz v7, :cond_f

    sget-object v7, Lo5/d;->l:LE1/a;

    invoke-virtual {v1, v6, v5, v7}, Lo5/j;->j(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-static {v4, v6}, Lr5/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v5, v2}, Lo5/j;->l(IZ)V

    goto :goto_9

    :cond_e
    :goto_8
    sget-object v7, Lo5/d;->l:LE1/a;

    invoke-virtual {v1, v6, v5, v7}, Lo5/j;->j(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v1}, Lr5/t;->h()V

    :cond_f
    :goto_9
    add-int/lit8 v5, v5, -0x1

    goto :goto_7

    :cond_10
    sget-object v5, Lr5/d;->q:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr5/d;

    check-cast v1, Lo5/j;

    goto :goto_6

    :cond_11
    if-eqz v4, :cond_13

    instance-of p1, v4, Ljava/util/ArrayList;

    if-nez p1, :cond_12

    check-cast v4, Lm5/m0;

    invoke-virtual {p0, v4, v2}, Lo5/b;->x(Lm5/m0;Z)V

    return-object v0

    :cond_12
    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_a
    if-ge v3, p1, :cond_13

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lm5/m0;

    invoke-virtual {p0, p2, v2}, Lo5/b;->x(Lm5/m0;Z)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_a

    :cond_13
    return-object v0

    :cond_14
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    goto/16 :goto_0

    :cond_15
    move-object v0, v2

    goto/16 :goto_0
.end method

.method public final j()V
    .locals 3

    sget-object v0, Lo5/b;->q:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lo5/b;->s(JZ)Z

    return-void
.end method

.method public final k(J)V
    .locals 9

    sget-object v0, Lo5/b;->v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo5/j;

    :cond_0
    :goto_0
    sget-object v1, Lo5/b;->r:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v3

    iget v2, p0, Lo5/b;->b:I

    int-to-long v5, v2

    add-long/2addr v5, v3

    sget-object v2, Lo5/b;->s:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    cmp-long v2, p1, v5

    if-gez v2, :cond_1

    return-void

    :cond_1
    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lo5/d;->b:I

    int-to-long v5, v1

    div-long v7, v3, v5

    rem-long v5, v3, v5

    long-to-int v1, v5

    iget-wide v5, v0, Lr5/t;->r:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_3

    invoke-virtual {p0, v7, v8, v0}, Lo5/b;->m(JLo5/j;)Lo5/j;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v5

    :cond_3
    const/4 v7, 0x0

    move-wide v5, v3

    move-object v3, v0

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Lo5/b;->A(Lo5/j;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lo5/d;->o:LE1/a;

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lo5/b;->q()J

    move-result-wide v0

    cmp-long v0, v5, v0

    if-gez v0, :cond_5

    invoke-virtual {v3}, Lr5/d;->a()V

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Lr5/d;->a()V

    :cond_5
    :goto_1
    move-object v0, v3

    goto :goto_0
.end method

.method public final l()V
    .locals 15

    invoke-virtual {p0}, Lo5/b;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v6, Lo5/b;->w:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo5/j;

    move-object v7, v0

    :goto_0
    sget-object v0, Lo5/b;->s:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v8

    sget v0, Lo5/d;->b:I

    int-to-long v2, v0

    div-long v2, v8, v2

    invoke-virtual {p0}, Lo5/b;->q()J

    move-result-wide v4

    cmp-long v0, v4, v8

    if-gtz v0, :cond_2

    iget-wide v4, v7, Lr5/t;->r:J

    cmp-long v0, v4, v2

    if-gez v0, :cond_1

    invoke-virtual {v7}, Lr5/d;->b()Lr5/d;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2, v3, v7}, Lo5/b;->v(JLo5/j;)V

    :cond_1
    invoke-static {p0}, Lo5/b;->r(Lo5/b;)V

    return-void

    :cond_2
    iget-wide v4, v7, Lr5/t;->r:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_d

    sget-object v0, Lo5/c;->x:Lo5/c;

    :goto_1
    invoke-static {v7, v2, v3, v0}, Lr5/a;->a(Lr5/t;JLd5/p;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lr5/a;->d(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-static {v4}, Lr5/a;->b(Ljava/lang/Object;)Lr5/t;

    move-result-object v5

    :cond_3
    :goto_2
    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lr5/t;

    iget-wide v11, v10, Lr5/t;->r:J

    iget-wide v13, v5, Lr5/t;->r:J

    cmp-long v11, v11, v13

    if-ltz v11, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v5}, Lr5/t;->i()Z

    move-result v11

    if-nez v11, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v6, p0, v10, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v10}, Lr5/t;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v10}, Lr5/d;->d()V

    goto :goto_3

    :cond_6
    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eq v11, v10, :cond_5

    invoke-virtual {v5}, Lr5/t;->e()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v5}, Lr5/d;->d()V

    goto :goto_2

    :cond_7
    :goto_3
    invoke-static {v4}, Lr5/a;->d(Ljava/lang/Object;)Z

    move-result v0

    const/4 v10, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lo5/b;->j()V

    invoke-virtual {p0, v2, v3, v7}, Lo5/b;->v(JLo5/j;)V

    invoke-static {p0}, Lo5/b;->r(Lo5/b;)V

    goto :goto_5

    :cond_8
    invoke-static {v4}, Lr5/a;->b(Ljava/lang/Object;)Lr5/t;

    move-result-object v0

    check-cast v0, Lo5/j;

    iget-wide v4, v0, Lr5/t;->r:J

    cmp-long v2, v4, v2

    if-lez v2, :cond_a

    const-wide/16 v2, 0x1

    add-long/2addr v2, v8

    sget v0, Lo5/d;->b:I

    int-to-long v11, v0

    mul-long/2addr v4, v11

    sget-object v0, Lo5/b;->s:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_9

    sub-long/2addr v4, v8

    sget-object v0, Lo5/b;->t:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    and-long/2addr v2, v4

    const-wide/16 v11, 0x0

    cmp-long v2, v2, v11

    if-eqz v2, :cond_b

    :goto_4
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    and-long/2addr v2, v4

    cmp-long v2, v2, v11

    if-eqz v2, :cond_b

    goto :goto_4

    :cond_9
    invoke-static {p0}, Lo5/b;->r(Lo5/b;)V

    goto :goto_5

    :cond_a
    move-object v10, v0

    :cond_b
    :goto_5
    if-nez v10, :cond_c

    goto/16 :goto_0

    :cond_c
    move-object v7, v10

    :cond_d
    sget v0, Lo5/d;->b:I

    int-to-long v2, v0

    rem-long v2, v8, v2

    long-to-int v0, v2

    invoke-virtual {v7, v0}, Lo5/j;->k(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lm5/m0;

    sget-object v4, Lo5/b;->r:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    if-eqz v3, :cond_f

    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v10

    cmp-long v3, v8, v10

    if-ltz v3, :cond_f

    sget-object v3, Lo5/d;->g:LE1/a;

    invoke-virtual {v7, v2, v0, v3}, Lo5/j;->j(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-static {v2}, Lo5/b;->z(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    sget-object v2, Lo5/d;->d:LE1/a;

    invoke-virtual {v7, v0, v2}, Lo5/j;->n(ILjava/lang/Object;)V

    goto/16 :goto_8

    :cond_e
    sget-object v2, Lo5/d;->j:LE1/a;

    invoke-virtual {v7, v0, v2}, Lo5/j;->n(ILjava/lang/Object;)V

    invoke-virtual {v7}, Lr5/t;->h()V

    goto :goto_7

    :cond_f
    :goto_6
    invoke-virtual {v7, v0}, Lo5/j;->k(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lm5/m0;

    if-eqz v3, :cond_12

    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v10

    cmp-long v3, v8, v10

    if-gez v3, :cond_10

    new-instance v3, Lo5/q;

    move-object v5, v2

    check-cast v5, Lm5/m0;

    invoke-direct {v3, v5}, Lo5/q;-><init>(Lm5/m0;)V

    invoke-virtual {v7, v2, v0, v3}, Lo5/j;->j(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    goto/16 :goto_8

    :cond_10
    sget-object v3, Lo5/d;->g:LE1/a;

    invoke-virtual {v7, v2, v0, v3}, Lo5/j;->j(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-static {v2}, Lo5/b;->z(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    sget-object v2, Lo5/d;->d:LE1/a;

    invoke-virtual {v7, v0, v2}, Lo5/j;->n(ILjava/lang/Object;)V

    goto :goto_8

    :cond_11
    sget-object v2, Lo5/d;->j:LE1/a;

    invoke-virtual {v7, v0, v2}, Lo5/j;->n(ILjava/lang/Object;)V

    invoke-virtual {v7}, Lr5/t;->h()V

    goto :goto_7

    :cond_12
    sget-object v3, Lo5/d;->j:LE1/a;

    if-ne v2, v3, :cond_13

    :goto_7
    invoke-static {p0}, Lo5/b;->r(Lo5/b;)V

    goto/16 :goto_0

    :cond_13
    if-nez v2, :cond_14

    sget-object v3, Lo5/d;->e:LE1/a;

    invoke-virtual {v7, v2, v0, v3}, Lo5/j;->j(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_8

    :cond_14
    sget-object v3, Lo5/d;->d:LE1/a;

    if-ne v2, v3, :cond_15

    goto :goto_8

    :cond_15
    sget-object v3, Lo5/d;->h:LE1/a;

    if-eq v2, v3, :cond_19

    sget-object v3, Lo5/d;->i:LE1/a;

    if-eq v2, v3, :cond_19

    sget-object v3, Lo5/d;->k:LE1/a;

    if-ne v2, v3, :cond_16

    goto :goto_8

    :cond_16
    sget-object v3, Lo5/d;->l:LE1/a;

    if-ne v2, v3, :cond_17

    goto :goto_8

    :cond_17
    sget-object v3, Lo5/d;->f:LE1/a;

    if-ne v2, v3, :cond_18

    goto :goto_6

    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected cell state: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    :goto_8
    invoke-static {p0}, Lo5/b;->r(Lo5/b;)V

    return-void
.end method

.method public final m(JLo5/j;)Lo5/j;
    .locals 9

    sget-object v0, Lo5/d;->a:Lo5/j;

    sget-object v0, Lo5/c;->x:Lo5/c;

    :goto_0
    invoke-static {p3, p1, p2, v0}, Lr5/a;->a(Lr5/t;JLd5/p;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lr5/a;->d(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v1}, Lr5/a;->b(Ljava/lang/Object;)Lr5/t;

    move-result-object v2

    :cond_0
    :goto_1
    sget-object v3, Lo5/b;->v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr5/t;

    iget-wide v5, v4, Lr5/t;->r:J

    iget-wide v7, v2, Lr5/t;->r:J

    cmp-long v5, v5, v7

    if-ltz v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Lr5/t;->i()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v3, p0, v4, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lr5/t;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v4}, Lr5/d;->d()V

    goto :goto_2

    :cond_3
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v4, :cond_2

    invoke-virtual {v2}, Lr5/t;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lr5/d;->d()V

    goto :goto_1

    :cond_4
    :goto_2
    invoke-static {v1}, Lr5/a;->d(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lo5/b;->j()V

    iget-wide p1, p3, Lr5/t;->r:J

    sget v0, Lo5/d;->b:I

    int-to-long v0, v0

    mul-long/2addr p1, v0

    invoke-virtual {p0}, Lo5/b;->q()J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-gez p1, :cond_c

    invoke-virtual {p3}, Lr5/d;->a()V

    return-object v2

    :cond_5
    invoke-static {v1}, Lr5/a;->b(Ljava/lang/Object;)Lr5/t;

    move-result-object p3

    check-cast p3, Lo5/j;

    iget-wide v0, p3, Lr5/t;->r:J

    invoke-virtual {p0}, Lo5/b;->u()Z

    move-result v3

    if-nez v3, :cond_9

    sget-object v3, Lo5/b;->s:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v3

    sget v5, Lo5/d;->b:I

    int-to-long v5, v5

    div-long/2addr v3, v5

    cmp-long v3, p1, v3

    if-gtz v3, :cond_9

    :cond_6
    :goto_3
    sget-object v3, Lo5/b;->w:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr5/t;

    iget-wide v5, v4, Lr5/t;->r:J

    cmp-long v5, v5, v0

    if-gez v5, :cond_9

    invoke-virtual {p3}, Lr5/t;->i()Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_7
    invoke-virtual {v3, p0, v4, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v4}, Lr5/t;->e()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v4}, Lr5/d;->d()V

    goto :goto_4

    :cond_8
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v4, :cond_7

    invoke-virtual {p3}, Lr5/t;->e()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p3}, Lr5/d;->d()V

    goto :goto_3

    :cond_9
    :goto_4
    cmp-long p1, v0, p1

    if-lez p1, :cond_d

    sget p1, Lo5/d;->b:I

    int-to-long p1, p1

    mul-long v7, v0, p1

    :cond_a
    sget-object p1, Lo5/b;->r:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v5

    cmp-long p1, v5, v7

    if-ltz p1, :cond_b

    goto :goto_5

    :cond_b
    sget-object v3, Lo5/b;->r:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result p1

    if-eqz p1, :cond_a

    :goto_5
    sget p1, Lo5/d;->b:I

    int-to-long p1, p1

    mul-long/2addr v0, p1

    invoke-virtual {p0}, Lo5/b;->q()J

    move-result-wide p1

    cmp-long p1, v0, p1

    if-gez p1, :cond_c

    invoke-virtual {p3}, Lr5/d;->a()V

    :cond_c
    return-object v2

    :cond_d
    return-object p3
.end method

.method public final n()Ljava/lang/Throwable;
    .locals 1

    sget-object v0, Lo5/b;->x:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method public final o()Ljava/lang/Throwable;
    .locals 2

    invoke-virtual {p0}, Lo5/b;->n()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lo5/k;

    const-string v1, "Channel was closed"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final p()Ljava/lang/Throwable;
    .locals 2

    invoke-virtual {p0}, Lo5/b;->n()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, LL2/b;

    const-string v1, "Channel was closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final q()J
    .locals 4

    sget-object v0, Lo5/b;->q:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide v2, 0xfffffffffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public final s(JZ)Z
    .locals 13

    const/16 v0, 0x3c

    shr-long v0, p1, v0

    long-to-int v0, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1d

    const/4 v3, 0x2

    sget-object v4, Lo5/b;->r:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide v5, 0xfffffffffffffffL

    if-eq v0, v3, :cond_d

    const/4 v3, 0x3

    if-ne v0, v3, :cond_c

    and-long/2addr v5, p1

    invoke-virtual {p0, v5, v6}, Lo5/b;->i(J)Lo5/j;

    move-result-object v0

    const/4 v3, 0x0

    move-object v5, v3

    :cond_0
    sget v6, Lo5/d;->b:I

    sub-int/2addr v6, v2

    :goto_0
    const/4 v7, -0x1

    if-ge v7, v6, :cond_9

    iget-wide v8, v0, Lr5/t;->r:J

    sget v10, Lo5/d;->b:I

    int-to-long v10, v10

    mul-long/2addr v8, v10

    int-to-long v10, v6

    add-long/2addr v8, v10

    :cond_1
    invoke-virtual {v0, v6}, Lo5/j;->k(I)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Lo5/d;->i:LE1/a;

    if-eq v10, v11, :cond_a

    sget-object v11, Lo5/d;->d:LE1/a;

    if-ne v10, v11, :cond_2

    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v11

    cmp-long v11, v8, v11

    if-ltz v11, :cond_a

    sget-object v11, Lo5/d;->l:LE1/a;

    invoke-virtual {v0, v10, v6, v11}, Lo5/j;->j(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v0, v6, v3}, Lo5/j;->m(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lr5/t;->h()V

    goto :goto_4

    :cond_2
    sget-object v11, Lo5/d;->e:LE1/a;

    if-eq v10, v11, :cond_8

    if-nez v10, :cond_3

    goto :goto_3

    :cond_3
    instance-of v11, v10, Lm5/m0;

    if-nez v11, :cond_6

    instance-of v11, v10, Lo5/q;

    if-eqz v11, :cond_4

    goto :goto_1

    :cond_4
    sget-object v11, Lo5/d;->g:LE1/a;

    if-eq v10, v11, :cond_a

    sget-object v12, Lo5/d;->f:LE1/a;

    if-ne v10, v12, :cond_5

    goto :goto_5

    :cond_5
    if-eq v10, v11, :cond_1

    goto :goto_4

    :cond_6
    :goto_1
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v11

    cmp-long v11, v8, v11

    if-ltz v11, :cond_a

    instance-of v11, v10, Lo5/q;

    if-eqz v11, :cond_7

    move-object v11, v10

    check-cast v11, Lo5/q;

    iget-object v11, v11, Lo5/q;->a:Lm5/m0;

    goto :goto_2

    :cond_7
    move-object v11, v10

    check-cast v11, Lm5/m0;

    :goto_2
    sget-object v12, Lo5/d;->l:LE1/a;

    invoke-virtual {v0, v10, v6, v12}, Lo5/j;->j(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {v5, v11}, Lr5/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v6, v3}, Lo5/j;->m(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lr5/t;->h()V

    goto :goto_4

    :cond_8
    :goto_3
    sget-object v11, Lo5/d;->l:LE1/a;

    invoke-virtual {v0, v10, v6, v11}, Lo5/j;->j(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v0}, Lr5/t;->h()V

    :goto_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_9
    sget-object v6, Lr5/d;->q:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v6, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr5/d;

    check-cast v0, Lo5/j;

    if-nez v0, :cond_0

    :cond_a
    :goto_5
    if-eqz v5, :cond_1c

    instance-of v0, v5, Ljava/util/ArrayList;

    if-nez v0, :cond_b

    check-cast v5, Lm5/m0;

    invoke-virtual {p0, v5, v1}, Lo5/b;->x(Lm5/m0;Z)V

    goto/16 :goto_a

    :cond_b
    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_6
    if-ge v7, v0, :cond_1c

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm5/m0;

    invoke-virtual {p0, v3, v1}, Lo5/b;->x(Lm5/m0;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_c
    const-string v1, "unexpected close status: "

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    and-long/2addr v5, p1

    invoke-virtual {p0, v5, v6}, Lo5/b;->i(J)Lo5/j;

    if-eqz p3, :cond_1c

    :cond_e
    :goto_7
    sget-object v0, Lo5/b;->v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo5/j;

    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v7

    invoke-virtual {p0}, Lo5/b;->q()J

    move-result-wide v5

    cmp-long v5, v5, v7

    if-gtz v5, :cond_f

    goto/16 :goto_a

    :cond_f
    sget v5, Lo5/d;->b:I

    int-to-long v5, v5

    div-long v9, v7, v5

    iget-wide v11, v3, Lr5/t;->r:J

    cmp-long v11, v11, v9

    if-eqz v11, :cond_10

    invoke-virtual {p0, v9, v10, v3}, Lo5/b;->m(JLo5/j;)Lo5/j;

    move-result-object v3

    if-nez v3, :cond_10

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo5/j;

    iget-wide v5, v0, Lr5/t;->r:J

    cmp-long v0, v5, v9

    if-gez v0, :cond_e

    goto :goto_a

    :cond_10
    invoke-virtual {v3}, Lr5/d;->a()V

    rem-long v5, v7, v5

    long-to-int v0, v5

    :cond_11
    invoke-virtual {v3, v0}, Lo5/j;->k(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1a

    sget-object v6, Lo5/d;->e:LE1/a;

    if-ne v5, v6, :cond_12

    goto :goto_8

    :cond_12
    sget-object v0, Lo5/d;->d:LE1/a;

    if-ne v5, v0, :cond_13

    goto :goto_b

    :cond_13
    sget-object v0, Lo5/d;->j:LE1/a;

    if-ne v5, v0, :cond_14

    goto :goto_9

    :cond_14
    sget-object v0, Lo5/d;->l:LE1/a;

    if-ne v5, v0, :cond_15

    goto :goto_9

    :cond_15
    sget-object v0, Lo5/d;->i:LE1/a;

    if-ne v5, v0, :cond_16

    goto :goto_9

    :cond_16
    sget-object v0, Lo5/d;->h:LE1/a;

    if-ne v5, v0, :cond_17

    goto :goto_9

    :cond_17
    sget-object v0, Lo5/d;->g:LE1/a;

    if-ne v5, v0, :cond_18

    goto :goto_b

    :cond_18
    sget-object v0, Lo5/d;->f:LE1/a;

    if-ne v5, v0, :cond_19

    goto :goto_9

    :cond_19
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v5

    cmp-long v0, v7, v5

    if-nez v0, :cond_1b

    goto :goto_b

    :cond_1a
    :goto_8
    sget-object v6, Lo5/d;->h:LE1/a;

    invoke-virtual {v3, v5, v0, v6}, Lo5/j;->j(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual {p0}, Lo5/b;->l()V

    :cond_1b
    :goto_9
    const-wide/16 v5, 0x1

    add-long v9, v7, v5

    sget-object v5, Lo5/b;->r:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v6, p0

    invoke-virtual/range {v5 .. v10}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    goto/16 :goto_7

    :cond_1c
    :goto_a
    return v2

    :cond_1d
    :goto_b
    return v1
.end method

.method public t()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lo5/b;->q:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    const/16 v4, 0x3c

    shr-long/2addr v2, v4

    long-to-int v2, v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "cancelled,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v2, "closed,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "capacity="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lo5/b;->b:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x2c

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "data=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v3, [Lo5/j;

    sget-object v3, Lo5/b;->v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v6, 0x0

    aput-object v3, v2, v6

    sget-object v3, Lo5/b;->u:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v7, 0x1

    aput-object v3, v2, v7

    sget-object v3, Lo5/b;->w:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, LT4/h;->t([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lo5/j;

    sget-object v9, Lo5/d;->a:Lo5/j;

    if-eq v8, v9, :cond_2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    move-object v4, v3

    check-cast v4, Lo5/j;

    iget-wide v8, v4, Lr5/t;->r:J

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lo5/j;

    iget-wide v10, v10, Lr5/t;->r:J

    cmp-long v12, v8, v10

    if-lez v12, :cond_6

    move-object v3, v4

    move-wide v8, v10

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_5

    :goto_2
    check-cast v3, Lo5/j;

    sget-object v2, Lo5/b;->r:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v10

    invoke-virtual {v0}, Lo5/b;->q()J

    move-result-wide v12

    :goto_3
    sget v2, Lo5/d;->b:I

    move v4, v6

    :goto_4
    if-ge v4, v2, :cond_17

    iget-wide v8, v3, Lr5/t;->r:J

    sget v14, Lo5/d;->b:I

    int-to-long v14, v14

    mul-long/2addr v8, v14

    int-to-long v14, v4

    add-long/2addr v8, v14

    cmp-long v14, v8, v12

    if-ltz v14, :cond_8

    cmp-long v15, v8, v10

    if-gez v15, :cond_7

    goto :goto_5

    :cond_7
    move/from16 v16, v7

    goto/16 :goto_f

    :cond_8
    :goto_5
    invoke-virtual {v3, v4}, Lo5/j;->k(I)Ljava/lang/Object;

    move-result-object v15

    iget-object v6, v3, Lo5/j;->u:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move/from16 v16, v7

    mul-int/lit8 v7, v4, 0x2

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v15, Lm5/e;

    if-eqz v7, :cond_b

    cmp-long v7, v8, v10

    if-gez v7, :cond_9

    if-ltz v14, :cond_9

    const-string v7, "receive"

    goto/16 :goto_d

    :cond_9
    if-gez v14, :cond_a

    if-ltz v7, :cond_a

    const-string v7, "send"

    goto/16 :goto_d

    :cond_a
    const-string v7, "cont"

    goto/16 :goto_d

    :cond_b
    instance-of v7, v15, Lo5/q;

    if-eqz v7, :cond_c

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "EB("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v8, 0x29

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_d

    :cond_c
    sget-object v7, Lo5/d;->f:LE1/a;

    invoke-static {v15, v7}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    move/from16 v7, v16

    goto :goto_6

    :cond_d
    sget-object v7, Lo5/d;->g:LE1/a;

    invoke-static {v15, v7}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    :goto_6
    if-eqz v7, :cond_e

    const-string v7, "resuming_sender"

    goto :goto_d

    :cond_e
    if-nez v15, :cond_f

    move/from16 v7, v16

    goto :goto_7

    :cond_f
    sget-object v7, Lo5/d;->e:LE1/a;

    invoke-virtual {v15, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    :goto_7
    if-eqz v7, :cond_10

    move/from16 v7, v16

    goto :goto_8

    :cond_10
    sget-object v7, Lo5/d;->i:LE1/a;

    invoke-static {v15, v7}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    :goto_8
    if-eqz v7, :cond_11

    move/from16 v7, v16

    goto :goto_9

    :cond_11
    sget-object v7, Lo5/d;->h:LE1/a;

    invoke-static {v15, v7}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    :goto_9
    if-eqz v7, :cond_12

    move/from16 v7, v16

    goto :goto_a

    :cond_12
    sget-object v7, Lo5/d;->k:LE1/a;

    invoke-static {v15, v7}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    :goto_a
    if-eqz v7, :cond_13

    move/from16 v7, v16

    goto :goto_b

    :cond_13
    sget-object v7, Lo5/d;->j:LE1/a;

    invoke-static {v15, v7}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    :goto_b
    if-eqz v7, :cond_14

    move/from16 v7, v16

    goto :goto_c

    :cond_14
    sget-object v7, Lo5/d;->l:LE1/a;

    invoke-static {v15, v7}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    :goto_c
    if-nez v7, :cond_16

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_d
    if-eqz v6, :cond_15

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "),"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_15
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    :goto_e
    add-int/lit8 v4, v4, 0x1

    move/from16 v7, v16

    const/4 v6, 0x0

    goto/16 :goto_4

    :cond_17
    move/from16 v16, v7

    invoke-virtual {v3}, Lr5/d;->b()Lr5/d;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lo5/j;

    if-nez v3, :cond_1a

    :goto_f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_19

    invoke-static {v1}, Lk5/f;->K(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_18

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "this.deleteCharAt(index)"

    invoke-static {v2, v3}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_18
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_19
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "Char sequence is empty."

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1a
    move/from16 v7, v16

    const/4 v6, 0x0

    goto/16 :goto_3

    :cond_1b
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public final u()Z
    .locals 4

    sget-object v0, Lo5/b;->s:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final v(JLo5/j;)V
    .locals 4

    :goto_0
    iget-wide v0, p3, Lr5/t;->r:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_1

    invoke-virtual {p3}, Lr5/d;->b()Lr5/d;

    move-result-object v0

    check-cast v0, Lo5/j;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    move-object p3, v0

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p3}, Lr5/t;->c()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p3}, Lr5/d;->b()Lr5/d;

    move-result-object p1

    check-cast p1, Lo5/j;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    move-object p3, p1

    goto :goto_1

    :cond_3
    :goto_2
    sget-object p1, Lo5/b;->w:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lr5/t;

    iget-wide v0, p2, Lr5/t;->r:J

    iget-wide v2, p3, Lr5/t;->r:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p3}, Lr5/t;->i()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p1, p0, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Lr5/t;->e()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p2}, Lr5/d;->d()V

    :cond_6
    :goto_3
    return-void

    :cond_7
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p2, :cond_5

    invoke-virtual {p3}, Lr5/t;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p3}, Lr5/d;->d()V

    goto :goto_2
.end method

.method public final w(LV4/d;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance p2, Lm5/f;

    invoke-static {p1}, LE5/d;->v(LV4/d;)LV4/d;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p2, v0, p1}, Lm5/f;-><init>(ILV4/d;)V

    invoke-virtual {p2}, Lm5/f;->r()V

    invoke-virtual {p0}, Lo5/b;->p()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, LE5/l;->q(Ljava/lang/Throwable;)LS4/e;

    move-result-object p1

    invoke-virtual {p2, p1}, Lm5/f;->resumeWith(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lm5/f;->q()Ljava/lang/Object;

    move-result-object p1

    sget-object p2, LW4/a;->b:LW4/a;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, LS4/i;->a:LS4/i;

    return-object p1
.end method

.method public final x(Lm5/m0;Z)V
    .locals 2

    instance-of v0, p1, Lm5/e;

    if-eqz v0, :cond_1

    check-cast p1, LV4/d;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lo5/b;->o()Ljava/lang/Throwable;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lo5/b;->p()Ljava/lang/Throwable;

    move-result-object p2

    :goto_0
    invoke-static {p2}, LE5/l;->q(Ljava/lang/Throwable;)LS4/e;

    move-result-object p2

    invoke-interface {p1, p2}, LV4/d;->resumeWith(Ljava/lang/Object;)V

    return-void

    :cond_1
    instance-of p2, p1, Lo5/a;

    if-eqz p2, :cond_3

    check-cast p1, Lo5/a;

    iget-object p2, p1, Lo5/a;->q:Lm5/f;

    invoke-static {p2}, Le5/g;->c(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p1, Lo5/a;->q:Lm5/f;

    sget-object v0, Lo5/d;->l:LE1/a;

    iput-object v0, p1, Lo5/a;->b:Ljava/lang/Object;

    iget-object p1, p1, Lo5/a;->r:Lo5/b;

    invoke-virtual {p1}, Lo5/b;->n()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1}, Lm5/f;->resumeWith(Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-static {p1}, LE5/l;->q(Ljava/lang/Throwable;)LS4/e;

    move-result-object p1

    invoke-virtual {p2, p1}, Lm5/f;->resumeWith(Ljava/lang/Object;)V

    return-void

    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected waiter: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final y(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lo5/a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lo5/a;

    iget-object v0, p1, Lo5/a;->q:Lm5/f;

    invoke-static {v0}, Le5/g;->c(Ljava/lang/Object;)V

    iput-object v3, p1, Lo5/a;->q:Lm5/f;

    iput-object p2, p1, Lo5/a;->b:Ljava/lang/Object;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object p2, Lo5/d;->a:Lo5/j;

    invoke-virtual {v0, p1, v3}, Lm5/f;->i(Ljava/lang/Object;Ld5/l;)LE1/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lm5/f;->j(Ljava/lang/Object;)V

    return v2

    :cond_0
    return v1

    :cond_1
    instance-of v0, p1, Lm5/e;

    if-eqz v0, :cond_3

    check-cast p1, Lm5/e;

    sget-object v0, Lo5/d;->a:Lo5/j;

    invoke-interface {p1, p2, v3}, Lm5/e;->i(Ljava/lang/Object;Ld5/l;)LE1/a;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-interface {p1, p2}, Lm5/e;->j(Ljava/lang/Object;)V

    return v2

    :cond_2
    return v1

    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected receiver type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
