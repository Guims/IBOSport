.class public final LA5/o;
.super Lz5/a;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, LA5/o;->e:I

    iput-object p1, p0, LA5/o;->f:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Lz5/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;LD5/q;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LA5/o;->e:I

    iput-object p2, p0, LA5/o;->f:Ljava/lang/Object;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lz5/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 13

    iget v0, p0, LA5/o;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LA5/o;->f:Ljava/lang/Object;

    check-cast v0, Ld5/a;

    invoke-interface {v0}, Ld5/a;->b()Ljava/lang/Object;

    const-wide/16 v0, -0x1

    return-wide v0

    :pswitch_0
    iget-object v0, p0, LA5/o;->f:Ljava/lang/Object;

    check-cast v0, LD5/q;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    :try_start_0
    iget-object v2, v0, LD5/q;->L:LD5/z;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v3}, LD5/z;->s(IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v0, v1, v1, v2}, LD5/q;->a(IILjava/io/IOException;)V

    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0

    :pswitch_1
    iget-object v0, p0, LA5/o;->f:Ljava/lang/Object;

    check-cast v0, LA5/p;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-object v3, v0, LA5/p;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/high16 v6, -0x8000000000000000L

    move-wide v7, v6

    move-object v6, v5

    move v5, v4

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LA5/n;

    const-string v10, "connection"

    invoke-static {v9, v10}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v9

    :try_start_1
    invoke-virtual {v0, v9, v1, v2}, LA5/p;->b(LA5/n;J)I

    move-result v10

    if-lez v10, :cond_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    iget-wide v10, v9, LA5/n;->p:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long v10, v1, v10

    cmp-long v12, v10, v7

    if-lez v12, :cond_1

    move-object v6, v9

    move-wide v7, v10

    :cond_1
    :goto_2
    monitor-exit v9

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0

    :cond_2
    iget-wide v9, v0, LA5/p;->a:J

    cmp-long v3, v7, v9

    if-gez v3, :cond_6

    const/4 v3, 0x5

    if-le v4, v3, :cond_3

    goto :goto_3

    :cond_3
    if-lez v4, :cond_4

    sub-long/2addr v9, v7

    goto :goto_4

    :cond_4
    if-lez v5, :cond_5

    goto :goto_4

    :cond_5
    const-wide/16 v9, -0x1

    goto :goto_4

    :cond_6
    :goto_3
    invoke-static {v6}, Le5/g;->c(Ljava/lang/Object;)V

    monitor-enter v6

    :try_start_2
    iget-object v3, v6, LA5/n;->o:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-wide/16 v9, 0x0

    if-nez v3, :cond_7

    monitor-exit v6

    goto :goto_4

    :cond_7
    :try_start_3
    iget-wide v3, v6, LA5/n;->p:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-long/2addr v3, v7

    cmp-long v1, v3, v1

    if-eqz v1, :cond_8

    monitor-exit v6

    goto :goto_4

    :cond_8
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, v6, LA5/n;->i:Z

    iget-object v1, v0, LA5/p;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v6

    iget-object v1, v6, LA5/n;->c:Ljava/net/Socket;

    invoke-static {v1}, Le5/g;->c(Ljava/lang/Object;)V

    invoke-static {v1}, Lx5/b;->d(Ljava/net/Socket;)V

    iget-object v1, v0, LA5/p;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v0, v0, LA5/p;->b:Lz5/b;

    invoke-virtual {v0}, Lz5/b;->a()V

    :cond_9
    :goto_4
    return-wide v9

    :catchall_1
    move-exception v0

    monitor-exit v6

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
