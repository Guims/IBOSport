.class public final LA5/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public volatile b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final q:Lw5/f;

.field public final synthetic r:LA5/j;


# direct methods
.method public constructor <init>(LA5/j;Lw5/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LA5/g;->r:LA5/j;

    iput-object p2, p0, LA5/g;->q:Lw5/f;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, LA5/g;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const-string v0, "Callback failure for "

    const-string v1, "canceled due to "

    iget-object v2, p0, LA5/g;->r:LA5/j;

    iget-object v2, v2, LA5/j;->E:Lw5/B;

    iget-object v2, v2, Lw5/B;->b:Lw5/r;

    invoke-virtual {v2}, Lw5/r;->g()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OkHttp "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    const-string v4, "currentThread"

    invoke-static {v3, v4}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, LA5/g;->r:LA5/j;

    iget-object v2, v2, LA5/j;->q:LA5/i;

    invoke-virtual {v2}, LK5/d;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :try_start_1
    iget-object v5, p0, LA5/g;->r:LA5/j;

    invoke-virtual {v5}, LA5/j;->f()Lw5/H;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v5, 0x1

    :try_start_2
    iget-object v6, p0, LA5/g;->q:Lw5/f;

    iget-object v7, p0, LA5/g;->r:LA5/j;

    invoke-interface {v6, v7, v2}, Lw5/f;->onResponse(Lw5/e;Lw5/H;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v0, p0, LA5/g;->r:LA5/j;

    iget-object v0, v0, LA5/j;->D:Lw5/y;

    :goto_0
    iget-object v0, v0, Lw5/y;->b:LK1/c;

    invoke-virtual {v0, p0}, LK1/c;->n(LA5/g;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    move v2, v5

    goto :goto_1

    :catch_0
    move-exception v1

    move v2, v5

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_3

    :goto_1
    :try_start_4
    iget-object v5, p0, LA5/g;->r:LA5/j;

    invoke-virtual {v5}, LA5/j;->cancel()V

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0}, LE5/d;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    iget-object v1, p0, LA5/g;->q:Lw5/f;

    iget-object v5, p0, LA5/g;->r:LA5/j;

    invoke-interface {v1, v5, v2}, Lw5/f;->onFailure(Lw5/e;Ljava/io/IOException;)V

    goto :goto_2

    :catchall_3
    move-exception v0

    goto :goto_6

    :cond_0
    :goto_2
    throw v0

    :goto_3
    if-eqz v2, :cond_1

    sget-object v2, LE5/n;->a:LE5/n;

    sget-object v2, LE5/n;->a:LE5/n;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, LA5/g;->r:LA5/j;

    invoke-static {v0}, LA5/j;->a(LA5/j;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, LE5/n;->i(Ljava/lang/String;Ljava/lang/Throwable;I)V

    goto :goto_4

    :cond_1
    iget-object v0, p0, LA5/g;->q:Lw5/f;

    iget-object v2, p0, LA5/g;->r:LA5/j;

    invoke-interface {v0, v2, v1}, Lw5/f;->onFailure(Lw5/e;Ljava/io/IOException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :goto_4
    :try_start_5
    iget-object v0, p0, LA5/g;->r:LA5/j;

    iget-object v0, v0, LA5/j;->D:Lw5/y;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :goto_5
    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void

    :goto_6
    :try_start_6
    iget-object v1, p0, LA5/g;->r:LA5/j;

    iget-object v1, v1, LA5/j;->D:Lw5/y;

    iget-object v1, v1, Lw5/y;->b:LK1/c;

    invoke-virtual {v1, p0}, LK1/c;->n(LA5/g;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_7
    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v0
.end method
