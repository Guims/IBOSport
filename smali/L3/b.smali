.class public final LL3/b;
.super Ljava/lang/Object;


# instance fields
.field public final a:D

.field public final b:D

.field public final c:J

.field public final d:J

.field public final e:I

.field public final f:Ljava/util/concurrent/ArrayBlockingQueue;

.field public final g:Ljava/util/concurrent/ThreadPoolExecutor;

.field public final h:LG/c;

.field public final i:LA/j;

.field public j:I

.field public k:J


# direct methods
.method public constructor <init>(LG/c;LM3/b;LA/j;)V
    .locals 8

    iget-wide v0, p2, LM3/b;->d:D

    iget-wide v2, p2, LM3/b;->e:D

    iget p2, p2, LM3/b;->f:I

    int-to-long v4, p2

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, LL3/b;->a:D

    iput-wide v2, p0, LL3/b;->b:D

    iput-wide v4, p0, LL3/b;->c:J

    iput-object p1, p0, LL3/b;->h:LG/c;

    iput-object p3, p0, LL3/b;->i:LA/j;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, LL3/b;->d:J

    double-to-int p1, v0

    iput p1, p0, LL3/b;->e:I

    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v6, p1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v6, p0, LL3/b;->f:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, LL3/b;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 p1, 0x0

    iput p1, p0, LL3/b;->j:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, LL3/b;->k:J

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    iget-wide v0, p0, LL3/b;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, LL3/b;->k:J

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, LL3/b;->k:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, LL3/b;->c:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    iget-object v1, p0, LL3/b;->f:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v1

    iget v2, p0, LL3/b;->e:I

    if-ne v1, v2, :cond_1

    iget v1, p0, LL3/b;->j:I

    add-int/2addr v1, v0

    const/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_1
    iget v1, p0, LL3/b;->j:I

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    iget v1, p0, LL3/b;->j:I

    if-eq v1, v0, :cond_2

    iput v0, p0, LL3/b;->j:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, LL3/b;->k:J

    :cond_2
    return v0
.end method

.method public final b(LE3/b;LL2/i;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sending report through Google DataTransport: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, LE3/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FirebaseCrashlytics"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, LL3/b;->d:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, LE3/b;->a:LH3/B;

    new-instance v2, Lg2/a;

    sget-object v3, Lg2/c;->r:Lg2/c;

    invoke-direct {v2, v1, v3}, Lg2/a;-><init>(Ljava/lang/Object;Lg2/c;)V

    new-instance v1, LD0/e;

    invoke-direct {v1, p0, p2, v0, p1}, LD0/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Object;)V

    iget-object p1, p0, LL3/b;->h:LG/c;

    invoke-virtual {p1, v2, v1}, LG/c;->a(Lg2/a;Lg2/f;)V

    return-void
.end method
