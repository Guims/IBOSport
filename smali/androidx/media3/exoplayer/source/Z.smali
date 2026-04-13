.class public final Landroidx/media3/exoplayer/source/Z;
.super Ljava/lang/Object;

# interfaces
.implements Ld1/g;


# instance fields
.field public b:J

.field public q:J

.field public r:Ljava/lang/Object;

.field public s:Ljava/lang/Object;


# direct methods
.method public constructor <init>(IJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/Z;->r:Ljava/lang/Object;

    check-cast v0, LE0/a;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lk0/c;->j(Z)V

    iput-wide p2, p0, Landroidx/media3/exoplayer/source/Z;->b:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Landroidx/media3/exoplayer/source/Z;->q:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/Z;->r:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/Z;->s:Ljava/lang/Object;

    iput-wide p3, p0, Landroidx/media3/exoplayer/source/Z;->b:J

    iput-wide p5, p0, Landroidx/media3/exoplayer/source/Z;->q:J

    return-void
.end method


# virtual methods
.method public n()LI0/F;
    .locals 5

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/Z;->b:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lk0/c;->j(Z)V

    new-instance v0, LI0/v;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/Z;->r:Ljava/lang/Object;

    check-cast v1, LI0/w;

    iget-wide v2, p0, Landroidx/media3/exoplayer/source/Z;->b:J

    const/4 v4, 0x0

    invoke-direct {v0, v4, v2, v3, v1}, LI0/v;-><init>(IJLjava/lang/Object;)V

    return-object v0
.end method

.method public o(LI0/r;)J
    .locals 6

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/Z;->q:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    const-wide/16 v2, -0x1

    if-ltz p1, :cond_0

    const-wide/16 v4, 0x2

    add-long/2addr v0, v4

    neg-long v0, v0

    iput-wide v2, p0, Landroidx/media3/exoplayer/source/Z;->q:J

    return-wide v0

    :cond_0
    return-wide v2
.end method

.method public q(J)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/Z;->s:Ljava/lang/Object;

    check-cast v0, LA/j;

    iget-object v0, v0, LA/j;->q:Ljava/lang/Object;

    check-cast v0, [J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lk0/C;->e([JJZ)I

    move-result p1

    aget-wide p1, v0, p1

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/Z;->q:J

    return-void
.end method
