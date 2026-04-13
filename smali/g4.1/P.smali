.class public final Lg4/P;
.super Landroid/os/Handler;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LV4/i;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lg4/P;->a:I

    const-string v0, "backgroundDispatcher"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lg4/P;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/os/Looper;I)V
    .locals 0

    iput p3, p0, Lg4/P;->a:I

    iput-object p1, p0, Lg4/P;->b:Ljava/lang/Object;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 13

    iget v0, p0, Lg4/P;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg4/P;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ly0/e;

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v6, :cond_9

    if-eq v0, v4, :cond_6

    if-eq v0, v2, :cond_5

    if-eq v0, v3, :cond_2

    iget-object v0, v1, Ly0/e;->s:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Ljava/lang/IllegalStateException;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v5, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    goto/16 :goto_2

    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    :try_start_0
    iget-object v0, v1, Ly0/e;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    move-object p1, v0

    iget-object v0, v1, Ly0/e;->s:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_3
    invoke-virtual {v0, v5, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_5
    iget-object p1, v1, Ly0/e;->t:Lk0/g;

    invoke-virtual {p1}, Lk0/g;->e()Z

    goto :goto_2

    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Ly0/d;

    iget v7, v2, Ly0/d;->a:I

    iget-object v9, v2, Ly0/d;->c:Landroid/media/MediaCodec$CryptoInfo;

    iget-wide v10, v2, Ly0/d;->d:J

    iget v12, v2, Ly0/d;->e:I

    :try_start_1
    sget-object p1, Ly0/e;->w:Ljava/lang/Object;

    monitor-enter p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v6, v1, Ly0/e;->b:Landroid/media/MediaCodec;

    const/4 v8, 0x0

    invoke-virtual/range {v6 .. v12}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v0

    move-object p1, v0

    iget-object v3, v1, Ly0/e;->s:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_7
    invoke-virtual {v3, v5, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_0

    :cond_8
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7

    :goto_0
    move-object v5, v2

    goto :goto_2

    :cond_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Ly0/d;

    iget v7, v2, Ly0/d;->a:I

    iget v9, v2, Ly0/d;->b:I

    iget-wide v10, v2, Ly0/d;->d:J

    iget v12, v2, Ly0/d;->e:I

    :try_start_4
    iget-object v6, v1, Ly0/e;->b:Landroid/media/MediaCodec;

    const/4 v8, 0x0

    invoke-virtual/range {v6 .. v12}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    move-object p1, v0

    iget-object v6, v1, Ly0/e;->s:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_a
    invoke-virtual {v6, v5, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_1

    :cond_b
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_a

    :goto_1
    goto :goto_0

    :goto_2
    if-eqz v5, :cond_c

    sget-object p1, Ly0/e;->v:Ljava/util/ArrayDeque;

    monitor-enter p1

    :try_start_5
    invoke-virtual {p1, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    monitor-exit p1

    goto :goto_3

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :cond_c
    :goto_3
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    if-nez v0, :cond_d

    goto :goto_4

    :cond_d
    iget-object v2, p0, Lg4/P;->b:Ljava/lang/Object;

    check-cast v2, Lu0/g;

    iget-object v2, v2, Lu0/g;->m:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v1

    :cond_e
    if-ge v6, v5, :cond_10

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lu0/c;

    invoke-virtual {v7}, Lu0/c;->o()V

    iget-object v8, v7, Lu0/c;->u:[B

    invoke-static {v8, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_e

    iget p1, p1, Landroid/os/Message;->what:I

    if-eq p1, v4, :cond_f

    goto :goto_4

    :cond_f
    iget p1, v7, Lu0/c;->o:I

    if-ne p1, v3, :cond_10

    sget p1, Lk0/C;->a:I

    invoke-virtual {v7, v1}, Lu0/c;->i(Z)V

    :cond_10
    :goto_4
    return-void

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget p1, p1, Landroid/os/Message;->what:I

    if-eq p1, v6, :cond_16

    if-eq p1, v4, :cond_11

    goto/16 :goto_a

    :cond_11
    iget-object p1, p0, Lg4/P;->b:Ljava/lang/Object;

    check-cast p1, Lu0/c;

    iget-object v4, p1, Lu0/c;->w:Lu0/v;

    if-ne v2, v4, :cond_1a

    invoke-virtual {p1}, Lu0/c;->j()Z

    move-result v2

    if-nez v2, :cond_12

    goto/16 :goto_a

    :cond_12
    iput-object v5, p1, Lu0/c;->w:Lu0/v;

    instance-of v2, v0, Ljava/lang/Exception;

    if-nez v2, :cond_15

    instance-of v2, v0, Ljava/lang/NoSuchMethodError;

    if-eqz v2, :cond_13

    goto :goto_8

    :cond_13
    :try_start_6
    check-cast v0, [B

    iget-object v1, p1, Lu0/c;->b:Lu0/x;

    iget-object v2, p1, Lu0/c;->u:[B

    invoke-interface {v1, v2, v0}, Lu0/x;->h([B[B)[B

    move-result-object v0

    iget-object v1, p1, Lu0/c;->v:[B

    if-eqz v1, :cond_14

    if-eqz v0, :cond_14

    array-length v1, v0

    if-eqz v1, :cond_14

    iput-object v0, p1, Lu0/c;->v:[B

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v0

    goto :goto_7

    :cond_14
    :goto_5
    iput v3, p1, Lu0/c;->o:I

    iget-object v0, p1, Lu0/c;->h:Lk0/i;

    iget-object v1, v0, Lk0/i;->b:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/NoSuchMethodError; {:try_start_6 .. :try_end_6} :catch_3

    :try_start_7
    iget-object v0, v0, Lk0/i;->r:Ljava/util/Set;

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu0/m;

    invoke-virtual {v1}, Lu0/m;->a()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/NoSuchMethodError; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_6

    :catchall_2
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/NoSuchMethodError; {:try_start_a .. :try_end_a} :catch_3

    :goto_7
    invoke-virtual {p1, v0, v6}, Lu0/c;->l(Ljava/lang/Throwable;Z)V

    goto :goto_a

    :cond_15
    :goto_8
    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p1, v0, v1}, Lu0/c;->l(Ljava/lang/Throwable;Z)V

    goto :goto_a

    :cond_16
    iget-object p1, p0, Lg4/P;->b:Ljava/lang/Object;

    check-cast p1, Lu0/c;

    iget-object v3, p1, Lu0/c;->c:Lp5/p;

    iget-object v7, p1, Lu0/c;->x:Lu0/w;

    if-ne v2, v7, :cond_1a

    iget v2, p1, Lu0/c;->o:I

    if-eq v2, v4, :cond_17

    invoke-virtual {p1}, Lu0/c;->j()Z

    move-result v2

    if-nez v2, :cond_17

    goto :goto_a

    :cond_17
    iput-object v5, p1, Lu0/c;->x:Lu0/w;

    instance-of v2, v0, Ljava/lang/Exception;

    if-eqz v2, :cond_18

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v3, v0, v1}, Lp5/p;->I(Ljava/lang/Exception;Z)V

    goto :goto_a

    :cond_18
    :try_start_b
    iget-object p1, p1, Lu0/c;->b:Lu0/x;

    check-cast v0, [B

    invoke-interface {p1, v0}, Lu0/x;->i([B)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    iput-object v5, v3, Lp5/p;->r:Ljava/lang/Object;

    iget-object p1, v3, Lp5/p;->q:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashSet;

    invoke-static {p1}, Lp3/H;->j(Ljava/util/Collection;)Lp3/H;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    invoke-virtual {v0, v1}, Lp3/H;->l(I)Lp3/F;

    move-result-object p1

    :cond_19
    :goto_9
    invoke-virtual {p1}, Lp3/F;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Lp3/F;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu0/c;

    invoke-virtual {v0}, Lu0/c;->m()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v0, v6}, Lu0/c;->i(Z)V

    goto :goto_9

    :catch_5
    move-exception v0

    move-object p1, v0

    invoke-virtual {v3, p1, v6}, Lp5/p;->I(Ljava/lang/Exception;Z)V

    :cond_1a
    :goto_a
    return-void

    :pswitch_2
    const-string v0, "SessionLifecycleClient"

    const-string v1, "msg"

    invoke-static {p1, v1}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_1d

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1b

    const-string v1, "SessionUpdateExtra"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1c

    :cond_1b
    const-string p1, ""

    :cond_1c
    const-string v1, "Session update received."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lg4/P;->b:Ljava/lang/Object;

    check-cast v0, LV4/i;

    invoke-static {v0}, Lm5/w;->a(LV4/i;)Lr5/e;

    move-result-object v0

    new-instance v1, Lg4/B;

    invoke-direct {v1, p1, v5, v6}, Lg4/B;-><init>(Ljava/lang/Object;LV4/d;I)V

    invoke-static {v0, v1}, Lm5/w;->g(Lm5/u;Ld5/p;)Lm5/f0;

    goto :goto_b

    :cond_1d
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received unexpected event from the SessionLifecycleService: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :goto_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
