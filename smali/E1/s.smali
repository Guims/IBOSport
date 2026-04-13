.class public final synthetic LE1/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public q:Ljava/lang/Object;

.field public r:Ljava/lang/Object;

.field public s:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LE1/s;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(LE1/w;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, LE1/s;->b:I

    iput-object p1, p0, LE1/s;->q:Ljava/lang/Object;

    iput-object p2, p0, LE1/s;->r:Ljava/lang/Object;

    iput-object p3, p0, LE1/s;->s:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LL3/b;LE3/b;LL2/i;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, LE1/s;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE1/s;->s:Ljava/lang/Object;

    iput-object p2, p0, LE1/s;->q:Ljava/lang/Object;

    iput-object p3, p0, LE1/s;->r:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;LJ/n0;LA/j;Landroid/animation/ValueAnimator;)V
    .locals 0

    const/4 p2, 0x3

    iput p2, p0, LE1/s;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE1/s;->q:Ljava/lang/Object;

    iput-object p3, p0, LE1/s;->r:Ljava/lang/Object;

    iput-object p4, p0, LE1/s;->s:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, LE1/s;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LE1/s;->s:Ljava/lang/Object;

    check-cast v0, LL3/b;

    iget-object v1, p0, LE1/s;->q:Ljava/lang/Object;

    check-cast v1, LE3/b;

    iget-object v2, p0, LE1/s;->r:Ljava/lang/Object;

    check-cast v2, LL2/i;

    invoke-virtual {v0, v1, v2}, LL3/b;->b(LE3/b;LL2/i;)V

    iget-object v2, v0, LL3/b;->i:LA/j;

    iget-object v2, v2, LA/j;->r:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-wide v2, 0x40ed4c0000000000L    # 60000.0

    iget-wide v4, v0, LL3/b;->a:D

    div-double/2addr v2, v4

    iget-wide v4, v0, LL3/b;->b:D

    invoke-virtual {v0}, LL3/b;->a()I

    move-result v0

    int-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, v2

    const-wide v2, 0x414b774000000000L    # 3600000.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Delay for: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double v5, v2, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%.2f"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " s for report: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, LE3/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FirebaseCrashlytics"

    const/4 v4, 0x3

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    invoke-static {v1, v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    double-to-long v0, v2

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :pswitch_0
    iget-object v0, p0, LE1/s;->q:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, LE1/s;->r:Ljava/lang/Object;

    check-cast v1, LA/j;

    invoke-static {v0, v1}, LJ/j0;->h(Landroid/view/View;LA/j;)V

    iget-object v0, p0, LE1/s;->s:Ljava/lang/Object;

    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :pswitch_1
    :try_start_1
    iget-object v0, p0, LE1/s;->q:Ljava/lang/Object;

    check-cast v0, LG/d;

    invoke-virtual {v0}, LG/d;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LE1/s;->r:Ljava/lang/Object;

    check-cast v1, LG/e;

    iget-object v2, p0, LE1/s;->s:Ljava/lang/Object;

    check-cast v2, Landroid/os/Handler;

    new-instance v3, LE1/k;

    const/4 v4, 0x6

    invoke-direct {v3, v1, v4, v0}, LE1/k;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_2
    iget-object v0, p0, LE1/s;->q:Ljava/lang/Object;

    check-cast v0, LE1/w;

    iget-object v1, p0, LE1/s;->r:Ljava/lang/Object;

    check-cast v1, LE1/a;

    iget-object v2, p0, LE1/s;->s:Ljava/lang/Object;

    check-cast v2, Lib/player/base/helper/a;

    invoke-virtual {v0, v1, v2}, LE1/w;->x(LE1/a;Lib/player/base/helper/a;)V

    return-void

    :pswitch_3
    iget-object v0, p0, LE1/s;->q:Ljava/lang/Object;

    check-cast v0, LE1/w;

    iget-object v1, p0, LE1/s;->r:Ljava/lang/Object;

    check-cast v1, LE1/i;

    iget-object v2, p0, LE1/s;->s:Ljava/lang/Object;

    check-cast v2, Lib/player/base/helper/a;

    invoke-virtual {v0, v1, v2}, LE1/w;->y(LE1/i;Lib/player/base/helper/a;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
