.class public final Lo5/a;
.super Ljava/lang/Object;

# interfaces
.implements Lm5/m0;


# instance fields
.field public b:Ljava/lang/Object;

.field public q:Lm5/f;

.field public final synthetic r:Lo5/b;


# direct methods
.method public constructor <init>(Lo5/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo5/a;->r:Lo5/b;

    sget-object p1, Lo5/d;->p:LE1/a;

    iput-object p1, p0, Lo5/a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lr5/t;I)V
    .locals 1

    iget-object v0, p0, Lo5/a;->q:Lm5/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lm5/f;->a(Lr5/t;I)V

    :cond_0
    return-void
.end method

.method public final b(Lp5/d;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Lo5/b;->v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object v1, p0, Lo5/a;->r:Lo5/b;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo5/j;

    :goto_0
    sget-object v2, Lo5/b;->q:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    const/4 v7, 0x1

    invoke-virtual {v1, v2, v3, v7}, Lo5/b;->s(JZ)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object p1, Lo5/d;->l:LE1/a;

    iput-object p1, p0, Lo5/a;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Lo5/b;->n()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_0
    sget v0, Lr5/u;->a:I

    throw p1

    :cond_1
    sget-object v2, Lo5/b;->r:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v4

    sget v2, Lo5/d;->b:I

    int-to-long v2, v2

    div-long v8, v4, v2

    rem-long v2, v4, v2

    long-to-int v3, v2

    iget-wide v10, v0, Lr5/t;->r:J

    cmp-long v2, v10, v8

    if-eqz v2, :cond_2

    invoke-virtual {v1, v8, v9, v0}, Lo5/b;->m(JLo5/j;)Lo5/j;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    move-object v2, v0

    :cond_3
    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lo5/b;->A(Lo5/j;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v8, Lo5/d;->m:LE1/a;

    if-eq v0, v8, :cond_12

    sget-object v9, Lo5/d;->o:LE1/a;

    if-ne v0, v9, :cond_5

    invoke-virtual {v1}, Lo5/b;->q()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gez v0, :cond_4

    invoke-virtual {v2}, Lr5/d;->a()V

    :cond_4
    move-object v0, v2

    goto :goto_0

    :cond_5
    sget-object v6, Lo5/d;->n:LE1/a;

    if-ne v0, v6, :cond_11

    invoke-static {p1}, LE5/d;->v(LV4/d;)LV4/d;

    move-result-object p1

    invoke-static {p1}, Lm5/w;->d(LV4/d;)Lm5/f;

    move-result-object p1

    :try_start_0
    iput-object p1, p0, Lo5/a;->q:Lm5/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v6, p0

    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lo5/b;->A(Lo5/j;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_6

    invoke-virtual {p0, v2, v3}, Lo5/a;->a(Lr5/t;I)V

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_6
    const/4 v8, 0x0

    if-ne v0, v9, :cond_10

    invoke-virtual {v1}, Lo5/b;->q()J

    move-result-wide v9

    cmp-long v0, v4, v9

    if-gez v0, :cond_7

    invoke-virtual {v2}, Lr5/d;->a()V

    :cond_7
    sget-object v0, Lo5/b;->v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo5/j;

    :goto_1
    sget-object v2, Lo5/b;->q:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v7}, Lo5/b;->s(JZ)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v0, v6, Lo5/a;->q:Lm5/f;

    invoke-static {v0}, Le5/g;->c(Ljava/lang/Object;)V

    iput-object v8, v6, Lo5/a;->q:Lm5/f;

    sget-object v2, Lo5/d;->l:LE1/a;

    iput-object v2, v6, Lo5/a;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Lo5/b;->n()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_8

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lm5/f;->resumeWith(Ljava/lang/Object;)V

    goto :goto_4

    :cond_8
    invoke-static {v1}, LE5/l;->q(Ljava/lang/Throwable;)LS4/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lm5/f;->resumeWith(Ljava/lang/Object;)V

    goto :goto_4

    :cond_9
    sget-object v2, Lo5/b;->r:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v4

    sget v2, Lo5/d;->b:I

    int-to-long v2, v2

    div-long v9, v4, v2

    rem-long v2, v4, v2

    long-to-int v3, v2

    iget-wide v11, v0, Lr5/t;->r:J

    cmp-long v2, v11, v9

    if-eqz v2, :cond_a

    invoke-virtual {v1, v9, v10, v0}, Lo5/b;->m(JLo5/j;)Lo5/j;

    move-result-object v2

    if-nez v2, :cond_b

    goto :goto_1

    :cond_a
    move-object v2, v0

    :cond_b
    invoke-virtual/range {v1 .. v6}, Lo5/b;->A(Lo5/j;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v9, Lo5/d;->m:LE1/a;

    if-ne v0, v9, :cond_c

    invoke-virtual {p0, v2, v3}, Lo5/a;->a(Lr5/t;I)V

    goto :goto_4

    :cond_c
    sget-object v3, Lo5/d;->o:LE1/a;

    if-ne v0, v3, :cond_e

    invoke-virtual {v1}, Lo5/b;->q()J

    move-result-wide v9

    cmp-long v0, v4, v9

    if-gez v0, :cond_d

    invoke-virtual {v2}, Lr5/d;->a()V

    :cond_d
    move-object v0, v2

    goto :goto_1

    :cond_e
    sget-object v1, Lo5/d;->n:LE1/a;

    if-eq v0, v1, :cond_f

    invoke-virtual {v2}, Lr5/d;->a()V

    iput-object v0, v6, Lo5/a;->b:Ljava/lang/Object;

    iput-object v8, v6, Lo5/a;->q:Lm5/f;

    :goto_2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unexpected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    invoke-virtual {v2}, Lr5/d;->a()V

    iput-object v0, v6, Lo5/a;->b:Ljava/lang/Object;

    iput-object v8, v6, Lo5/a;->q:Lm5/f;

    goto :goto_2

    :goto_3
    invoke-virtual {p1, v0, v8}, Lm5/f;->z(Ljava/lang/Object;Ld5/l;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    invoke-virtual {p1}, Lm5/f;->q()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catchall_1
    move-exception v0

    move-object v6, p0

    :goto_5
    invoke-virtual {p1}, Lm5/f;->y()V

    throw v0

    :cond_11
    move-object v6, p0

    invoke-virtual {v2}, Lr5/d;->a()V

    iput-object v0, v6, Lo5/a;->b:Ljava/lang/Object;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_12
    move-object v6, p0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "unreachable"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
