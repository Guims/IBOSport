.class public final Ld1/d;
.super Ljava/lang/Object;

# interfaces
.implements LI0/q;


# instance fields
.field public a:LI0/s;

.field public b:Ld1/i;

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final a(LI0/r;)Z
    .locals 8

    new-instance v0, Ld1/f;

    invoke-direct {v0}, Ld1/f;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Ld1/f;->a(LI0/r;Z)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget v2, v0, Ld1/f;->a:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-eq v2, v4, :cond_0

    goto :goto_2

    :cond_0
    iget v0, v0, Ld1/f;->e:I

    const/16 v2, 0x8

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v2, Lk0/u;

    invoke-direct {v2, v0}, Lk0/u;-><init>(I)V

    iget-object v4, v2, Lk0/u;->a:[B

    invoke-interface {p1, v4, v3, v0}, LI0/r;->o([BII)V

    invoke-virtual {v2, v3}, Lk0/u;->G(I)V

    invoke-virtual {v2}, Lk0/u;->a()I

    move-result p1

    const/4 v0, 0x5

    if-lt p1, v0, :cond_1

    invoke-virtual {v2}, Lk0/u;->u()I

    move-result p1

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_1

    invoke-virtual {v2}, Lk0/u;->w()J

    move-result-wide v4

    const-wide/32 v6, 0x464c4143

    cmp-long p1, v4, v6

    if-nez p1, :cond_1

    new-instance p1, Ld1/c;

    invoke-direct {p1}, Ld1/i;-><init>()V

    iput-object p1, p0, Ld1/d;->b:Ld1/i;

    return v1

    :cond_1
    invoke-virtual {v2, v3}, Lk0/u;->G(I)V

    :try_start_0
    invoke-static {v1, v2, v1}, LI0/P;->c(ILk0/u;Z)Z

    move-result p1
    :try_end_0
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move p1, v3

    :goto_0
    if-eqz p1, :cond_2

    new-instance p1, Ld1/k;

    invoke-direct {p1}, Ld1/i;-><init>()V

    iput-object p1, p0, Ld1/d;->b:Ld1/i;

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v3}, Lk0/u;->G(I)V

    sget-object p1, Ld1/h;->o:[B

    invoke-static {v2, p1}, Ld1/h;->e(Lk0/u;[B)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Ld1/h;

    invoke-direct {p1}, Ld1/i;-><init>()V

    iput-object p1, p0, Ld1/d;->b:Ld1/i;

    :goto_1
    return v1

    :cond_3
    :goto_2
    return v3
.end method

.method public final b(LI0/r;)Z
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Ld1/d;->a(LI0/r;)Z

    move-result p1
    :try_end_0
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public final e(LI0/r;LI0/D;)I
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Ld1/d;->a:LI0/s;

    invoke-static {v2}, Lk0/c;->k(Ljava/lang/Object;)V

    iget-object v2, v0, Ld1/d;->b:Ld1/i;

    if-nez v2, :cond_1

    invoke-virtual/range {p0 .. p1}, Ld1/d;->a(LI0/r;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, LI0/r;->j()V

    goto :goto_0

    :cond_0
    const-string v1, "Failed to determine bitstream type"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_1
    :goto_0
    iget-boolean v2, v0, Ld1/d;->c:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2

    iget-object v2, v0, Ld1/d;->a:LI0/s;

    invoke-interface {v2, v3, v4}, LI0/s;->track(II)LI0/L;

    move-result-object v2

    iget-object v5, v0, Ld1/d;->a:LI0/s;

    invoke-interface {v5}, LI0/s;->endTracks()V

    iget-object v5, v0, Ld1/d;->b:Ld1/i;

    iget-object v6, v0, Ld1/d;->a:LI0/s;

    iput-object v6, v5, Ld1/i;->c:LI0/s;

    iput-object v2, v5, Ld1/i;->b:LI0/L;

    invoke-virtual {v5, v4}, Ld1/i;->d(Z)V

    iput-boolean v4, v0, Ld1/d;->c:Z

    :cond_2
    iget-object v8, v0, Ld1/d;->b:Ld1/i;

    iget-object v2, v8, Ld1/i;->a:Ld1/e;

    iget-object v5, v8, Ld1/i;->b:LI0/L;

    invoke-static {v5}, Lk0/c;->k(Ljava/lang/Object;)V

    sget v5, Lk0/C;->a:I

    iget v5, v8, Ld1/i;->h:I

    const-wide/16 v6, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-eqz v5, :cond_c

    if-eq v5, v4, :cond_b

    if-eq v5, v11, :cond_4

    if-ne v5, v10, :cond_3

    return v9

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_4
    iget-object v5, v8, Ld1/i;->d:Ld1/g;

    invoke-interface {v5, v1}, Ld1/g;->o(LI0/r;)J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v5, v11, v13

    if-ltz v5, :cond_5

    move-object/from16 v5, p2

    iput-wide v11, v5, LI0/D;->a:J

    return v4

    :cond_5
    cmp-long v5, v11, v6

    if-gez v5, :cond_6

    const-wide/16 v15, 0x2

    add-long/2addr v11, v15

    neg-long v11, v11

    invoke-virtual {v8, v11, v12}, Ld1/i;->a(J)V

    :cond_6
    iget-boolean v5, v8, Ld1/i;->l:Z

    if-nez v5, :cond_7

    iget-object v5, v8, Ld1/i;->d:Ld1/g;

    invoke-interface {v5}, Ld1/g;->n()LI0/F;

    move-result-object v5

    invoke-static {v5}, Lk0/c;->k(Ljava/lang/Object;)V

    iget-object v11, v8, Ld1/i;->c:LI0/s;

    invoke-interface {v11, v5}, LI0/s;->seekMap(LI0/F;)V

    iput-boolean v4, v8, Ld1/i;->l:Z

    :cond_7
    iget-wide v4, v8, Ld1/i;->k:J

    cmp-long v4, v4, v13

    if-gtz v4, :cond_9

    invoke-virtual {v2, v1}, Ld1/e;->b(LI0/r;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_1

    :cond_8
    iput v10, v8, Ld1/i;->h:I

    return v9

    :cond_9
    :goto_1
    iput-wide v13, v8, Ld1/i;->k:J

    iget-object v1, v2, Ld1/e;->b:Lk0/u;

    invoke-virtual {v8, v1}, Ld1/i;->b(Lk0/u;)J

    move-result-wide v4

    cmp-long v2, v4, v13

    if-ltz v2, :cond_a

    iget-wide v9, v8, Ld1/i;->g:J

    add-long v11, v9, v4

    iget-wide v13, v8, Ld1/i;->e:J

    cmp-long v2, v11, v13

    if-ltz v2, :cond_a

    const-wide/32 v11, 0xf4240

    mul-long/2addr v9, v11

    iget v2, v8, Ld1/i;->i:I

    int-to-long v11, v2

    div-long v14, v9, v11

    iget-object v2, v8, Ld1/i;->b:LI0/L;

    iget v9, v1, Lk0/u;->c:I

    invoke-interface {v2, v1, v9}, LI0/L;->sampleData(Lk0/u;I)V

    iget-object v13, v8, Ld1/i;->b:LI0/L;

    iget v1, v1, Lk0/u;->c:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v16, 0x1

    move/from16 v17, v1

    invoke-interface/range {v13 .. v19}, LI0/L;->sampleMetadata(JIIILI0/K;)V

    iput-wide v6, v8, Ld1/i;->e:J

    :cond_a
    iget-wide v1, v8, Ld1/i;->g:J

    add-long/2addr v1, v4

    iput-wide v1, v8, Ld1/i;->g:J

    return v3

    :cond_b
    iget-wide v4, v8, Ld1/i;->f:J

    long-to-int v2, v4

    invoke-interface {v1, v2}, LI0/r;->n(I)V

    iput v11, v8, Ld1/i;->h:I

    return v3

    :cond_c
    :goto_2
    invoke-virtual {v2, v1}, Ld1/e;->b(LI0/r;)Z

    move-result v5

    iget-object v12, v2, Ld1/e;->b:Lk0/u;

    if-nez v5, :cond_d

    iput v10, v8, Ld1/i;->h:I

    return v9

    :cond_d
    invoke-interface {v1}, LI0/r;->getPosition()J

    move-result-wide v13

    move-wide v15, v6

    iget-wide v6, v8, Ld1/i;->f:J

    sub-long/2addr v13, v6

    iput-wide v13, v8, Ld1/i;->k:J

    iget-object v5, v8, Ld1/i;->j:LY1/c;

    invoke-virtual {v8, v12, v6, v7, v5}, Ld1/i;->c(Lk0/u;JLY1/c;)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v1}, LI0/r;->getPosition()J

    move-result-wide v5

    iput-wide v5, v8, Ld1/i;->f:J

    move-wide v6, v15

    goto :goto_2

    :cond_e
    iget-object v5, v8, Ld1/i;->j:LY1/c;

    iget-object v5, v5, LY1/c;->q:Ljava/lang/Object;

    check-cast v5, Landroidx/media3/common/Format;

    iget v6, v5, Landroidx/media3/common/Format;->sampleRate:I

    iput v6, v8, Ld1/i;->i:I

    iget-boolean v6, v8, Ld1/i;->m:Z

    if-nez v6, :cond_f

    iget-object v6, v8, Ld1/i;->b:LI0/L;

    invoke-interface {v6, v5}, LI0/L;->format(Landroidx/media3/common/Format;)V

    iput-boolean v4, v8, Ld1/i;->m:Z

    :cond_f
    iget-object v5, v8, Ld1/i;->j:LY1/c;

    iget-object v5, v5, LY1/c;->r:Ljava/lang/Object;

    check-cast v5, Landroidx/media3/exoplayer/source/Z;

    if-eqz v5, :cond_10

    iput-object v5, v8, Ld1/i;->d:Ld1/g;

    :goto_3
    move v2, v11

    move-object v1, v12

    goto :goto_5

    :cond_10
    invoke-interface {v1}, LI0/r;->getLength()J

    move-result-wide v5

    cmp-long v5, v5, v15

    if-nez v5, :cond_11

    new-instance v1, Lh3/e;

    const/16 v2, 0x16

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    iput-object v1, v8, Ld1/i;->d:Ld1/g;

    goto :goto_3

    :cond_11
    iget-object v2, v2, Ld1/e;->a:Ld1/f;

    iget v5, v2, Ld1/f;->a:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_12

    move/from16 v17, v4

    goto :goto_4

    :cond_12
    move/from16 v17, v3

    :goto_4
    new-instance v7, Ld1/b;

    iget-wide v9, v8, Ld1/i;->f:J

    invoke-interface {v1}, LI0/r;->getLength()J

    move-result-wide v4

    iget v1, v2, Ld1/f;->d:I

    iget v6, v2, Ld1/f;->e:I

    add-int/2addr v1, v6

    int-to-long v13, v1

    iget-wide v1, v2, Ld1/f;->b:J

    move-wide v15, v1

    move v2, v11

    move-object v1, v12

    move-wide v11, v4

    invoke-direct/range {v7 .. v17}, Ld1/b;-><init>(Ld1/i;JJJJZ)V

    iput-object v7, v8, Ld1/i;->d:Ld1/g;

    :goto_5
    iput v2, v8, Ld1/i;->h:I

    iget-object v2, v1, Lk0/u;->a:[B

    array-length v4, v2

    const v5, 0xfe01

    if-ne v4, v5, :cond_13

    return v3

    :cond_13
    iget v4, v1, Lk0/u;->c:I

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    iget v4, v1, Lk0/u;->c:I

    invoke-virtual {v1, v2, v4}, Lk0/u;->E([BI)V

    return v3
.end method

.method public final f(JJ)V
    .locals 6

    iget-object v0, p0, Ld1/d;->b:Ld1/i;

    if-eqz v0, :cond_1

    iget-object v1, v0, Ld1/i;->a:Ld1/e;

    iget-object v2, v1, Ld1/e;->a:Ld1/f;

    const/4 v3, 0x0

    iput v3, v2, Ld1/f;->a:I

    const-wide/16 v4, 0x0

    iput-wide v4, v2, Ld1/f;->b:J

    iput v3, v2, Ld1/f;->c:I

    iput v3, v2, Ld1/f;->d:I

    iput v3, v2, Ld1/f;->e:I

    iget-object v2, v1, Ld1/e;->b:Lk0/u;

    invoke-virtual {v2, v3}, Lk0/u;->D(I)V

    const/4 v2, -0x1

    iput v2, v1, Ld1/e;->c:I

    iput-boolean v3, v1, Ld1/e;->e:Z

    cmp-long p1, p1, v4

    if-nez p1, :cond_0

    iget-boolean p1, v0, Ld1/i;->l:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ld1/i;->d(Z)V

    return-void

    :cond_0
    iget p1, v0, Ld1/i;->h:I

    if-eqz p1, :cond_1

    iget p1, v0, Ld1/i;->i:I

    int-to-long p1, p1

    mul-long/2addr p1, p3

    const-wide/32 p3, 0xf4240

    div-long/2addr p1, p3

    iput-wide p1, v0, Ld1/i;->e:J

    iget-object p3, v0, Ld1/i;->d:Ld1/g;

    sget p4, Lk0/C;->a:I

    invoke-interface {p3, p1, p2}, Ld1/g;->q(J)V

    const/4 p1, 0x2

    iput p1, v0, Ld1/i;->h:I

    :cond_1
    return-void
.end method

.method public final k(LI0/s;)V
    .locals 0

    iput-object p1, p0, Ld1/d;->a:LI0/s;

    return-void
.end method

.method public final release()V
    .locals 0

    return-void
.end method
