.class public final LL2/m;
.super Ljava/lang/Object;

# interfaces
.implements LL2/n;
.implements LL2/f;
.implements LL2/e;
.implements LL2/c;


# instance fields
.field public final synthetic b:I

.field public final q:Ljava/util/concurrent/Executor;

.field public final r:Ljava/lang/Object;

.field public final s:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;LL2/c;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LL2/m;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LL2/m;->r:Ljava/lang/Object;

    iput-object p1, p0, LL2/m;->q:Ljava/util/concurrent/Executor;

    iput-object p2, p0, LL2/m;->s:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;LL2/d;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LL2/m;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LL2/m;->r:Ljava/lang/Object;

    iput-object p1, p0, LL2/m;->q:Ljava/util/concurrent/Executor;

    iput-object p2, p0, LL2/m;->s:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;LL2/e;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LL2/m;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LL2/m;->r:Ljava/lang/Object;

    iput-object p1, p0, LL2/m;->q:Ljava/util/concurrent/Executor;

    iput-object p2, p0, LL2/m;->s:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;LL2/f;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, LL2/m;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LL2/m;->r:Ljava/lang/Object;

    iput-object p1, p0, LL2/m;->q:Ljava/util/concurrent/Executor;

    iput-object p2, p0, LL2/m;->s:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;LL2/h;LL2/r;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, LL2/m;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LL2/m;->q:Ljava/util/concurrent/Executor;

    iput-object p2, p0, LL2/m;->r:Ljava/lang/Object;

    iput-object p3, p0, LL2/m;->s:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(LL2/r;)V
    .locals 4

    iget v0, p0, LL2/m;->b:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, LE1/k;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, LE1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    iget-object p1, p0, LL2/m;->q:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    invoke-virtual {p1}, LL2/r;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LL2/m;->r:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, LL2/m;->q:Ljava/util/concurrent/Executor;

    new-instance v1, LE1/k;

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v2, v3}, LE1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    invoke-virtual {p1}, LL2/r;->g()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p1, LL2/r;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, LL2/m;->r:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, LL2/m;->q:Ljava/util/concurrent/Executor;

    new-instance v1, LE1/k;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v2, v3}, LE1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_1
    :goto_1
    return-void

    :pswitch_2
    iget-object v0, p0, LL2/m;->r:Ljava/lang/Object;

    monitor-enter v0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iget-object v0, p0, LL2/m;->q:Ljava/util/concurrent/Executor;

    new-instance v1, LE1/k;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v2, v3}, LE1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_2
    move-exception p1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1

    :pswitch_3
    iget-boolean p1, p1, LL2/r;->d:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, LL2/m;->r:Ljava/lang/Object;

    monitor-enter p1

    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    iget-object p1, p0, LL2/m;->q:Ljava/util/concurrent/Executor;

    new-instance v0, LA4/f;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, LA4/f;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :cond_2
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LL2/m;->s:Ljava/lang/Object;

    check-cast v0, LL2/r;

    invoke-virtual {v0, p1}, LL2/r;->j(Ljava/lang/Object;)V

    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, LL2/m;->s:Ljava/lang/Object;

    check-cast v0, LL2/r;

    invoke-virtual {v0}, LL2/r;->k()V

    return-void
.end method

.method public q(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, LL2/m;->s:Ljava/lang/Object;

    check-cast v0, LL2/r;

    invoke-virtual {v0, p1}, LL2/r;->i(Ljava/lang/Exception;)V

    return-void
.end method
