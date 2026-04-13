.class public final Lz0/c;
.super Landroidx/media3/exoplayer/BaseRenderer;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final b:Lz0/a;

.field public final q:Lz0/b;

.field public final r:Landroid/os/Handler;

.field public final s:LR0/a;

.field public t:Lcom/bumptech/glide/c;

.field public u:Z

.field public v:Z

.field public w:J

.field public x:Landroidx/media3/common/Metadata;

.field public y:J


# direct methods
.method public constructor <init>(Lz0/b;Landroid/os/Looper;)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/BaseRenderer;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lz0/c;->q:Lz0/b;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget p1, Lk0/C;->a:I

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    :goto_0
    iput-object p1, p0, Lz0/c;->r:Landroid/os/Handler;

    sget-object p1, Lz0/a;->a:Lz0/a;

    iput-object p1, p0, Lz0/c;->b:Lz0/a;

    new-instance p1, LR0/a;

    invoke-direct {p1}, LR0/a;-><init>()V

    iput-object p1, p0, Lz0/c;->s:LR0/a;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lz0/c;->y:J

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/common/Metadata;Ljava/util/ArrayList;)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/Metadata;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Landroidx/media3/common/Metadata;->get(I)Landroidx/media3/common/Metadata$Entry;

    move-result-object v1

    invoke-interface {v1}, Landroidx/media3/common/Metadata$Entry;->getWrappedMetadataFormat()Landroidx/media3/common/Format;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lz0/c;->b:Lz0/a;

    invoke-virtual {v2, v1}, Lz0/a;->b(Landroidx/media3/common/Format;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Lz0/a;->a(Landroidx/media3/common/Format;)Lcom/bumptech/glide/c;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroidx/media3/common/Metadata;->get(I)Landroidx/media3/common/Metadata$Entry;

    move-result-object v2

    invoke-interface {v2}, Landroidx/media3/common/Metadata$Entry;->getWrappedMetadataBytes()[B

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lz0/c;->s:LR0/a;

    invoke-virtual {v3}, Lp0/f;->k()V

    array-length v4, v2

    invoke-virtual {v3, v4}, Lp0/f;->m(I)V

    iget-object v4, v3, Lp0/f;->t:Ljava/nio/ByteBuffer;

    sget v5, Lk0/C;->a:I

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Lp0/f;->n()V

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/c;->e(LR0/a;)Landroidx/media3/common/Metadata;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1, p2}, Lz0/c;->a(Landroidx/media3/common/Metadata;Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v0}, Landroidx/media3/common/Metadata;->get(I)Landroidx/media3/common/Metadata$Entry;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final b(J)J
    .locals 7

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-static {v2}, Lk0/c;->j(Z)V

    iget-wide v5, p0, Lz0/c;->y:J

    cmp-long v0, v5, v0

    if-eqz v0, :cond_1

    move v3, v4

    :cond_1
    invoke-static {v3}, Lk0/c;->j(Z)V

    iget-wide v0, p0, Lz0/c;->y:J

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "MetadataRenderer"

    return-object v0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/common/Metadata;

    iget-object v0, p0, Lz0/c;->q:Lz0/b;

    invoke-interface {v0, p1}, Lz0/b;->onMetadata(Landroidx/media3/common/Metadata;)V

    return v1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final isEnded()Z
    .locals 1

    iget-boolean v0, p0, Lz0/c;->v:Z

    return v0
.end method

.method public final isReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onDisabled()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lz0/c;->x:Landroidx/media3/common/Metadata;

    iput-object v0, p0, Lz0/c;->t:Lcom/bumptech/glide/c;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lz0/c;->y:J

    return-void
.end method

.method public final onPositionReset(JZ)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lz0/c;->x:Landroidx/media3/common/Metadata;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lz0/c;->u:Z

    iput-boolean p1, p0, Lz0/c;->v:Z

    return-void
.end method

.method public final onStreamChanged([Landroidx/media3/common/Format;JJLandroidx/media3/exoplayer/source/E;)V
    .locals 2

    const/4 p2, 0x0

    aget-object p1, p1, p2

    iget-object p2, p0, Lz0/c;->b:Lz0/a;

    invoke-virtual {p2, p1}, Lz0/a;->a(Landroidx/media3/common/Format;)Lcom/bumptech/glide/c;

    move-result-object p1

    iput-object p1, p0, Lz0/c;->t:Lcom/bumptech/glide/c;

    iget-object p1, p0, Lz0/c;->x:Landroidx/media3/common/Metadata;

    if-eqz p1, :cond_0

    iget-wide p2, p1, Landroidx/media3/common/Metadata;->presentationTimeUs:J

    iget-wide v0, p0, Lz0/c;->y:J

    add-long/2addr p2, v0

    sub-long/2addr p2, p4

    invoke-virtual {p1, p2, p3}, Landroidx/media3/common/Metadata;->copyWithPresentationTimeUs(J)Landroidx/media3/common/Metadata;

    move-result-object p1

    iput-object p1, p0, Lz0/c;->x:Landroidx/media3/common/Metadata;

    :cond_0
    iput-wide p4, p0, Lz0/c;->y:J

    return-void
.end method

.method public final render(JJ)V
    .locals 5

    const/4 p3, 0x1

    move p4, p3

    :cond_0
    :goto_0
    if-eqz p4, :cond_6

    iget-boolean p4, p0, Lz0/c;->u:Z

    const/4 v0, 0x0

    if-nez p4, :cond_3

    iget-object p4, p0, Lz0/c;->x:Landroidx/media3/common/Metadata;

    if-nez p4, :cond_3

    iget-object p4, p0, Lz0/c;->s:LR0/a;

    invoke-virtual {p4}, Lp0/f;->k()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getFormatHolder()Landroidx/media3/exoplayer/FormatHolder;

    move-result-object v1

    invoke-virtual {p0, v1, p4, v0}, Landroidx/media3/exoplayer/BaseRenderer;->readSource(Landroidx/media3/exoplayer/FormatHolder;Lp0/f;I)I

    move-result v2

    const/4 v3, -0x4

    if-ne v2, v3, :cond_2

    const/4 v1, 0x4

    invoke-virtual {p4, v1}, LU2/e;->c(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean p3, p0, Lz0/c;->u:Z

    goto :goto_1

    :cond_1
    iget-wide v1, p4, Lp0/f;->v:J

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getLastResetPositionUs()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_3

    iget-wide v1, p0, Lz0/c;->w:J

    iput-wide v1, p4, LR0/a;->z:J

    invoke-virtual {p4}, Lp0/f;->n()V

    iget-object v1, p0, Lz0/c;->t:Lcom/bumptech/glide/c;

    sget v2, Lk0/C;->a:I

    invoke-virtual {v1, p4}, Lcom/bumptech/glide/c;->e(LR0/a;)Landroidx/media3/common/Metadata;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroidx/media3/common/Metadata;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lz0/c;->a(Landroidx/media3/common/Metadata;Ljava/util/ArrayList;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Landroidx/media3/common/Metadata;

    iget-wide v3, p4, Lp0/f;->v:J

    invoke-virtual {p0, v3, v4}, Lz0/c;->b(J)J

    move-result-wide v3

    invoke-direct {v1, v3, v4, v2}, Landroidx/media3/common/Metadata;-><init>(JLjava/util/List;)V

    iput-object v1, p0, Lz0/c;->x:Landroidx/media3/common/Metadata;

    goto :goto_1

    :cond_2
    const/4 p4, -0x5

    if-ne v2, p4, :cond_3

    iget-object p4, v1, Landroidx/media3/exoplayer/FormatHolder;->format:Landroidx/media3/common/Format;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v1, p4, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    iput-wide v1, p0, Lz0/c;->w:J

    :cond_3
    :goto_1
    iget-object p4, p0, Lz0/c;->x:Landroidx/media3/common/Metadata;

    if-eqz p4, :cond_5

    iget-wide v1, p4, Landroidx/media3/common/Metadata;->presentationTimeUs:J

    invoke-virtual {p0, p1, p2}, Lz0/c;->b(J)J

    move-result-wide v3

    cmp-long p4, v1, v3

    if-gtz p4, :cond_5

    iget-object p4, p0, Lz0/c;->x:Landroidx/media3/common/Metadata;

    iget-object v0, p0, Lz0/c;->r:Landroid/os/Handler;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p3, p4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lz0/c;->q:Lz0/b;

    invoke-interface {v0, p4}, Lz0/b;->onMetadata(Landroidx/media3/common/Metadata;)V

    :goto_2
    const/4 p4, 0x0

    iput-object p4, p0, Lz0/c;->x:Landroidx/media3/common/Metadata;

    move p4, p3

    goto :goto_3

    :cond_5
    move p4, v0

    :goto_3
    iget-boolean v0, p0, Lz0/c;->u:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz0/c;->x:Landroidx/media3/common/Metadata;

    if-nez v0, :cond_0

    iput-boolean p3, p0, Lz0/c;->v:Z

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public final supportsFormat(Landroidx/media3/common/Format;)I
    .locals 1

    iget-object v0, p0, Lz0/c;->b:Lz0/a;

    invoke-virtual {v0, p1}, Lz0/a;->b(Landroidx/media3/common/Format;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p1, p1, Landroidx/media3/common/Format;->cryptoType:I

    if-nez p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    invoke-static {p1}, Landroidx/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    invoke-static {p1}, Landroidx/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result p1

    return p1
.end method
