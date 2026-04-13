.class public final Lo1/w;
.super Ljava/lang/Object;

# interfaces
.implements Lo1/j;


# instance fields
.field public final a:Lk0/u;

.field public final b:LI0/C;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public e:LI0/L;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:I

.field public i:Z

.field public j:Z

.field public k:J

.field public l:I

.field public m:J


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lo1/w;->g:I

    new-instance v1, Lk0/u;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lk0/u;-><init>(I)V

    iput-object v1, p0, Lo1/w;->a:Lk0/u;

    iget-object v1, v1, Lk0/u;->a:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    new-instance v0, LI0/C;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo1/w;->b:LI0/C;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lo1/w;->m:J

    iput-object p1, p0, Lo1/w;->c:Ljava/lang/String;

    iput p2, p0, Lo1/w;->d:I

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lo1/w;->g:I

    iput v0, p0, Lo1/w;->h:I

    iput-boolean v0, p0, Lo1/w;->j:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lo1/w;->m:J

    return-void
.end method

.method public final c(Lk0/u;)V
    .locals 12

    iget-object v0, p0, Lo1/w;->e:LI0/L;

    invoke-static {v0}, Lk0/c;->k(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p1}, Lk0/u;->a()I

    move-result v0

    if-lez v0, :cond_c

    iget v0, p0, Lo1/w;->g:I

    iget-object v1, p0, Lo1/w;->a:Lk0/u;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_7

    if-eq v0, v4, :cond_3

    if-ne v0, v3, :cond_2

    invoke-virtual {p1}, Lk0/u;->a()I

    move-result v0

    iget v1, p0, Lo1/w;->l:I

    iget v3, p0, Lo1/w;->h:I

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lo1/w;->e:LI0/L;

    invoke-interface {v1, p1, v0}, LI0/L;->sampleData(Lk0/u;I)V

    iget v1, p0, Lo1/w;->h:I

    add-int/2addr v1, v0

    iput v1, p0, Lo1/w;->h:I

    iget v0, p0, Lo1/w;->l:I

    if-ge v1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lo1/w;->m:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v5

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-static {v4}, Lk0/c;->j(Z)V

    iget-object v5, p0, Lo1/w;->e:LI0/L;

    iget-wide v6, p0, Lo1/w;->m:J

    iget v9, p0, Lo1/w;->l:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x1

    invoke-interface/range {v5 .. v11}, LI0/L;->sampleMetadata(JIIILI0/K;)V

    iget-wide v0, p0, Lo1/w;->m:J

    iget-wide v3, p0, Lo1/w;->k:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lo1/w;->m:J

    iput v2, p0, Lo1/w;->h:I

    iput v2, p0, Lo1/w;->g:I

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_3
    invoke-virtual {p1}, Lk0/u;->a()I

    move-result v0

    iget v5, p0, Lo1/w;->h:I

    const/4 v6, 0x4

    rsub-int/lit8 v5, v5, 0x4

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v5, v1, Lk0/u;->a:[B

    iget v7, p0, Lo1/w;->h:I

    invoke-virtual {p1, v5, v7, v0}, Lk0/u;->e([BII)V

    iget v5, p0, Lo1/w;->h:I

    add-int/2addr v5, v0

    iput v5, p0, Lo1/w;->h:I

    if-ge v5, v6, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v2}, Lk0/u;->G(I)V

    invoke-virtual {v1}, Lk0/u;->g()I

    move-result v0

    iget-object v5, p0, Lo1/w;->b:LI0/C;

    invoke-virtual {v5, v0}, LI0/C;->a(I)Z

    move-result v0

    if-nez v0, :cond_5

    iput v2, p0, Lo1/w;->h:I

    iput v4, p0, Lo1/w;->g:I

    goto/16 :goto_0

    :cond_5
    iget v0, v5, LI0/C;->b:I

    iput v0, p0, Lo1/w;->l:I

    iget-boolean v0, p0, Lo1/w;->i:Z

    if-nez v0, :cond_6

    iget v0, v5, LI0/C;->f:I

    int-to-long v7, v0

    const-wide/32 v9, 0xf4240

    mul-long/2addr v7, v9

    iget v0, v5, LI0/C;->c:I

    int-to-long v9, v0

    div-long/2addr v7, v9

    iput-wide v7, p0, Lo1/w;->k:J

    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    iget-object v7, p0, Lo1/w;->f:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget-object v7, v5, LI0/C;->g:Ljava/io/Serializable;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    const/16 v7, 0x1000

    invoke-virtual {v0, v7}, Landroidx/media3/common/Format$Builder;->setMaxInputSize(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget v7, v5, LI0/C;->d:I

    invoke-virtual {v0, v7}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget v5, v5, LI0/C;->c:I

    invoke-virtual {v0, v5}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget-object v5, p0, Lo1/w;->c:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget v5, p0, Lo1/w;->d:I

    invoke-virtual {v0, v5}, Landroidx/media3/common/Format$Builder;->setRoleFlags(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    iget-object v5, p0, Lo1/w;->e:LI0/L;

    invoke-interface {v5, v0}, LI0/L;->format(Landroidx/media3/common/Format;)V

    iput-boolean v4, p0, Lo1/w;->i:Z

    :cond_6
    invoke-virtual {v1, v2}, Lk0/u;->G(I)V

    iget-object v0, p0, Lo1/w;->e:LI0/L;

    invoke-interface {v0, v1, v6}, LI0/L;->sampleData(Lk0/u;I)V

    iput v3, p0, Lo1/w;->g:I

    goto/16 :goto_0

    :cond_7
    iget-object v0, p1, Lk0/u;->a:[B

    iget v5, p1, Lk0/u;->b:I

    iget v6, p1, Lk0/u;->c:I

    :goto_2
    if-ge v5, v6, :cond_b

    aget-byte v7, v0, v5

    and-int/lit16 v8, v7, 0xff

    const/16 v9, 0xff

    if-ne v8, v9, :cond_8

    move v8, v4

    goto :goto_3

    :cond_8
    move v8, v2

    :goto_3
    iget-boolean v9, p0, Lo1/w;->j:Z

    if-eqz v9, :cond_9

    and-int/lit16 v7, v7, 0xe0

    const/16 v9, 0xe0

    if-ne v7, v9, :cond_9

    move v7, v4

    goto :goto_4

    :cond_9
    move v7, v2

    :goto_4
    iput-boolean v8, p0, Lo1/w;->j:Z

    if-eqz v7, :cond_a

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p1, v6}, Lk0/u;->G(I)V

    iput-boolean v2, p0, Lo1/w;->j:Z

    iget-object v1, v1, Lk0/u;->a:[B

    aget-byte v0, v0, v5

    aput-byte v0, v1, v4

    iput v3, p0, Lo1/w;->h:I

    iput v4, p0, Lo1/w;->g:I

    goto/16 :goto_0

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_b
    invoke-virtual {p1, v6}, Lk0/u;->G(I)V

    goto/16 :goto_0

    :cond_c
    return-void
.end method

.method public final d(Z)V
    .locals 0

    return-void
.end method

.method public final e(IJ)V
    .locals 0

    iput-wide p2, p0, Lo1/w;->m:J

    return-void
.end method

.method public final f(LI0/s;Lo1/K;)V
    .locals 1

    invoke-virtual {p2}, Lo1/K;->a()V

    invoke-virtual {p2}, Lo1/K;->b()V

    iget-object v0, p2, Lo1/K;->e:Ljava/lang/String;

    iput-object v0, p0, Lo1/w;->f:Ljava/lang/String;

    invoke-virtual {p2}, Lo1/K;->b()V

    iget p2, p2, Lo1/K;->d:I

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, LI0/s;->track(II)LI0/L;

    move-result-object p1

    iput-object p1, p0, Lo1/w;->e:LI0/L;

    return-void
.end method
