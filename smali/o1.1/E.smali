.class public final Lo1/E;
.super Ljava/lang/Object;

# interfaces
.implements LI0/q;


# instance fields
.field public final a:Lk0/z;

.field public final b:Landroid/util/SparseArray;

.field public final c:Lk0/u;

.field public final d:Lo1/C;

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:J

.field public i:LN0/b;

.field public j:LI0/s;

.field public k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    new-instance v0, Lk0/z;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lk0/z;-><init>(J)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo1/E;->a:Lk0/z;

    new-instance v0, Lk0/u;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lk0/u;-><init>(I)V

    iput-object v0, p0, Lo1/E;->c:Lk0/u;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lo1/E;->b:Landroid/util/SparseArray;

    new-instance v0, Lo1/C;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo1/C;-><init>(I)V

    iput-object v0, p0, Lo1/E;->d:Lo1/C;

    return-void
.end method


# virtual methods
.method public final b(LI0/r;)Z
    .locals 9

    const/16 v0, 0xe

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, v0}, LI0/r;->o([BII)V

    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v3, 0x1

    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    const/4 v4, 0x2

    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    or-int/2addr v0, v5

    const/4 v5, 0x3

    aget-byte v7, v1, v5

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v0, v7

    const/16 v7, 0x1ba

    if-eq v7, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    aget-byte v7, v1, v0

    and-int/lit16 v7, v7, 0xc4

    const/16 v8, 0x44

    if-eq v7, v8, :cond_1

    goto :goto_0

    :cond_1
    const/4 v7, 0x6

    aget-byte v7, v1, v7

    and-int/2addr v7, v0

    if-eq v7, v0, :cond_2

    goto :goto_0

    :cond_2
    aget-byte v7, v1, v6

    and-int/2addr v7, v0

    if-eq v7, v0, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0x9

    aget-byte v0, v1, v0

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_4

    goto :goto_0

    :cond_4
    const/16 v0, 0xc

    aget-byte v0, v1, v0

    and-int/2addr v0, v5

    if-eq v0, v5, :cond_5

    goto :goto_0

    :cond_5
    const/16 v0, 0xd

    aget-byte v0, v1, v0

    and-int/lit8 v0, v0, 0x7

    invoke-interface {p1, v0}, LI0/r;->f(I)V

    invoke-interface {p1, v1, v2, v5}, LI0/r;->o([BII)V

    aget-byte p1, v1, v2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    aget-byte v0, v1, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v6

    or-int/2addr p1, v0

    aget-byte v0, v1, v4

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p1, v0

    if-ne v3, p1, :cond_6

    return v3

    :cond_6
    :goto_0
    return v2
.end method

.method public final e(LI0/r;LI0/D;)I
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lo1/E;->j:LI0/s;

    invoke-static {v3}, Lk0/c;->k(Ljava/lang/Object;)V

    invoke-interface {v1}, LI0/r;->getLength()J

    move-result-wide v13

    const-wide/16 v18, -0x1

    cmp-long v3, v13, v18

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v7, 0x1ba

    iget-object v8, v0, Lo1/E;->d:Lo1/C;

    const/4 v9, 0x4

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v3, :cond_a

    iget-boolean v12, v8, Lo1/C;->d:Z

    if-nez v12, :cond_a

    iget-object v3, v8, Lo1/C;->b:Lk0/z;

    iget-object v12, v8, Lo1/C;->c:Lk0/u;

    iget-boolean v13, v8, Lo1/C;->f:Z

    const-wide/16 v14, 0x4e20

    if-nez v13, :cond_3

    invoke-interface {v1}, LI0/r;->getLength()J

    move-result-wide v3

    invoke-static {v14, v15, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    long-to-int v13, v13

    int-to-long v14, v13

    sub-long/2addr v3, v14

    invoke-interface {v1}, LI0/r;->getPosition()J

    move-result-wide v14

    cmp-long v14, v14, v3

    if-eqz v14, :cond_0

    iput-wide v3, v2, LI0/D;->a:J

    return v10

    :cond_0
    invoke-virtual {v12, v13}, Lk0/u;->D(I)V

    invoke-interface {v1}, LI0/r;->j()V

    iget-object v2, v12, Lk0/u;->a:[B

    invoke-interface {v1, v2, v11, v13}, LI0/r;->o([BII)V

    iget v1, v12, Lk0/u;->b:I

    iget v2, v12, Lk0/u;->c:I

    sub-int/2addr v2, v9

    :goto_0
    if-lt v2, v1, :cond_2

    iget-object v3, v12, Lk0/u;->a:[B

    invoke-static {v3, v2}, Lo1/C;->b([BI)I

    move-result v3

    if-ne v3, v7, :cond_1

    add-int/lit8 v3, v2, 0x4

    invoke-virtual {v12, v3}, Lk0/u;->G(I)V

    invoke-static {v12}, Lo1/C;->c(Lk0/u;)J

    move-result-wide v3

    cmp-long v9, v3, v5

    if-eqz v9, :cond_1

    move-wide v5, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    iput-wide v5, v8, Lo1/C;->h:J

    iput-boolean v10, v8, Lo1/C;->f:Z

    return v11

    :cond_3
    move-wide/from16 v20, v5

    const/16 v16, 0x3

    iget-wide v4, v8, Lo1/C;->h:J

    cmp-long v4, v4, v20

    if-nez v4, :cond_4

    invoke-virtual {v8, v1}, Lo1/C;->a(LI0/r;)V

    return v11

    :cond_4
    iget-boolean v4, v8, Lo1/C;->e:Z

    if-nez v4, :cond_8

    invoke-interface {v1}, LI0/r;->getLength()J

    move-result-wide v3

    invoke-static {v14, v15, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-interface {v1}, LI0/r;->getPosition()J

    move-result-wide v4

    int-to-long v13, v11

    cmp-long v4, v4, v13

    if-eqz v4, :cond_5

    iput-wide v13, v2, LI0/D;->a:J

    return v10

    :cond_5
    invoke-virtual {v12, v3}, Lk0/u;->D(I)V

    invoke-interface {v1}, LI0/r;->j()V

    iget-object v2, v12, Lk0/u;->a:[B

    invoke-interface {v1, v2, v11, v3}, LI0/r;->o([BII)V

    iget v1, v12, Lk0/u;->b:I

    iget v2, v12, Lk0/u;->c:I

    :goto_2
    add-int/lit8 v3, v2, -0x3

    if-ge v1, v3, :cond_7

    iget-object v3, v12, Lk0/u;->a:[B

    invoke-static {v3, v1}, Lo1/C;->b([BI)I

    move-result v3

    if-ne v3, v7, :cond_6

    add-int/lit8 v3, v1, 0x4

    invoke-virtual {v12, v3}, Lk0/u;->G(I)V

    invoke-static {v12}, Lo1/C;->c(Lk0/u;)J

    move-result-wide v3

    cmp-long v5, v3, v20

    if-eqz v5, :cond_6

    move-wide v5, v3

    goto :goto_3

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    move-wide/from16 v5, v20

    :goto_3
    iput-wide v5, v8, Lo1/C;->g:J

    iput-boolean v10, v8, Lo1/C;->e:Z

    return v11

    :cond_8
    iget-wide v4, v8, Lo1/C;->g:J

    cmp-long v2, v4, v20

    if-nez v2, :cond_9

    invoke-virtual {v8, v1}, Lo1/C;->a(LI0/r;)V

    return v11

    :cond_9
    invoke-virtual {v3, v4, v5}, Lk0/z;->b(J)J

    move-result-wide v4

    iget-wide v6, v8, Lo1/C;->h:J

    invoke-virtual {v3, v6, v7}, Lk0/z;->c(J)J

    move-result-wide v2

    sub-long/2addr v2, v4

    iput-wide v2, v8, Lo1/C;->i:J

    invoke-virtual {v8, v1}, Lo1/C;->a(LI0/r;)V

    return v11

    :cond_a
    move-wide/from16 v20, v5

    const/16 v16, 0x3

    iget-boolean v4, v0, Lo1/E;->k:Z

    if-nez v4, :cond_c

    iput-boolean v10, v0, Lo1/E;->k:Z

    iget-wide v4, v8, Lo1/C;->i:J

    cmp-long v6, v4, v20

    if-eqz v6, :cond_b

    move-wide v5, v4

    new-instance v4, LN0/b;

    iget-object v8, v8, Lo1/C;->b:Lk0/z;

    move-wide/from16 v20, v5

    new-instance v5, Lh3/e;

    const/4 v6, 0x6

    invoke-direct {v5, v6}, Lh3/e;-><init>(I)V

    new-instance v6, LY1/c;

    invoke-direct {v6, v8}, LY1/c;-><init>(Lk0/z;)V

    const-wide/16 v22, 0x1

    add-long v22, v20, v22

    move/from16 v8, v16

    const-wide/16 v15, 0xbc

    const/16 v17, 0x3e8

    move/from16 v24, v11

    const-wide/16 v11, 0x0

    move/from16 v25, v3

    move v3, v9

    move-wide/from16 v7, v20

    move-wide/from16 v9, v22

    invoke-direct/range {v4 .. v17}, LN0/b;-><init>(LI0/i;LI0/k;JJJJJI)V

    iput-object v4, v0, Lo1/E;->i:LN0/b;

    iget-object v5, v0, Lo1/E;->j:LI0/s;

    iget-object v4, v4, LN0/b;->a:LI0/g;

    invoke-interface {v5, v4}, LI0/s;->seekMap(LI0/F;)V

    goto :goto_4

    :cond_b
    move/from16 v25, v3

    move-wide v5, v4

    move v3, v9

    iget-object v4, v0, Lo1/E;->j:LI0/s;

    new-instance v7, LI0/v;

    invoke-direct {v7, v5, v6}, LI0/v;-><init>(J)V

    invoke-interface {v4, v7}, LI0/s;->seekMap(LI0/F;)V

    goto :goto_4

    :cond_c
    move/from16 v25, v3

    move v3, v9

    :goto_4
    iget-object v4, v0, Lo1/E;->i:LN0/b;

    if-eqz v4, :cond_d

    iget-object v5, v4, LN0/b;->c:LI0/h;

    if-eqz v5, :cond_d

    invoke-virtual {v4, v1, v2}, LN0/b;->b(LI0/r;LI0/D;)I

    move-result v1

    return v1

    :cond_d
    invoke-interface {v1}, LI0/r;->j()V

    if-eqz v25, :cond_e

    invoke-interface {v1}, LI0/r;->e()J

    move-result-wide v4

    sub-long/2addr v13, v4

    goto :goto_5

    :cond_e
    move-wide/from16 v13, v18

    :goto_5
    cmp-long v2, v13, v18

    if-eqz v2, :cond_f

    const-wide/16 v4, 0x4

    cmp-long v2, v13, v4

    if-gez v2, :cond_f

    goto :goto_6

    :cond_f
    iget-object v2, v0, Lo1/E;->c:Lk0/u;

    iget-object v4, v2, Lk0/u;->a:[B

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v1, v4, v6, v3, v5}, LI0/r;->d([BIIZ)Z

    move-result v4

    if-nez v4, :cond_10

    goto :goto_6

    :cond_10
    invoke-virtual {v2, v6}, Lk0/u;->G(I)V

    invoke-virtual {v2}, Lk0/u;->g()I

    move-result v4

    const/16 v7, 0x1b9

    if-ne v4, v7, :cond_11

    :goto_6
    const/4 v1, -0x1

    return v1

    :cond_11
    const/16 v7, 0x1ba

    if-ne v4, v7, :cond_12

    iget-object v3, v2, Lk0/u;->a:[B

    const/16 v4, 0xa

    invoke-interface {v1, v3, v6, v4}, LI0/r;->o([BII)V

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lk0/u;->G(I)V

    invoke-virtual {v2}, Lk0/u;->u()I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0xe

    invoke-interface {v1, v2}, LI0/r;->n(I)V

    return v6

    :cond_12
    const/16 v7, 0x1bb

    const/4 v8, 0x2

    const/4 v9, 0x6

    if-ne v4, v7, :cond_13

    iget-object v3, v2, Lk0/u;->a:[B

    invoke-interface {v1, v3, v6, v8}, LI0/r;->o([BII)V

    invoke-virtual {v2, v6}, Lk0/u;->G(I)V

    invoke-virtual {v2}, Lk0/u;->A()I

    move-result v2

    add-int/2addr v2, v9

    invoke-interface {v1, v2}, LI0/r;->n(I)V

    return v6

    :cond_13
    and-int/lit16 v7, v4, -0x100

    const/16 v10, 0x8

    shr-int/2addr v7, v10

    if-eq v7, v5, :cond_14

    invoke-interface {v1, v5}, LI0/r;->n(I)V

    return v6

    :cond_14
    and-int/lit16 v7, v4, 0xff

    iget-object v11, v0, Lo1/E;->b:Landroid/util/SparseArray;

    invoke-virtual {v11, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lo1/D;

    iget-boolean v13, v0, Lo1/E;->e:Z

    if-nez v13, :cond_1a

    if-nez v12, :cond_18

    const/16 v13, 0xbd

    if-ne v7, v13, :cond_15

    new-instance v4, Lo1/b;

    invoke-direct {v4}, Lo1/b;-><init>()V

    iput-boolean v5, v0, Lo1/E;->f:Z

    invoke-interface {v1}, LI0/r;->getPosition()J

    move-result-wide v13

    iput-wide v13, v0, Lo1/E;->h:J

    goto :goto_7

    :cond_15
    and-int/lit16 v13, v4, 0xe0

    const/16 v14, 0xc0

    const/4 v15, 0x0

    if-ne v13, v14, :cond_16

    new-instance v4, Lo1/w;

    invoke-direct {v4, v15, v6}, Lo1/w;-><init>(Ljava/lang/String;I)V

    iput-boolean v5, v0, Lo1/E;->f:Z

    invoke-interface {v1}, LI0/r;->getPosition()J

    move-result-wide v13

    iput-wide v13, v0, Lo1/E;->h:J

    goto :goto_7

    :cond_16
    and-int/lit16 v4, v4, 0xf0

    const/16 v13, 0xe0

    if-ne v4, v13, :cond_17

    new-instance v4, Lo1/l;

    invoke-direct {v4, v15}, Lo1/l;-><init>(Lo1/M;)V

    iput-boolean v5, v0, Lo1/E;->g:Z

    invoke-interface {v1}, LI0/r;->getPosition()J

    move-result-wide v13

    iput-wide v13, v0, Lo1/E;->h:J

    goto :goto_7

    :cond_17
    move-object v4, v15

    :goto_7
    if-eqz v4, :cond_18

    new-instance v12, Lo1/K;

    const/16 v13, 0x100

    invoke-direct {v12, v7, v13}, Lo1/K;-><init>(II)V

    iget-object v13, v0, Lo1/E;->j:LI0/s;

    invoke-interface {v4, v13, v12}, Lo1/j;->f(LI0/s;Lo1/K;)V

    new-instance v12, Lo1/D;

    iget-object v13, v0, Lo1/E;->a:Lk0/z;

    invoke-direct {v12, v4, v13}, Lo1/D;-><init>(Lo1/j;Lk0/z;)V

    invoke-virtual {v11, v7, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_18
    iget-boolean v4, v0, Lo1/E;->f:Z

    if-eqz v4, :cond_19

    iget-boolean v4, v0, Lo1/E;->g:Z

    if-eqz v4, :cond_19

    iget-wide v13, v0, Lo1/E;->h:J

    const-wide/16 v15, 0x2000

    add-long/2addr v13, v15

    goto :goto_8

    :cond_19
    const-wide/32 v13, 0x100000

    :goto_8
    invoke-interface {v1}, LI0/r;->getPosition()J

    move-result-wide v15

    cmp-long v4, v15, v13

    if-lez v4, :cond_1a

    iput-boolean v5, v0, Lo1/E;->e:Z

    iget-object v4, v0, Lo1/E;->j:LI0/s;

    invoke-interface {v4}, LI0/s;->endTracks()V

    :cond_1a
    iget-object v4, v2, Lk0/u;->a:[B

    invoke-interface {v1, v4, v6, v8}, LI0/r;->o([BII)V

    invoke-virtual {v2, v6}, Lk0/u;->G(I)V

    invoke-virtual {v2}, Lk0/u;->A()I

    move-result v4

    add-int/2addr v4, v9

    if-nez v12, :cond_1b

    invoke-interface {v1, v4}, LI0/r;->n(I)V

    return v6

    :cond_1b
    invoke-virtual {v2, v4}, Lk0/u;->D(I)V

    iget-object v7, v2, Lk0/u;->a:[B

    invoke-interface {v1, v7, v6, v4}, LI0/r;->readFully([BII)V

    invoke-virtual {v2, v9}, Lk0/u;->G(I)V

    iget-object v1, v12, Lo1/D;->a:Lo1/j;

    iget-object v4, v12, Lo1/D;->c:LI0/N;

    iget-object v7, v4, LI0/N;->d:[B

    const/4 v8, 0x3

    invoke-virtual {v2, v7, v6, v8}, Lk0/u;->e([BII)V

    invoke-virtual {v4, v6}, LI0/N;->q(I)V

    invoke-virtual {v4, v10}, LI0/N;->t(I)V

    invoke-virtual {v4}, LI0/N;->h()Z

    move-result v7

    iput-boolean v7, v12, Lo1/D;->d:Z

    invoke-virtual {v4}, LI0/N;->h()Z

    move-result v7

    iput-boolean v7, v12, Lo1/D;->e:Z

    invoke-virtual {v4, v9}, LI0/N;->t(I)V

    invoke-virtual {v4, v10}, LI0/N;->i(I)I

    move-result v7

    iget-object v8, v4, LI0/N;->d:[B

    invoke-virtual {v2, v8, v6, v7}, Lk0/u;->e([BII)V

    invoke-virtual {v4, v6}, LI0/N;->q(I)V

    iget-object v7, v12, Lo1/D;->b:Lk0/z;

    const-wide/16 v8, 0x0

    iput-wide v8, v12, Lo1/D;->g:J

    iget-boolean v8, v12, Lo1/D;->d:Z

    if-eqz v8, :cond_1d

    invoke-virtual {v4, v3}, LI0/N;->t(I)V

    const/4 v8, 0x3

    invoke-virtual {v4, v8}, LI0/N;->i(I)I

    move-result v9

    int-to-long v8, v9

    const/16 v10, 0x1e

    shl-long/2addr v8, v10

    invoke-virtual {v4, v5}, LI0/N;->t(I)V

    const/16 v11, 0xf

    invoke-virtual {v4, v11}, LI0/N;->i(I)I

    move-result v13

    shl-int/2addr v13, v11

    int-to-long v13, v13

    or-long/2addr v8, v13

    invoke-virtual {v4, v5}, LI0/N;->t(I)V

    invoke-virtual {v4, v11}, LI0/N;->i(I)I

    move-result v13

    int-to-long v13, v13

    or-long/2addr v8, v13

    invoke-virtual {v4, v5}, LI0/N;->t(I)V

    iget-boolean v13, v12, Lo1/D;->f:Z

    if-nez v13, :cond_1c

    iget-boolean v13, v12, Lo1/D;->e:Z

    if-eqz v13, :cond_1c

    invoke-virtual {v4, v3}, LI0/N;->t(I)V

    const/4 v13, 0x3

    invoke-virtual {v4, v13}, LI0/N;->i(I)I

    move-result v13

    int-to-long v13, v13

    shl-long/2addr v13, v10

    invoke-virtual {v4, v5}, LI0/N;->t(I)V

    invoke-virtual {v4, v11}, LI0/N;->i(I)I

    move-result v10

    shl-int/2addr v10, v11

    move-object v15, v7

    int-to-long v6, v10

    or-long/2addr v6, v13

    invoke-virtual {v4, v5}, LI0/N;->t(I)V

    invoke-virtual {v4, v11}, LI0/N;->i(I)I

    move-result v10

    int-to-long v10, v10

    or-long/2addr v6, v10

    invoke-virtual {v4, v5}, LI0/N;->t(I)V

    invoke-virtual {v15, v6, v7}, Lk0/z;->b(J)J

    iput-boolean v5, v12, Lo1/D;->f:Z

    goto :goto_9

    :cond_1c
    move-object v15, v7

    :goto_9
    invoke-virtual {v15, v8, v9}, Lk0/z;->b(J)J

    move-result-wide v4

    iput-wide v4, v12, Lo1/D;->g:J

    :cond_1d
    iget-wide v4, v12, Lo1/D;->g:J

    invoke-interface {v1, v3, v4, v5}, Lo1/j;->e(IJ)V

    invoke-interface {v1, v2}, Lo1/j;->c(Lk0/u;)V

    const/4 v6, 0x0

    invoke-interface {v1, v6}, Lo1/j;->d(Z)V

    iget-object v1, v2, Lk0/u;->a:[B

    array-length v1, v1

    invoke-virtual {v2, v1}, Lk0/u;->F(I)V

    return v6
.end method

.method public final f(JJ)V
    .locals 7

    iget-object p1, p0, Lo1/E;->b:Landroid/util/SparseArray;

    iget-object p2, p0, Lo1/E;->a:Lk0/z;

    monitor-enter p2

    :try_start_0
    iget-wide v0, p2, Lk0/z;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p2}, Lk0/z;->d()J

    move-result-wide v5

    cmp-long v0, v5, v2

    if-eqz v0, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v0, v5, v2

    if-eqz v0, :cond_1

    cmp-long v0, v5, p3

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    move v0, v1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p2, p3, p4}, Lk0/z;->f(J)V

    :cond_3
    iget-object p2, p0, Lo1/E;->i:LN0/b;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p3, p4}, LN0/b;->d(J)V

    :cond_4
    move p2, v4

    :goto_2
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p2, p3, :cond_5

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo1/D;

    iput-boolean v4, p3, Lo1/D;->f:Z

    iget-object p3, p3, Lo1/D;->a:Lo1/j;

    invoke-interface {p3}, Lo1/j;->b()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final k(LI0/s;)V
    .locals 0

    iput-object p1, p0, Lo1/E;->j:LI0/s;

    return-void
.end method

.method public final release()V
    .locals 0

    return-void
.end method
