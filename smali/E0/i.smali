.class public final LE0/i;
.super Ljava/lang/Object;

# interfaces
.implements LE0/e;
.implements Landroidx/media3/datasource/TransferListener;


# static fields
.field public static final n:Lp3/Y;

.field public static final o:Lp3/Y;

.field public static final p:Lp3/Y;

.field public static final q:Lp3/Y;

.field public static final r:Lp3/Y;

.field public static final s:Lp3/Y;

.field public static t:LE0/i;


# instance fields
.field public final a:Lp3/J;

.field public final b:Le4/c;

.field public final c:Lk0/d;

.field public final d:Z

.field public final e:LE0/x;

.field public f:I

.field public g:J

.field public h:J

.field public i:J

.field public j:J

.field public k:J

.field public l:J

.field public m:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-wide/32 v0, 0x419ce0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-wide/32 v1, 0x30d400

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-wide/32 v2, 0x249f00

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/32 v3, 0x19f0a0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-wide/32 v4, 0xd1f60

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lp3/H;->m(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Lp3/Y;

    move-result-object v0

    sput-object v0, LE0/i;->n:Lp3/Y;

    const-wide/32 v0, 0x16e360

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-wide/32 v1, 0xef420

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-wide/32 v5, 0xb71b0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/32 v5, 0x7ef40

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-wide/32 v6, 0x46cd0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v0, v1, v2, v5, v6}, Lp3/H;->m(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Lp3/Y;

    move-result-object v0

    sput-object v0, LE0/i;->o:Lp3/Y;

    const-wide/32 v5, 0x1e8480

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-wide/32 v5, 0x13d620

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/32 v5, 0xf4240

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-wide/32 v6, 0x94ed0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v0, v2, v5, v4, v6}, Lp3/H;->m(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Lp3/Y;

    move-result-object v4

    sput-object v4, LE0/i;->p:Lp3/Y;

    const-wide/32 v6, 0x2625a0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-wide/32 v6, 0x124f80

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-wide/32 v7, 0xecd10

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-wide/32 v8, 0xa6040

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v4, v3, v6, v7, v8}, Lp3/H;->m(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Lp3/Y;

    move-result-object v4

    sput-object v4, LE0/i;->q:Lp3/Y;

    const-wide/32 v6, 0x47b760

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-wide/32 v6, 0x2ab980

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-wide/32 v7, 0x200b20

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v6, v7, v3, v1}, Lp3/H;->m(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Lp3/Y;

    move-result-object v1

    sput-object v1, LE0/i;->r:Lp3/Y;

    const-wide/32 v3, 0x2932e0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-wide/32 v3, 0x186a00

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v0, v3, v2, v5}, Lp3/H;->m(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Lp3/Y;

    move-result-object v0

    sput-object v0, LE0/i;->s:Lp3/Y;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;ILk0/d;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lp3/J;->a(Ljava/util/Map;)Lp3/J;

    move-result-object p2

    iput-object p2, p0, LE0/i;->a:Lp3/J;

    new-instance p2, Le4/c;

    const/16 v0, 0xb

    invoke-direct {p2, v0}, Le4/c;-><init>(I)V

    iput-object p2, p0, LE0/i;->b:Le4/c;

    new-instance p2, LE0/x;

    invoke-direct {p2, p3}, LE0/x;-><init>(I)V

    iput-object p2, p0, LE0/i;->e:LE0/x;

    iput-object p4, p0, LE0/i;->c:Lk0/d;

    iput-boolean p5, p0, LE0/i;->d:Z

    if-eqz p1, :cond_2

    invoke-static {p1}, Lk0/t;->b(Landroid/content/Context;)Lk0/t;

    move-result-object p1

    invoke-virtual {p1}, Lk0/t;->c()I

    move-result p2

    iput p2, p0, LE0/i;->m:I

    invoke-virtual {p0, p2}, LE0/i;->a(I)J

    move-result-wide p2

    iput-wide p2, p0, LE0/i;->k:J

    new-instance p2, LE0/g;

    invoke-direct {p2, p0}, LE0/g;-><init>(LE0/i;)V

    iget-object p3, p1, Lk0/t;->c:Ljava/lang/Object;

    check-cast p3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/ref/WeakReference;

    invoke-virtual {p5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p3, p5}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p4, Ljava/lang/ref/WeakReference;

    invoke-direct {p4, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p3, p4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object p3, p1, Lk0/t;->b:Ljava/lang/Object;

    check-cast p3, Landroid/os/Handler;

    new-instance p4, LA/o;

    const/16 p5, 0x11

    invoke-direct {p4, p1, p5, p2}, LA/o;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    const/4 p1, 0x0

    iput p1, p0, LE0/i;->m:I

    invoke-virtual {p0, p1}, LE0/i;->a(I)J

    move-result-wide p1

    iput-wide p1, p0, LE0/i;->k:J

    return-void
.end method


# virtual methods
.method public final a(I)J
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, p0, LE0/i;->a:Lp3/J;

    invoke-virtual {v0, p1}, Lp3/J;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lp3/J;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    :cond_0
    if-nez p1, :cond_1

    const-wide/32 v0, 0xf4240

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(IJJ)V
    .locals 10

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    iget-wide v0, p0, LE0/i;->l:J

    cmp-long v0, p4, v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iput-wide p4, p0, LE0/i;->l:J

    iget-object v0, p0, LE0/i;->b:Le4/c;

    iget-object v0, v0, Le4/c;->q:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, LE0/d;

    iget-boolean v1, v3, LE0/d;->c:Z

    if-nez v1, :cond_1

    iget-object v1, v3, LE0/d;->a:Landroid/os/Handler;

    new-instance v2, LE0/c;

    const/4 v9, 0x0

    move v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-direct/range {v2 .. v9}, LE0/c;-><init>(Ljava/lang/Object;IJJI)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    move v4, p1

    move-wide v5, p2

    move-wide v7, p4

    :goto_1
    move p1, v4

    move-wide p2, v5

    move-wide p4, v7

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public final declared-synchronized onBytesTransferred(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;ZI)V
    .locals 0

    monitor-enter p0

    if-eqz p3, :cond_0

    const/16 p1, 0x8

    :try_start_0
    invoke-virtual {p2, p1}, Landroidx/media3/datasource/DataSpec;->isFlagSet(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-wide p1, p0, LE0/i;->h:J

    int-to-long p3, p4

    add-long/2addr p1, p3

    iput-wide p1, p0, LE0/i;->h:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized onTransferEnd(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Z)V
    .locals 9

    monitor-enter p0

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    const/16 p3, 0x8

    :try_start_0
    invoke-virtual {p2, p3}, Landroidx/media3/datasource/DataSpec;->isFlagSet(I)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    move p2, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v3, p0

    goto/16 :goto_3

    :cond_0
    move p2, p1

    :goto_0
    if-nez p2, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget p2, p0, LE0/i;->f:I

    if-lez p2, :cond_2

    move p1, v0

    :cond_2
    invoke-static {p1}, Lk0/c;->j(Z)V

    iget-object p1, p0, LE0/i;->c:Lk0/d;

    check-cast p1, Lk0/w;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget-wide v1, p0, LE0/i;->g:J

    sub-long v1, p1, v1

    long-to-int v4, v1

    iget-wide v1, p0, LE0/i;->i:J

    int-to-long v5, v4

    add-long/2addr v1, v5

    iput-wide v1, p0, LE0/i;->i:J

    iget-wide v1, p0, LE0/i;->j:J

    iget-wide v5, p0, LE0/i;->h:J

    add-long/2addr v1, v5

    iput-wide v1, p0, LE0/i;->j:J

    if-lez v4, :cond_5

    long-to-float p3, v5

    const/high16 v1, 0x45fa0000    # 8000.0f

    mul-float/2addr p3, v1

    int-to-float v1, v4

    div-float/2addr p3, v1

    iget-object v1, p0, LE0/i;->e:LE0/x;

    long-to-double v2, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v1, v2, p3}, LE0/x;->a(IF)V

    iget-wide v1, p0, LE0/i;->i:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-wide/16 v5, 0x7d0

    cmp-long p3, v1, v5

    if-gez p3, :cond_3

    :try_start_2
    iget-wide v1, p0, LE0/i;->j:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/32 v5, 0x80000

    cmp-long p3, v1, v5

    if-ltz p3, :cond_4

    :cond_3
    :try_start_3
    iget-object p3, p0, LE0/i;->e:LE0/x;

    invoke-virtual {p3}, LE0/x;->b()F

    move-result p3

    float-to-long v1, p3

    iput-wide v1, p0, LE0/i;->k:J

    :cond_4
    iget-wide v5, p0, LE0/i;->h:J

    iget-wide v7, p0, LE0/i;->k:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v3, p0

    :try_start_4
    invoke-virtual/range {v3 .. v8}, LE0/i;->b(IJJ)V

    iput-wide p1, v3, LE0/i;->g:J

    const-wide/16 p1, 0x0

    iput-wide p1, v3, LE0/i;->h:J

    goto :goto_2

    :catchall_1
    move-exception v0

    :goto_1
    move-object p1, v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v3, p0

    goto :goto_1

    :cond_5
    move-object v3, p0

    :goto_2
    iget p1, v3, LE0/i;->f:I

    sub-int/2addr p1, v0

    iput p1, v3, LE0/i;->f:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-void

    :goto_3
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method

.method public final onTransferInitializing(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Z)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized onTransferStart(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Z)V
    .locals 0

    monitor-enter p0

    const/4 p1, 0x1

    if-eqz p3, :cond_0

    const/16 p3, 0x8

    :try_start_0
    invoke-virtual {p2, p3}, Landroidx/media3/datasource/DataSpec;->isFlagSet(I)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    move p2, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget p2, p0, LE0/i;->f:I

    if-nez p2, :cond_2

    iget-object p2, p0, LE0/i;->c:Lk0/d;

    check-cast p2, Lk0/w;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    iput-wide p2, p0, LE0/i;->g:J

    :cond_2
    iget p2, p0, LE0/i;->f:I

    add-int/2addr p2, p1

    iput p2, p0, LE0/i;->f:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
