.class public final LK0/b;
.super Ljava/lang/Object;

# interfaces
.implements LI0/q;


# instance fields
.field public final a:Lk0/u;

.field public final b:LE2/d;

.field public final c:Z

.field public final d:Lx2/f;

.field public e:I

.field public f:LI0/s;

.field public g:LK0/c;

.field public h:J

.field public i:[LK0/e;

.field public j:J

.field public k:LK0/e;

.field public l:I

.field public m:J

.field public n:J

.field public o:I

.field public p:Z


# direct methods
.method public constructor <init>(ILx2/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LK0/b;->d:Lx2/f;

    const/4 p2, 0x1

    and-int/2addr p1, p2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    iput-boolean p2, p0, LK0/b;->c:Z

    new-instance p1, Lk0/u;

    const/16 p2, 0xc

    invoke-direct {p1, p2}, Lk0/u;-><init>(I)V

    iput-object p1, p0, LK0/b;->a:Lk0/u;

    new-instance p1, LE2/d;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK0/b;->b:LE2/d;

    new-instance p1, Lx2/f;

    const/4 p2, 0x6

    invoke-direct {p1, p2}, Lx2/f;-><init>(I)V

    iput-object p1, p0, LK0/b;->f:LI0/s;

    new-array p1, v0, [LK0/e;

    iput-object p1, p0, LK0/b;->i:[LK0/e;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, LK0/b;->m:J

    iput-wide p1, p0, LK0/b;->n:J

    const/4 p1, -0x1

    iput p1, p0, LK0/b;->l:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, LK0/b;->h:J

    return-void
.end method


# virtual methods
.method public final b(LI0/r;)Z
    .locals 4

    iget-object v0, p0, LK0/b;->a:Lk0/u;

    iget-object v1, v0, Lk0/u;->a:[B

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-interface {p1, v1, v3, v2}, LI0/r;->o([BII)V

    invoke-virtual {v0, v3}, Lk0/u;->G(I)V

    invoke-virtual {v0}, Lk0/u;->i()I

    move-result p1

    const v1, 0x46464952

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Lk0/u;->H(I)V

    invoke-virtual {v0}, Lk0/u;->i()I

    move-result p1

    const v0, 0x20495641

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v3
.end method

.method public final e(LI0/r;LI0/D;)I
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v0, LK0/b;->j:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, LI0/r;->getPosition()J

    move-result-wide v7

    iget-wide v9, v0, LK0/b;->j:J

    cmp-long v2, v9, v7

    if-ltz v2, :cond_0

    const-wide/32 v11, 0x40000

    add-long/2addr v11, v7

    cmp-long v2, v9, v11

    if-lez v2, :cond_1

    :cond_0
    move-object/from16 v2, p2

    goto :goto_0

    :cond_1
    sub-long/2addr v9, v7

    long-to-int v2, v9

    invoke-interface {v1, v2}, LI0/r;->n(I)V

    goto :goto_1

    :goto_0
    iput-wide v9, v2, LI0/D;->a:J

    move v2, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v6

    :goto_2
    iput-wide v4, v0, LK0/b;->j:J

    if-eqz v2, :cond_3

    return v3

    :cond_3
    iget v2, v0, LK0/b;->e:I

    const/16 v11, 0x10

    const v12, 0x69766f6d

    const/4 v13, 0x2

    const v14, 0x5453494c

    const/16 v15, 0x8

    const-wide/16 v16, 0x8

    move-wide/from16 v18, v4

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/16 p2, 0x3

    iget-object v10, v0, LK0/b;->b:LE2/d;

    iget-object v7, v0, LK0/b;->a:Lk0/u;

    packed-switch v2, :pswitch_data_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :pswitch_0
    invoke-interface {v1}, LI0/r;->getPosition()J

    move-result-wide v8

    iget-wide v10, v0, LK0/b;->n:J

    cmp-long v2, v8, v10

    if-ltz v2, :cond_4

    const/4 v1, -0x1

    return v1

    :cond_4
    iget-object v2, v0, LK0/b;->k:LK0/e;

    if-eqz v2, :cond_a

    iget v5, v2, LK0/e;->g:I

    iget-object v7, v2, LK0/e;->a:LI0/L;

    invoke-interface {v7, v1, v5, v6}, LI0/L;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result v1

    sub-int/2addr v5, v1

    iput v5, v2, LK0/e;->g:I

    if-nez v5, :cond_5

    move v1, v3

    goto :goto_3

    :cond_5
    move v1, v6

    :goto_3
    if-eqz v1, :cond_8

    iget v5, v2, LK0/e;->f:I

    if-lez v5, :cond_7

    iget-object v7, v2, LK0/e;->a:LI0/L;

    iget v5, v2, LK0/e;->h:I

    iget-wide v8, v2, LK0/e;->d:J

    int-to-long v10, v5

    mul-long/2addr v8, v10

    iget v10, v2, LK0/e;->e:I

    int-to-long v10, v10

    div-long/2addr v8, v10

    iget-object v10, v2, LK0/e;->m:[I

    invoke-static {v10, v5}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v5

    if-ltz v5, :cond_6

    move v10, v3

    goto :goto_4

    :cond_6
    move v10, v6

    :goto_4
    iget v11, v2, LK0/e;->f:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-interface/range {v7 .. v13}, LI0/L;->sampleMetadata(JIIILI0/K;)V

    :cond_7
    iget v5, v2, LK0/e;->h:I

    add-int/2addr v5, v3

    iput v5, v2, LK0/e;->h:I

    :cond_8
    if-eqz v1, :cond_9

    iput-object v4, v0, LK0/b;->k:LK0/e;

    :cond_9
    return v6

    :cond_a
    invoke-interface {v1}, LI0/r;->getPosition()J

    move-result-wide v8

    const-wide/16 v10, 0x1

    and-long/2addr v8, v10

    cmp-long v2, v8, v10

    if-nez v2, :cond_b

    invoke-interface {v1, v3}, LI0/r;->n(I)V

    :cond_b
    iget-object v2, v7, Lk0/u;->a:[B

    invoke-interface {v1, v2, v6, v5}, LI0/r;->o([BII)V

    invoke-virtual {v7, v6}, Lk0/u;->G(I)V

    invoke-virtual {v7}, Lk0/u;->i()I

    move-result v2

    if-ne v2, v14, :cond_d

    invoke-virtual {v7, v15}, Lk0/u;->G(I)V

    invoke-virtual {v7}, Lk0/u;->i()I

    move-result v2

    if-ne v2, v12, :cond_c

    move v15, v5

    :cond_c
    invoke-interface {v1, v15}, LI0/r;->n(I)V

    invoke-interface {v1}, LI0/r;->j()V

    return v6

    :cond_d
    invoke-virtual {v7}, Lk0/u;->i()I

    move-result v3

    const v5, 0x4b4e554a    # 1.352225E7f

    if-ne v2, v5, :cond_e

    invoke-interface {v1}, LI0/r;->getPosition()J

    move-result-wide v1

    int-to-long v3, v3

    add-long/2addr v1, v3

    add-long v1, v1, v16

    iput-wide v1, v0, LK0/b;->j:J

    return v6

    :cond_e
    invoke-interface {v1, v15}, LI0/r;->n(I)V

    invoke-interface {v1}, LI0/r;->j()V

    iget-object v5, v0, LK0/b;->i:[LK0/e;

    array-length v7, v5

    move v8, v6

    :goto_5
    if-ge v8, v7, :cond_11

    aget-object v9, v5, v8

    iget v10, v9, LK0/e;->b:I

    if-eq v10, v2, :cond_10

    iget v10, v9, LK0/e;->c:I

    if-ne v10, v2, :cond_f

    goto :goto_6

    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_10
    :goto_6
    move-object v4, v9

    :cond_11
    if-nez v4, :cond_12

    invoke-interface {v1}, LI0/r;->getPosition()J

    move-result-wide v1

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, LK0/b;->j:J

    return v6

    :cond_12
    iput v3, v4, LK0/e;->f:I

    iput v3, v4, LK0/e;->g:I

    iput-object v4, v0, LK0/b;->k:LK0/e;

    return v6

    :pswitch_1
    new-instance v2, Lk0/u;

    iget v5, v0, LK0/b;->o:I

    invoke-direct {v2, v5}, Lk0/u;-><init>(I)V

    iget-object v5, v2, Lk0/u;->a:[B

    iget v7, v0, LK0/b;->o:I

    invoke-interface {v1, v5, v6, v7}, LI0/r;->readFully([BII)V

    invoke-virtual {v2}, Lk0/u;->a()I

    move-result v1

    if-ge v1, v11, :cond_13

    const-wide/16 v7, 0x0

    goto :goto_8

    :cond_13
    iget v1, v2, Lk0/u;->b:I

    invoke-virtual {v2, v15}, Lk0/u;->H(I)V

    invoke-virtual {v2}, Lk0/u;->i()I

    move-result v5

    int-to-long v14, v5

    iget-wide v7, v0, LK0/b;->m:J

    cmp-long v5, v14, v7

    if-lez v5, :cond_14

    const-wide/16 v7, 0x0

    goto :goto_7

    :cond_14
    add-long v7, v7, v16

    :goto_7
    invoke-virtual {v2, v1}, Lk0/u;->G(I)V

    :goto_8
    invoke-virtual {v2}, Lk0/u;->a()I

    move-result v1

    if-lt v1, v11, :cond_1d

    invoke-virtual {v2}, Lk0/u;->i()I

    move-result v1

    invoke-virtual {v2}, Lk0/u;->i()I

    move-result v5

    invoke-virtual {v2}, Lk0/u;->i()I

    move-result v10

    int-to-long v14, v10

    add-long/2addr v14, v7

    invoke-virtual {v2}, Lk0/u;->i()I

    iget-object v10, v0, LK0/b;->i:[LK0/e;

    array-length v12, v10

    move v4, v6

    :goto_9
    if-ge v4, v12, :cond_16

    move/from16 v21, v6

    aget-object v6, v10, v4

    iget v9, v6, LK0/e;->b:I

    if-eq v9, v1, :cond_17

    iget v9, v6, LK0/e;->c:I

    if-ne v9, v1, :cond_15

    goto :goto_a

    :cond_15
    add-int/lit8 v4, v4, 0x1

    move/from16 v6, v21

    goto :goto_9

    :cond_16
    move/from16 v21, v6

    const/4 v6, 0x0

    :cond_17
    :goto_a
    if-nez v6, :cond_18

    :goto_b
    move/from16 v6, v21

    const/4 v4, 0x0

    goto :goto_8

    :cond_18
    and-int/lit8 v1, v5, 0x10

    if-ne v1, v11, :cond_19

    move v1, v3

    goto :goto_c

    :cond_19
    move/from16 v1, v21

    :goto_c
    iget-wide v4, v6, LK0/e;->k:J

    cmp-long v4, v4, v18

    if-nez v4, :cond_1a

    iput-wide v14, v6, LK0/e;->k:J

    :cond_1a
    if-eqz v1, :cond_1c

    iget v1, v6, LK0/e;->j:I

    iget-object v4, v6, LK0/e;->m:[I

    array-length v4, v4

    if-ne v1, v4, :cond_1b

    iget-object v1, v6, LK0/e;->l:[J

    array-length v4, v1

    mul-int/lit8 v4, v4, 0x3

    div-int/2addr v4, v13

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, v6, LK0/e;->l:[J

    iget-object v1, v6, LK0/e;->m:[I

    array-length v4, v1

    mul-int/lit8 v4, v4, 0x3

    div-int/2addr v4, v13

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, v6, LK0/e;->m:[I

    :cond_1b
    iget-object v1, v6, LK0/e;->l:[J

    iget v4, v6, LK0/e;->j:I

    aput-wide v14, v1, v4

    iget-object v1, v6, LK0/e;->m:[I

    iget v5, v6, LK0/e;->i:I

    aput v5, v1, v4

    add-int/2addr v4, v3

    iput v4, v6, LK0/e;->j:I

    :cond_1c
    iget v1, v6, LK0/e;->i:I

    add-int/2addr v1, v3

    iput v1, v6, LK0/e;->i:I

    goto :goto_b

    :cond_1d
    move/from16 v21, v6

    iget-object v1, v0, LK0/b;->i:[LK0/e;

    array-length v2, v1

    move/from16 v4, v21

    :goto_d
    if-ge v4, v2, :cond_1e

    aget-object v5, v1, v4

    iget-object v6, v5, LK0/e;->l:[J

    iget v7, v5, LK0/e;->j:I

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v6

    iput-object v6, v5, LK0/e;->l:[J

    iget-object v6, v5, LK0/e;->m:[I

    iget v7, v5, LK0/e;->j:I

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    iput-object v6, v5, LK0/e;->m:[I

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_1e
    iput-boolean v3, v0, LK0/b;->p:Z

    iget-object v1, v0, LK0/b;->f:LI0/s;

    new-instance v2, LI0/v;

    iget-wide v3, v0, LK0/b;->h:J

    invoke-direct {v2, v13, v3, v4, v0}, LI0/v;-><init>(IJLjava/lang/Object;)V

    invoke-interface {v1, v2}, LI0/s;->seekMap(LI0/F;)V

    const/4 v1, 0x6

    iput v1, v0, LK0/b;->e:I

    iget-wide v1, v0, LK0/b;->m:J

    iput-wide v1, v0, LK0/b;->j:J

    return v21

    :pswitch_2
    move/from16 v21, v6

    iget-object v2, v7, Lk0/u;->a:[B

    move/from16 v4, v21

    invoke-interface {v1, v2, v4, v15}, LI0/r;->readFully([BII)V

    invoke-virtual {v7, v4}, Lk0/u;->G(I)V

    invoke-virtual {v7}, Lk0/u;->i()I

    move-result v2

    invoke-virtual {v7}, Lk0/u;->i()I

    move-result v3

    const v5, 0x31786469

    if-ne v2, v5, :cond_1f

    const/4 v1, 0x5

    iput v1, v0, LK0/b;->e:I

    iput v3, v0, LK0/b;->o:I

    return v4

    :cond_1f
    invoke-interface {v1}, LI0/r;->getPosition()J

    move-result-wide v1

    int-to-long v5, v3

    add-long/2addr v1, v5

    iput-wide v1, v0, LK0/b;->j:J

    return v4

    :pswitch_3
    move v4, v6

    iget-wide v8, v0, LK0/b;->m:J

    cmp-long v6, v8, v18

    if-eqz v6, :cond_20

    invoke-interface {v1}, LI0/r;->getPosition()J

    move-result-wide v8

    iget-wide v2, v0, LK0/b;->m:J

    cmp-long v8, v8, v2

    if-eqz v8, :cond_20

    iput-wide v2, v0, LK0/b;->j:J

    return v4

    :cond_20
    iget-object v2, v7, Lk0/u;->a:[B

    invoke-interface {v1, v2, v4, v5}, LI0/r;->o([BII)V

    invoke-interface {v1}, LI0/r;->j()V

    invoke-virtual {v7, v4}, Lk0/u;->G(I)V

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Lk0/u;->i()I

    move-result v2

    iput v2, v10, LE2/d;->a:I

    invoke-virtual {v7}, Lk0/u;->i()I

    move-result v2

    iput v2, v10, LE2/d;->b:I

    iput v4, v10, LE2/d;->c:I

    invoke-virtual {v7}, Lk0/u;->i()I

    move-result v2

    iget v3, v10, LE2/d;->a:I

    const v7, 0x46464952

    if-ne v3, v7, :cond_21

    invoke-interface {v1, v5}, LI0/r;->n(I)V

    return v4

    :cond_21
    if-ne v3, v14, :cond_22

    if-eq v2, v12, :cond_23

    :cond_22
    const/4 v4, 0x0

    goto :goto_e

    :cond_23
    invoke-interface {v1}, LI0/r;->getPosition()J

    move-result-wide v2

    iput-wide v2, v0, LK0/b;->m:J

    iget v4, v10, LE2/d;->b:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    add-long v2, v2, v16

    iput-wide v2, v0, LK0/b;->n:J

    iget-boolean v2, v0, LK0/b;->p:Z

    if-nez v2, :cond_25

    iget-object v2, v0, LK0/b;->g:LK0/c;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v2, LK0/c;->b:I

    and-int/2addr v2, v11

    if-ne v2, v11, :cond_24

    const/4 v2, 0x4

    iput v2, v0, LK0/b;->e:I

    iget-wide v1, v0, LK0/b;->n:J

    iput-wide v1, v0, LK0/b;->j:J

    const/16 v21, 0x0

    return v21

    :cond_24
    iget-object v2, v0, LK0/b;->f:LI0/s;

    new-instance v3, LI0/v;

    iget-wide v4, v0, LK0/b;->h:J

    invoke-direct {v3, v4, v5}, LI0/v;-><init>(J)V

    invoke-interface {v2, v3}, LI0/s;->seekMap(LI0/F;)V

    const/4 v6, 0x1

    iput-boolean v6, v0, LK0/b;->p:Z

    :cond_25
    invoke-interface {v1}, LI0/r;->getPosition()J

    move-result-wide v1

    const-wide/16 v3, 0xc

    add-long/2addr v1, v3

    iput-wide v1, v0, LK0/b;->j:J

    const/4 v1, 0x6

    iput v1, v0, LK0/b;->e:I

    const/4 v4, 0x0

    return v4

    :goto_e
    invoke-interface {v1}, LI0/r;->getPosition()J

    move-result-wide v1

    iget v3, v10, LE2/d;->b:I

    int-to-long v5, v3

    add-long/2addr v1, v5

    add-long v1, v1, v16

    iput-wide v1, v0, LK0/b;->j:J

    return v4

    :pswitch_4
    move v4, v6

    iget v3, v0, LK0/b;->l:I

    const/4 v2, 0x4

    sub-int/2addr v3, v2

    new-instance v2, Lk0/u;

    invoke-direct {v2, v3}, Lk0/u;-><init>(I)V

    iget-object v5, v2, Lk0/u;->a:[B

    invoke-interface {v1, v5, v4, v3}, LI0/r;->readFully([BII)V

    const v1, 0x6c726468

    invoke-static {v2, v1}, LK0/f;->c(Lk0/u;I)LK0/f;

    move-result-object v2

    iget v3, v2, LK0/f;->b:I

    if-ne v3, v1, :cond_30

    const-class v1, LK0/c;

    invoke-virtual {v2, v1}, LK0/f;->b(Ljava/lang/Class;)LK0/a;

    move-result-object v1

    check-cast v1, LK0/c;

    if-eqz v1, :cond_2f

    iput-object v1, v0, LK0/b;->g:LK0/c;

    iget v3, v1, LK0/c;->c:I

    int-to-long v3, v3

    iget v1, v1, LK0/c;->a:I

    int-to-long v7, v1

    mul-long/2addr v3, v7

    iput-wide v3, v0, LK0/b;->h:J

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v2, LK0/f;->a:Lp3/H;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lp3/H;->l(I)Lp3/F;

    move-result-object v2

    const/4 v15, 0x0

    :cond_26
    :goto_f
    invoke-virtual {v2}, Lp3/F;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-virtual {v2}, Lp3/F;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LK0/a;

    invoke-interface {v3}, LK0/a;->a()I

    move-result v4

    const v5, 0x6c727473

    if-ne v4, v5, :cond_26

    check-cast v3, LK0/f;

    add-int/lit8 v4, v15, 0x1

    const-class v5, LK0/d;

    invoke-virtual {v3, v5}, LK0/f;->b(Ljava/lang/Class;)LK0/a;

    move-result-object v5

    check-cast v5, LK0/d;

    const-class v7, LK0/g;

    invoke-virtual {v3, v7}, LK0/f;->b(Ljava/lang/Class;)LK0/a;

    move-result-object v7

    check-cast v7, LK0/g;

    const-string v8, "AviExtractor"

    if-nez v5, :cond_28

    const-string v3, "Missing Stream Header"

    invoke-static {v8, v3}, Lk0/c;->z(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    :goto_10
    const/4 v14, 0x0

    goto/16 :goto_11

    :cond_28
    if-nez v7, :cond_29

    const-string v3, "Missing Stream Format"

    invoke-static {v8, v3}, Lk0/c;->z(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :cond_29
    iget v8, v5, LK0/d;->d:I

    int-to-long v8, v8

    iget v10, v5, LK0/d;->b:I

    int-to-long v10, v10

    const-wide/32 v16, 0xf4240

    mul-long v24, v10, v16

    iget v10, v5, LK0/d;->c:I

    int-to-long v10, v10

    sget v12, Lk0/C;->a:I

    sget-object v28, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v22, v8

    move-wide/from16 v26, v10

    invoke-static/range {v22 .. v28}, Lk0/C;->Y(JJJLjava/math/RoundingMode;)J

    move-result-wide v17

    iget-object v7, v7, LK0/g;->a:Landroidx/media3/common/Format;

    invoke-virtual {v7}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v8

    invoke-virtual {v8, v15}, Landroidx/media3/common/Format$Builder;->setId(I)Landroidx/media3/common/Format$Builder;

    iget v9, v5, LK0/d;->e:I

    if-eqz v9, :cond_2a

    invoke-virtual {v8, v9}, Landroidx/media3/common/Format$Builder;->setMaxInputSize(I)Landroidx/media3/common/Format$Builder;

    :cond_2a
    const-class v9, LK0/h;

    invoke-virtual {v3, v9}, LK0/f;->b(Ljava/lang/Class;)LK0/a;

    move-result-object v3

    check-cast v3, LK0/h;

    if-eqz v3, :cond_2b

    iget-object v3, v3, LK0/h;->a:Ljava/lang/String;

    invoke-virtual {v8, v3}, Landroidx/media3/common/Format$Builder;->setLabel(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    :cond_2b
    iget-object v3, v7, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v3}, Landroidx/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v3

    const/4 v6, 0x1

    if-eq v3, v6, :cond_2c

    if-ne v3, v13, :cond_27

    :cond_2c
    iget-object v7, v0, LK0/b;->f:LI0/s;

    invoke-interface {v7, v15, v3}, LI0/s;->track(II)LI0/L;

    move-result-object v7

    invoke-virtual {v8}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v8

    invoke-interface {v7, v8}, LI0/L;->format(Landroidx/media3/common/Format;)V

    new-instance v14, LK0/e;

    iget v5, v5, LK0/d;->d:I

    move/from16 v16, v3

    move/from16 v19, v5

    move-object/from16 v20, v7

    invoke-direct/range {v14 .. v20}, LK0/e;-><init>(IIJILI0/L;)V

    move-wide/from16 v7, v17

    iget-wide v9, v0, LK0/b;->h:J

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, v0, LK0/b;->h:J

    :goto_11
    if-eqz v14, :cond_2d

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2d
    move v15, v4

    goto/16 :goto_f

    :cond_2e
    const/4 v4, 0x0

    new-array v2, v4, [LK0/e;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [LK0/e;

    iput-object v1, v0, LK0/b;->i:[LK0/e;

    iget-object v1, v0, LK0/b;->f:LI0/s;

    invoke-interface {v1}, LI0/s;->endTracks()V

    move/from16 v1, p2

    iput v1, v0, LK0/b;->e:I

    return v4

    :cond_2f
    const-string v1, "AviHeader not found"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_30
    const/4 v2, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected header list type "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :pswitch_5
    iget-object v2, v7, Lk0/u;->a:[B

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, LI0/r;->readFully([BII)V

    invoke-virtual {v7, v4}, Lk0/u;->G(I)V

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Lk0/u;->i()I

    move-result v1

    iput v1, v10, LE2/d;->a:I

    invoke-virtual {v7}, Lk0/u;->i()I

    move-result v1

    iput v1, v10, LE2/d;->b:I

    iput v4, v10, LE2/d;->c:I

    iget v1, v10, LE2/d;->a:I

    if-ne v1, v14, :cond_32

    invoke-virtual {v7}, Lk0/u;->i()I

    move-result v1

    iput v1, v10, LE2/d;->c:I

    const v2, 0x6c726468

    if-ne v1, v2, :cond_31

    iget v1, v10, LE2/d;->b:I

    iput v1, v0, LK0/b;->l:I

    iput v13, v0, LK0/b;->e:I

    return v4

    :cond_31
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hdrl expected, found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v10, LE2/d;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_32
    const/4 v2, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "LIST expected, found: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v10, LE2/d;->a:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :pswitch_6
    move-object v2, v4

    invoke-virtual/range {p0 .. p1}, LK0/b;->b(LI0/r;)Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v1, v5}, LI0/r;->n(I)V

    const/4 v6, 0x1

    iput v6, v0, LK0/b;->e:I

    const/16 v21, 0x0

    return v21

    :cond_33
    const-string v1, "AVI Header List not found"

    invoke-static {v1, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final f(JJ)V
    .locals 5

    const-wide/16 p3, -0x1

    iput-wide p3, p0, LK0/b;->j:J

    const/4 p3, 0x0

    iput-object p3, p0, LK0/b;->k:LK0/e;

    iget-object p3, p0, LK0/b;->i:[LK0/e;

    array-length p4, p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p4, :cond_1

    aget-object v2, p3, v1

    iget v3, v2, LK0/e;->j:I

    if-nez v3, :cond_0

    iput v0, v2, LK0/e;->h:I

    goto :goto_1

    :cond_0
    iget-object v3, v2, LK0/e;->l:[J

    const/4 v4, 0x1

    invoke-static {v3, p1, p2, v4}, Lk0/C;->e([JJZ)I

    move-result v3

    iget-object v4, v2, LK0/e;->m:[I

    aget v3, v4, v3

    iput v3, v2, LK0/e;->h:I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-nez p1, :cond_3

    iget-object p1, p0, LK0/b;->i:[LK0/e;

    array-length p1, p1

    if-nez p1, :cond_2

    iput v0, p0, LK0/b;->e:I

    return-void

    :cond_2
    const/4 p1, 0x3

    iput p1, p0, LK0/b;->e:I

    return-void

    :cond_3
    const/4 p1, 0x6

    iput p1, p0, LK0/b;->e:I

    return-void
.end method

.method public final k(LI0/s;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, LK0/b;->e:I

    iget-boolean v0, p0, LK0/b;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, LJ/l;

    iget-object v1, p0, LK0/b;->d:Lx2/f;

    invoke-direct {v0, p1, v1}, LJ/l;-><init>(LI0/s;Lf1/k;)V

    move-object p1, v0

    :cond_0
    iput-object p1, p0, LK0/b;->f:LI0/s;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, LK0/b;->j:J

    return-void
.end method

.method public final release()V
    .locals 0

    return-void
.end method
