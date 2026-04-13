.class public final Landroidx/media3/exoplayer/source/T;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/source/f0;


# instance fields
.field public final b:I

.field public final synthetic q:Landroidx/media3/exoplayer/source/V;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/V;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/T;->q:Landroidx/media3/exoplayer/source/V;

    iput p2, p0, Landroidx/media3/exoplayer/source/T;->b:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget v0, p0, Landroidx/media3/exoplayer/source/T;->b:I

    iget-object v1, p0, Landroidx/media3/exoplayer/source/T;->q:Landroidx/media3/exoplayer/source/V;

    iget-object v2, v1, Landroidx/media3/exoplayer/source/V;->J:[Landroidx/media3/exoplayer/source/e0;

    aget-object v0, v2, v0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/e0;->maybeThrowError()V

    iget-object v0, v1, Landroidx/media3/exoplayer/source/V;->B:LE0/s;

    iget-object v2, v1, Landroidx/media3/exoplayer/source/V;->s:LE0/m;

    iget v1, v1, Landroidx/media3/exoplayer/source/V;->T:I

    check-cast v2, LE0/j;

    invoke-virtual {v2, v1}, LE0/j;->b(I)I

    move-result v1

    iget-object v2, v0, LE0/s;->r:Ljava/io/IOException;

    if-nez v2, :cond_3

    iget-object v0, v0, LE0/s;->q:LE0/o;

    if-eqz v0, :cond_2

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    iget v1, v0, LE0/o;->b:I

    :cond_0
    iget-object v2, v0, LE0/o;->t:Ljava/io/IOException;

    if-eqz v2, :cond_2

    iget v0, v0, LE0/o;->u:I

    if-gt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    throw v2

    :cond_2
    :goto_0
    return-void

    :cond_3
    throw v2
.end method

.method public final isReady()Z
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/source/T;->q:Landroidx/media3/exoplayer/source/V;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/V;->B()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Landroidx/media3/exoplayer/source/V;->J:[Landroidx/media3/exoplayer/source/e0;

    iget v2, p0, Landroidx/media3/exoplayer/source/T;->b:I

    aget-object v1, v1, v2

    iget-boolean v0, v0, Landroidx/media3/exoplayer/source/V;->d0:Z

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/source/e0;->isReady(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j(J)I
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/source/T;->q:Landroidx/media3/exoplayer/source/V;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/V;->B()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget v1, p0, Landroidx/media3/exoplayer/source/T;->b:I

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/source/V;->w(I)V

    iget-object v2, v0, Landroidx/media3/exoplayer/source/V;->J:[Landroidx/media3/exoplayer/source/e0;

    aget-object v2, v2, v1

    iget-boolean v3, v0, Landroidx/media3/exoplayer/source/V;->d0:Z

    invoke-virtual {v2, p1, p2, v3}, Landroidx/media3/exoplayer/source/e0;->getSkipCount(JZ)I

    move-result p1

    invoke-virtual {v2, p1}, Landroidx/media3/exoplayer/source/e0;->skip(I)V

    if-nez p1, :cond_1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/source/V;->x(I)V

    :cond_1
    return p1
.end method

.method public final q(Landroidx/media3/exoplayer/FormatHolder;Lp0/f;I)I
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/source/T;->q:Landroidx/media3/exoplayer/source/V;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/V;->B()Z

    move-result v1

    const/4 v2, -0x3

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget v1, p0, Landroidx/media3/exoplayer/source/T;->b:I

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/source/V;->w(I)V

    iget-object v3, v0, Landroidx/media3/exoplayer/source/V;->J:[Landroidx/media3/exoplayer/source/e0;

    aget-object v3, v3, v1

    iget-boolean v4, v0, Landroidx/media3/exoplayer/source/V;->d0:Z

    invoke-virtual {v3, p1, p2, p3, v4}, Landroidx/media3/exoplayer/source/e0;->read(Landroidx/media3/exoplayer/FormatHolder;Lp0/f;IZ)I

    move-result p1

    if-ne p1, v2, :cond_1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/source/V;->x(I)V

    :cond_1
    return p1
.end method
