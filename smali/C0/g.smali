.class public final LC0/g;
.super Landroidx/media3/exoplayer/BaseRenderer;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final A:Landroid/os/Handler;

.field public final B:LC0/f;

.field public final C:Landroidx/media3/exoplayer/FormatHolder;

.field public D:Z

.field public E:Z

.field public F:Landroidx/media3/common/Format;

.field public G:J

.field public H:J

.field public I:Ljava/io/IOException;

.field public final b:Lh3/e;

.field public final q:Lp0/f;

.field public r:LC0/a;

.field public final s:LC0/e;

.field public t:Z

.field public u:I

.field public v:Lf1/e;

.field public w:Lf1/i;

.field public x:Lf1/j;

.field public y:Lf1/j;

.field public z:I


# direct methods
.method public constructor <init>(LC0/f;Landroid/os/Looper;)V
    .locals 2

    sget-object v0, LC0/e;->c:Le4/c;

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/BaseRenderer;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LC0/g;->B:LC0/f;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget p1, Lk0/C;->a:I

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    :goto_0
    iput-object p1, p0, LC0/g;->A:Landroid/os/Handler;

    iput-object v0, p0, LC0/g;->s:LC0/e;

    new-instance p1, Lh3/e;

    const/16 p2, 0x17

    invoke-direct {p1, p2}, Lh3/e;-><init>(I)V

    iput-object p1, p0, LC0/g;->b:Lh3/e;

    new-instance p1, Lp0/f;

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lp0/f;-><init>(II)V

    iput-object p1, p0, LC0/g;->q:Lp0/f;

    new-instance p1, Landroidx/media3/exoplayer/FormatHolder;

    invoke-direct {p1}, Landroidx/media3/exoplayer/FormatHolder;-><init>()V

    iput-object p1, p0, LC0/g;->C:Landroidx/media3/exoplayer/FormatHolder;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, LC0/g;->H:J

    iput-wide p1, p0, LC0/g;->G:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, LC0/g;->F:Landroidx/media3/common/Format;

    iget-object v0, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "application/cea-608"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LC0/g;->F:Landroidx/media3/common/Format;

    iget-object v0, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "application/x-mp4-cea-608"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LC0/g;->F:Landroidx/media3/common/Format;

    iget-object v0, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "application/cea-708"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Legacy decoding is disabled, can\'t handle "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, LC0/g;->F:Landroidx/media3/common/Format;

    iget-object v2, v2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " samples (expected application/x-media3-cues)."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lk0/c;->i(Ljava/lang/String;Z)V

    return-void
.end method

.method public final b()J
    .locals 4

    iget v0, p0, LC0/g;->z:I

    const/4 v1, -0x1

    const-wide v2, 0x7fffffffffffffffL

    if-ne v0, v1, :cond_0

    return-wide v2

    :cond_0
    iget-object v0, p0, LC0/g;->x:Lf1/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, LC0/g;->z:I

    iget-object v1, p0, LC0/g;->x:Lf1/j;

    invoke-virtual {v1}, Lf1/j;->w()I

    move-result v1

    if-lt v0, v1, :cond_1

    return-wide v2

    :cond_1
    iget-object v0, p0, LC0/g;->x:Lf1/j;

    iget v1, p0, LC0/g;->z:I

    invoke-virtual {v0, v1}, Lf1/j;->j(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final c(J)J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lk0/c;->j(Z)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getStreamOffsetUs()J

    move-result-wide v0

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public final d()V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, LC0/g;->t:Z

    iget-object v1, p0, LC0/g;->F:Landroidx/media3/common/Format;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, LC0/g;->s:LC0/e;

    check-cast v2, Le4/c;

    iget-object v2, v2, Le4/c;->q:Ljava/lang/Object;

    check-cast v2, Lx2/f;

    iget-object v3, v1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, -0x1

    sparse-switch v4, :sswitch_data_0

    :goto_0
    move v0, v5

    goto :goto_1

    :sswitch_0
    const-string v0, "application/cea-708"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v4, "application/cea-608"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :sswitch_2
    const-string v0, "application/x-mp4-cea-608"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    new-instance v0, Lg1/f;

    iget v2, v1, Landroidx/media3/common/Format;->accessibilityChannel:I

    iget-object v1, v1, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-direct {v0, v2, v1}, Lg1/f;-><init>(ILjava/util/List;)V

    goto :goto_3

    :pswitch_1
    new-instance v0, Lg1/c;

    iget v1, v1, Landroidx/media3/common/Format;->accessibilityChannel:I

    invoke-direct {v0, v3, v1}, Lg1/c;-><init>(Ljava/lang/String;I)V

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {v2, v1}, Lx2/f;->supportsFormat(Landroidx/media3/common/Format;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2, v1}, Lx2/f;->k(Landroidx/media3/common/Format;)Lf1/m;

    move-result-object v0

    new-instance v1, LC0/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Decoder"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, LC0/b;-><init>(Ljava/lang/String;Lf1/m;)V

    move-object v0, v1

    :goto_3
    iput-object v0, p0, LC0/g;->v:Lf1/e;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getLastResetPositionUs()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lp0/c;->a(J)V

    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempted to create decoder for unsupported MIME type: "

    invoke-static {v1, v3}, Lcom/google/android/material/datepicker/e;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x37713300 -> :sswitch_2
        0x5d578071 -> :sswitch_1
        0x5d578432 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, LC0/g;->w:Lf1/i;

    const/4 v1, -0x1

    iput v1, p0, LC0/g;->z:I

    iget-object v1, p0, LC0/g;->x:Lf1/j;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lp0/g;->l()V

    iput-object v0, p0, LC0/g;->x:Lf1/j;

    :cond_0
    iget-object v1, p0, LC0/g;->y:Lf1/j;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lp0/g;->l()V

    iput-object v0, p0, LC0/g;->y:Lf1/j;

    :cond_1
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "TextRenderer"

    return-object v0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lj0/c;

    iget-object v0, p1, Lj0/c;->a:Lp3/H;

    iget-object v2, p0, LC0/g;->B:LC0/f;

    invoke-interface {v2, v0}, LC0/f;->onCues(Ljava/util/List;)V

    invoke-interface {v2, p1}, LC0/f;->onCues(Lj0/c;)V

    return v1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final isEnded()Z
    .locals 1

    iget-boolean v0, p0, LC0/g;->E:Z

    return v0
.end method

.method public final isReady()Z
    .locals 7

    iget-object v0, p0, LC0/g;->F:Landroidx/media3/common/Format;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, LC0/g;->I:Ljava/io/IOException;

    if-nez v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->maybeThrowStreamError()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput-object v0, p0, LC0/g;->I:Ljava/io/IOException;

    :cond_1
    :goto_0
    iget-object v0, p0, LC0/g;->I:Ljava/io/IOException;

    if-eqz v0, :cond_7

    iget-object v0, p0, LC0/g;->F:Landroidx/media3/common/Format;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v2, "application/x-media3-cues"

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, LC0/g;->r:LC0/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v3, p0, LC0/g;->G:J

    invoke-interface {v0, v3, v4}, LC0/a;->a(J)J

    move-result-wide v3

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    :cond_3
    iget-boolean v0, p0, LC0/g;->E:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, LC0/g;->D:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, LC0/g;->x:Lf1/j;

    iget-wide v3, p0, LC0/g;->G:J

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lf1/j;->w()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {v0, v5}, Lf1/j;->j(I)J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-gtz v0, :cond_7

    :cond_4
    iget-object v0, p0, LC0/g;->y:Lf1/j;

    iget-wide v3, p0, LC0/g;->G:J

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lf1/j;->w()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {v0, v5}, Lf1/j;->j(I)J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-gtz v0, :cond_7

    :cond_5
    iget-object v0, p0, LC0/g;->w:Lf1/i;

    if-eqz v0, :cond_7

    :cond_6
    return v2

    :cond_7
    :goto_2
    return v1
.end method

.method public final onDisabled()V
    .locals 7

    const/4 v0, 0x0

    iput-object v0, p0, LC0/g;->F:Landroidx/media3/common/Format;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, LC0/g;->H:J

    new-instance v3, Lj0/c;

    sget-object v4, Lp3/Y;->t:Lp3/Y;

    iget-wide v5, p0, LC0/g;->G:J

    invoke-virtual {p0, v5, v6}, LC0/g;->c(J)J

    invoke-direct {v3, v4}, Lj0/c;-><init>(Ljava/util/List;)V

    iget-object v4, p0, LC0/g;->A:Landroid/os/Handler;

    if-eqz v4, :cond_0

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_0
    iget-object v4, v3, Lj0/c;->a:Lp3/H;

    iget-object v5, p0, LC0/g;->B:LC0/f;

    invoke-interface {v5, v4}, LC0/f;->onCues(Ljava/util/List;)V

    invoke-interface {v5, v3}, LC0/f;->onCues(Lj0/c;)V

    :goto_0
    iput-wide v1, p0, LC0/g;->G:J

    iget-object v1, p0, LC0/g;->v:Lf1/e;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, LC0/g;->e()V

    iget-object v1, p0, LC0/g;->v:Lf1/e;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Lp0/c;->release()V

    iput-object v0, p0, LC0/g;->v:Lf1/e;

    const/4 v0, 0x0

    iput v0, p0, LC0/g;->u:I

    :cond_1
    return-void
.end method

.method public final onPositionReset(JZ)V
    .locals 2

    iput-wide p1, p0, LC0/g;->G:J

    iget-object p1, p0, LC0/g;->r:LC0/a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, LC0/a;->clear()V

    :cond_0
    new-instance p1, Lj0/c;

    sget-object p2, Lp3/Y;->t:Lp3/Y;

    iget-wide v0, p0, LC0/g;->G:J

    invoke-virtual {p0, v0, v1}, LC0/g;->c(J)J

    invoke-direct {p1, p2}, Lj0/c;-><init>(Ljava/util/List;)V

    iget-object p2, p0, LC0/g;->A:Landroid/os/Handler;

    if-eqz p2, :cond_1

    const/4 p3, 0x1

    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_1
    iget-object p2, p1, Lj0/c;->a:Lp3/H;

    iget-object p3, p0, LC0/g;->B:LC0/f;

    invoke-interface {p3, p2}, LC0/f;->onCues(Ljava/util/List;)V

    invoke-interface {p3, p1}, LC0/f;->onCues(Lj0/c;)V

    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, LC0/g;->D:Z

    iput-boolean p1, p0, LC0/g;->E:Z

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p2, p0, LC0/g;->H:J

    iget-object p2, p0, LC0/g;->F:Landroidx/media3/common/Format;

    if-eqz p2, :cond_3

    iget-object p2, p2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string p3, "application/x-media3-cues"

    invoke-static {p2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    iget p2, p0, LC0/g;->u:I

    if-eqz p2, :cond_2

    invoke-virtual {p0}, LC0/g;->e()V

    iget-object p2, p0, LC0/g;->v:Lf1/e;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2}, Lp0/c;->release()V

    const/4 p2, 0x0

    iput-object p2, p0, LC0/g;->v:Lf1/e;

    iput p1, p0, LC0/g;->u:I

    invoke-virtual {p0}, LC0/g;->d()V

    return-void

    :cond_2
    invoke-virtual {p0}, LC0/g;->e()V

    iget-object p1, p0, LC0/g;->v:Lf1/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lp0/c;->flush()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getLastResetPositionUs()J

    move-result-wide p2

    invoke-interface {p1, p2, p3}, Lp0/c;->a(J)V

    :cond_3
    return-void
.end method

.method public final onStreamChanged([Landroidx/media3/common/Format;JJLandroidx/media3/exoplayer/source/E;)V
    .locals 0

    const/4 p2, 0x0

    aget-object p1, p1, p2

    iput-object p1, p0, LC0/g;->F:Landroidx/media3/common/Format;

    iget-object p1, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string p2, "application/x-media3-cues"

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_1

    invoke-virtual {p0}, LC0/g;->a()V

    iget-object p1, p0, LC0/g;->v:Lf1/e;

    if-eqz p1, :cond_0

    iput p2, p0, LC0/g;->u:I

    return-void

    :cond_0
    invoke-virtual {p0}, LC0/g;->d()V

    return-void

    :cond_1
    iget-object p1, p0, LC0/g;->F:Landroidx/media3/common/Format;

    iget p1, p1, Landroidx/media3/common/Format;->cueReplacementBehavior:I

    if-ne p1, p2, :cond_2

    new-instance p1, LC0/c;

    invoke-direct {p1}, LC0/c;-><init>()V

    goto :goto_0

    :cond_2
    new-instance p1, LC0/d;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, LC0/d;-><init>(I)V

    :goto_0
    iput-object p1, p0, LC0/g;->r:LC0/a;

    return-void
.end method

.method public final render(JJ)V
    .locals 19

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    invoke-virtual {v1}, Landroidx/media3/exoplayer/BaseRenderer;->isCurrentStreamFinal()Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    iget-wide v5, v1, LC0/g;->H:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v5, v7

    if-eqz v0, :cond_0

    cmp-long v0, v2, v5

    if-ltz v0, :cond_0

    invoke-virtual {v1}, LC0/g;->e()V

    iput-boolean v4, v1, LC0/g;->E:Z

    :cond_0
    iget-boolean v0, v1, LC0/g;->E:Z

    if-eqz v0, :cond_1

    goto/16 :goto_10

    :cond_1
    iget-object v0, v1, LC0/g;->F:Landroidx/media3/common/Format;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v5, "application/x-media3-cues"

    invoke-static {v0, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iget-object v5, v1, LC0/g;->B:LC0/f;

    iget-object v6, v1, LC0/g;->A:Landroid/os/Handler;

    const/4 v7, 0x4

    const/4 v8, -0x4

    iget-object v9, v1, LC0/g;->C:Landroidx/media3/exoplayer/FormatHolder;

    const/4 v10, 0x0

    if-eqz v0, :cond_9

    iget-object v0, v1, LC0/g;->r:LC0/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, v1, LC0/g;->D:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, v1, LC0/g;->q:Lp0/f;

    invoke-virtual {v1, v9, v0, v10}, Landroidx/media3/exoplayer/BaseRenderer;->readSource(Landroidx/media3/exoplayer/FormatHolder;Lp0/f;I)I

    move-result v9

    if-eq v9, v8, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v7}, LU2/e;->c(I)Z

    move-result v7

    if-eqz v7, :cond_4

    iput-boolean v4, v1, LC0/g;->D:Z

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lp0/f;->n()V

    iget-object v7, v0, Lp0/f;->t:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v13, v0, Lp0/f;->v:J

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v9

    invoke-virtual {v7}, Ljava/nio/Buffer;->limit()I

    move-result v7

    iget-object v11, v1, LC0/g;->b:Lh3/e;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    invoke-virtual {v11, v8, v9, v7}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v11, v10}, Landroid/os/Parcel;->setDataPosition(I)V

    const-class v7, Landroid/os/Bundle;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v11, v7}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    const-string v8, "c"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Lf1/a;

    new-instance v9, Landroidx/media3/common/d;

    const/16 v10, 0xd

    invoke-direct {v9, v10}, Landroidx/media3/common/d;-><init>(I)V

    invoke-static {v8, v9}, Lk0/c;->q(Ljava/util/List;Lo3/d;)Lp3/Y;

    move-result-object v12

    const-string v8, "d"

    invoke-virtual {v7, v8}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v15

    invoke-direct/range {v11 .. v16}, Lf1/a;-><init>(Ljava/util/List;JJ)V

    invoke-virtual {v0}, Lp0/f;->k()V

    iget-object v0, v1, LC0/g;->r:LC0/a;

    invoke-interface {v0, v11, v2, v3}, LC0/a;->b(Lf1/a;J)Z

    move-result v10

    :goto_0
    iget-object v0, v1, LC0/g;->r:LC0/a;

    iget-wide v7, v1, LC0/g;->G:J

    invoke-interface {v0, v7, v8}, LC0/a;->a(J)J

    move-result-wide v7

    const-wide/high16 v11, -0x8000000000000000L

    cmp-long v0, v7, v11

    if-nez v0, :cond_5

    iget-boolean v9, v1, LC0/g;->D:Z

    if-eqz v9, :cond_5

    if-nez v10, :cond_5

    iput-boolean v4, v1, LC0/g;->E:Z

    :cond_5
    if-eqz v0, :cond_6

    cmp-long v0, v7, v2

    if-gtz v0, :cond_6

    move v10, v4

    :cond_6
    if-eqz v10, :cond_8

    iget-object v0, v1, LC0/g;->r:LC0/a;

    invoke-interface {v0, v2, v3}, LC0/a;->c(J)Lp3/H;

    move-result-object v0

    iget-object v7, v1, LC0/g;->r:LC0/a;

    invoke-interface {v7, v2, v3}, LC0/a;->d(J)J

    move-result-wide v7

    new-instance v9, Lj0/c;

    invoke-virtual {v1, v7, v8}, LC0/g;->c(J)J

    invoke-direct {v9, v0}, Lj0/c;-><init>(Ljava/util/List;)V

    if-eqz v6, :cond_7

    invoke-virtual {v6, v4, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    :cond_7
    iget-object v0, v9, Lj0/c;->a:Lp3/H;

    invoke-interface {v5, v0}, LC0/f;->onCues(Ljava/util/List;)V

    invoke-interface {v5, v9}, LC0/f;->onCues(Lj0/c;)V

    :goto_1
    iget-object v0, v1, LC0/g;->r:LC0/a;

    invoke-interface {v0, v7, v8}, LC0/a;->e(J)V

    :cond_8
    iput-wide v2, v1, LC0/g;->G:J

    return-void

    :cond_9
    invoke-virtual {v1}, LC0/g;->a()V

    iput-wide v2, v1, LC0/g;->G:J

    iget-object v0, v1, LC0/g;->y:Lf1/j;

    const-string v11, "Subtitle decoding failed. streamFormat="

    const-string v12, "TextRenderer"

    const/4 v13, 0x0

    if-nez v0, :cond_b

    iget-object v0, v1, LC0/g;->v:Lf1/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v2, v3}, Lf1/e;->b(J)V

    :try_start_0
    iget-object v0, v1, LC0/g;->v:Lf1/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lp0/c;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf1/j;

    iput-object v0, v1, LC0/g;->y:Lf1/j;
    :try_end_0
    .catch Lf1/f; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, LC0/g;->F:Landroidx/media3/common/Format;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2, v0}, Lk0/c;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lj0/c;

    sget-object v2, Lp3/Y;->t:Lp3/Y;

    iget-wide v7, v1, LC0/g;->G:J

    invoke-virtual {v1, v7, v8}, LC0/g;->c(J)J

    invoke-direct {v0, v2}, Lj0/c;-><init>(Ljava/util/List;)V

    if-eqz v6, :cond_a

    invoke-virtual {v6, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    :cond_a
    iget-object v2, v0, Lj0/c;->a:Lp3/H;

    invoke-interface {v5, v2}, LC0/f;->onCues(Ljava/util/List;)V

    invoke-interface {v5, v0}, LC0/f;->onCues(Lj0/c;)V

    :goto_2
    invoke-virtual {v1}, LC0/g;->e()V

    iget-object v0, v1, LC0/g;->v:Lf1/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lp0/c;->release()V

    iput-object v13, v1, LC0/g;->v:Lf1/e;

    iput v10, v1, LC0/g;->u:I

    invoke-virtual {v1}, LC0/g;->d()V

    goto/16 :goto_10

    :cond_b
    :goto_3
    invoke-virtual {v1}, Landroidx/media3/exoplayer/BaseRenderer;->getState()I

    move-result v0

    const/4 v14, 0x2

    if-eq v0, v14, :cond_c

    goto/16 :goto_10

    :cond_c
    iget-object v0, v1, LC0/g;->x:Lf1/j;

    if-eqz v0, :cond_d

    invoke-virtual {v1}, LC0/g;->b()J

    move-result-wide v15

    move v0, v10

    :goto_4
    cmp-long v15, v15, v2

    if-gtz v15, :cond_e

    iget v0, v1, LC0/g;->z:I

    add-int/2addr v0, v4

    iput v0, v1, LC0/g;->z:I

    invoke-virtual {v1}, LC0/g;->b()J

    move-result-wide v15

    move v0, v4

    goto :goto_4

    :cond_d
    move v0, v10

    :cond_e
    iget-object v15, v1, LC0/g;->y:Lf1/j;

    if-eqz v15, :cond_f

    invoke-virtual {v15, v7}, LU2/e;->c(I)Z

    move-result v16

    if-eqz v16, :cond_11

    if-nez v0, :cond_f

    invoke-virtual {v1}, LC0/g;->b()J

    move-result-wide v15

    const-wide v17, 0x7fffffffffffffffL

    cmp-long v15, v15, v17

    if-nez v15, :cond_f

    iget v15, v1, LC0/g;->u:I

    if-ne v15, v14, :cond_10

    invoke-virtual {v1}, LC0/g;->e()V

    iget-object v15, v1, LC0/g;->v:Lf1/e;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v15}, Lp0/c;->release()V

    iput-object v13, v1, LC0/g;->v:Lf1/e;

    iput v10, v1, LC0/g;->u:I

    invoke-virtual {v1}, LC0/g;->d()V

    :cond_f
    :goto_5
    move-object/from16 v16, v9

    goto :goto_6

    :cond_10
    invoke-virtual {v1}, LC0/g;->e()V

    iput-boolean v4, v1, LC0/g;->E:Z

    goto :goto_5

    :cond_11
    move-object/from16 v16, v9

    iget-wide v8, v15, Lp0/g;->r:J

    cmp-long v8, v8, v2

    if-gtz v8, :cond_13

    iget-object v0, v1, LC0/g;->x:Lf1/j;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lp0/g;->l()V

    :cond_12
    invoke-virtual {v15, v2, v3}, Lf1/j;->e(J)I

    move-result v0

    iput v0, v1, LC0/g;->z:I

    iput-object v15, v1, LC0/g;->x:Lf1/j;

    iput-object v13, v1, LC0/g;->y:Lf1/j;

    move v0, v4

    :cond_13
    :goto_6
    if-eqz v0, :cond_18

    iget-object v0, v1, LC0/g;->x:Lf1/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, LC0/g;->x:Lf1/j;

    invoke-virtual {v0, v2, v3}, Lf1/j;->e(J)I

    move-result v0

    if-eqz v0, :cond_16

    iget-object v8, v1, LC0/g;->x:Lf1/j;

    invoke-virtual {v8}, Lf1/j;->w()I

    move-result v8

    if-nez v8, :cond_14

    goto :goto_7

    :cond_14
    const/4 v8, -0x1

    if-ne v0, v8, :cond_15

    iget-object v0, v1, LC0/g;->x:Lf1/j;

    invoke-virtual {v0}, Lf1/j;->w()I

    move-result v8

    sub-int/2addr v8, v4

    invoke-virtual {v0, v8}, Lf1/j;->j(I)J

    move-result-wide v8

    goto :goto_8

    :cond_15
    iget-object v8, v1, LC0/g;->x:Lf1/j;

    sub-int/2addr v0, v4

    invoke-virtual {v8, v0}, Lf1/j;->j(I)J

    move-result-wide v8

    goto :goto_8

    :cond_16
    :goto_7
    iget-object v0, v1, LC0/g;->x:Lf1/j;

    iget-wide v8, v0, Lp0/g;->r:J

    :goto_8
    invoke-virtual {v1, v8, v9}, LC0/g;->c(J)J

    new-instance v0, Lj0/c;

    iget-object v8, v1, LC0/g;->x:Lf1/j;

    invoke-virtual {v8, v2, v3}, Lf1/j;->t(J)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Lj0/c;-><init>(Ljava/util/List;)V

    if-eqz v6, :cond_17

    invoke-virtual {v6, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_9

    :cond_17
    iget-object v2, v0, Lj0/c;->a:Lp3/H;

    invoke-interface {v5, v2}, LC0/f;->onCues(Ljava/util/List;)V

    invoke-interface {v5, v0}, LC0/f;->onCues(Lj0/c;)V

    :cond_18
    :goto_9
    iget v0, v1, LC0/g;->u:I

    if-ne v0, v14, :cond_19

    goto/16 :goto_10

    :cond_19
    :goto_a
    :try_start_1
    iget-boolean v0, v1, LC0/g;->D:Z

    if-nez v0, :cond_22

    iget-object v0, v1, LC0/g;->w:Lf1/i;

    if-nez v0, :cond_1b

    iget-object v0, v1, LC0/g;->v:Lf1/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lp0/c;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf1/i;

    if-nez v0, :cond_1a

    goto/16 :goto_10

    :cond_1a
    iput-object v0, v1, LC0/g;->w:Lf1/i;

    goto :goto_b

    :catch_1
    move-exception v0

    goto :goto_e

    :cond_1b
    :goto_b
    iget v2, v1, LC0/g;->u:I

    if-ne v2, v4, :cond_1c

    iput v7, v0, LU2/e;->q:I

    iget-object v2, v1, LC0/g;->v:Lf1/e;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2, v0}, Lp0/c;->e(Lf1/i;)V

    iput-object v13, v1, LC0/g;->w:Lf1/i;

    iput v14, v1, LC0/g;->u:I

    return-void

    :cond_1c
    move-object/from16 v2, v16

    invoke-virtual {v1, v2, v0, v10}, Landroidx/media3/exoplayer/BaseRenderer;->readSource(Landroidx/media3/exoplayer/FormatHolder;Lp0/f;I)I

    move-result v3

    const/4 v8, -0x4

    if-ne v3, v8, :cond_1f

    invoke-virtual {v0, v7}, LU2/e;->c(I)Z

    move-result v3

    if-eqz v3, :cond_1d

    iput-boolean v4, v1, LC0/g;->D:Z

    iput-boolean v10, v1, LC0/g;->t:Z

    goto :goto_c

    :cond_1d
    iget-object v3, v2, Landroidx/media3/exoplayer/FormatHolder;->format:Landroidx/media3/common/Format;

    if-nez v3, :cond_1e

    goto :goto_10

    :cond_1e
    iget-wide v7, v3, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    iput-wide v7, v0, Lf1/i;->z:J

    invoke-virtual {v0}, Lp0/f;->n()V

    iget-boolean v3, v1, LC0/g;->t:Z

    invoke-virtual {v0, v4}, LU2/e;->c(I)Z

    move-result v7

    xor-int/2addr v7, v4

    and-int/2addr v3, v7

    iput-boolean v3, v1, LC0/g;->t:Z

    :goto_c
    iget-boolean v3, v1, LC0/g;->t:Z

    if-nez v3, :cond_20

    iget-object v3, v1, LC0/g;->v:Lf1/e;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3, v0}, Lp0/c;->e(Lf1/i;)V

    iput-object v13, v1, LC0/g;->w:Lf1/i;
    :try_end_1
    .catch Lf1/f; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_d

    :cond_1f
    const/4 v0, -0x3

    if-ne v3, v0, :cond_20

    goto :goto_10

    :cond_20
    :goto_d
    move-object/from16 v16, v2

    const/4 v7, 0x4

    goto :goto_a

    :goto_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, LC0/g;->F:Landroidx/media3/common/Format;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2, v0}, Lk0/c;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lj0/c;

    sget-object v2, Lp3/Y;->t:Lp3/Y;

    iget-wide v7, v1, LC0/g;->G:J

    invoke-virtual {v1, v7, v8}, LC0/g;->c(J)J

    invoke-direct {v0, v2}, Lj0/c;-><init>(Ljava/util/List;)V

    if-eqz v6, :cond_21

    invoke-virtual {v6, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_f

    :cond_21
    iget-object v2, v0, Lj0/c;->a:Lp3/H;

    invoke-interface {v5, v2}, LC0/f;->onCues(Ljava/util/List;)V

    invoke-interface {v5, v0}, LC0/f;->onCues(Lj0/c;)V

    :goto_f
    invoke-virtual {v1}, LC0/g;->e()V

    iget-object v0, v1, LC0/g;->v:Lf1/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lp0/c;->release()V

    iput-object v13, v1, LC0/g;->v:Lf1/e;

    iput v10, v1, LC0/g;->u:I

    invoke-virtual {v1}, LC0/g;->d()V

    :cond_22
    :goto_10
    return-void
.end method

.method public final supportsFormat(Landroidx/media3/common/Format;)I
    .locals 2

    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "application/x-media3-cues"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, LC0/g;->s:LC0/e;

    check-cast v0, Le4/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v0, v0, Le4/c;->q:Ljava/lang/Object;

    check-cast v0, Lx2/f;

    invoke-virtual {v0, p1}, Lx2/f;->supportsFormat(Landroidx/media3/common/Format;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "application/cea-608"

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "application/x-mp4-cea-608"

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "application/cea-708"

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {p1}, Landroidx/media3/common/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-static {p1}, Landroidx/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    invoke-static {p1}, Landroidx/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    iget p1, p1, Landroidx/media3/common/Format;->cryptoType:I

    if-nez p1, :cond_3

    const/4 p1, 0x4

    goto :goto_1

    :cond_3
    const/4 p1, 0x2

    :goto_1
    invoke-static {p1}, Landroidx/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result p1

    return p1
.end method
