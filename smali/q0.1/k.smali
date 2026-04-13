.class public final Lq0/k;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:I

.field public c:J

.field public final d:Landroidx/media3/exoplayer/source/E;

.field public e:Z

.field public f:Z

.field public final synthetic g:Lq0/l;


# direct methods
.method public constructor <init>(Lq0/l;Ljava/lang/String;ILandroidx/media3/exoplayer/source/E;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq0/k;->g:Lq0/l;

    iput-object p2, p0, Lq0/k;->a:Ljava/lang/String;

    iput p3, p0, Lq0/k;->b:I

    if-nez p4, :cond_0

    const-wide/16 p1, -0x1

    goto :goto_0

    :cond_0
    iget-wide p1, p4, Landroidx/media3/exoplayer/source/E;->d:J

    :goto_0
    iput-wide p1, p0, Lq0/k;->c:J

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroidx/media3/exoplayer/source/E;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-object p4, p0, Lq0/k;->d:Landroidx/media3/exoplayer/source/E;

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lq0/b;)Z
    .locals 8

    iget-object v0, p1, Lq0/b;->d:Landroidx/media3/exoplayer/source/E;

    iget-object v1, p1, Lq0/b;->b:Landroidx/media3/common/Timeline;

    if-nez v0, :cond_0

    iget v0, p0, Lq0/k;->b:I

    iget p1, p1, Lq0/b;->c:I

    if-eq v0, p1, :cond_8

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lq0/k;->c:J

    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-wide v4, v0, Landroidx/media3/exoplayer/source/E;->d:J

    cmp-long p1, v4, v2

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lq0/k;->d:Landroidx/media3/exoplayer/source/E;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    iget v2, p1, Landroidx/media3/exoplayer/source/E;->b:I

    iget-object v3, v0, Landroidx/media3/exoplayer/source/E;->a:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v3

    iget-object v4, p1, Landroidx/media3/exoplayer/source/E;->a:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    iget-wide v4, v0, Landroidx/media3/exoplayer/source/E;->d:J

    iget-wide v6, p1, Landroidx/media3/exoplayer/source/E;->d:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_8

    if-ge v3, v1, :cond_4

    goto :goto_1

    :cond_4
    if-le v3, v1, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/E;->b()Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, v0, Landroidx/media3/exoplayer/source/E;->b:I

    iget v0, v0, Landroidx/media3/exoplayer/source/E;->c:I

    if-gt v1, v2, :cond_7

    if-ne v1, v2, :cond_8

    iget p1, p1, Landroidx/media3/exoplayer/source/E;->c:I

    if-le v0, p1, :cond_8

    goto :goto_0

    :cond_6
    iget p1, v0, Landroidx/media3/exoplayer/source/E;->e:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_7

    if-le p1, v2, :cond_8

    :cond_7
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_8
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;)Z
    .locals 5

    iget v0, p0, Lq0/k;->b:I

    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v1

    const/4 v2, -0x1

    if-lt v0, v1, :cond_1

    invoke-virtual {p2}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result p1

    if-ge v0, p1, :cond_0

    goto :goto_1

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lq0/k;->g:Lq0/l;

    iget-object v3, v1, Lq0/l;->a:Landroidx/media3/common/Timeline$Window;

    iget-object v4, v1, Lq0/l;->a:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {p1, v0, v3}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    iget v0, v4, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    :goto_0
    iget v3, v4, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    if-gt v0, v3, :cond_0

    invoke-virtual {p1, v0}, Landroidx/media3/common/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v2, :cond_2

    iget-object p1, v1, Lq0/l;->b:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {p2, v3, p1}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object p1

    iget v0, p1, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :goto_1
    iput v0, p0, Lq0/k;->b:I

    const/4 p1, 0x0

    if-ne v0, v2, :cond_3

    return p1

    :cond_3
    const/4 v0, 0x1

    iget-object v1, p0, Lq0/k;->d:Landroidx/media3/exoplayer/source/E;

    if-nez v1, :cond_4

    return v0

    :cond_4
    iget-object v1, v1, Landroidx/media3/exoplayer/source/E;->a:Ljava/lang/Object;

    invoke-virtual {p2, v1}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p2

    if-eq p2, v2, :cond_5

    return v0

    :cond_5
    return p1
.end method
