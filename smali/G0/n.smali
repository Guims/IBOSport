.class public final synthetic LG0/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Ljava/lang/Object;

.field public final synthetic r:Ljava/lang/Object;

.field public final synthetic s:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, LG0/n;->b:I

    iput-object p1, p0, LG0/n;->q:Ljava/lang/Object;

    iput-object p2, p0, LG0/n;->r:Ljava/lang/Object;

    iput-object p3, p0, LG0/n;->s:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, LG0/n;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LG0/n;->q:Ljava/lang/Object;

    check-cast v0, Lu0/m;

    iget-object v1, p0, LG0/n;->r:Ljava/lang/Object;

    iget-object v2, p0, LG0/n;->s:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Exception;

    iget v3, v0, Lu0/m;->a:I

    iget-object v0, v0, Lu0/m;->b:Landroidx/media3/exoplayer/source/E;

    invoke-interface {v1, v3, v0, v2}, Lu0/n;->onDrmSessionManagerError(ILandroidx/media3/exoplayer/source/E;Ljava/lang/Exception;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LG0/n;->q:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/f;

    iget-object v1, p0, LG0/n;->r:Ljava/lang/Object;

    check-cast v1, Landroid/view/SurfaceView;

    iget-object v2, p0, LG0/n;->s:Ljava/lang/Object;

    check-cast v2, LB4/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lq0/n;->m(Landroid/view/SurfaceView;)Landroid/view/AttachedSurfaceControl;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/media3/datasource/a;->l()Landroid/window/SurfaceSyncGroup;

    move-result-object v3

    iput-object v3, v0, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    new-instance v0, Lp2/a;

    const/4 v4, 0x1

    invoke-direct {v0, v4}, Lp2/a;-><init>(I)V

    invoke-static {v3, v1, v0}, Lr1/B;->b(Landroid/window/SurfaceSyncGroup;Landroid/view/AttachedSurfaceControl;Lp2/a;)Z

    move-result v0

    invoke-static {v0}, Lk0/c;->j(Z)V

    invoke-virtual {v2}, LB4/l;->run()V

    invoke-static {}, Landroidx/lifecycle/D;->f()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-static {v1, v0}, Lq0/n;->v(Landroid/view/AttachedSurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, LG0/n;->q:Ljava/lang/Object;

    check-cast v0, Lp5/p;

    iget-object v1, p0, LG0/n;->r:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/Format;

    iget-object v2, p0, LG0/n;->s:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    iget-object v0, v0, Lp5/p;->r:Ljava/lang/Object;

    check-cast v0, Lr0/l;

    sget v3, Lk0/C;->a:I

    invoke-interface {v0, v1, v2}, Lr0/l;->onAudioInputFormatChanged(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V

    return-void

    :pswitch_2
    iget-object v0, p0, LG0/n;->q:Ljava/lang/Object;

    check-cast v0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityConsumer;

    iget-object v1, p0, LG0/n;->r:Ljava/lang/Object;

    check-cast v1, Lorg/apache/hc/core5/http/ContentType;

    iget-object v2, p0, LG0/n;->s:Ljava/lang/Object;

    check-cast v2, Lorg/apache/hc/core5/concurrent/FutureCallback;

    invoke-static {v0, v1, v2}, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityConsumer;->a(Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityConsumer;Lorg/apache/hc/core5/http/ContentType;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    return-void

    :pswitch_3
    iget-object v0, p0, LG0/n;->q:Ljava/lang/Object;

    check-cast v0, Lt3/s;

    iget-object v1, p0, LG0/n;->r:Ljava/lang/Object;

    check-cast v1, Lt3/y;

    iget-object v2, p0, LG0/n;->s:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/common/m;

    :try_start_0
    invoke-static {v0}, LE2/g;->n(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, v2, Landroidx/media3/common/m;->b:Ljava/lang/Object;

    check-cast v2, Lt3/s;

    invoke-static {v2, v0}, Landroidx/media3/common/SimpleBasePlayer;->r(Lt3/s;Ljava/lang/Object;)Lt3/s;

    move-result-object v0

    invoke-virtual {v1, v0}, Lt3/y;->m(Lt3/s;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-virtual {v1, v0}, Lt3/o;->l(Ljava/lang/Throwable;)Z

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    invoke-virtual {v1, v0}, Lt3/o;->l(Ljava/lang/Throwable;)Z

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    move-object v0, v2

    :goto_2
    invoke-virtual {v1, v0}, Lt3/o;->l(Ljava/lang/Throwable;)Z

    goto :goto_3

    :catch_3
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lt3/o;->cancel(Z)Z

    :goto_3
    return-void

    :pswitch_4
    iget-object v0, p0, LG0/n;->q:Ljava/lang/Object;

    check-cast v0, LC2/c;

    iget-object v1, p0, LG0/n;->r:Ljava/lang/Object;

    check-cast v1, La/a;

    iget-object v2, p0, LG0/n;->s:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/ThreadPoolExecutor;

    :try_start_2
    iget-object v0, v0, LC2/c;->b:Landroid/content/Context;

    invoke-static {v0}, LQ5/d;->d(Landroid/content/Context;)Landroidx/emoji2/text/q;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v3, v0, Landroidx/emoji2/text/f;->b:Ljava/lang/Object;

    check-cast v3, Landroidx/emoji2/text/i;

    check-cast v3, Landroidx/emoji2/text/p;

    iget-object v4, v3, Landroidx/emoji2/text/p;->s:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iput-object v2, v3, Landroidx/emoji2/text/p;->u:Ljava/util/concurrent/ThreadPoolExecutor;

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v0, v0, Landroidx/emoji2/text/f;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/emoji2/text/i;

    new-instance v3, Landroidx/emoji2/text/k;

    invoke-direct {v3, v1, v2}, Landroidx/emoji2/text/k;-><init>(La/a;Ljava/util/concurrent/ThreadPoolExecutor;)V

    invoke-interface {v0, v3}, Landroidx/emoji2/text/i;->a(La/a;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "EmojiCompat font provider not available on this device."

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_4
    invoke-virtual {v1, v0}, La/a;->F(Ljava/lang/Throwable;)V

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    :goto_5
    return-void

    :pswitch_5
    iget-object v0, p0, LG0/n;->q:Ljava/lang/Object;

    check-cast v0, Lorg/apache/hc/core5/util/TimeValue;

    iget-object v1, p0, LG0/n;->r:Ljava/lang/Object;

    check-cast v1, Lorg/apache/hc/core5/pool/ConnPoolControl;

    iget-object v2, p0, LG0/n;->s:Ljava/lang/Object;

    check-cast v2, Lorg/apache/hc/core5/util/TimeValue;

    invoke-static {v0, v1, v2}, Lorg/apache/hc/client5/http/impl/IdleConnectionEvictor;->a(Lorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/core5/pool/ConnPoolControl;Lorg/apache/hc/core5/util/TimeValue;)V

    return-void

    :pswitch_6
    iget-object v0, p0, LG0/n;->q:Ljava/lang/Object;

    check-cast v0, LA/j;

    iget-object v1, p0, LG0/n;->r:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/Format;

    iget-object v2, p0, LG0/n;->s:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    iget-object v0, v0, LA/j;->r:Ljava/lang/Object;

    check-cast v0, LG0/I;

    sget v3, Lk0/C;->a:I

    invoke-interface {v0, v1, v2}, LG0/I;->onVideoInputFormatChanged(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V

    return-void

    :pswitch_7
    iget-object v0, p0, LG0/n;->q:Ljava/lang/Object;

    check-cast v0, LG0/o;

    iget-object v1, p0, LG0/n;->r:Ljava/lang/Object;

    check-cast v1, LG0/J;

    iget-object v2, p0, LG0/n;->s:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/common/VideoFrameProcessingException;

    new-instance v3, LG0/K;

    iget-object v0, v0, LG0/o;->e:Landroidx/media3/common/Format;

    invoke-static {v0}, Lk0/c;->k(Ljava/lang/Object;)V

    invoke-direct {v3, v2, v0}, LG0/K;-><init>(Ljava/lang/Throwable;Landroidx/media3/common/Format;)V

    invoke-interface {v1, v3}, LG0/J;->o(LG0/K;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
