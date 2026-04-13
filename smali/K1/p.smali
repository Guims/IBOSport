.class public final LK1/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final q:LZ1/f;

.field public final synthetic r:LK1/s;


# direct methods
.method public synthetic constructor <init>(LK1/s;LZ1/f;I)V
    .locals 0

    iput p3, p0, LK1/p;->b:I

    iput-object p1, p0, LK1/p;->r:LK1/s;

    iput-object p2, p0, LK1/p;->q:LZ1/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, LK1/p;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LK1/p;->q:LZ1/f;

    iget-object v1, v0, LZ1/f;->b:Le2/e;

    invoke-virtual {v1}, Le2/e;->a()V

    iget-object v0, v0, LZ1/f;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LK1/p;->r:LK1/s;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v2, p0, LK1/p;->r:LK1/s;

    iget-object v2, v2, LK1/s;->b:LK1/r;

    iget-object v3, p0, LK1/p;->q:LZ1/f;

    iget-object v2, v2, LK1/r;->q:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    new-instance v4, LK1/q;

    sget-object v5, Ld2/f;->b:LL2/p;

    invoke-direct {v4, v3, v5}, LK1/q;-><init>(LZ1/f;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, LK1/p;->r:LK1/s;

    iget-object v2, v2, LK1/s;->H:LK1/w;

    invoke-virtual {v2}, LK1/w;->d()V

    iget-object v2, p0, LK1/p;->r:LK1/s;

    iget-object v3, p0, LK1/p;->q:LZ1/f;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v4, v2, LK1/s;->H:LK1/w;

    iget v5, v2, LK1/s;->D:I

    iget-boolean v2, v2, LK1/s;->K:Z

    invoke-virtual {v3, v4, v5, v2}, LZ1/f;->f(LK1/D;IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v2, p0, LK1/p;->r:LK1/s;

    iget-object v3, p0, LK1/p;->q:LZ1/f;

    invoke-virtual {v2, v3}, LK1/s;->h(LZ1/f;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catchall_1
    move-exception v2

    new-instance v3, LK1/d;

    invoke-direct {v3, v2}, LK1/d;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_0
    :goto_0
    iget-object v2, p0, LK1/p;->r:LK1/s;

    invoke-virtual {v2}, LK1/s;->c()V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    :catchall_2
    move-exception v1

    goto :goto_2

    :goto_1
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2

    :goto_2
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1

    :pswitch_0
    iget-object v0, p0, LK1/p;->q:LZ1/f;

    iget-object v1, v0, LZ1/f;->b:Le2/e;

    invoke-virtual {v1}, Le2/e;->a()V

    iget-object v0, v0, LZ1/f;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, LK1/p;->r:LK1/s;

    monitor-enter v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :try_start_8
    iget-object v2, p0, LK1/p;->r:LK1/s;

    iget-object v2, v2, LK1/s;->b:LK1/r;

    iget-object v3, p0, LK1/p;->q:LZ1/f;

    iget-object v2, v2, LK1/r;->q:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    new-instance v4, LK1/q;

    sget-object v5, Ld2/f;->b:LL2/p;

    invoke-direct {v4, v3, v5}, LK1/q;-><init>(LZ1/f;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, LK1/p;->r:LK1/s;

    iget-object v3, p0, LK1/p;->q:LZ1/f;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    iget-object v2, v2, LK1/s;->F:LK1/y;

    const/4 v4, 0x5

    invoke-virtual {v3, v2, v4}, LZ1/f;->e(LK1/y;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v2

    :try_start_a
    new-instance v3, LK1/d;

    invoke-direct {v3, v2}, LK1/d;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catchall_4
    move-exception v2

    goto :goto_4

    :cond_1
    :goto_3
    iget-object v2, p0, LK1/p;->r:LK1/s;

    invoke-virtual {v2}, LK1/s;->c()V

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    return-void

    :catchall_5
    move-exception v1

    goto :goto_5

    :goto_4
    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    throw v2

    :goto_5
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
