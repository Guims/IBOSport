.class public final LT/N;
.super Le5/h;

# interfaces
.implements Ld5/l;


# instance fields
.field public final synthetic b:LT/F;

.field public final synthetic q:LK1/c;


# direct methods
.method public constructor <init>(LT/F;LK1/c;)V
    .locals 0

    iput-object p1, p0, LT/N;->b:LT/F;

    iput-object p2, p0, LT/N;->q:LK1/c;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Le5/h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    check-cast p1, Ljava/lang/Throwable;

    iget-object v0, p0, LT/N;->b:LT/F;

    invoke-virtual {v0, p1}, LT/F;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, LT/N;->q:LK1/c;

    iget-object v0, v0, LK1/c;->s:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lo5/b;

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0}, Lo5/b;->h(Ljava/lang/Throwable;Z)Z

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lo5/b;->r:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    sget-object v7, Lo5/b;->q:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v7, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v4

    const/4 v8, 0x1

    invoke-virtual {v1, v4, v5, v8}, Lo5/b;->s(JZ)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v1}, Lo5/b;->n()Ljava/lang/Throwable;

    move-result-object v0

    new-instance v2, Lo5/g;

    invoke-direct {v2, v0}, Lo5/g;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_1
    const-wide v9, 0xfffffffffffffffL

    and-long/2addr v4, v9

    cmp-long v2, v2, v4

    sget-object v9, Lo5/i;->a:Lo5/h;

    if-ltz v2, :cond_2

    :goto_0
    move-object v2, v9

    goto/16 :goto_3

    :cond_2
    sget-object v6, Lo5/d;->k:LE1/a;

    sget-object v2, Lo5/b;->v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo5/j;

    :cond_3
    :goto_1
    invoke-virtual {v7, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4, v8}, Lo5/b;->s(JZ)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lo5/b;->n()Ljava/lang/Throwable;

    move-result-object v0

    new-instance v2, Lo5/g;

    invoke-direct {v2, v0}, Lo5/g;-><init>(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v4

    sget v3, Lo5/d;->b:I

    int-to-long v10, v3

    div-long v12, v4, v10

    rem-long v10, v4, v10

    long-to-int v3, v10

    iget-wide v10, v2, Lr5/t;->r:J

    cmp-long v10, v10, v12

    if-eqz v10, :cond_6

    invoke-virtual {v1, v12, v13, v2}, Lo5/b;->m(JLo5/j;)Lo5/j;

    move-result-object v10

    if-nez v10, :cond_5

    goto :goto_1

    :cond_5
    move-object v2, v10

    :cond_6
    invoke-virtual/range {v1 .. v6}, Lo5/b;->A(Lo5/j;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Lo5/d;->m:LE1/a;

    if-ne v10, v11, :cond_9

    instance-of v0, v6, Lm5/m0;

    if-eqz v0, :cond_7

    check-cast v6, Lm5/m0;

    goto :goto_2

    :cond_7
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_8

    invoke-interface {v6, v2, v3}, Lm5/m0;->a(Lr5/t;I)V

    :cond_8
    invoke-virtual {v1, v4, v5}, Lo5/b;->C(J)V

    invoke-virtual {v2}, Lr5/t;->h()V

    goto :goto_0

    :cond_9
    sget-object v3, Lo5/d;->o:LE1/a;

    if-ne v10, v3, :cond_a

    invoke-virtual {v1}, Lo5/b;->q()J

    move-result-wide v10

    cmp-long v3, v4, v10

    if-gez v3, :cond_3

    invoke-virtual {v2}, Lr5/d;->a()V

    goto :goto_1

    :cond_a
    sget-object v0, Lo5/d;->n:LE1/a;

    if-eq v10, v0, :cond_e

    invoke-virtual {v2}, Lr5/d;->a()V

    move-object v2, v10

    :goto_3
    instance-of v0, v2, Lo5/h;

    const/4 v3, 0x0

    if-nez v0, :cond_b

    goto :goto_4

    :cond_b
    move-object v2, v3

    :goto_4
    sget-object v0, LS4/i;->a:LS4/i;

    if-eqz v2, :cond_d

    check-cast v2, LT/K;

    iget-object v2, v2, LT/K;->b:Lm5/l;

    if-nez p1, :cond_c

    new-instance v3, Ljava/util/concurrent/CancellationException;

    const-string v4, "DataStore scope was cancelled before updateData could complete"

    invoke-direct {v3, v4}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_c
    move-object v3, p1

    :goto_5
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lm5/n;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lm5/n;-><init>(Ljava/lang/Throwable;Z)V

    invoke-virtual {v2, v4}, Lm5/a0;->G(Ljava/lang/Object;)Z

    move-object v3, v0

    :cond_d
    if-nez v3, :cond_0

    return-object v0

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "unexpected"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
