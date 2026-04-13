.class public final Lo1/i;
.super Ljava/lang/Object;

# interfaces
.implements Lo1/j;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:[LI0/L;

.field public c:Z

.field public d:I

.field public e:I

.field public f:J


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo1/i;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [LI0/L;

    iput-object p1, p0, Lo1/i;->b:[LI0/L;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lo1/i;->f:J

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo1/i;->c:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lo1/i;->f:J

    return-void
.end method

.method public final c(Lk0/u;)V
    .locals 6

    iget-boolean v0, p0, Lo1/i;->c:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lo1/i;->d:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lk0/u;->a()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lk0/u;->u()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    iput-boolean v2, p0, Lo1/i;->c:Z

    :cond_1
    iget v0, p0, Lo1/i;->d:I

    sub-int/2addr v0, v3

    iput v0, p0, Lo1/i;->d:I

    iget-boolean v0, p0, Lo1/i;->c:Z

    :goto_0
    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    iget v0, p0, Lo1/i;->d:I

    if-ne v0, v3, :cond_5

    invoke-virtual {p1}, Lk0/u;->a()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lk0/u;->u()I

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v2, p0, Lo1/i;->c:Z

    :cond_4
    iget v0, p0, Lo1/i;->d:I

    sub-int/2addr v0, v3

    iput v0, p0, Lo1/i;->d:I

    iget-boolean v0, p0, Lo1/i;->c:Z

    :goto_1
    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    iget v0, p1, Lk0/u;->b:I

    invoke-virtual {p1}, Lk0/u;->a()I

    move-result v1

    iget-object v3, p0, Lo1/i;->b:[LI0/L;

    array-length v4, v3

    :goto_2
    if-ge v2, v4, :cond_6

    aget-object v5, v3, v2

    invoke-virtual {p1, v0}, Lk0/u;->G(I)V

    invoke-interface {v5, p1, v1}, LI0/L;->sampleData(Lk0/u;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    iget p1, p0, Lo1/i;->e:I

    add-int/2addr p1, v1

    iput p1, p0, Lo1/i;->e:I

    :cond_7
    :goto_3
    return-void
.end method

.method public final d(Z)V
    .locals 10

    iget-boolean p1, p0, Lo1/i;->c:Z

    if-eqz p1, :cond_2

    iget-wide v0, p0, Lo1/i;->f:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-static {p1}, Lk0/c;->j(Z)V

    iget-object p1, p0, Lo1/i;->b:[LI0/L;

    array-length v1, p1

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    iget-wide v4, p0, Lo1/i;->f:J

    iget v7, p0, Lo1/i;->e:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x1

    invoke-interface/range {v3 .. v9}, LI0/L;->sampleMetadata(JIIILI0/K;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iput-boolean v0, p0, Lo1/i;->c:Z

    :cond_2
    return-void
.end method

.method public final e(IJ)V
    .locals 0

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lo1/i;->c:Z

    iput-wide p2, p0, Lo1/i;->f:J

    const/4 p1, 0x0

    iput p1, p0, Lo1/i;->e:I

    const/4 p1, 0x2

    iput p1, p0, Lo1/i;->d:I

    return-void
.end method

.method public final f(LI0/s;Lo1/K;)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lo1/i;->b:[LI0/L;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lo1/i;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo1/J;

    invoke-virtual {p2}, Lo1/K;->a()V

    invoke-virtual {p2}, Lo1/K;->b()V

    iget v3, p2, Lo1/K;->d:I

    const/4 v4, 0x3

    invoke-interface {p1, v3, v4}, LI0/s;->track(II)LI0/L;

    move-result-object v3

    new-instance v4, Landroidx/media3/common/Format$Builder;

    invoke-direct {v4}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {p2}, Lo1/K;->b()V

    iget-object v5, p2, Lo1/K;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    const-string v5, "application/dvbsubs"

    invoke-virtual {v4, v5}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    iget-object v5, v2, Lo1/J;->b:[B

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    iget-object v2, v2, Lo1/J;->a:Ljava/lang/String;

    invoke-virtual {v4, v2}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v2

    invoke-interface {v3, v2}, LI0/L;->format(Landroidx/media3/common/Format;)V

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
