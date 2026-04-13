.class public final LG0/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final b:Landroid/os/Handler;

.field public final synthetic q:LG0/f;


# direct methods
.method public constructor <init>(LG0/f;Ly0/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG0/e;->q:LG0/f;

    invoke-static {p0}, Lk0/C;->m(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, LG0/e;->b:Landroid/os/Handler;

    invoke-interface {p2, p0, p1}, Ly0/l;->o(LG0/e;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 8

    iget-object v0, p0, LG0/e;->q:LG0/f;

    iget-object v1, v0, LG0/f;->h1:LG0/e;

    if-ne p0, v1, :cond_6

    iget-object v1, v0, Ly0/t;->J:Ly0/l;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v1, p1, v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iput-boolean v2, v0, Ly0/t;->v0:Z

    return-void

    :cond_1
    :try_start_0
    iget-object v1, v0, LG0/f;->E0:LA/j;

    invoke-virtual {v0, p1, p2}, Ly0/t;->V(J)V

    iget-object v3, v0, LG0/f;->c1:Landroidx/media3/common/VideoSize;

    sget-object v4, Landroidx/media3/common/VideoSize;->UNKNOWN:Landroidx/media3/common/VideoSize;

    invoke-virtual {v3, v4}, Landroidx/media3/common/VideoSize;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v0, LG0/f;->d1:Landroidx/media3/common/VideoSize;

    invoke-virtual {v3, v4}, Landroidx/media3/common/VideoSize;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iput-object v3, v0, LG0/f;->d1:Landroidx/media3/common/VideoSize;

    invoke-virtual {v1, v3}, LA/j;->A(Landroidx/media3/common/VideoSize;)V

    :cond_2
    iget-object v3, v0, Ly0/t;->x0:Landroidx/media3/exoplayer/DecoderCounters;

    iget v4, v3, Landroidx/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    add-int/2addr v4, v2

    iput v4, v3, Landroidx/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    iget-object v3, v0, LG0/f;->H0:LG0/z;

    iget v4, v3, LG0/z;->e:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    move v4, v2

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    iput v5, v3, LG0/z;->e:I

    iget-object v5, v3, LG0/z;->l:Lk0/d;

    check-cast v5, Lk0/w;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {v5, v6}, Lk0/C;->Q(J)J

    move-result-wide v5

    iput-wide v5, v3, LG0/z;->g:J

    if-eqz v4, :cond_5

    iget-object v3, v0, LG0/f;->P0:Landroid/view/Surface;

    if-eqz v3, :cond_5

    iget-object v4, v1, LA/j;->q:Ljava/lang/Object;

    check-cast v4, Landroid/os/Handler;

    if-eqz v4, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    new-instance v7, LG0/G;

    invoke-direct {v7, v1, v3, v5, v6}, LG0/G;-><init>(LA/j;Ljava/lang/Object;J)V

    invoke-virtual {v4, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    iput-boolean v2, v0, LG0/f;->S0:Z

    :cond_5
    invoke-virtual {v0, p1, p2}, LG0/f;->B(J)V
    :try_end_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iput-object p1, v0, Ly0/t;->w0:Landroidx/media3/exoplayer/ExoPlaybackException;

    :cond_6
    :goto_1
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    sget v1, Lk0/C;->a:I

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/16 v4, 0x20

    shl-long/2addr v0, v4

    int-to-long v4, p1

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, LG0/e;->a(J)V

    const/4 p1, 0x1

    return p1
.end method
