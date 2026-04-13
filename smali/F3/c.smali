.class public final LF3/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final b:Ljava/util/concurrent/ExecutorService;

.field public final q:Ljava/lang/Object;

.field public r:LL2/r;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LF3/c;->q:Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {v0}, LE5/l;->t(Ljava/lang/Object;)LL2/r;

    move-result-object v0

    iput-object v0, p0, LF3/c;->r:LL2/r;

    iput-object p1, p0, LF3/c;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)LL2/r;
    .locals 5

    iget-object v0, p0, LF3/c;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LF3/c;->r:LL2/r;

    iget-object v2, p0, LF3/c;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v3, LA3/d;

    const/4 v4, 0x7

    invoke-direct {v3, v4, p1}, LA3/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, LL2/r;->c(Ljava/util/concurrent/Executor;LL2/a;)LL2/r;

    move-result-object p1

    iput-object p1, p0, LF3/c;->r:LL2/r;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, LF3/c;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
