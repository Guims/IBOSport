.class public Le4/c;
.super Ljava/lang/Object;

# interfaces
.implements Lretrofit2/Callback;
.implements LC0/e;
.implements LL2/h;
.implements LE0/n;
.implements LG0/J;
.implements Lz4/e;
.implements LJ/d;
.implements LJ/f;
.implements Le2/a;
.implements LL2/f;
.implements LL2/e;
.implements LL2/c;


# static fields
.field public static volatile r:Le4/c;


# instance fields
.field public final synthetic b:I

.field public q:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Le4/c;->b:I

    sparse-switch p1, :sswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Le4/c;->q:Ljava/lang/Object;

    return-void

    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, LL2/r;

    invoke-direct {p1}, LL2/r;-><init>()V

    iput-object p1, p0, Le4/c;->q:Ljava/lang/Object;

    return-void

    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Le4/c;->q:Ljava/lang/Object;

    return-void

    :sswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Le4/c;

    const/16 v0, 0x1d

    invoke-direct {p1, v0}, Le4/c;-><init>(I)V

    iput-object p1, p0, Le4/c;->q:Ljava/lang/Object;

    return-void

    :sswitch_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    new-instance p1, LK/j;

    invoke-direct {p1, p0}, LK/i;-><init>(Le4/c;)V

    iput-object p1, p0, Le4/c;->q:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p1, LK/i;

    invoke-direct {p1, p0}, LK/i;-><init>(Le4/c;)V

    iput-object p1, p0, Le4/c;->q:Ljava/lang/Object;

    :goto_0
    return-void

    :sswitch_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Le4/c;->q:Ljava/lang/Object;

    return-void

    :sswitch_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lx2/f;

    const/16 v0, 0x17

    invoke-direct {p1, v0}, Lx2/f;-><init>(I)V

    iput-object p1, p0, Le4/c;->q:Ljava/lang/Object;

    return-void

    :sswitch_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    :sswitch_7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Le4/c;->q:Ljava/lang/Object;

    return-void

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_7
        0x4 -> :sswitch_6
        0x7 -> :sswitch_5
        0xb -> :sswitch_4
        0x17 -> :sswitch_3
        0x1a -> :sswitch_2
        0x1c -> :sswitch_1
        0x1d -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le4/c;->b:I

    iput-object p2, p0, Le4/c;->q:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LE3/l;Ljava/lang/String;)V
    .locals 0

    const/16 p2, 0xd

    iput p2, p0, Le4/c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le4/c;->q:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/ClipData;I)V
    .locals 1

    const/16 v0, 0x14

    iput v0, p0, Le4/c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, LJ/c;->j(Landroid/content/ClipData;I)Landroid/view/ContentInfo$Builder;

    move-result-object p1

    iput-object p1, p0, Le4/c;->q:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/ContentInfo;)V
    .locals 1

    const/16 v0, 0x15

    iput v0, p0, Le4/c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, LJ/c;->l(Ljava/lang/Object;)Landroid/view/ContentInfo;

    move-result-object p1

    iput-object p1, p0, Le4/c;->q:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Le4/c;->q:Ljava/lang/Object;

    check-cast v0, LG4/d;

    iget-object v0, v0, LG4/d;->s0:Lz4/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroidx/fragment/app/m;->P(ZZ)V

    return-void
.end method

.method public b()Landroid/content/ClipData;
    .locals 1

    iget-object v0, p0, Le4/c;->q:Ljava/lang/Object;

    check-cast v0, Landroid/view/ContentInfo;

    invoke-static {v0}, LJ/c;->e(Landroid/view/ContentInfo;)Landroid/content/ClipData;

    move-result-object v0

    return-object v0
.end method

.method public build()LJ/g;
    .locals 3

    new-instance v0, LJ/g;

    new-instance v1, Le4/c;

    iget-object v2, p0, Le4/c;->q:Ljava/lang/Object;

    check-cast v2, Landroid/view/ContentInfo$Builder;

    invoke-static {v2}, LJ/c;->k(Landroid/view/ContentInfo$Builder;)Landroid/view/ContentInfo;

    move-result-object v2

    invoke-direct {v1, v2}, Le4/c;-><init>(Landroid/view/ContentInfo;)V

    invoke-direct {v0, v1}, LJ/g;-><init>(LJ/f;)V

    return-object v0
.end method

.method public c()V
    .locals 7

    iget-object v0, p0, Le4/c;->q:Ljava/lang/Object;

    check-cast v0, LG0/f;

    iget-object v1, v0, LG0/f;->P0:Landroid/view/Surface;

    if-eqz v1, :cond_1

    iget-object v2, v0, LG0/f;->E0:LA/j;

    iget-object v3, v2, LA/j;->q:Ljava/lang/Object;

    check-cast v3, Landroid/os/Handler;

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    new-instance v6, LG0/G;

    invoke-direct {v6, v2, v1, v4, v5}, LG0/G;-><init>(LA/j;Ljava/lang/Object;J)V

    invoke-virtual {v3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, LG0/f;->S0:Z

    :cond_1
    return-void
.end method

.method public create()Ljava/lang/Object;
    .locals 9

    iget v0, p0, Le4/c;->b:I

    packed-switch v0, :pswitch_data_0

    new-instance v1, LK1/s;

    iget-object v0, p0, Le4/c;->q:Ljava/lang/Object;

    check-cast v0, Lk/d1;

    iget-object v2, v0, Lk/d1;->a:Ljava/lang/Object;

    check-cast v2, LN1/d;

    iget-object v3, v0, Lk/d1;->b:Ljava/lang/Object;

    check-cast v3, LN1/d;

    iget-object v4, v0, Lk/d1;->c:Ljava/lang/Object;

    check-cast v4, LN1/d;

    iget-object v5, v0, Lk/d1;->d:Ljava/lang/Object;

    check-cast v5, LN1/d;

    iget-object v6, v0, Lk/d1;->e:Ljava/lang/Object;

    check-cast v6, LK1/o;

    iget-object v7, v0, Lk/d1;->f:Ljava/lang/Object;

    check-cast v7, LK1/o;

    iget-object v0, v0, Lk/d1;->g:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, LJ/l;

    invoke-direct/range {v1 .. v8}, LK1/s;-><init>(LN1/d;LN1/d;LN1/d;LN1/d;LK1/o;LK1/o;LJ/l;)V

    return-object v1

    :pswitch_0
    new-instance v0, LK1/k;

    iget-object v1, p0, Le4/c;->q:Ljava/lang/Object;

    check-cast v1, LA/d;

    iget-object v2, v1, LA/d;->r:Ljava/lang/Object;

    check-cast v2, LK1/n;

    iget-object v1, v1, LA/d;->s:Ljava/lang/Object;

    check-cast v1, LJ/l;

    invoke-direct {v0, v2, v1}, LK1/k;-><init>(LK1/n;LJ/l;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
    .end packed-switch
.end method

.method public d(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Le4/c;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Le4/c;->q:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Void;

    iget-object p1, p0, Le4/c;->q:Ljava/lang/Object;

    check-cast p1, LL2/o;

    iget-object p1, p1, LL2/o;->b:Ljava/lang/Object;

    check-cast p1, LL2/i;

    iget-object p1, p1, LL2/i;->a:LL2/r;

    invoke-virtual {p1}, LL2/r;->k()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method public e(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Le4/c;->q:Ljava/lang/Object;

    check-cast v0, Landroid/view/ContentInfo$Builder;

    invoke-static {v0, p1}, LJ/c;->v(Landroid/view/ContentInfo$Builder;Landroid/net/Uri;)V

    return-void
.end method

.method public f(I)V
    .locals 1

    iget-object v0, p0, Le4/c;->q:Ljava/lang/Object;

    check-cast v0, Landroid/view/ContentInfo$Builder;

    invoke-static {v0, p1}, LJ/c;->u(Landroid/view/ContentInfo$Builder;I)V

    return-void
.end method

.method public g(LE0/p;JJLjava/io/IOException;I)LE0/l;
    .locals 0

    iget-object p1, p0, Le4/c;->q:Ljava/lang/Object;

    check-cast p1, Ls0/e;

    iget-object p1, p1, Ls0/e;->q:Ls0/h;

    invoke-virtual {p1, p6}, Ls0/h;->x(Ljava/io/IOException;)V

    sget-object p1, LE0/s;->t:LE0/l;

    return-object p1
.end method

.method public h()V
    .locals 3

    iget-object v0, p0, Le4/c;->q:Ljava/lang/Object;

    check-cast v0, LG0/f;

    iget-object v1, v0, LG0/f;->P0:Landroid/view/Surface;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, LG0/f;->g0(II)V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Le4/c;->q:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public j()I
    .locals 1

    iget-object v0, p0, Le4/c;->q:Ljava/lang/Object;

    check-cast v0, Landroid/view/ContentInfo;

    invoke-static {v0}, LJ/c;->c(Landroid/view/ContentInfo;)I

    move-result v0

    return v0
.end method

.method public k(Ljava/lang/Object;)LL2/r;
    .locals 3

    iget v0, p0, Le4/c;->b:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, LM3/b;

    iget-object v0, p0, Le4/c;->q:Ljava/lang/Object;

    check-cast v0, LA/j;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p1, "Received null app settings at app startup. Cannot send cached reports"

    const-string v0, "FirebaseCrashlytics"

    invoke-static {v0, p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v1}, LE5/l;->t(Ljava/lang/Object;)LL2/r;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, v0, LA/j;->r:Ljava/lang/Object;

    check-cast p1, LE3/n;

    invoke-static {p1}, LE3/n;->a(LE3/n;)LL2/r;

    iget-object v0, p1, LE3/n;->m:LD5/g;

    iget-object v2, p1, LE3/n;->e:LF3/d;

    iget-object v2, v2, LF3/d;->a:LF3/c;

    invoke-virtual {v0, v1, v2}, LD5/g;->x(Ljava/lang/String;Ljava/util/concurrent/Executor;)LL2/r;

    iget-object p1, p1, LE3/n;->q:LL2/i;

    invoke-virtual {p1, v1}, LL2/i;->b(Ljava/lang/Object;)V

    invoke-static {v1}, LE5/l;->t(Ljava/lang/Object;)LL2/r;

    move-result-object p1

    :goto_0
    return-object p1

    :pswitch_0
    check-cast p1, LM3/b;

    iget-object v0, p0, Le4/c;->q:Ljava/lang/Object;

    check-cast v0, LE3/l;

    iget-object v0, v0, LE3/l;->e:LE3/n;

    const/4 v1, 0x0

    if-nez p1, :cond_1

    const-string p1, "Received null app settings, cannot send reports at crash time."

    const-string v0, "FirebaseCrashlytics"

    invoke-static {v0, p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v1}, LE5/l;->t(Ljava/lang/Object;)LL2/r;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-static {v0}, LE3/n;->a(LE3/n;)LL2/r;

    move-result-object p1

    iget-object v2, v0, LE3/n;->m:LD5/g;

    iget-object v0, v0, LE3/n;->e:LF3/d;

    iget-object v0, v0, LF3/d;->a:LF3/c;

    invoke-virtual {v2, v1, v0}, LD5/g;->x(Ljava/lang/String;Ljava/util/concurrent/Executor;)LL2/r;

    move-result-object v0

    filled-new-array {p1, v0}, [LL2/r;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, LE5/l;->D(Ljava/util/List;)LL2/r;

    move-result-object p1

    :goto_1
    return-object p1

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method public l(LE0/p;JJZ)V
    .locals 0

    return-void
.end method

.method public m(LE0/p;JJ)V
    .locals 0

    iget-object p1, p0, Le4/c;->q:Ljava/lang/Object;

    check-cast p1, Ls0/e;

    sget-object p2, LF0/b;->b:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    sget-boolean p3, LF0/b;->c:Z

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p3, :cond_0

    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/util/ConcurrentModificationException;

    invoke-direct {p3}, Ljava/util/ConcurrentModificationException;-><init>()V

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    iget-object p1, p1, Ls0/e;->q:Ls0/h;

    invoke-virtual {p1, p2}, Ls0/h;->x(Ljava/io/IOException;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ls0/e;->b()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public n()Landroid/view/ContentInfo;
    .locals 1

    iget-object v0, p0, Le4/c;->q:Ljava/lang/Object;

    check-cast v0, Landroid/view/ContentInfo;

    return-object v0
.end method

.method public o(LG0/K;)V
    .locals 3

    iget-object v0, p0, Le4/c;->q:Ljava/lang/Object;

    check-cast v0, LG0/f;

    iget-object v1, p1, LG0/K;->b:Landroidx/media3/common/Format;

    const/16 v2, 0x1b59

    invoke-virtual {v0, p1, v1, v2}, Landroidx/media3/exoplayer/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    iput-object p1, v0, Ly0/t;->w0:Landroidx/media3/exoplayer/ExoPlaybackException;

    return-void
.end method

.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1

    iget p1, p0, Le4/c;->b:I

    const/4 p2, 0x0

    sparse-switch p1, :sswitch_data_0

    iget-object p1, p0, Le4/c;->q:Ljava/lang/Object;

    check-cast p1, LA4/c;

    invoke-virtual {p1, p2}, LA4/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :sswitch_0
    iget-object p1, p0, Le4/c;->q:Ljava/lang/Object;

    check-cast p1, LC4/b;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, LC4/b;->o0:Ljava/util/List;

    iget-object p2, p1, LC4/b;->o0:Ljava/util/List;

    invoke-virtual {p1, p2}, LC4/b;->T(Ljava/util/List;)V

    return-void

    :sswitch_1
    iget-object p1, p0, Le4/c;->q:Ljava/lang/Object;

    check-cast p1, LB4/s;

    sget-object v0, LB4/s;->v1:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, LB4/s;->w0(Ljava/util/List;)V

    return-void

    :sswitch_2
    iget-object p1, p0, Le4/c;->q:Ljava/lang/Object;

    check-cast p1, LA4/e;

    invoke-virtual {p1, p2}, LA4/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :sswitch_3
    iget-object p1, p0, Le4/c;->q:Ljava/lang/Object;

    check-cast p1, LA4/e;

    invoke-virtual {p1, p2}, LA4/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x6 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2

    iget p1, p0, Le4/c;->b:I

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    iget-object p1, p0, Le4/c;->q:Ljava/lang/Object;

    check-cast p1, LA4/c;

    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lib/player/models/MovieInfoResponse;

    :cond_0
    invoke-virtual {p1, v0}, LA4/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :sswitch_0
    iget-object p1, p0, Le4/c;->q:Ljava/lang/Object;

    check-cast p1, LC4/b;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lib/player/models/CatchUpEpgResponse;

    invoke-virtual {v0}, Lib/player/models/CatchUpEpgResponse;->getEpg_listings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lib/player/models/CatchUpEpgResponse;

    invoke-virtual {p2}, Lib/player/models/CatchUpEpgResponse;->getEpg_listings()Ljava/util/List;

    move-result-object p2

    iput-object p2, p1, LC4/b;->o0:Ljava/util/List;

    goto :goto_1

    :cond_2
    :goto_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, LC4/b;->o0:Ljava/util/List;

    :goto_1
    iget-object p2, p1, LC4/b;->o0:Ljava/util/List;

    invoke-virtual {p1, p2}, LC4/b;->T(Ljava/util/List;)V

    return-void

    :sswitch_1
    iget-object p1, p0, Le4/c;->q:Ljava/lang/Object;

    check-cast p1, LB4/s;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lib/player/models/CatchUpEpgResponse;

    invoke-virtual {v1}, Lib/player/models/CatchUpEpgResponse;->getEpg_listings()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lib/player/models/CatchUpEpgResponse;

    invoke-virtual {v1}, Lib/player/models/CatchUpEpgResponse;->getEpg_listings()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lib/player/models/CatchUpEpgResponse;

    invoke-virtual {v0}, Lib/player/models/CatchUpEpgResponse;->getEpg_listings()Ljava/util/List;

    move-result-object v0

    sget-object v1, LB4/s;->v1:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, LB4/s;->w0(Ljava/util/List;)V

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lib/player/models/CatchUpEpgResponse;

    invoke-virtual {p2}, Lib/player/models/CatchUpEpgResponse;->getEpg_listings()Ljava/util/List;

    move-result-object p2

    iput-object p2, p1, LB4/s;->p0:Ljava/util/List;

    goto :goto_2

    :cond_3
    sget-object p2, LB4/s;->v1:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, LB4/s;->w0(Ljava/util/List;)V

    :goto_2
    return-void

    :sswitch_2
    iget-object p1, p0, Le4/c;->q:Ljava/lang/Object;

    check-cast p1, LA4/e;

    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lib/player/models/InfoSerie;

    :cond_4
    invoke-virtual {p1, v0}, LA4/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :sswitch_3
    iget-object p1, p0, Le4/c;->q:Ljava/lang/Object;

    check-cast p1, LA4/e;

    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lib/player/models/MovieInfoResponse;

    :cond_5
    invoke-virtual {p1, v0}, LA4/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x6 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public p()I
    .locals 1

    iget-object v0, p0, Le4/c;->q:Ljava/lang/Object;

    check-cast v0, Landroid/view/ContentInfo;

    invoke-static {v0}, LJ/c;->y(Landroid/view/ContentInfo;)I

    move-result v0

    return v0
.end method

.method public q(Ljava/lang/Exception;)V
    .locals 0

    iget-object p1, p0, Le4/c;->q:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public r(I)LK/h;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public s(I)LK/h;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Le4/c;->q:Ljava/lang/Object;

    check-cast v0, Landroid/view/ContentInfo$Builder;

    invoke-static {v0, p1}, LJ/c;->w(Landroid/view/ContentInfo$Builder;Landroid/os/Bundle;)V

    return-void
.end method

.method public t(LM3/c;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 9

    iget-object v0, p0, Le4/c;->q:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, LE3/n;

    const-string v0, "Handling uncaught exception \""

    monitor-enter v2

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\" from thread "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FirebaseCrashlytics"

    const/4 v3, 0x3

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    const-string v1, "FirebaseCrashlytics"

    invoke-static {v1, v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, v2, LE3/n;->e:LF3/d;

    iget-object v0, v0, LF3/d;->a:LF3/c;

    new-instance v1, LE3/l;

    move-object v7, p1

    move-object v6, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v7}, LE3/l;-><init>(LE3/n;JLjava/lang/Throwable;Ljava/lang/Thread;LM3/c;)V

    iget-object p1, v0, LF3/c;->q:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p2, v0, LF3/c;->r:LL2/r;

    iget-object p3, v0, LF3/c;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v3, LA3/d;

    const/4 v4, 0x6

    invoke-direct {v3, v4, v1}, LA3/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, p3, v3}, LL2/r;->c(Ljava/util/concurrent/Executor;LL2/a;)LL2/r;

    move-result-object p2

    iput-object p2, v0, LF3/c;->r:LL2/r;

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {p2}, LE3/x;->a(LL2/r;)V
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p1, v0

    :try_start_3
    const-string p2, "Error handling uncaught exception"

    const-string p3, "FirebaseCrashlytics"

    invoke-static {p3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    const-string p1, "Cannot send reports. Timed out while fetching settings."

    const-string p2, "FirebaseCrashlytics"

    invoke-static {p2, p1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit v2

    return-void

    :catchall_1
    move-exception v0

    move-object p2, v0

    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p2

    :goto_1
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Le4/c;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ContentInfoCompat{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Le4/c;->q:Ljava/lang/Object;

    check-cast v1, Landroid/view/ContentInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
    .end packed-switch
.end method

.method public u(IILandroid/os/Bundle;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
