.class public final LC5/c;
.super Ljava/lang/Object;

# interfaces
.implements LK5/D;


# instance fields
.field public final b:LK5/p;

.field public q:Z

.field public final synthetic r:LC5/h;


# direct methods
.method public constructor <init>(LC5/h;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LC5/c;->r:LC5/h;

    new-instance v0, LK5/p;

    iget-object p1, p1, LC5/h;->g:Ljava/lang/Object;

    check-cast p1, LK5/h;

    invoke-interface {p1}, LK5/D;->timeout()LK5/H;

    move-result-object p1

    invoke-direct {v0, p1}, LK5/p;-><init>(LK5/H;)V

    iput-object v0, p0, LC5/c;->b:LK5/p;

    return-void
.end method


# virtual methods
.method public final declared-synchronized close()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LC5/c;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, LC5/c;->q:Z

    iget-object v0, p0, LC5/c;->r:LC5/h;

    iget-object v0, v0, LC5/h;->g:Ljava/lang/Object;

    check-cast v0, LK5/h;

    const-string v1, "0\r\n\r\n"

    invoke-interface {v0, v1}, LK5/h;->i(Ljava/lang/String;)LK5/h;

    iget-object v0, p0, LC5/c;->b:LK5/p;

    iget-object v1, v0, LK5/p;->e:LK5/H;

    sget-object v2, LK5/H;->d:LK5/G;

    iput-object v2, v0, LK5/p;->e:LK5/H;

    invoke-virtual {v1}, LK5/H;->a()LK5/H;

    invoke-virtual {v1}, LK5/H;->b()LK5/H;

    iget-object v0, p0, LC5/c;->r:LC5/h;

    const/4 v1, 0x3

    iput v1, v0, LC5/h;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized flush()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LC5/c;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, LC5/c;->r:LC5/h;

    iget-object v0, v0, LC5/h;->g:Ljava/lang/Object;

    check-cast v0, LK5/h;

    invoke-interface {v0}, LK5/h;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final q(LK5/g;J)V
    .locals 3

    iget-object v0, p0, LC5/c;->r:LC5/h;

    iget-object v0, v0, LC5/h;->g:Ljava/lang/Object;

    check-cast v0, LK5/h;

    iget-boolean v1, p0, LC5/c;->q:Z

    if-nez v1, :cond_1

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p2, p3}, LK5/h;->l(J)LK5/h;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, LK5/h;->i(Ljava/lang/String;)LK5/h;

    invoke-interface {v0, p1, p2, p3}, LK5/D;->q(LK5/g;J)V

    invoke-interface {v0, v1}, LK5/h;->i(Ljava/lang/String;)LK5/h;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final timeout()LK5/H;
    .locals 1

    iget-object v0, p0, LC5/c;->b:LK5/p;

    return-object v0
.end method
