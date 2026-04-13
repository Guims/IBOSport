.class public final synthetic LA/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Ljava/lang/Object;

.field public final synthetic r:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, LA/o;->b:I

    iput-object p1, p0, LA/o;->q:Ljava/lang/Object;

    iput-object p3, p0, LA/o;->r:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, LA/o;->b:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LA/o;->q:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Callable;

    iget-object v1, p0, LA/o;->r:Ljava/lang/Object;

    check-cast v1, Lv0/f;

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, v1, Lv0/f;->b:Ljava/lang/Object;

    check-cast v2, Lz3/h;

    if-nez v0, :cond_0

    sget-object v0, Lo/g;->v:Ljava/lang/Object;

    :cond_0
    sget-object v4, Lo/g;->u:Lcom/bumptech/glide/d;

    invoke-virtual {v4, v2, v3, v0}, Lcom/bumptech/glide/d;->d(Lo/g;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2}, Lo/g;->e(Lo/g;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v1, v0}, Lv0/f;->j(Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, LA/o;->q:Ljava/lang/Object;

    check-cast v0, Lz3/a;

    iget-object v1, p0, LA/o;->r:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    iget v2, v0, Lz3/a;->c:I

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, v0, Lz3/a;->d:Landroid/os/StrictMode$ThreadPolicy;

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :cond_2
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    return-void

    :pswitch_1
    iget-object v0, p0, LA/o;->q:Ljava/lang/Object;

    check-cast v0, Ly3/n;

    iget-object v1, p0, LA/o;->r:Ljava/lang/Object;

    check-cast v1, LX3/b;

    monitor-enter v0

    :try_start_1
    iget-object v2, v0, Ly3/n;->b:Ljava/util/Set;

    if-nez v2, :cond_3

    iget-object v2, v0, Ly3/n;->a:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_3
    iget-object v2, v0, Ly3/n;->b:Ljava/util/Set;

    invoke-interface {v1}, LX3/b;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :pswitch_2
    iget-object v0, p0, LA/o;->q:Ljava/lang/Object;

    check-cast v0, Ly3/o;

    iget-object v1, p0, LA/o;->r:Ljava/lang/Object;

    check-cast v1, LX3/b;

    iget-object v2, v0, Ly3/o;->b:LX3/b;

    sget-object v4, Ly3/o;->d:Ly3/e;

    if-ne v2, v4, :cond_4

    monitor-enter v0

    :try_start_3
    iget-object v2, v0, Ly3/o;->a:LX3/a;

    iput-object v3, v0, Ly3/o;->a:LX3/a;

    iput-object v1, v0, Ly3/o;->b:LX3/b;

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-interface {v2, v1}, LX3/a;->i(LX3/b;)V

    return-void

    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "provide() can be called only once."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    iget-object v0, p0, LA/o;->q:Ljava/lang/Object;

    check-cast v0, Lw0/b;

    iget-object v1, p0, LA/o;->r:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    iput-boolean v4, v0, Lw0/b;->x:Z

    invoke-virtual {v0, v1}, Lw0/b;->d(Landroid/net/Uri;)V

    return-void

    :pswitch_4
    iget-object v0, p0, LA/o;->q:Ljava/lang/Object;

    check-cast v0, Lv0/w;

    iget-object v1, p0, LA/o;->r:Ljava/lang/Object;

    check-cast v1, Lv0/o;

    iget-object v0, v0, Lv0/w;->r:Lv0/f;

    iget-object v1, v1, Lv0/o;->B:Landroid/net/Uri;

    iget-object v0, v0, Lv0/f;->b:Ljava/lang/Object;

    check-cast v0, Lv0/p;

    iget-object v0, v0, Lv0/p;->q:Lw0/c;

    iget-object v0, v0, Lw0/c;->s:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw0/b;

    invoke-virtual {v0, v2}, Lw0/b;->c(Z)V

    return-void

    :pswitch_5
    iget-object v0, p0, LA/o;->q:Ljava/lang/Object;

    check-cast v0, Lu0/f;

    iget-object v1, p0, LA/o;->r:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/Format;

    iget-object v2, v0, Lu0/f;->s:Lu0/g;

    iget v3, v2, Lu0/g;->p:I

    if-eqz v3, :cond_6

    iget-boolean v3, v0, Lu0/f;->r:Z

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    iget-object v3, v2, Lu0/g;->t:Landroid/os/Looper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v0, Lu0/f;->b:Lu0/m;

    invoke-virtual {v2, v3, v5, v1, v4}, Lu0/g;->e(Landroid/os/Looper;Lu0/m;Landroidx/media3/common/Format;Z)Lu0/j;

    move-result-object v1

    iput-object v1, v0, Lu0/f;->q:Lu0/j;

    iget-object v1, v2, Lu0/g;->n:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    return-void

    :pswitch_6
    iget-object v0, p0, LA/o;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/ui/PlayerView;

    iget-object v1, p0, LA/o;->r:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Landroidx/media3/ui/PlayerView;->a(Landroidx/media3/ui/PlayerView;Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_7
    iget-object v0, p0, LA/o;->q:Ljava/lang/Object;

    check-cast v0, Lr0/p;

    iget-object v1, p0, LA/o;->r:Ljava/lang/Object;

    check-cast v1, Lr0/m;

    invoke-interface {v0, v1}, Lr0/p;->onAudioTrackReleased(Lr0/m;)V

    return-void

    :pswitch_8
    iget-object v0, p0, LA/o;->q:Ljava/lang/Object;

    check-cast v0, Lp5/p;

    iget-object v1, p0, LA/o;->r:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Lp5/p;->r:Ljava/lang/Object;

    check-cast v0, Lr0/l;

    sget v2, Lk0/C;->a:I

    invoke-interface {v0, v1}, Lr0/l;->onAudioDecoderReleased(Ljava/lang/String;)V

    return-void

    :pswitch_9
    iget-object v0, p0, LA/o;->q:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;

    iget-object v1, p0, LA/o;->r:Ljava/lang/Object;

    check-cast v1, Landroid/app/job/JobParameters;

    sget v2, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;->b:I

    invoke-virtual {v0, v1, v4}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void

    :pswitch_a
    iget-object v0, p0, LA/o;->q:Ljava/lang/Object;

    check-cast v0, Lt3/y;

    iget-object v1, p0, LA/o;->r:Ljava/lang/Object;

    check-cast v1, Lt3/s;

    iget-object v0, v0, Lt3/o;->b:Ljava/lang/Object;

    instance-of v0, v0, Lt3/a;

    if-eqz v0, :cond_7

    invoke-interface {v1, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_7
    return-void

    :pswitch_b
    iget-object v0, p0, LA/o;->q:Ljava/lang/Object;

    check-cast v0, Lk0/t;

    iget-object v1, p0, LA/o;->r:Ljava/lang/Object;

    check-cast v1, LE0/g;

    invoke-virtual {v0}, Lk0/t;->c()I

    move-result v0

    invoke-virtual {v1, v0}, LE0/g;->a(I)V

    return-void

    :pswitch_c
    iget-object v0, p0, LA/o;->q:Ljava/lang/Object;

    check-cast v0, Lib/player/pages/series/j;

    iget-object v1, p0, LA/o;->r:Ljava/lang/Object;

    check-cast v1, Lib/player/models/SeriesModel;

    sget-object v2, Lib/player/pages/series/j;->D0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lib/player/models/SeriesModel;->getSeries_id()Ljava/lang/String;

    move-result-object v2

    new-instance v3, LA4/e;

    const/4 v4, 0x3

    invoke-direct {v3, v0, v1, v4}, LA4/e;-><init>(Lib/player/base/BaseFragment;Lio/realm/O;I)V

    invoke-virtual {v0, v2, v3}, Lib/player/pages/series/j;->T(Ljava/lang/String;Ld5/l;)V

    return-void

    :pswitch_d
    iget-object v0, p0, LA/o;->q:Ljava/lang/Object;

    check-cast v0, Lf/n;

    iget-object v1, p0, LA/o;->r:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_5
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-virtual {v0}, Lf/n;->a()V

    return-void

    :catchall_2
    move-exception v1

    invoke-virtual {v0}, Lf/n;->a()V

    throw v1

    :pswitch_e
    iget-object v0, p0, LA/o;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/source/V;

    iget-object v1, p0, LA/o;->r:Ljava/lang/Object;

    check-cast v1, LI0/F;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/source/V;->z(LI0/F;)V

    return-void

    :pswitch_f
    iget-object v0, p0, LA/o;->q:Ljava/lang/Object;

    check-cast v0, Lk0/h;

    iget-object v1, p0, LA/o;->r:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lk0/h;->accept(Ljava/lang/Object;)V

    return-void

    :pswitch_10
    iget-object v0, p0, LA/o;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/SimpleBasePlayer;

    iget-object v1, p0, LA/o;->r:Ljava/lang/Object;

    check-cast v1, Lt3/s;

    invoke-static {v0, v1}, Landroidx/media3/common/SimpleBasePlayer;->p(Landroidx/media3/common/SimpleBasePlayer;Lt3/s;)V

    return-void

    :pswitch_11
    iget-object v0, p0, LA/o;->q:Ljava/lang/Object;

    check-cast v0, LL3/b;

    iget-object v1, p0, LA/o;->r:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/CountDownLatch;

    :try_start_6
    iget-object v0, v0, LL3/b;->h:LG/c;

    sget-object v3, Lg2/c;->r:Lg2/c;

    iget-object v0, v0, LG/c;->r:Ljava/lang/Object;

    check-cast v0, Lj2/j;

    invoke-virtual {v0, v3}, Lj2/j;->b(Lg2/c;)Lj2/j;

    move-result-object v0

    invoke-static {}, Lj2/q;->a()Lj2/q;

    move-result-object v3

    iget-object v3, v3, Lj2/q;->d:LM3/c;

    invoke-virtual {v3, v0, v2}, LM3/c;->c(Lj2/j;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :pswitch_12
    iget-object v0, p0, LA/o;->q:Ljava/lang/Object;

    check-cast v0, LH0/l;

    iget-object v1, p0, LA/o;->r:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/SurfaceTexture;

    iget-object v2, v0, LH0/l;->v:Landroid/graphics/SurfaceTexture;

    iget-object v3, v0, LH0/l;->w:Landroid/view/Surface;

    new-instance v4, Landroid/view/Surface;

    invoke-direct {v4, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v1, v0, LH0/l;->v:Landroid/graphics/SurfaceTexture;

    iput-object v4, v0, LH0/l;->w:Landroid/view/Surface;

    iget-object v0, v0, LH0/l;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LH0/k;

    invoke-interface {v1, v4}, LH0/k;->onVideoSurfaceCreated(Landroid/view/Surface;)V

    goto :goto_4

    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_9
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    :cond_a
    return-void

    :pswitch_13
    iget-object v0, p0, LA/o;->q:Ljava/lang/Object;

    check-cast v0, LA/j;

    iget-object v1, p0, LA/o;->r:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, LA/j;->r:Ljava/lang/Object;

    check-cast v0, LG0/I;

    sget v2, Lk0/C;->a:I

    invoke-interface {v0, v1}, LG0/I;->onVideoDecoderReleased(Ljava/lang/String;)V

    return-void

    :pswitch_14
    iget-object v0, p0, LA/o;->q:Ljava/lang/Object;

    check-cast v0, LA/j;

    iget-object v1, p0, LA/o;->r:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Exception;

    iget-object v0, v0, LA/j;->r:Ljava/lang/Object;

    check-cast v0, LG0/I;

    sget v2, Lk0/C;->a:I

    invoke-interface {v0, v1}, LG0/I;->onVideoCodecError(Ljava/lang/Exception;)V

    return-void

    :pswitch_15
    iget-object v0, p0, LA/o;->q:Ljava/lang/Object;

    check-cast v0, LA/j;

    iget-object v1, p0, LA/o;->r:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/VideoSize;

    iget-object v0, v0, LA/j;->r:Ljava/lang/Object;

    check-cast v0, LG0/I;

    sget v2, Lk0/C;->a:I

    invoke-interface {v0, v1}, LG0/I;->onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V

    return-void

    :pswitch_16
    iget-object v0, p0, LA/o;->q:Ljava/lang/Object;

    check-cast v0, LE3/q;

    const-string v2, "UrlCheckError"

    iget-object v4, p0, LA/o;->r:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v0, v0, LE3/q;->f:LE3/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_7
    iget-object v5, v0, LE3/n;->d:LK3/c;

    iget-object v5, v5, LK3/c;->s:Ljava/lang/Object;

    check-cast v5, LE1/d;

    invoke-virtual {v5, v2, v4}, LE1/d;->d(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_6

    :catch_2
    move-exception v2

    iget-object v0, v0, LE3/n;->a:Landroid/content/Context;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_b

    goto :goto_5

    :cond_b
    throw v2

    :cond_c
    :goto_5
    const-string v0, "Attempting to set custom attribute with null key, ignoring."

    const-string v1, "FirebaseCrashlytics"

    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    return-void

    :pswitch_17
    iget-object v0, p0, LA/o;->q:Ljava/lang/Object;

    check-cast v0, LE3/n;

    iget-object v1, p0, LA/o;->r:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, LE3/n;->c(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void

    :pswitch_18
    iget-object v0, p0, LA/o;->q:Ljava/lang/Object;

    check-cast v0, LD4/x;

    iget-object v2, p0, LA/o;->r:Ljava/lang/Object;

    check-cast v2, Lib/player/models/MovieModel;

    sget-object v3, LD4/x;->D0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lib/player/models/MovieModel;->getStream_id()Ljava/lang/String;

    move-result-object v3

    new-instance v4, LA4/e;

    invoke-direct {v4, v0, v2, v1}, LA4/e;-><init>(Lib/player/base/BaseFragment;Lio/realm/O;I)V

    invoke-virtual {v0, v3, v4}, LD4/x;->U(Ljava/lang/String;Ld5/l;)V

    return-void

    :pswitch_19
    iget-object v0, p0, LA/o;->q:Ljava/lang/Object;

    check-cast v0, LA4/p;

    iget-object v1, p0, LA/o;->r:Ljava/lang/Object;

    check-cast v1, Lib/player/models/MovieModel;

    invoke-virtual {v1}, Lib/player/models/MovieModel;->getStream_id()Ljava/lang/String;

    move-result-object v4

    new-instance v5, LA4/e;

    invoke-direct {v5, v0, v1, v2}, LA4/e;-><init>(Lib/player/base/BaseFragment;Lio/realm/O;I)V

    iget-object v1, v0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v1}, Lib/player/base/helper/w;->W()Ljava/lang/String;

    :try_start_8
    iget-object v1, v0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v1}, Lib/player/base/helper/w;->W()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lu4/b;->a(Ljava/lang/String;)Lu4/a;

    move-result-object v1

    iget-object v6, v0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v6}, Lib/player/base/helper/w;->d0()Ljava/lang/String;

    move-result-object v6

    iget-object v0, v0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v0}, Lib/player/base/helper/w;->Q()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v6, v0, v4}, Lu4/a;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Le4/c;

    invoke-direct {v1, v2, v5}, Le4/c;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_7

    :catch_3
    invoke-virtual {v5, v3}, LA4/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    return-void

    :pswitch_1a
    iget-object v0, p0, LA/o;->q:Ljava/lang/Object;

    check-cast v0, LA4/p;

    iget-object v2, p0, LA/o;->r:Ljava/lang/Object;

    check-cast v2, Lib/player/models/SeriesModel;

    invoke-virtual {v2}, Lib/player/models/SeriesModel;->getSeries_id()Ljava/lang/String;

    move-result-object v5

    new-instance v6, LA4/e;

    invoke-direct {v6, v0, v2, v4}, LA4/e;-><init>(Lib/player/base/BaseFragment;Lio/realm/O;I)V

    iget-object v2, v0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v2}, Lib/player/base/helper/w;->W()Ljava/lang/String;

    :try_start_9
    iget-object v2, v0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v2}, Lib/player/base/helper/w;->W()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lu4/b;->a(Ljava/lang/String;)Lu4/a;

    move-result-object v2

    iget-object v4, v0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v4}, Lib/player/base/helper/w;->d0()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v0}, Lib/player/base/helper/w;->Q()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0, v5}, Lu4/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    new-instance v2, Le4/c;

    invoke-direct {v2, v1, v6}, Le4/c;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_8

    :catch_4
    invoke-virtual {v6, v3}, LA4/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    return-void

    :pswitch_1b
    iget-object v0, p0, LA/o;->q:Ljava/lang/Object;

    check-cast v0, LA4/j;

    iget-object v1, p0, LA/o;->r:Ljava/lang/Object;

    check-cast v1, [I

    iget-object v0, v0, LA4/j;->u:Lib/player/base/view/LiveHorizontalGridView;

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->F(I)Lv1/X;

    move-result-object v0

    check-cast v0, LA4/n;

    if-eqz v0, :cond_d

    iget-object v0, v0, Lv1/X;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_d
    return-void

    :pswitch_1c
    iget-object v0, p0, LA/o;->q:Ljava/lang/Object;

    check-cast v0, LA/b;

    iget-object v1, p0, LA/o;->r:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, LA/b;->h(Landroid/graphics/Typeface;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
