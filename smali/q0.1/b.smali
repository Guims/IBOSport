.class public final Lq0/b;
.super Ljava/lang/Object;


# instance fields
.field public final a:J

.field public final b:Landroidx/media3/common/Timeline;

.field public final c:I

.field public final d:Landroidx/media3/exoplayer/source/E;

.field public final e:J

.field public final f:Landroidx/media3/common/Timeline;

.field public final g:I

.field public final h:Landroidx/media3/exoplayer/source/E;

.field public final i:J

.field public final j:J


# direct methods
.method public constructor <init>(JLandroidx/media3/common/Timeline;ILandroidx/media3/exoplayer/source/E;JLandroidx/media3/common/Timeline;ILandroidx/media3/exoplayer/source/E;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lq0/b;->a:J

    iput-object p3, p0, Lq0/b;->b:Landroidx/media3/common/Timeline;

    iput p4, p0, Lq0/b;->c:I

    iput-object p5, p0, Lq0/b;->d:Landroidx/media3/exoplayer/source/E;

    iput-wide p6, p0, Lq0/b;->e:J

    iput-object p8, p0, Lq0/b;->f:Landroidx/media3/common/Timeline;

    iput p9, p0, Lq0/b;->g:I

    iput-object p10, p0, Lq0/b;->h:Landroidx/media3/exoplayer/source/E;

    iput-wide p11, p0, Lq0/b;->i:J

    iput-wide p13, p0, Lq0/b;->j:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-class v2, Lq0/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lq0/b;

    iget-wide v2, p0, Lq0/b;->a:J

    iget-wide v4, p1, Lq0/b;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lq0/b;->c:I

    iget v3, p1, Lq0/b;->c:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lq0/b;->e:J

    iget-wide v4, p1, Lq0/b;->e:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lq0/b;->g:I

    iget v3, p1, Lq0/b;->g:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lq0/b;->i:J

    iget-wide v4, p1, Lq0/b;->i:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lq0/b;->j:J

    iget-wide v4, p1, Lq0/b;->j:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lq0/b;->b:Landroidx/media3/common/Timeline;

    iget-object v3, p1, Lq0/b;->b:Landroidx/media3/common/Timeline;

    invoke-static {v2, v3}, LE5/l;->s(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lq0/b;->d:Landroidx/media3/exoplayer/source/E;

    iget-object v3, p1, Lq0/b;->d:Landroidx/media3/exoplayer/source/E;

    invoke-static {v2, v3}, LE5/l;->s(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lq0/b;->f:Landroidx/media3/common/Timeline;

    iget-object v3, p1, Lq0/b;->f:Landroidx/media3/common/Timeline;

    invoke-static {v2, v3}, LE5/l;->s(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lq0/b;->h:Landroidx/media3/exoplayer/source/E;

    iget-object p1, p1, Lq0/b;->h:Landroidx/media3/exoplayer/source/E;

    invoke-static {v2, p1}, LE5/l;->s(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 12

    iget-wide v0, p0, Lq0/b;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget v0, p0, Lq0/b;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v0, p0, Lq0/b;->e:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget v0, p0, Lq0/b;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-wide v0, p0, Lq0/b;->i:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget-wide v0, p0, Lq0/b;->j:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iget-object v3, p0, Lq0/b;->b:Landroidx/media3/common/Timeline;

    iget-object v5, p0, Lq0/b;->d:Landroidx/media3/exoplayer/source/E;

    iget-object v7, p0, Lq0/b;->f:Landroidx/media3/common/Timeline;

    iget-object v9, p0, Lq0/b;->h:Landroidx/media3/exoplayer/source/E;

    filled-new-array/range {v2 .. v11}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
