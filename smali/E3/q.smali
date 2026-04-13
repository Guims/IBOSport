.class public final LE3/q;
.super Ljava/lang/Object;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:LE1/E;

.field public final c:LA/j;

.field public d:LA/j;

.field public e:LA/j;

.field public f:LE3/n;

.field public final g:LE3/w;

.field public final h:LK3/c;

.field public final i:LA3/a;

.field public final j:LA3/a;

.field public final k:LE3/j;

.field public final l:LB3/b;

.field public final m:Le4/c;

.field public final n:LF3/d;


# direct methods
.method public constructor <init>(Lv3/e;LE3/w;LB3/b;LE1/E;LA3/a;LA3/a;LK3/c;LE3/j;Le4/c;LF3/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, LE3/q;->b:LE1/E;

    invoke-virtual {p1}, Lv3/e;->a()V

    iget-object p1, p1, Lv3/e;->a:Landroid/content/Context;

    iput-object p1, p0, LE3/q;->a:Landroid/content/Context;

    iput-object p2, p0, LE3/q;->g:LE3/w;

    iput-object p3, p0, LE3/q;->l:LB3/b;

    iput-object p5, p0, LE3/q;->i:LA3/a;

    iput-object p6, p0, LE3/q;->j:LA3/a;

    iput-object p7, p0, LE3/q;->h:LK3/c;

    iput-object p8, p0, LE3/q;->k:LE3/j;

    iput-object p9, p0, LE3/q;->m:Le4/c;

    iput-object p10, p0, LE3/q;->n:LF3/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    new-instance p1, LA/j;

    const/16 p2, 0xc

    invoke-direct {p1, p2}, LA/j;-><init>(I)V

    iput-object p1, p0, LE3/q;->c:LA/j;

    return-void
.end method


# virtual methods
.method public final a(LM3/c;)V
    .locals 5

    invoke-static {}, LF3/d;->a()V

    invoke-static {}, LF3/d;->a()V

    iget-object v0, p0, LE3/q;->d:LA/j;

    invoke-virtual {v0}, LA/j;->o()V

    const-string v0, "FirebaseCrashlytics"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "Initialization marker file was created."

    invoke-static {v0, v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :try_start_0
    iget-object v1, p0, LE3/q;->i:LA3/a;

    new-instance v3, LA3/b;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, LA3/b;-><init>(I)V

    invoke-virtual {v1, v3}, LA3/a;->a(LA3/b;)V

    iget-object v1, p0, LE3/q;->f:LE3/n;

    invoke-virtual {v1}, LE3/n;->f()V

    invoke-virtual {p1}, LM3/c;->b()LM3/b;

    move-result-object v1

    iget-object v1, v1, LM3/b;->b:LK1/j;

    iget-boolean v1, v1, LK1/j;->a:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, LE3/q;->f:LE3/n;

    invoke-virtual {v1, p1}, LE3/n;->d(LM3/c;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Previous sessions could not be finalized."

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, LE3/q;->f:LE3/n;

    iget-object p1, p1, LM3/c;->i:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LL2/i;

    iget-object p1, p1, LL2/i;->a:LL2/r;

    invoke-virtual {v1, p1}, LE3/n;->g(LL2/r;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, LE3/q;->c()V

    return-void

    :cond_2
    const/4 p1, 0x3

    :try_start_1
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v1, "Collection of crash reports disabled in Crashlytics settings."

    if-eqz p1, :cond_3

    :try_start_2
    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    const-string v1, "Crashlytics encountered a problem during asynchronous initialization."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {p0}, LE3/q;->c()V

    return-void

    :goto_2
    invoke-virtual {p0}, LE3/q;->c()V

    throw p1
.end method

.method public final b(LM3/c;)V
    .locals 4

    iget-object v0, p0, LE3/q;->n:LF3/d;

    iget-object v0, v0, LF3/d;->a:LF3/c;

    iget-object v0, v0, LF3/c;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, LE3/o;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, LE3/o;-><init>(LE3/q;LM3/c;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    const-string v0, "FirebaseCrashlytics"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3

    invoke-interface {p1, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_2

    :goto_0
    const-string v1, "Crashlytics timed out during initialization."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :goto_1
    const-string v1, "Crashlytics encountered a problem during initialization."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :goto_2
    const-string v1, "Crashlytics was interrupted during initialization."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :goto_3
    return-void
.end method

.method public final c()V
    .locals 4

    const-string v0, "FirebaseCrashlytics"

    invoke-static {}, LF3/d;->a()V

    :try_start_0
    iget-object v1, p0, LE3/q;->d:LA/j;

    iget-object v2, v1, LA/j;->r:Ljava/lang/Object;

    check-cast v2, LK3/c;

    iget-object v1, v1, LA/j;->q:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/io/File;

    iget-object v2, v2, LK3/c;->r:Ljava/lang/Object;

    check-cast v2, Ljava/io/File;

    invoke-direct {v3, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Initialization marker file was not properly removed."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    const-string v2, "Problem encountered deleting Crashlytics initialization marker."

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
