.class public final Ls0/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/source/f0;


# instance fields
.field public final b:Landroidx/media3/common/Format;

.field public final q:LA/j;

.field public r:[J

.field public s:Z

.field public t:Lt0/g;

.field public u:Z

.field public v:I

.field public w:J


# direct methods
.method public constructor <init>(Lt0/g;Landroidx/media3/common/Format;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ls0/o;->b:Landroidx/media3/common/Format;

    iput-object p1, p0, Ls0/o;->t:Lt0/g;

    new-instance p2, LA/j;

    const/16 v0, 0x1b

    invoke-direct {p2, v0}, LA/j;-><init>(I)V

    iput-object p2, p0, Ls0/o;->q:LA/j;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Ls0/o;->w:J

    iget-object p2, p1, Lt0/g;->b:[J

    iput-object p2, p0, Ls0/o;->r:[J

    invoke-virtual {p0, p1, p3}, Ls0/o;->b(Lt0/g;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(Lt0/g;Z)V
    .locals 9

    iget v0, p0, Ls0/o;->v:I

    const/4 v1, 0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_0

    move-wide v5, v2

    goto :goto_0

    :cond_0
    iget-object v4, p0, Ls0/o;->r:[J

    sub-int/2addr v0, v1

    aget-wide v5, v4, v0

    :goto_0
    iput-boolean p2, p0, Ls0/o;->s:Z

    iput-object p1, p0, Ls0/o;->t:Lt0/g;

    iget-object p1, p1, Lt0/g;->b:[J

    iput-object p1, p0, Ls0/o;->r:[J

    iget-wide v7, p0, Ls0/o;->w:J

    cmp-long p2, v7, v2

    if-eqz p2, :cond_2

    invoke-static {p1, v7, v8, v1}, Lk0/C;->a([JJZ)I

    move-result p1

    iput p1, p0, Ls0/o;->v:I

    iget-boolean p2, p0, Ls0/o;->s:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Ls0/o;->r:[J

    array-length p2, p2

    if-ne p1, p2, :cond_1

    move-wide v2, v7

    :cond_1
    iput-wide v2, p0, Ls0/o;->w:J

    return-void

    :cond_2
    cmp-long p2, v5, v2

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    invoke-static {p1, v5, v6, p2}, Lk0/C;->a([JJZ)I

    move-result p1

    iput p1, p0, Ls0/o;->v:I

    :cond_3
    return-void
.end method

.method public final isReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final j(J)I
    .locals 3

    iget v0, p0, Ls0/o;->v:I

    iget-object v1, p0, Ls0/o;->r:[J

    const/4 v2, 0x1

    invoke-static {v1, p1, p2, v2}, Lk0/C;->a([JJZ)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget p2, p0, Ls0/o;->v:I

    sub-int p2, p1, p2

    iput p1, p0, Ls0/o;->v:I

    return p2
.end method

.method public final q(Landroidx/media3/exoplayer/FormatHolder;Lp0/f;I)I
    .locals 6

    iget v0, p0, Ls0/o;->v:I

    iget-object v1, p0, Ls0/o;->r:[J

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v3, -0x4

    const/4 v4, 0x4

    if-eqz v1, :cond_1

    iget-boolean v5, p0, Ls0/o;->s:Z

    if-nez v5, :cond_1

    iput v4, p2, LU2/e;->q:I

    return v3

    :cond_1
    and-int/lit8 v5, p3, 0x2

    if-nez v5, :cond_6

    iget-boolean v5, p0, Ls0/o;->u:Z

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    const/4 p1, -0x3

    return p1

    :cond_3
    and-int/lit8 p1, p3, 0x1

    if-nez p1, :cond_4

    add-int/lit8 p1, v0, 0x1

    iput p1, p0, Ls0/o;->v:I

    :cond_4
    and-int/lit8 p1, p3, 0x4

    if-nez p1, :cond_5

    iget-object p1, p0, Ls0/o;->t:Lt0/g;

    iget-object p1, p1, Lt0/g;->a:[LT0/a;

    aget-object p1, p1, v0

    iget-object p3, p0, Ls0/o;->q:LA/j;

    invoke-virtual {p3, p1}, LA/j;->r(LT0/a;)[B

    move-result-object p1

    array-length p3, p1

    invoke-virtual {p2, p3}, Lp0/f;->m(I)V

    iget-object p3, p2, Lp0/f;->t:Ljava/nio/ByteBuffer;

    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_5
    iget-object p1, p0, Ls0/o;->r:[J

    aget-wide v0, p1, v0

    iput-wide v0, p2, Lp0/f;->v:J

    iput v2, p2, LU2/e;->q:I

    return v3

    :cond_6
    :goto_1
    iget-object p2, p0, Ls0/o;->b:Landroidx/media3/common/Format;

    iput-object p2, p1, Landroidx/media3/exoplayer/FormatHolder;->format:Landroidx/media3/common/Format;

    iput-boolean v2, p0, Ls0/o;->u:Z

    const/4 p1, -0x5

    return p1
.end method
