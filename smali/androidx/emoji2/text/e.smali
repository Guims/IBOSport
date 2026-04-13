.class public final Landroidx/emoji2/text/e;
.super La/a;


# instance fields
.field public final synthetic a:LA3/c;


# direct methods
.method public constructor <init>(LA3/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/emoji2/text/e;->a:LA3/c;

    return-void
.end method


# virtual methods
.method public final F(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Landroidx/emoji2/text/e;->a:LA3/c;

    iget-object v0, v0, LA3/c;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/emoji2/text/j;

    invoke-virtual {v0, p1}, Landroidx/emoji2/text/j;->d(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final G(LK1/c;)V
    .locals 6

    iget-object v0, p0, Landroidx/emoji2/text/e;->a:LA3/c;

    iput-object p1, v0, LA3/c;->c:Ljava/lang/Object;

    new-instance p1, LJ/l;

    iget-object v1, v0, LA3/c;->c:Ljava/lang/Object;

    check-cast v1, LK1/c;

    iget-object v2, v0, LA3/c;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/emoji2/text/j;

    iget-object v3, v2, Landroidx/emoji2/text/j;->g:LW3/e;

    iget-object v2, v2, Landroidx/emoji2/text/j;->i:Landroidx/emoji2/text/d;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x22

    if-lt v4, v5, :cond_0

    invoke-static {}, Landroidx/emoji2/text/m;->a()Ljava/util/Set;

    move-result-object v4

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/support/v4/media/session/b;->k()Ljava/util/Set;

    move-result-object v4

    :goto_0
    invoke-direct {p1, v1, v3, v2, v4}, LJ/l;-><init>(LK1/c;LW3/e;Landroidx/emoji2/text/d;Ljava/util/Set;)V

    iput-object p1, v0, LA3/c;->a:Ljava/lang/Object;

    iget-object p1, v0, LA3/c;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/emoji2/text/j;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p1, Landroidx/emoji2/text/j;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x1

    :try_start_0
    iput v1, p1, Landroidx/emoji2/text/j;->c:I

    iget-object v1, p1, Landroidx/emoji2/text/j;->b:Ln/f;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p1, Landroidx/emoji2/text/j;->b:Ln/f;

    invoke-virtual {v1}, Ln/f;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p1, Landroidx/emoji2/text/j;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v1, p1, Landroidx/emoji2/text/j;->d:Landroid/os/Handler;

    new-instance v2, LG/a;

    iget p1, p1, Landroidx/emoji2/text/j;->c:I

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v3}, LG/a;-><init>(Ljava/util/List;ILjava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    iget-object p1, p1, Landroidx/emoji2/text/j;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
