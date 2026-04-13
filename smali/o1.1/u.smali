.class public final Lo1/u;
.super Ljava/lang/Object;

# interfaces
.implements Lo1/j;


# instance fields
.field public final a:Lk0/u;

.field public b:LI0/L;

.field public c:Z

.field public d:J

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lk0/u;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lk0/u;-><init>(I)V

    iput-object v0, p0, Lo1/u;->a:Lk0/u;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lo1/u;->d:J

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo1/u;->c:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lo1/u;->d:J

    return-void
.end method

.method public final c(Lk0/u;)V
    .locals 8

    iget-object v0, p0, Lo1/u;->b:LI0/L;

    invoke-static {v0}, Lk0/c;->k(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lo1/u;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lk0/u;->a()I

    move-result v0

    iget v1, p0, Lo1/u;->f:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_3

    rsub-int/lit8 v1, v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v3, p1, Lk0/u;->a:[B

    iget v4, p1, Lk0/u;->b:I

    iget-object v5, p0, Lo1/u;->a:Lk0/u;

    iget-object v6, v5, Lk0/u;->a:[B

    iget v7, p0, Lo1/u;->f:I

    invoke-static {v3, v4, v6, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lo1/u;->f:I

    add-int/2addr v3, v1

    if-ne v3, v2, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Lk0/u;->G(I)V

    const/16 v3, 0x49

    invoke-virtual {v5}, Lk0/u;->u()I

    move-result v4

    if-ne v3, v4, :cond_2

    const/16 v3, 0x44

    invoke-virtual {v5}, Lk0/u;->u()I

    move-result v4

    if-ne v3, v4, :cond_2

    const/16 v3, 0x33

    invoke-virtual {v5}, Lk0/u;->u()I

    move-result v4

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    invoke-virtual {v5, v1}, Lk0/u;->H(I)V

    invoke-virtual {v5}, Lk0/u;->t()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Lo1/u;->e:I

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "Id3Reader"

    const-string v0, "Discarding invalid ID3 tag"

    invoke-static {p1, v0}, Lk0/c;->z(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lo1/u;->c:Z

    return-void

    :cond_3
    :goto_1
    iget v1, p0, Lo1/u;->e:I

    iget v2, p0, Lo1/u;->f:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lo1/u;->b:LI0/L;

    invoke-interface {v1, p1, v0}, LI0/L;->sampleData(Lk0/u;I)V

    iget p1, p0, Lo1/u;->f:I

    add-int/2addr p1, v0

    iput p1, p0, Lo1/u;->f:I

    return-void
.end method

.method public final d(Z)V
    .locals 8

    iget-object p1, p0, Lo1/u;->b:LI0/L;

    invoke-static {p1}, Lk0/c;->k(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lo1/u;->c:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lo1/u;->e:I

    if-eqz p1, :cond_2

    iget v0, p0, Lo1/u;->f:I

    if-eq v0, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v0, p0, Lo1/u;->d:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    invoke-static {p1}, Lk0/c;->j(Z)V

    iget-object v1, p0, Lo1/u;->b:LI0/L;

    iget-wide v2, p0, Lo1/u;->d:J

    iget v5, p0, Lo1/u;->e:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    invoke-interface/range {v1 .. v7}, LI0/L;->sampleMetadata(JIIILI0/K;)V

    iput-boolean v0, p0, Lo1/u;->c:Z

    :cond_2
    :goto_1
    return-void
.end method

.method public final e(IJ)V
    .locals 0

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lo1/u;->c:Z

    iput-wide p2, p0, Lo1/u;->d:J

    const/4 p1, 0x0

    iput p1, p0, Lo1/u;->e:I

    iput p1, p0, Lo1/u;->f:I

    return-void
.end method

.method public final f(LI0/s;Lo1/K;)V
    .locals 2

    invoke-virtual {p2}, Lo1/K;->a()V

    invoke-virtual {p2}, Lo1/K;->b()V

    iget v0, p2, Lo1/K;->d:I

    const/4 v1, 0x5

    invoke-interface {p1, v0, v1}, LI0/s;->track(II)LI0/L;

    move-result-object p1

    iput-object p1, p0, Lo1/u;->b:LI0/L;

    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {p2}, Lo1/K;->b()V

    iget-object p2, p2, Lo1/K;->e:Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p2

    const-string v0, "application/id3"

    invoke-virtual {p2, v0}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p2

    invoke-interface {p1, p2}, LI0/L;->format(Landroidx/media3/common/Format;)V

    return-void
.end method
