.class public final Lz5/c;
.super Ljava/lang/Object;


# static fields
.field public static final h:Lz5/c;

.field public static final i:Ljava/util/logging/Logger;


# instance fields
.field public a:I

.field public b:Z

.field public c:J

.field public final d:Ljava/util/ArrayList;

.field public final e:Ljava/util/ArrayList;

.field public final f:Lk/S0;

.field public final g:LM4/a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lz5/c;

    new-instance v1, LM4/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lx5/b;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " TaskRunner"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-static {v2, v3}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lx5/a;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Lx5/a;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v1, v3}, LM4/a;-><init>(Lx5/a;)V

    invoke-direct {v0, v1}, Lz5/c;-><init>(LM4/a;)V

    sput-object v0, Lz5/c;->h:Lz5/c;

    const-class v0, Lz5/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "Logger.getLogger(TaskRunner::class.java.name)"

    invoke-static {v0, v1}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lz5/c;->i:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(LM4/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz5/c;->g:LM4/a;

    const/16 p1, 0x2710

    iput p1, p0, Lz5/c;->a:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lz5/c;->d:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lz5/c;->e:Ljava/util/ArrayList;

    new-instance p1, Lk/S0;

    const/4 v0, 0x7

    invoke-direct {p1, v0, p0}, Lk/S0;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lz5/c;->f:Lk/S0;

    return-void
.end method

.method public static final a(Lz5/c;Lz5/a;)V
    .locals 5

    sget-object v0, Lx5/b;->a:[B

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "currentThread"

    invoke-static {v0, v1}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lz5/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Lz5/a;->a()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1, v2, v3}, Lz5/c;->b(Lz5/a;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :catchall_1
    move-exception v2

    monitor-enter p0

    const-wide/16 v3, -0x1

    :try_start_2
    invoke-virtual {p0, p1, v3, v4}, Lz5/c;->b(Lz5/a;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit p0

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final b(Lz5/a;J)V
    .locals 4

    sget-object v0, Lx5/b;->a:[B

    iget-object v0, p1, Lz5/a;->a:Lz5/b;

    invoke-static {v0}, Le5/g;->c(Ljava/lang/Object;)V

    iget-object v1, v0, Lz5/b;->b:Lz5/a;

    if-ne v1, p1, :cond_2

    iget-boolean v1, v0, Lz5/b;->d:Z

    const/4 v2, 0x0

    iput-boolean v2, v0, Lz5/b;->d:Z

    const/4 v2, 0x0

    iput-object v2, v0, Lz5/b;->b:Lz5/a;

    iget-object v2, p0, Lz5/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lz5/b;->a:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lz5/b;->d(Lz5/a;JZ)Z

    :cond_0
    iget-object p1, v0, Lz5/b;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lz5/c;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Check failed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c()Lz5/a;
    .locals 18

    move-object/from16 v1, p0

    sget-object v0, Lx5/b;->a:[B

    :goto_0
    iget-object v0, v1, Lz5/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v15, 0x0

    goto/16 :goto_4

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v6, 0x0

    const-wide v7, 0x7fffffffffffffffL

    move v10, v6

    const/4 v9, 0x0

    :goto_1
    const-wide/16 v11, 0x0

    const/4 v13, 0x1

    if-ge v10, v2, :cond_3

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v10, v10, 0x1

    check-cast v14, Lz5/b;

    iget-object v14, v14, Lz5/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lz5/a;

    move-wide/from16 v16, v4

    const/4 v15, 0x0

    iget-wide v3, v14, Lz5/a;->b:J

    sub-long v3, v3, v16

    invoke-static {v11, v12, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    cmp-long v5, v3, v11

    if-lez v5, :cond_1

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    move-wide v7, v3

    goto :goto_2

    :cond_1
    if-eqz v9, :cond_2

    move v2, v13

    goto :goto_3

    :cond_2
    move-object v9, v14

    :goto_2
    move-wide/from16 v4, v16

    goto :goto_1

    :cond_3
    move-wide/from16 v16, v4

    const/4 v15, 0x0

    move v2, v6

    :goto_3
    iget-object v3, v1, Lz5/c;->d:Ljava/util/ArrayList;

    if-eqz v9, :cond_6

    sget-object v4, Lx5/b;->a:[B

    const-wide/16 v4, -0x1

    iput-wide v4, v9, Lz5/a;->b:J

    iget-object v4, v9, Lz5/a;->a:Lz5/b;

    invoke-static {v4}, Le5/g;->c(Ljava/lang/Object;)V

    iget-object v5, v4, Lz5/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iput-object v9, v4, Lz5/b;->b:Lz5/a;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v2, :cond_4

    iget-boolean v2, v1, Lz5/c;->b:Z

    if-nez v2, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const-string v0, "runnable"

    iget-object v2, v1, Lz5/c;->f:Lk/S0;

    invoke-static {v2, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v1, Lz5/c;->g:LM4/a;

    iget-object v0, v0, LM4/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_5
    return-object v9

    :cond_6
    iget-boolean v2, v1, Lz5/c;->b:Z

    if-eqz v2, :cond_8

    iget-wide v2, v1, Lz5/c;->c:J

    sub-long v2, v2, v16

    cmp-long v0, v7, v2

    if-gez v0, :cond_7

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    :cond_7
    :goto_4
    return-object v15

    :cond_8
    iput-boolean v13, v1, Lz5/c;->b:Z

    add-long v4, v16, v7

    iput-wide v4, v1, Lz5/c;->c:J

    const-wide/32 v4, 0xf4240

    :try_start_0
    div-long v9, v7, v4

    mul-long/2addr v4, v9

    sub-long v4, v7, v4

    cmp-long v2, v9, v11

    if-gtz v2, :cond_9

    cmp-long v2, v7, v11

    if-lez v2, :cond_a

    :cond_9
    long-to-int v2, v4

    invoke-virtual {v1, v9, v10, v2}, Ljava/lang/Object;->wait(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_a
    iput-boolean v6, v1, Lz5/c;->b:Z

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_0
    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v13

    :goto_5
    if-ltz v2, :cond_b

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lz5/b;

    invoke-virtual {v4}, Lz5/b;->b()Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    :cond_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v13

    :goto_6
    if-ltz v2, :cond_a

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz5/b;

    invoke-virtual {v3}, Lz5/b;->b()Z

    iget-object v3, v3, Lz5/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_c
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    :goto_7
    iput-boolean v6, v1, Lz5/c;->b:Z

    throw v0
.end method

.method public final d(Lz5/b;)V
    .locals 2

    const-string v0, "taskQueue"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lx5/b;->a:[B

    iget-object v0, p1, Lz5/b;->b:Lz5/a;

    if-nez v0, :cond_1

    iget-object v0, p1, Lz5/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lz5/c;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const-string v0, "$this$addIfAbsent"

    invoke-static {v1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-boolean p1, p0, Lz5/c;->b:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    return-void

    :cond_2
    const-string p1, "runnable"

    iget-object v0, p0, Lz5/c;->f:Lk/S0;

    invoke-static {v0, p1}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lz5/c;->g:LM4/a;

    iget-object p1, p1, LM4/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e()Lz5/b;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lz5/c;->a:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lz5/c;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    new-instance v1, Lz5/b;

    const-string v2, "Q"

    invoke-static {v0, v2}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lz5/b;-><init>(Lz5/c;Ljava/lang/String;)V

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
