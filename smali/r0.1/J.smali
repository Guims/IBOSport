.class public final Lr0/J;
.super Ljava/lang/Object;

# interfaces
.implements Lr0/p;


# instance fields
.field public final synthetic b:Lr0/K;


# direct methods
.method public constructor <init>(Lr0/K;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/J;->b:Lr0/K;

    return-void
.end method


# virtual methods
.method public final C()V
    .locals 2

    iget-object v0, p0, Lr0/J;->b:Lr0/K;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lr0/K;->M0:Z

    return-void
.end method

.method public final I()V
    .locals 1

    iget-object v0, p0, Lr0/J;->b:Lr0/K;

    iget-object v0, v0, Ly0/t;->E:Landroidx/media3/exoplayer/Renderer$WakeupListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer$WakeupListener;->onWakeup()V

    :cond_0
    return-void
.end method

.method public final f(J)V
    .locals 3

    iget-object v0, p0, Lr0/J;->b:Lr0/K;

    iget-object v0, v0, Lr0/K;->D0:Lp5/p;

    iget-object v1, v0, Lp5/p;->q:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    if-eqz v1, :cond_0

    new-instance v2, Lr0/j;

    invoke-direct {v2, v0, p1, p2}, Lr0/j;-><init>(Lp5/p;J)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Lr0/J;->b:Lr0/K;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lr0/K;->O0:Z

    return-void
.end method

.method public final n()V
    .locals 1

    iget-object v0, p0, Lr0/J;->b:Lr0/K;

    iget-object v0, v0, Ly0/t;->E:Landroidx/media3/exoplayer/Renderer$WakeupListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer$WakeupListener;->onSleep()V

    :cond_0
    return-void
.end method

.method public final onAudioSinkError(Ljava/lang/Exception;)V
    .locals 4

    const-string v0, "MediaCodecAudioRenderer"

    const-string v1, "Audio sink error"

    invoke-static {v0, v1, p1}, Lk0/c;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lr0/J;->b:Lr0/K;

    iget-object v0, v0, Lr0/K;->D0:Lp5/p;

    iget-object v1, v0, Lp5/p;->q:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    if-eqz v1, :cond_0

    new-instance v2, Lr0/i;

    const/4 v3, 0x1

    invoke-direct {v2, v0, p1, v3}, Lr0/i;-><init>(Lp5/p;Ljava/lang/Exception;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onAudioTrackInitialized(Lr0/m;)V
    .locals 4

    iget-object v0, p0, Lr0/J;->b:Lr0/K;

    iget-object v0, v0, Lr0/K;->D0:Lp5/p;

    iget-object v1, v0, Lp5/p;->q:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    if-eqz v1, :cond_0

    new-instance v2, Lr0/h;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v3}, Lr0/h;-><init>(Lp5/p;Lr0/m;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onAudioTrackReleased(Lr0/m;)V
    .locals 4

    iget-object v0, p0, Lr0/J;->b:Lr0/K;

    iget-object v0, v0, Lr0/K;->D0:Lp5/p;

    iget-object v1, v0, Lp5/p;->q:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    if-eqz v1, :cond_0

    new-instance v2, Lr0/h;

    const/4 v3, 0x1

    invoke-direct {v2, v0, p1, v3}, Lr0/h;-><init>(Lp5/p;Lr0/m;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onSkipSilenceEnabledChanged(Z)V
    .locals 3

    iget-object v0, p0, Lr0/J;->b:Lr0/K;

    iget-object v0, v0, Lr0/K;->D0:Lp5/p;

    iget-object v1, v0, Lp5/p;->q:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    if-eqz v1, :cond_0

    new-instance v2, Lr0/k;

    invoke-direct {v2, v0, p1}, Lr0/k;-><init>(Lp5/p;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final v(IJJ)V
    .locals 9

    iget-object v0, p0, Lr0/J;->b:Lr0/K;

    iget-object v2, v0, Lr0/K;->D0:Lp5/p;

    iget-object v0, v2, Lp5/p;->q:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, LE0/c;

    const/4 v8, 0x1

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v8}, LE0/c;-><init>(Ljava/lang/Object;IJJI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final z()V
    .locals 1

    iget-object v0, p0, Lr0/J;->b:Lr0/K;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/BaseRenderer;->onRendererCapabilitiesChanged()V

    return-void
.end method
