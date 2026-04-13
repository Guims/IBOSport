.class public final LK1/o;
.super Ljava/lang/Object;

# interfaces
.implements LK1/t;
.implements LK1/v;


# static fields
.field public static final h:Z


# instance fields
.field public final a:LK1/A;

.field public final b:Lh3/e;

.field public final c:LM1/e;

.field public final d:Lk/d1;

.field public final e:LB0/i;

.field public final f:LA/d;

.field public final g:LK1/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Engine"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, LK1/o;->h:Z

    return-void
.end method

.method public constructor <init>(LM1/e;LL2/o;LN1/d;LN1/d;LN1/d;LN1/d;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK1/o;->c:LM1/e;

    new-instance v0, LK1/n;

    invoke-direct {v0, p2}, LK1/n;-><init>(Ljava/lang/Object;)V

    new-instance p2, LK1/c;

    const/4 v1, 0x0

    invoke-direct {p2, v1}, LK1/c;-><init>(I)V

    iput-object p2, p0, LK1/o;->g:LK1/c;

    monitor-enter p0

    :try_start_0
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iput-object p0, p2, LK1/c;->t:Ljava/lang/Object;

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-instance p2, Lh3/e;

    const/16 v1, 0x8

    invoke-direct {p2, v1}, Lh3/e;-><init>(I)V

    iput-object p2, p0, LK1/o;->b:Lh3/e;

    new-instance p2, LK1/A;

    const/4 v1, 0x0

    invoke-direct {p2, v1}, LK1/A;-><init>(I)V

    iput-object p2, p0, LK1/o;->a:LK1/A;

    new-instance v2, Lk/d1;

    move-object v8, p0

    move-object v7, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v2 .. v8}, Lk/d1;-><init>(LN1/d;LN1/d;LN1/d;LN1/d;LK1/o;LK1/o;)V

    iput-object v2, v7, LK1/o;->d:Lk/d1;

    new-instance p2, LA/d;

    invoke-direct {p2, v0}, LA/d;-><init>(LK1/n;)V

    iput-object p2, v7, LK1/o;->f:LA/d;

    new-instance p2, LB0/i;

    const/4 p3, 0x4

    invoke-direct {p2, p3}, LB0/i;-><init>(I)V

    iput-object p2, v7, LK1/o;->e:LB0/i;

    iput-object v7, p1, LM1/e;->d:LK1/o;

    return-void

    :catchall_0
    move-exception v0

    move-object v7, p0

    :goto_0
    move-object p1, v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v7, p0

    :goto_1
    move-object p1, v0

    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    throw p1

    :catchall_2
    move-exception v0

    goto :goto_0

    :catchall_3
    move-exception v0

    goto :goto_1

    :goto_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method public static c(Ljava/lang/String;JLK1/u;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " in "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ld2/h;->a(J)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, "ms, key: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Engine"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static f(LK1/D;)V
    .locals 1

    instance-of v0, p0, LK1/w;

    if-eqz v0, :cond_0

    check-cast p0, LK1/w;

    invoke-virtual {p0}, LK1/w;->e()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot release anything but an EngineResource"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/e;Ljava/lang/Object;LI1/f;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/g;LK1/m;Ld2/c;ZZLI1/j;ZZLZ1/f;LL2/p;)LJ/l;
    .locals 23

    move-object/from16 v2, p0

    sget-boolean v0, LK1/o;->h:Z

    if-eqz v0, :cond_0

    sget v0, Ld2/h;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iget-object v3, v2, LK1/o;->b:Lh3/e;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, LK1/u;

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v9, p10

    move-object/from16 v12, p13

    invoke-direct/range {v4 .. v12}, LK1/u;-><init>(Ljava/lang/Object;LI1/f;IILjava/util/Map;Ljava/lang/Class;Ljava/lang/Class;LI1/j;)V

    monitor-enter p0

    move/from16 v3, p14

    :try_start_0
    invoke-virtual {v2, v4, v3, v0, v1}, LK1/o;->b(LK1/u;ZJ)LK1/w;

    move-result-object v5

    if-nez v5, :cond_1

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move-object/from16 v15, p13

    move/from16 v17, p15

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    move-wide/from16 v21, v0

    move/from16 v16, v3

    move-object/from16 v20, v4

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v22}, LK1/o;->g(Lcom/bumptech/glide/e;Ljava/lang/Object;LI1/f;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/g;LK1/m;Ljava/util/Map;ZZLI1/j;ZZLZ1/f;Ljava/util/concurrent/Executor;LK1/u;J)LJ/l;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    move-object v0, v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x5

    const/4 v2, 0x0

    move-object/from16 v3, p16

    invoke-virtual {v3, v0, v1, v2}, LZ1/f;->f(LK1/D;IZ)V

    const/4 v0, 0x0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final b(LK1/u;ZJ)LK1/w;
    .locals 7

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object v6, p0

    goto/16 :goto_4

    :cond_0
    iget-object p2, p0, LK1/o;->g:LK1/c;

    monitor-enter p2

    :try_start_0
    iget-object v1, p2, LK1/c;->r:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LK1/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v1, :cond_1

    monitor-exit p2

    move-object v2, v0

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LK1/w;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-nez v2, :cond_2

    :try_start_2
    invoke-virtual {p2, v1}, LK1/c;->g(LK1/b;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v6, p0

    goto/16 :goto_7

    :cond_2
    :goto_0
    monitor-exit p2

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, LK1/w;->d()V

    :cond_3
    if-eqz v2, :cond_5

    sget-boolean p2, LK1/o;->h:Z

    if-eqz p2, :cond_4

    const-string p2, "Loaded resource from active resources"

    invoke-static {p2, p3, p4, p1}, LK1/o;->c(Ljava/lang/String;JLK1/u;)V

    :cond_4
    return-object v2

    :cond_5
    iget-object v1, p0, LK1/o;->c:LM1/e;

    monitor-enter v1

    :try_start_3
    iget-object p2, v1, Ld2/j;->c:Ljava/io/Serializable;

    check-cast p2, Ljava/util/LinkedHashMap;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ld2/i;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez p2, :cond_6

    monitor-exit v1

    move-object p2, v0

    goto :goto_2

    :cond_6
    :try_start_4
    iget-wide v2, v1, Ld2/j;->b:J

    iget v4, p2, Ld2/i;->b:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iput-wide v2, v1, Ld2/j;->b:J

    iget-object p2, p2, Ld2/i;->a:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v1

    :goto_2
    move-object v2, p2

    check-cast v2, LK1/D;

    if-nez v2, :cond_7

    move-object v6, p0

    move-object v5, p1

    move-object v2, v0

    goto :goto_3

    :cond_7
    instance-of p2, v2, LK1/w;

    if-eqz p2, :cond_8

    check-cast v2, LK1/w;

    move-object v6, p0

    move-object v5, p1

    goto :goto_3

    :cond_8
    new-instance v1, LK1/w;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v6, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, LK1/w;-><init>(LK1/D;ZZLI1/f;LK1/v;)V

    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_9

    invoke-virtual {v2}, LK1/w;->d()V

    iget-object p1, v6, LK1/o;->g:LK1/c;

    invoke-virtual {p1, v5, v2}, LK1/c;->c(LI1/f;LK1/w;)V

    :cond_9
    if-eqz v2, :cond_b

    sget-boolean p1, LK1/o;->h:Z

    if-eqz p1, :cond_a

    const-string p1, "Loaded resource from cache"

    invoke-static {p1, p3, p4, v5}, LK1/o;->c(Ljava/lang/String;JLK1/u;)V

    :cond_a
    return-object v2

    :cond_b
    :goto_4
    return-object v0

    :catchall_1
    move-exception v0

    move-object v6, p0

    :goto_5
    move-object p1, v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1

    :catchall_2
    move-exception v0

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v6, p0

    :goto_6
    move-object p1, v0

    :goto_7
    :try_start_6
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw p1

    :catchall_4
    move-exception v0

    goto :goto_6
.end method

.method public final declared-synchronized d(LK1/s;LI1/f;LK1/w;)V
    .locals 1

    monitor-enter p0

    if-eqz p3, :cond_0

    :try_start_0
    iget-boolean v0, p3, LK1/w;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LK1/o;->g:LK1/c;

    invoke-virtual {v0, p2, p3}, LK1/c;->c(LI1/f;LK1/w;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p3, p0, LK1/o;->a:LK1/A;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p3, LK1/A;->a:Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final e(LI1/f;LK1/w;)V
    .locals 3

    iget-object v0, p0, LK1/o;->g:LK1/c;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, LK1/c;->r:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LK1/b;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    iput-object v2, v1, LK1/b;->c:LK1/D;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    iget-boolean v0, p2, LK1/w;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, LK1/o;->c:LM1/e;

    invoke-virtual {v0, p1, p2}, Ld2/j;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LK1/D;

    return-void

    :cond_1
    iget-object p1, p0, LK1/o;->e:LB0/i;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, LB0/i;->e(LK1/D;Z)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final g(Lcom/bumptech/glide/e;Ljava/lang/Object;LI1/f;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/g;LK1/m;Ljava/util/Map;ZZLI1/j;ZZLZ1/f;Ljava/util/concurrent/Executor;LK1/u;J)LJ/l;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p13

    move-object/from16 v9, p16

    move-object/from16 v10, p17

    move-object/from16 v11, p18

    move-wide/from16 v12, p19

    iget-object v14, v1, LK1/o;->a:LK1/A;

    iget-object v14, v14, LK1/A;->a:Ljava/util/HashMap;

    invoke-virtual {v14, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, LK1/s;

    if-eqz v14, :cond_1

    invoke-virtual {v14, v9, v10}, LK1/s;->a(LZ1/f;Ljava/util/concurrent/Executor;)V

    sget-boolean v0, LK1/o;->h:Z

    if-eqz v0, :cond_0

    const-string v0, "Added to existing load"

    invoke-static {v0, v12, v13, v11}, LK1/o;->c(Ljava/lang/String;JLK1/u;)V

    :cond_0
    new-instance v0, LJ/l;

    invoke-direct {v0, v1, v9, v14}, LJ/l;-><init>(LK1/o;LZ1/f;LK1/s;)V

    return-object v0

    :cond_1
    iget-object v14, v1, LK1/o;->d:Lk/d1;

    iget-object v14, v14, Lk/d1;->g:Ljava/lang/Object;

    check-cast v14, LJ/l;

    invoke-virtual {v14}, LJ/l;->p()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, LK1/s;

    monitor-enter v14

    :try_start_0
    iput-object v11, v14, LK1/s;->z:LK1/u;

    move/from16 v15, p14

    iput-boolean v15, v14, LK1/s;->A:Z

    move/from16 v15, p15

    iput-boolean v15, v14, LK1/s;->B:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v14

    iget-object v15, v1, LK1/o;->f:LA/d;

    iget-object v12, v15, LA/d;->s:Ljava/lang/Object;

    check-cast v12, LJ/l;

    invoke-virtual {v12}, LJ/l;->p()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LK1/k;

    iget v13, v15, LA/d;->q:I

    add-int/lit8 v9, v13, 0x1

    iput v9, v15, LA/d;->q:I

    iget-object v9, v12, LK1/k;->b:LK1/i;

    iget-object v15, v12, LK1/k;->s:LK1/n;

    iput-object v0, v9, LK1/i;->c:Lcom/bumptech/glide/e;

    iput-object v2, v9, LK1/i;->d:Ljava/lang/Object;

    iput-object v3, v9, LK1/i;->n:LI1/f;

    iput v4, v9, LK1/i;->e:I

    iput v5, v9, LK1/i;->f:I

    iput-object v7, v9, LK1/i;->p:LK1/m;

    move-object/from16 v10, p6

    iput-object v10, v9, LK1/i;->g:Ljava/lang/Class;

    iput-object v15, v9, LK1/i;->h:LK1/n;

    move-object/from16 v10, p7

    iput-object v10, v9, LK1/i;->k:Ljava/lang/Class;

    iput-object v6, v9, LK1/i;->o:Lcom/bumptech/glide/g;

    iput-object v8, v9, LK1/i;->i:LI1/j;

    move-object/from16 v10, p10

    iput-object v10, v9, LK1/i;->j:Ljava/util/Map;

    move/from16 v10, p11

    iput-boolean v10, v9, LK1/i;->q:Z

    move/from16 v10, p12

    iput-boolean v10, v9, LK1/i;->r:Z

    iput-object v0, v12, LK1/k;->w:Lcom/bumptech/glide/e;

    iput-object v3, v12, LK1/k;->x:LI1/f;

    iput-object v6, v12, LK1/k;->y:Lcom/bumptech/glide/g;

    iput-object v11, v12, LK1/k;->z:LK1/u;

    iput v4, v12, LK1/k;->A:I

    iput v5, v12, LK1/k;->B:I

    iput-object v7, v12, LK1/k;->C:LK1/m;

    iput-object v8, v12, LK1/k;->D:LI1/j;

    iput-object v14, v12, LK1/k;->E:LK1/s;

    iput v13, v12, LK1/k;->F:I

    const/4 v0, 0x1

    iput v0, v12, LK1/k;->S:I

    iput-object v2, v12, LK1/k;->H:Ljava/lang/Object;

    iget-object v2, v1, LK1/o;->a:LK1/A;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, LK1/A;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v11, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v9, p16

    move-object/from16 v10, p17

    invoke-virtual {v14, v9, v10}, LK1/s;->a(LZ1/f;Ljava/util/concurrent/Executor;)V

    monitor-enter v14

    :try_start_1
    iput-object v12, v14, LK1/s;->I:LK1/k;

    invoke-virtual {v12, v0}, LK1/k;->h(I)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v0, v14, LK1/s;->B:Z

    if-eqz v0, :cond_3

    iget-object v0, v14, LK1/s;->x:LN1/d;

    goto :goto_1

    :cond_3
    iget-object v0, v14, LK1/s;->w:LN1/d;

    goto :goto_1

    :cond_4
    :goto_0
    iget-object v0, v14, LK1/s;->v:LN1/d;

    :goto_1
    invoke-virtual {v0, v12}, LN1/d;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v14

    sget-boolean v0, LK1/o;->h:Z

    if-eqz v0, :cond_5

    const-string v0, "Started new load"

    move-wide/from16 v12, p19

    invoke-static {v0, v12, v13, v11}, LK1/o;->c(Ljava/lang/String;JLK1/u;)V

    :cond_5
    new-instance v0, LJ/l;

    invoke-direct {v0, v1, v9, v14}, LJ/l;-><init>(LK1/o;LZ1/f;LK1/s;)V

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
