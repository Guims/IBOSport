.class public final LL2/i;
.super Ljava/lang/Object;


# instance fields
.field public final a:LL2/r;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LL2/r;

    invoke-direct {v0}, LL2/r;-><init>()V

    iput-object v0, p0, LL2/i;->a:LL2/r;

    return-void
.end method

.method public constructor <init>(Le4/c;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LL2/r;

    invoke-direct {v0}, LL2/r;-><init>()V

    iput-object v0, p0, LL2/i;->a:LL2/r;

    new-instance v0, LL2/o;

    invoke-direct {v0, p0}, LL2/o;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Le4/c;

    const/16 v2, 0x1b

    invoke-direct {v1, v2, v0}, Le4/c;-><init>(ILjava/lang/Object;)V

    iget-object p1, p1, Le4/c;->q:Ljava/lang/Object;

    check-cast p1, LL2/r;

    sget-object v0, LL2/j;->a:LL2/q;

    invoke-virtual {p1, v0, v1}, LL2/r;->b(Ljava/util/concurrent/Executor;LL2/f;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, LL2/i;->a:LL2/r;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "Exception must not be null"

    invoke-static {p1, v1}, Lx2/o;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, LL2/r;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, v0, LL2/r;->c:Z

    if-eqz v2, :cond_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v0, LL2/r;->c:Z

    iput-object p1, v0, LL2/r;->f:Ljava/lang/Exception;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, v0, LL2/r;->b:Lcom/bumptech/glide/manager/r;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/manager/r;->l(LL2/r;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LL2/i;->a:LL2/r;

    invoke-virtual {v0, p1}, LL2/r;->l(Ljava/lang/Object;)Z

    return-void
.end method
