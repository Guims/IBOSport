.class public final LV/i;
.super Ljava/lang/Object;

# interfaces
.implements LT/a;


# instance fields
.field public final a:LK5/n;

.field public final b:LK5/x;

.field public final c:LT/S;

.field public final d:LV/e;

.field public final e:LV/a;

.field public final f:Lu5/d;


# direct methods
.method public constructor <init>(LK5/n;LK5/x;LT/S;LV/e;)V
    .locals 1

    const-string v0, "fileSystem"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coordinator"

    invoke-static {p3, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LV/i;->a:LK5/n;

    iput-object p2, p0, LV/i;->b:LK5/x;

    iput-object p3, p0, LV/i;->c:LT/S;

    iput-object p4, p0, LV/i;->d:LV/e;

    new-instance p1, LV/a;

    invoke-direct {p1}, LV/a;-><init>()V

    iput-object p1, p0, LV/i;->e:LV/a;

    invoke-static {}, Lu5/e;->a()Lu5/d;

    move-result-object p1

    iput-object p1, p0, LV/i;->f:Lu5/d;

    return-void
.end method


# virtual methods
.method public final a(LT/q;LX4/c;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, LV/g;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LV/g;

    iget v1, v0, LV/g;->u:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LV/g;->u:I

    goto :goto_0

    :cond_0
    new-instance v0, LV/g;

    invoke-direct {v0, p0, p2}, LV/g;-><init>(LV/i;LX4/c;)V

    :goto_0
    iget-object p2, v0, LV/g;->s:Ljava/lang/Object;

    iget v1, v0, LV/g;->u:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-boolean p1, v0, LV/g;->r:Z

    iget-object v1, v0, LV/g;->q:LV/c;

    iget-object v0, v0, LV/g;->b:LV/i;

    :try_start_0
    invoke-static {p2}, LE5/l;->C(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, LE5/l;->C(Ljava/lang/Object;)V

    iget-object p2, p0, LV/i;->e:LV/a;

    iget-object p2, p2, LV/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_7

    iget-object p2, p0, LV/i;->f:Lu5/d;

    invoke-virtual {p2}, Lu5/d;->e()Z

    move-result p2

    :try_start_1
    new-instance v1, LV/c;

    iget-object v4, p0, LV/i;->a:LK5/n;

    iget-object v5, p0, LV/i;->b:LK5/x;

    invoke-direct {v1, v4, v5}, LV/c;-><init>(LK5/n;LK5/x;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    :try_start_2
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object p0, v0, LV/g;->b:LV/i;

    iput-object v1, v0, LV/g;->q:LV/c;

    iput-boolean p2, v0, LV/g;->r:Z

    iput v2, v0, LV/g;->u:I

    invoke-virtual {p1, v1, v4, v0}, LT/q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    sget-object v0, LW4/a;->b:LW4/a;

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    move v0, p2

    move-object p2, p1

    move p1, v0

    move-object v0, p0

    :goto_1
    :try_start_3
    invoke-interface {v1}, LT/a;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v1, v3

    goto :goto_2

    :catchall_1
    move-exception v1

    :goto_2
    if-nez v1, :cond_5

    if-eqz p1, :cond_4

    iget-object p1, v0, LV/i;->f:Lu5/d;

    invoke-virtual {p1, v3}, Lu5/d;->f(Ljava/lang/Object;)V

    :cond_4
    return-object p2

    :cond_5
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p2

    goto :goto_5

    :catchall_3
    move-exception p1

    move v0, p2

    move-object p2, p1

    move p1, v0

    move-object v0, p0

    :goto_3
    :try_start_5
    invoke-interface {v1}, LT/a;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v1

    :try_start_6
    invoke-static {p2, v1}, LE5/d;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_4
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_5
    move-exception p1

    move v0, p2

    move-object p2, p1

    move p1, v0

    move-object v0, p0

    :goto_5
    if-eqz p1, :cond_6

    iget-object p1, v0, LV/i;->f:Lu5/d;

    invoke-virtual {p1, v3}, Lu5/d;->f(Ljava/lang/Object;)V

    :cond_6
    throw p2

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "StorageConnection has already been disposed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(LT/H;LX4/c;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p2, LV/h;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LV/h;

    iget v1, v0, LV/h;->v:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LV/h;->v:I

    goto :goto_0

    :cond_0
    new-instance v0, LV/h;

    invoke-direct {v0, p0, p2}, LV/h;-><init>(LV/i;LX4/c;)V

    :goto_0
    iget-object p2, v0, LV/h;->t:Ljava/lang/Object;

    iget v1, v0, LV/h;->v:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-object v5, LW4/a;->b:LW4/a;

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v0, LV/h;->s:Ljava/lang/Object;

    check-cast p1, LT/a;

    iget-object v1, v0, LV/h;->r:LK5/x;

    iget-object v2, v0, LV/h;->q:Ljava/lang/Object;

    check-cast v2, Lu5/a;

    iget-object v0, v0, LV/h;->b:LV/i;

    :try_start_0
    invoke-static {p2}, LE5/l;->C(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception p2

    goto/16 :goto_8

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, LV/h;->s:Ljava/lang/Object;

    check-cast p1, Lu5/a;

    iget-object v1, v0, LV/h;->r:LK5/x;

    iget-object v3, v0, LV/h;->q:Ljava/lang/Object;

    check-cast v3, Ld5/p;

    iget-object v6, v0, LV/h;->b:LV/i;

    invoke-static {p2}, LE5/l;->C(Ljava/lang/Object;)V

    move-object p2, p1

    move-object p1, v3

    goto :goto_3

    :cond_3
    invoke-static {p2}, LE5/l;->C(Ljava/lang/Object;)V

    iget-object p2, p0, LV/i;->e:LV/a;

    iget-object p2, p2, LV/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_c

    iget-object p2, p0, LV/i;->b:LK5/x;

    invoke-virtual {p2}, LK5/x;->c()LK5/x;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object p2, p0, LV/i;->a:LK5/n;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, LT4/e;

    invoke-direct {v6}, LT4/e;-><init>()V

    move-object v7, v1

    :goto_1
    if-eqz v7, :cond_4

    invoke-virtual {p2, v7}, LK5/n;->d(LK5/x;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v6, v7}, LT4/e;->addFirst(Ljava/lang/Object;)V

    invoke-virtual {v7}, LK5/x;->c()LK5/x;

    move-result-object v7

    goto :goto_1

    :cond_4
    invoke-virtual {v6}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LK5/x;

    const-string v8, "dir"

    invoke-static {v7, v8}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v7}, LK5/n;->b(LK5/x;)V

    goto :goto_2

    :cond_5
    iput-object p0, v0, LV/h;->b:LV/i;

    iput-object p1, v0, LV/h;->q:Ljava/lang/Object;

    iput-object v1, v0, LV/h;->r:LK5/x;

    iget-object p2, p0, LV/i;->f:Lu5/d;

    iput-object p2, v0, LV/h;->s:Ljava/lang/Object;

    iput v3, v0, LV/h;->v:I

    invoke-virtual {p2, v0}, Lu5/d;->d(LX4/c;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v5, :cond_6

    goto :goto_4

    :cond_6
    move-object v6, p0

    :goto_3
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v6, LV/i;->b:LK5/x;

    iget-object v8, v6, LV/i;->a:LK5/n;

    invoke-virtual {v7}, LK5/x;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".tmp"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, LK5/x;->d(Ljava/lang/String;)LK5/x;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    :try_start_2
    invoke-virtual {v8, v1}, LK5/n;->c(LK5/x;)V

    new-instance v3, LV/k;

    invoke-direct {v3, v8, v1}, LV/c;-><init>(LK5/n;LK5/x;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    :try_start_3
    iput-object v6, v0, LV/h;->b:LV/i;

    iput-object p2, v0, LV/h;->q:Ljava/lang/Object;

    iput-object v1, v0, LV/h;->r:LK5/x;

    iput-object v3, v0, LV/h;->s:Ljava/lang/Object;

    iput v2, v0, LV/h;->v:I

    invoke-interface {p1, v3, v0}, Ld5/p;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-ne p1, v5, :cond_7

    :goto_4
    return-object v5

    :cond_7
    move-object v2, p2

    move-object p1, v3

    move-object v0, v6

    :goto_5
    :try_start_4
    invoke-interface {p1}, LT/a;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object p1, v4

    goto :goto_6

    :catchall_1
    move-exception p1

    :goto_6
    if-nez p1, :cond_9

    :try_start_5
    iget-object p1, v0, LV/i;->a:LK5/n;

    invoke-virtual {p1, v1}, LK5/n;->d(LK5/x;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, v0, LV/i;->a:LK5/n;

    iget-object p2, v0, LV/i;->b:LK5/x;

    invoke-virtual {p1, v1, p2}, LK5/n;->a(LK5/x;LK5/x;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception p1

    move-object p2, v2

    goto :goto_b

    :catch_0
    move-exception p1

    move-object v6, v0

    move-object p2, v2

    goto :goto_a

    :cond_8
    :goto_7
    check-cast v2, Lu5/d;

    invoke-virtual {v2, v4}, Lu5/d;->f(Ljava/lang/Object;)V

    sget-object p1, LS4/i;->a:LS4/i;

    return-object p1

    :cond_9
    :try_start_6
    throw p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_3
    move-exception p1

    move-object v2, p2

    move-object v0, v6

    move-object p2, p1

    move-object p1, v3

    :goto_8
    :try_start_7
    invoke-interface {p1}, LT/a;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_9

    :catchall_4
    move-exception p1

    :try_start_8
    invoke-static {p2, p1}, LE5/d;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_9
    throw p2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_5
    move-exception p1

    goto :goto_b

    :catch_1
    move-exception p1

    :goto_a
    :try_start_9
    iget-object v0, v6, LV/i;->a:LK5/n;

    invoke-virtual {v0, v1}, LK5/n;->d(LK5/x;)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    if-eqz v0, :cond_a

    :try_start_a
    iget-object v0, v6, LV/i;->a:LK5/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, LK5/n;->c(LK5/x;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :catch_2
    :cond_a
    :try_start_b
    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :goto_b
    check-cast p2, Lu5/d;

    invoke-virtual {p2, v4}, Lu5/d;->f(Ljava/lang/Object;)V

    throw p1

    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "must have a parent path"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "StorageConnection has already been disposed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final close()V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, LV/i;->e:LV/a;

    iget-object v1, v1, LV/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, LV/i;->d:LV/e;

    invoke-virtual {v0}, LV/e;->b()Ljava/lang/Object;

    return-void
.end method
