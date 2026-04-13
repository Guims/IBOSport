.class public LV/c;
.super Ljava/lang/Object;

# interfaces
.implements LT/a;


# instance fields
.field public final a:LK5/n;

.field public final b:LK5/x;

.field public final c:LV/a;


# direct methods
.method public constructor <init>(LK5/n;LK5/x;)V
    .locals 1

    const-string v0, "fileSystem"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LV/c;->a:LK5/n;

    iput-object p2, p0, LV/c;->b:LK5/x;

    new-instance p1, LV/a;

    invoke-direct {p1}, LV/a;-><init>()V

    iput-object p1, p0, LV/c;->c:LV/a;

    return-void
.end method

.method public static a(LV/c;LX4/c;)Ljava/lang/Object;
    .locals 8

    sget-object v0, LX/f;->a:LX/f;

    instance-of v1, p1, LV/b;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, LV/b;

    iget v2, v1, LV/b;->t:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, LV/b;->t:I

    goto :goto_0

    :cond_0
    new-instance v1, LV/b;

    invoke-direct {v1, p0, p1}, LV/b;-><init>(LV/c;LX4/c;)V

    :goto_0
    iget-object p1, v1, LV/b;->r:Ljava/lang/Object;

    iget v2, v1, LV/b;->t:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget-object v6, LW4/a;->b:LW4/a;

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v1, LV/b;->b:Ljava/lang/Object;

    check-cast p0, Ljava/io/Closeable;

    :try_start_0
    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_8

    :catchall_0
    move-exception p1

    goto/16 :goto_9

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v1, LV/b;->q:LK5/z;

    iget-object v2, v1, LV/b;->b:Ljava/lang/Object;

    check-cast v2, LV/c;

    :try_start_1
    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_3
    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    iget-object p1, p0, LV/c;->c:LV/a;

    iget-object p1, p1, LV/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_d

    :try_start_2
    iget-object p1, p0, LV/c;->a:LK5/n;

    iget-object v2, p0, LV/c;->b:LK5/x;

    invoke-virtual {p1, v2}, LK5/n;->h(LK5/x;)LK5/F;

    move-result-object p1

    invoke-static {p1}, LE2/g;->b(LK5/F;)LK5/z;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iput-object p0, v1, LV/b;->b:Ljava/lang/Object;

    iput-object p1, v1, LV/b;->q:LK5/z;

    iput v4, v1, LV/b;->t:I

    invoke-virtual {v0, p1}, LX/f;->b(LK5/z;)LX/b;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-ne v2, v6, :cond_4

    goto :goto_7

    :cond_4
    move-object v7, v2

    move-object v2, p0

    move-object p0, p1

    move-object p1, v7

    :goto_1
    if-eqz p0, :cond_5

    :try_start_4
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    goto :goto_5

    :cond_5
    :goto_2
    move-object p0, v5

    goto :goto_5

    :catchall_3
    move-exception v2

    move-object v7, v2

    move-object v2, p0

    move-object p0, p1

    move-object p1, v7

    :goto_3
    if-eqz p0, :cond_6

    :try_start_5
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception p0

    :try_start_6
    invoke-static {p1, p0}, LE5/d;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_0
    move-object p0, v2

    goto :goto_6

    :cond_6
    :goto_4
    move-object p0, p1

    move-object p1, v5

    :goto_5
    if-nez p0, :cond_7

    invoke-static {p1}, Le5/g;->c(Ljava/lang/Object;)V

    goto :goto_c

    :cond_7
    throw p0
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_1
    :goto_6
    iget-object p1, p0, LV/c;->a:LK5/n;

    iget-object v2, p0, LV/c;->b:LK5/x;

    invoke-virtual {p1, v2}, LK5/n;->d(LK5/x;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p0, p0, LV/c;->a:LK5/n;

    invoke-virtual {p0, v2}, LK5/n;->h(LK5/x;)LK5/F;

    move-result-object p0

    invoke-static {p0}, LE2/g;->b(LK5/F;)LK5/z;

    move-result-object p0

    :try_start_7
    iput-object p0, v1, LV/b;->b:Ljava/lang/Object;

    iput-object v5, v1, LV/b;->q:LK5/z;

    iput v3, v1, LV/b;->t:I

    invoke-virtual {v0, p0}, LX/f;->b(LK5/z;)LX/b;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-ne p1, v6, :cond_8

    :goto_7
    return-object v6

    :cond_8
    :goto_8
    if-eqz p0, :cond_a

    :try_start_8
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_b

    :catchall_5
    move-exception v5

    goto :goto_b

    :goto_9
    if-eqz p0, :cond_9

    :try_start_9
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    goto :goto_a

    :catchall_6
    move-exception p0

    invoke-static {p1, p0}, LE5/d;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_9
    :goto_a
    move-object v7, v5

    move-object v5, p1

    move-object p1, v7

    :cond_a
    :goto_b
    if-nez v5, :cond_b

    invoke-static {p1}, Le5/g;->c(Ljava/lang/Object;)V

    goto :goto_c

    :cond_b
    throw v5

    :cond_c
    new-instance p0, LX/b;

    invoke-direct {p0, v4}, LX/b;-><init>(Z)V

    move-object p1, p0

    :goto_c
    return-object p1

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This scope has already been closed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final close()V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, LV/c;->c:LV/a;

    iget-object v1, v1, LV/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
