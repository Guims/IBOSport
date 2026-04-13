.class public final LE0/s;
.super Ljava/lang/Object;

# interfaces
.implements LE0/t;


# static fields
.field public static final s:LE0/l;

.field public static final t:LE0/l;

.field public static final u:LE0/l;


# instance fields
.field public final b:LF0/a;

.field public q:LE0/o;

.field public r:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LE0/l;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v2, v1, v3, v4}, LE0/l;-><init>(IZJ)V

    sput-object v0, LE0/s;->s:LE0/l;

    new-instance v0, LE0/l;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v2, v3, v4}, LE0/l;-><init>(IZJ)V

    sput-object v0, LE0/s;->t:LE0/l;

    new-instance v0, LE0/l;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v2, v3, v4}, LE0/l;-><init>(IZJ)V

    sput-object v0, LE0/s;->u:LE0/l;

    return-void
.end method

.method public constructor <init>(LF0/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE0/s;->b:LF0/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "ExoPlayer:Loader:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget v0, Lk0/C;->a:I

    new-instance v0, Landroidx/emoji2/text/a;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroidx/emoji2/text/a;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, LA3/b;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, LA3/b;-><init>(I)V

    new-instance v1, LF0/a;

    invoke-direct {v1, p1, v0}, LF0/a;-><init>(Ljava/util/concurrent/ExecutorService;LA3/b;)V

    invoke-direct {p0, v1}, LE0/s;-><init>(LF0/a;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, LE0/s;->r:Ljava/io/IOException;

    if-nez v0, :cond_2

    iget-object v0, p0, LE0/s;->q:LE0/o;

    if-eqz v0, :cond_1

    iget v1, v0, LE0/o;->b:I

    iget-object v2, v0, LE0/o;->t:Ljava/io/IOException;

    if-eqz v2, :cond_1

    iget v0, v0, LE0/o;->u:I

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    throw v2

    :cond_1
    :goto_0
    return-void

    :cond_2
    throw v0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, LE0/s;->q:LE0/o;

    invoke-static {v0}, Lk0/c;->k(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LE0/o;->a(Z)V

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, LE0/s;->r:Ljava/io/IOException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, LE0/s;->q:LE0/o;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e(LE0/q;)V
    .locals 3

    iget-object v0, p0, LE0/s;->q:LE0/o;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LE0/o;->a(Z)V

    :cond_0
    iget-object v0, p0, LE0/s;->b:LF0/a;

    if-eqz p1, :cond_1

    new-instance v1, LA4/f;

    const/4 v2, 0x5

    invoke-direct {v1, v2, p1}, LA4/f;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, LF0/a;->execute(Ljava/lang/Runnable;)V

    :cond_1
    iget-object p1, v0, LF0/a;->q:LA3/b;

    iget-object v0, v0, LF0/a;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v0}, LA3/b;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final f(LE0/p;LE0/n;I)J
    .locals 9

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v2}, Lk0/c;->k(Ljava/lang/Object;)V

    const/4 v8, 0x0

    iput-object v8, p0, LE0/s;->r:Ljava/io/IOException;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    new-instance v0, LE0/o;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v7}, LE0/o;-><init>(LE0/s;Landroid/os/Looper;LE0/p;LE0/n;IJ)V

    iget-object p1, v1, LE0/s;->q:LE0/o;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lk0/c;->j(Z)V

    iput-object v0, v1, LE0/s;->q:LE0/o;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-object p1, v0, LE0/o;->s:LE0/n;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v8, v0, LE0/o;->t:Ljava/io/IOException;

    iget-object p1, v1, LE0/s;->q:LE0/o;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, v1, LE0/s;->b:LF0/a;

    invoke-virtual {p2, p1}, LF0/a;->execute(Ljava/lang/Runnable;)V

    return-wide v6
.end method
