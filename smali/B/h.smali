.class public abstract LB/h;
.super Ljava/lang/Object;


# static fields
.field public static final a:LE2/g;

.field public static final b:Lc1/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    new-instance v0, LB/m;

    invoke-direct {v0}, LE2/g;-><init>()V

    sput-object v0, LB/h;->a:LE2/g;

    goto :goto_0

    :cond_0
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    new-instance v0, LB/l;

    invoke-direct {v0}, LB/k;-><init>()V

    sput-object v0, LB/h;->a:LE2/g;

    goto :goto_0

    :cond_1
    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    new-instance v0, LB/k;

    invoke-direct {v0}, LB/k;-><init>()V

    sput-object v0, LB/h;->a:LE2/g;

    goto :goto_0

    :cond_2
    sget-object v0, LB/j;->e:Ljava/lang/reflect/Method;

    if-nez v0, :cond_3

    const-string v1, "TypefaceCompatApi24Impl"

    const-string v2, "Unable to collect necessary private methods.Fallback to legacy implementation."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v0, :cond_4

    new-instance v0, LB/j;

    invoke-direct {v0}, LE2/g;-><init>()V

    sput-object v0, LB/h;->a:LE2/g;

    goto :goto_0

    :cond_4
    new-instance v0, LB/i;

    invoke-direct {v0}, LE2/g;-><init>()V

    sput-object v0, LB/h;->a:LE2/g;

    :goto_0
    new-instance v0, Lc1/c;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lc1/c;-><init>(I)V

    sput-object v0, LB/h;->b:Lc1/c;

    return-void
.end method

.method public static a(Landroid/content/Context;LA/f;Landroid/content/res/Resources;ILjava/lang/String;IILA/b;Z)Landroid/graphics/Typeface;
    .locals 12

    move/from16 v4, p6

    move-object/from16 v0, p7

    instance-of v1, p1, LA/i;

    const/4 v6, -0x3

    const/4 v7, 0x0

    if-eqz v1, :cond_d

    check-cast p1, LA/i;

    iget-object v1, p1, LA/i;->d:Ljava/lang/String;

    const/4 v8, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v2, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move-object v1, v8

    :goto_1
    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, LA/o;

    invoke-direct {p1, v0, v7, v1}, LA/o;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-object v1

    :cond_3
    const/4 v9, 0x1

    if-eqz p8, :cond_5

    iget v1, p1, LA/i;->c:I

    if-nez v1, :cond_4

    :goto_2
    move v1, v9

    goto :goto_3

    :cond_4
    move v1, v7

    goto :goto_3

    :cond_5
    if-nez v0, :cond_4

    goto :goto_2

    :goto_3
    const/4 v2, -0x1

    if-eqz p8, :cond_6

    iget v3, p1, LA/i;->b:I

    move v10, v3

    goto :goto_4

    :cond_6
    move v10, v2

    :goto_4
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v5, Le4/c;

    const/4 v11, 0x4

    invoke-direct {v5, v11}, Le4/c;-><init>(I)V

    iput-object v0, v5, Le4/c;->q:Ljava/lang/Object;

    iget-object p1, p1, LA/i;->a:LG/c;

    new-instance v11, LA/j;

    const/16 v0, 0xe

    invoke-direct {v11, v5, v0, v3}, LA/j;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    const/4 v0, 0x5

    if-eqz v1, :cond_9

    sget-object v1, LG/g;->a:Lc1/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p1, LG/c;->t:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "-"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v9, LG/g;->a:Lc1/c;

    invoke-virtual {v9, v1}, Lc1/c;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Typeface;

    if-eqz v9, :cond_7

    new-instance p0, LE1/k;

    invoke-direct {p0, v5, v0, v9}, LE1/k;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v3, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v8, v9

    goto/16 :goto_9

    :cond_7
    if-ne v10, v2, :cond_8

    invoke-static {v1, p0, p1, v4}, LG/g;->a(Ljava/lang/String;Landroid/content/Context;LG/c;I)LG/f;

    move-result-object p0

    invoke-virtual {v11, p0}, LA/j;->v(LG/f;)V

    iget-object v8, p0, LG/f;->a:Landroid/graphics/Typeface;

    goto/16 :goto_9

    :cond_8
    new-instance v0, LG/d;

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, LG/d;-><init>(Ljava/lang/String;Landroid/content/Context;LG/c;II)V

    :try_start_0
    sget-object p0, LG/g;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    int-to-long v0, v10

    :try_start_1
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v0, v1, p1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    check-cast p0, LG/f;

    invoke-virtual {v11, p0}, LA/j;->v(LG/f;)V

    iget-object v8, p0, LG/f;->a:Landroid/graphics/Typeface;

    goto/16 :goto_9

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object p0, v0

    goto :goto_6

    :catch_2
    new-instance p0, Ljava/lang/InterruptedException;

    const-string p1, "timeout"

    invoke-direct {p0, p1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_5
    throw p0

    :goto_6
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    :catch_3
    iget-object p0, v11, LA/j;->r:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    iget-object p1, v11, LA/j;->q:Ljava/lang/Object;

    check-cast p1, Le4/c;

    new-instance v0, LG/a;

    invoke-direct {v0, v6, v7, p1}, LG/a;-><init>(IILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_9

    :cond_9
    sget-object v1, LG/g;->a:Lc1/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, LG/c;->t:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, LG/g;->a:Lc1/c;

    invoke-virtual {v2, v1}, Lc1/c;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    if-eqz v2, :cond_a

    new-instance p0, LE1/k;

    invoke-direct {p0, v5, v0, v2}, LE1/k;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v3, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v8, v2

    goto/16 :goto_9

    :cond_a
    new-instance v0, LG/e;

    invoke-direct {v0, v7, v11}, LG/e;-><init>(ILjava/lang/Object;)V

    sget-object v2, LG/g;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    sget-object v3, LG/g;->d:Ln/j;

    invoke-virtual {v3, v1, v8}, Ln/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-eqz v5, :cond_b

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v2

    goto :goto_9

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_8

    :cond_b
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v1, v5}, Ln/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    new-instance v0, LG/d;

    const/4 v5, 0x1

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, LG/d;-><init>(Ljava/lang/String;Landroid/content/Context;LG/c;II)V

    sget-object p0, LG/g;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance p1, LG/e;

    invoke-direct {p1, v9, v1}, LG/e;-><init>(ILjava/lang/Object;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_c

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_7

    :cond_c
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    :goto_7
    new-instance v2, LE1/s;

    invoke-direct {v2}, LE1/s;-><init>()V

    iput-object v0, v2, LE1/s;->q:Ljava/lang/Object;

    iput-object p1, v2, LE1/s;->r:Ljava/lang/Object;

    iput-object v1, v2, LE1/s;->s:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_9

    :goto_8
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :cond_d
    sget-object v2, LB/h;->a:LE2/g;

    check-cast p1, LA/g;

    invoke-virtual {v2, p0, p1, p2, v4}, LE2/g;->g(Landroid/content/Context;LA/g;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object v8

    if-eqz v0, :cond_f

    if-eqz v8, :cond_e

    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, LA/o;

    invoke-direct {p1, v0, v7, v8}, LA/o;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9

    :cond_e
    invoke-virtual {v0, v6}, LA/b;->a(I)V

    :cond_f
    :goto_9
    if-eqz v8, :cond_10

    sget-object p0, LB/h;->b:Lc1/c;

    invoke-static/range {p2 .. p6}, LB/h;->b(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v8}, Lc1/c;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    return-object v8
.end method

.method public static b(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
