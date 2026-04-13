.class public final LN0/c;
.super Ljava/lang/Object;

# interfaces
.implements LI0/q;


# instance fields
.field public final a:[B

.field public final b:Lk0/u;

.field public final c:Z

.field public final d:LI0/u;

.field public e:LI0/s;

.field public f:LI0/L;

.field public g:I

.field public h:Landroidx/media3/common/Metadata;

.field public i:LI0/w;

.field public j:I

.field public k:I

.field public l:LN0/b;

.field public m:I

.field public n:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2a

    new-array v0, v0, [B

    iput-object v0, p0, LN0/c;->a:[B

    new-instance v0, Lk0/u;

    const v1, 0x8000

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lk0/u;-><init>([BI)V

    iput-object v0, p0, LN0/c;->b:Lk0/u;

    iput-boolean v2, p0, LN0/c;->c:Z

    new-instance v0, LI0/u;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LN0/c;->d:LI0/u;

    iput v2, p0, LN0/c;->g:I

    return-void
.end method


# virtual methods
.method public final b(LI0/r;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-static {p1, v0}, LI0/b;->j(LI0/r;Z)Landroidx/media3/common/Metadata;

    new-instance v1, Lk0/u;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lk0/u;-><init>(I)V

    iget-object v3, v1, Lk0/u;->a:[B

    invoke-interface {p1, v3, v0, v2}, LI0/r;->o([BII)V

    invoke-virtual {v1}, Lk0/u;->w()J

    move-result-wide v1

    const-wide/32 v3, 0x664c6143

    cmp-long p1, v1, v3

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public final e(LI0/r;LI0/D;)I
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, LN0/c;->g:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_28

    iget-object v5, v0, LN0/c;->a:[B

    const/4 v6, 0x2

    if-eq v2, v3, :cond_27

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x3

    if-eq v2, v6, :cond_25

    const/4 v10, 0x7

    const/4 v11, 0x6

    if-eq v2, v9, :cond_1c

    const-wide/16 v12, 0x0

    const-wide/16 v14, -0x1

    const/4 v5, 0x5

    if-eq v2, v8, :cond_16

    if-ne v2, v5, :cond_15

    iget-object v2, v0, LN0/c;->f:LI0/L;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, LN0/c;->i:LI0/w;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, LN0/c;->l:LN0/b;

    if-eqz v2, :cond_0

    iget-object v5, v2, LN0/b;->c:LI0/h;

    if-eqz v5, :cond_0

    move-object/from16 v5, p2

    invoke-virtual {v2, v1, v5}, LN0/b;->b(LI0/r;LI0/D;)I

    move-result v1

    return v1

    :cond_0
    iget-wide v8, v0, LN0/c;->n:J

    cmp-long v2, v8, v14

    const/4 v5, -0x1

    if-nez v2, :cond_7

    iget-object v2, v0, LN0/c;->i:LI0/w;

    invoke-interface {v1}, LI0/r;->j()V

    invoke-interface {v1, v3}, LI0/r;->f(I)V

    new-array v8, v3, [B

    invoke-interface {v1, v8, v4, v3}, LI0/r;->o([BII)V

    aget-byte v8, v8, v4

    and-int/2addr v8, v3

    if-ne v8, v3, :cond_1

    move v8, v3

    goto :goto_0

    :cond_1
    move v8, v4

    :goto_0
    invoke-interface {v1, v6}, LI0/r;->f(I)V

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    move v10, v11

    :goto_1
    new-instance v6, Lk0/u;

    invoke-direct {v6, v10}, Lk0/u;-><init>(I)V

    iget-object v9, v6, Lk0/u;->a:[B

    move v11, v4

    :goto_2
    if-ge v11, v10, :cond_4

    sub-int v14, v10, v11

    invoke-interface {v1, v9, v11, v14}, LI0/r;->i([BII)I

    move-result v14

    if-ne v14, v5, :cond_3

    goto :goto_3

    :cond_3
    add-int/2addr v11, v14

    goto :goto_2

    :cond_4
    :goto_3
    invoke-virtual {v6, v11}, Lk0/u;->F(I)V

    invoke-interface {v1}, LI0/r;->j()V

    :try_start_0
    invoke-virtual {v6}, Lk0/u;->B()J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_5

    :goto_4
    move-wide v12, v5

    goto :goto_5

    :cond_5
    iget v1, v2, LI0/w;->b:I

    int-to-long v1, v1

    mul-long/2addr v5, v1

    goto :goto_4

    :catch_0
    move v3, v4

    :goto_5
    if-eqz v3, :cond_6

    iput-wide v12, v0, LN0/c;->n:J

    goto/16 :goto_d

    :cond_6
    invoke-static {v7, v7}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_7
    iget-object v2, v0, LN0/c;->b:Lk0/u;

    iget v6, v2, Lk0/u;->c:I

    const-wide/32 v7, 0xf4240

    const v9, 0x8000

    if-ge v6, v9, :cond_a

    iget-object v10, v2, Lk0/u;->a:[B

    sub-int/2addr v9, v6

    invoke-interface {v1, v10, v6, v9}, Landroidx/media3/common/DataReader;->read([BII)I

    move-result v1

    if-ne v1, v5, :cond_8

    goto :goto_6

    :cond_8
    move v3, v4

    :goto_6
    if-nez v3, :cond_9

    add-int/2addr v6, v1

    invoke-virtual {v2, v6}, Lk0/u;->F(I)V

    goto :goto_7

    :cond_9
    invoke-virtual {v2}, Lk0/u;->a()I

    move-result v1

    if-nez v1, :cond_b

    iget-wide v1, v0, LN0/c;->n:J

    mul-long/2addr v1, v7

    iget-object v3, v0, LN0/c;->i:LI0/w;

    sget v4, Lk0/C;->a:I

    iget v3, v3, LI0/w;->e:I

    int-to-long v3, v3

    div-long v7, v1, v3

    iget-object v6, v0, LN0/c;->f:LI0/L;

    iget v10, v0, LN0/c;->m:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x1

    invoke-interface/range {v6 .. v12}, LI0/L;->sampleMetadata(JIIILI0/K;)V

    return v5

    :cond_a
    move v3, v4

    :cond_b
    :goto_7
    iget v1, v2, Lk0/u;->b:I

    iget v5, v0, LN0/c;->m:I

    iget v6, v0, LN0/c;->j:I

    if-ge v5, v6, :cond_c

    sub-int/2addr v6, v5

    invoke-virtual {v2}, Lk0/u;->a()I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v2, v5}, Lk0/u;->H(I)V

    :cond_c
    iget-object v5, v0, LN0/c;->i:LI0/w;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, v2, Lk0/u;->b:I

    :goto_8
    iget v6, v2, Lk0/u;->c:I

    const/16 v9, 0x10

    sub-int/2addr v6, v9

    iget-object v10, v0, LN0/c;->d:LI0/u;

    if-gt v5, v6, :cond_e

    invoke-virtual {v2, v5}, Lk0/u;->G(I)V

    iget-object v6, v0, LN0/c;->i:LI0/w;

    iget v11, v0, LN0/c;->k:I

    invoke-static {v2, v6, v11, v10}, LI0/b;->b(Lk0/u;LI0/w;ILI0/u;)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {v2, v5}, Lk0/u;->G(I)V

    iget-wide v5, v10, LI0/u;->a:J

    goto :goto_c

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_e
    if-eqz v3, :cond_12

    :goto_9
    iget v3, v2, Lk0/u;->c:I

    iget v6, v0, LN0/c;->j:I

    sub-int v6, v3, v6

    if-gt v5, v6, :cond_11

    invoke-virtual {v2, v5}, Lk0/u;->G(I)V

    :try_start_1
    iget-object v3, v0, LN0/c;->i:LI0/w;

    iget v6, v0, LN0/c;->k:I

    invoke-static {v2, v3, v6, v10}, LI0/b;->b(Lk0/u;LI0/w;ILI0/u;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_a

    :catch_1
    move v3, v4

    :goto_a
    iget v6, v2, Lk0/u;->b:I

    iget v11, v2, Lk0/u;->c:I

    if-le v6, v11, :cond_f

    move v3, v4

    :cond_f
    if-eqz v3, :cond_10

    invoke-virtual {v2, v5}, Lk0/u;->G(I)V

    iget-wide v5, v10, LI0/u;->a:J

    goto :goto_c

    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_11
    invoke-virtual {v2, v3}, Lk0/u;->G(I)V

    goto :goto_b

    :cond_12
    invoke-virtual {v2, v5}, Lk0/u;->G(I)V

    :goto_b
    move-wide v5, v14

    :goto_c
    iget v3, v2, Lk0/u;->b:I

    sub-int/2addr v3, v1

    invoke-virtual {v2, v1}, Lk0/u;->G(I)V

    iget-object v1, v0, LN0/c;->f:LI0/L;

    invoke-interface {v1, v2, v3}, LI0/L;->sampleData(Lk0/u;I)V

    iget v1, v0, LN0/c;->m:I

    add-int/2addr v1, v3

    iput v1, v0, LN0/c;->m:I

    cmp-long v3, v5, v14

    if-eqz v3, :cond_13

    iget-wide v10, v0, LN0/c;->n:J

    mul-long/2addr v10, v7

    iget-object v3, v0, LN0/c;->i:LI0/w;

    sget v7, Lk0/C;->a:I

    iget v3, v3, LI0/w;->e:I

    int-to-long v7, v3

    div-long v17, v10, v7

    iget-object v3, v0, LN0/c;->f:LI0/L;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v19, 0x1

    move/from16 v20, v1

    move-object/from16 v16, v3

    invoke-interface/range {v16 .. v22}, LI0/L;->sampleMetadata(JIIILI0/K;)V

    iput v4, v0, LN0/c;->m:I

    iput-wide v5, v0, LN0/c;->n:J

    :cond_13
    invoke-virtual {v2}, Lk0/u;->a()I

    move-result v1

    if-ge v1, v9, :cond_14

    invoke-virtual {v2}, Lk0/u;->a()I

    move-result v1

    iget-object v3, v2, Lk0/u;->a:[B

    iget v5, v2, Lk0/u;->b:I

    invoke-static {v3, v5, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v2, v4}, Lk0/u;->G(I)V

    invoke-virtual {v2, v1}, Lk0/u;->F(I)V

    :cond_14
    :goto_d
    return v4

    :cond_15
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_16
    invoke-interface {v1}, LI0/r;->j()V

    new-instance v2, Lk0/u;

    invoke-direct {v2, v6}, Lk0/u;-><init>(I)V

    iget-object v3, v2, Lk0/u;->a:[B

    invoke-interface {v1, v3, v4, v6}, LI0/r;->o([BII)V

    invoke-virtual {v2}, Lk0/u;->A()I

    move-result v2

    shr-int/lit8 v3, v2, 0x2

    const/16 v6, 0x3ffe

    if-ne v3, v6, :cond_1b

    invoke-interface {v1}, LI0/r;->j()V

    iput v2, v0, LN0/c;->k:I

    iget-object v2, v0, LN0/c;->e:LI0/s;

    sget v3, Lk0/C;->a:I

    invoke-interface {v1}, LI0/r;->getPosition()J

    move-result-wide v6

    invoke-interface {v1}, LI0/r;->getLength()J

    move-result-wide v25

    iget-object v1, v0, LN0/c;->i:LI0/w;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, LN0/c;->i:LI0/w;

    iget-object v3, v1, LI0/w;->k:LA/j;

    if-eqz v3, :cond_17

    new-instance v3, LI0/v;

    invoke-direct {v3, v4, v6, v7, v1}, LI0/v;-><init>(IJLjava/lang/Object;)V

    move/from16 v30, v4

    goto/16 :goto_11

    :cond_17
    cmp-long v3, v25, v14

    if-eqz v3, :cond_1a

    iget-wide v8, v1, LI0/w;->j:J

    cmp-long v3, v8, v12

    if-lez v3, :cond_1a

    new-instance v16, LN0/b;

    iget v3, v0, LN0/c;->k:I

    iget v8, v1, LI0/w;->c:I

    new-instance v9, LA3/d;

    const/16 v10, 0x8

    invoke-direct {v9, v10, v1}, LA3/d;-><init>(ILjava/lang/Object;)V

    new-instance v10, LN0/a;

    invoke-direct {v10, v1, v3}, LN0/a;-><init>(LI0/w;I)V

    invoke-virtual {v1}, LI0/w;->b()J

    move-result-wide v19

    iget-wide v12, v1, LI0/w;->j:J

    iget v3, v1, LI0/w;->d:I

    if-lez v3, :cond_18

    int-to-long v14, v3

    move/from16 v30, v4

    int-to-long v4, v8

    add-long/2addr v14, v4

    const-wide/16 v3, 0x2

    div-long/2addr v14, v3

    const-wide/16 v3, 0x1

    add-long/2addr v14, v3

    :goto_e
    move-wide/from16 v27, v14

    goto :goto_10

    :cond_18
    move/from16 v30, v4

    iget v3, v1, LI0/w;->a:I

    iget v4, v1, LI0/w;->b:I

    if-ne v3, v4, :cond_19

    if-lez v3, :cond_19

    int-to-long v3, v3

    goto :goto_f

    :cond_19
    const-wide/16 v3, 0x1000

    :goto_f
    iget v5, v1, LI0/w;->g:I

    int-to-long v14, v5

    mul-long/2addr v3, v14

    iget v1, v1, LI0/w;->h:I

    int-to-long v14, v1

    mul-long/2addr v3, v14

    const-wide/16 v14, 0x8

    div-long/2addr v3, v14

    const-wide/16 v14, 0x40

    add-long/2addr v14, v3

    goto :goto_e

    :goto_10
    invoke-static {v11, v8}, Ljava/lang/Math;->max(II)I

    move-result v29

    move-wide/from16 v23, v6

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move-wide/from16 v21, v12

    invoke-direct/range {v16 .. v29}, LN0/b;-><init>(LI0/i;LI0/k;JJJJJI)V

    move-object/from16 v1, v16

    iput-object v1, v0, LN0/c;->l:LN0/b;

    iget-object v3, v1, LN0/b;->a:LI0/g;

    goto :goto_11

    :cond_1a
    move/from16 v30, v4

    new-instance v3, LI0/v;

    invoke-virtual {v1}, LI0/w;->b()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, LI0/v;-><init>(J)V

    :goto_11
    invoke-interface {v2, v3}, LI0/s;->seekMap(LI0/F;)V

    const/4 v1, 0x5

    iput v1, v0, LN0/c;->g:I

    return v30

    :cond_1b
    invoke-interface {v1}, LI0/r;->j()V

    const-string v1, "First frame does not start with sync code."

    invoke-static {v1, v7}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_1c
    move/from16 v30, v4

    iget-object v2, v0, LN0/c;->i:LI0/w;

    move/from16 v3, v30

    :goto_12
    if-nez v3, :cond_24

    invoke-interface {v1}, LI0/r;->j()V

    new-instance v3, LI0/N;

    new-array v4, v8, [B

    invoke-direct {v3, v4, v8}, LI0/N;-><init>([BI)V

    move/from16 v6, v30

    invoke-interface {v1, v4, v6, v8}, LI0/r;->o([BII)V

    invoke-virtual {v3}, LI0/N;->h()Z

    move-result v4

    invoke-virtual {v3, v10}, LI0/N;->i(I)I

    move-result v7

    const/16 v12, 0x18

    invoke-virtual {v3, v12}, LI0/N;->i(I)I

    move-result v3

    add-int/2addr v3, v8

    if-nez v7, :cond_1d

    const/16 v2, 0x26

    new-array v3, v2, [B

    invoke-interface {v1, v3, v6, v2}, LI0/r;->readFully([BII)V

    new-instance v2, LI0/w;

    invoke-direct {v2, v3, v8}, LI0/w;-><init>([BI)V

    goto/16 :goto_18

    :cond_1d
    if-eqz v2, :cond_23

    iget-object v12, v2, LI0/w;->l:Landroidx/media3/common/Metadata;

    if-ne v7, v9, :cond_1e

    new-instance v7, Lk0/u;

    invoke-direct {v7, v3}, Lk0/u;-><init>(I)V

    iget-object v12, v7, Lk0/u;->a:[B

    invoke-interface {v1, v12, v6, v3}, LI0/r;->readFully([BII)V

    invoke-static {v7}, LI0/b;->l(Lk0/u;)LA/j;

    move-result-object v23

    new-instance v13, LI0/w;

    iget v14, v2, LI0/w;->a:I

    iget v15, v2, LI0/w;->b:I

    iget v3, v2, LI0/w;->c:I

    iget v6, v2, LI0/w;->d:I

    iget v7, v2, LI0/w;->e:I

    iget v12, v2, LI0/w;->g:I

    iget v10, v2, LI0/w;->h:I

    move/from16 v20, v10

    iget-wide v9, v2, LI0/w;->j:J

    iget-object v2, v2, LI0/w;->l:Landroidx/media3/common/Metadata;

    move-object/from16 v24, v2

    move/from16 v16, v3

    move/from16 v17, v6

    move/from16 v18, v7

    move-wide/from16 v21, v9

    move/from16 v19, v12

    invoke-direct/range {v13 .. v24}, LI0/w;-><init>(IIIIIIIJLA/j;Landroidx/media3/common/Metadata;)V

    move-object v2, v13

    goto/16 :goto_18

    :cond_1e
    if-ne v7, v8, :cond_20

    new-instance v6, Lk0/u;

    invoke-direct {v6, v3}, Lk0/u;-><init>(I)V

    iget-object v7, v6, Lk0/u;->a:[B

    const/4 v9, 0x0

    invoke-interface {v1, v7, v9, v3}, LI0/r;->readFully([BII)V

    invoke-virtual {v6, v8}, Lk0/u;->H(I)V

    invoke-static {v6, v9, v9}, LI0/P;->b(Lk0/u;ZZ)Le4/c;

    move-result-object v3

    iget-object v3, v3, Le4/c;->q:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, LI0/P;->a(Ljava/util/List;)Landroidx/media3/common/Metadata;

    move-result-object v3

    if-nez v12, :cond_1f

    :goto_13
    move-object/from16 v23, v3

    goto :goto_14

    :cond_1f
    invoke-virtual {v12, v3}, Landroidx/media3/common/Metadata;->copyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object v3

    goto :goto_13

    :goto_14
    new-instance v12, LI0/w;

    iget v13, v2, LI0/w;->a:I

    iget v14, v2, LI0/w;->b:I

    iget v15, v2, LI0/w;->c:I

    iget v3, v2, LI0/w;->d:I

    iget v6, v2, LI0/w;->e:I

    iget v7, v2, LI0/w;->g:I

    iget v9, v2, LI0/w;->h:I

    move/from16 v19, v9

    iget-wide v8, v2, LI0/w;->j:J

    iget-object v2, v2, LI0/w;->k:LA/j;

    move-object/from16 v22, v2

    move/from16 v16, v3

    move/from16 v17, v6

    move/from16 v18, v7

    move-wide/from16 v20, v8

    invoke-direct/range {v12 .. v23}, LI0/w;-><init>(IIIIIIIJLA/j;Landroidx/media3/common/Metadata;)V

    :goto_15
    move-object v2, v12

    goto :goto_18

    :cond_20
    if-ne v7, v11, :cond_22

    new-instance v6, Lk0/u;

    invoke-direct {v6, v3}, Lk0/u;-><init>(I)V

    iget-object v7, v6, Lk0/u;->a:[B

    const/4 v9, 0x0

    invoke-interface {v1, v7, v9, v3}, LI0/r;->readFully([BII)V

    const/4 v10, 0x4

    invoke-virtual {v6, v10}, Lk0/u;->H(I)V

    invoke-static {v6}, LU0/a;->a(Lk0/u;)LU0/a;

    move-result-object v3

    invoke-static {v3}, Lp3/H;->n(Ljava/lang/Object;)Lp3/Y;

    move-result-object v3

    new-instance v6, Landroidx/media3/common/Metadata;

    invoke-direct {v6, v3}, Landroidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    if-nez v12, :cond_21

    :goto_16
    move-object/from16 v23, v6

    goto :goto_17

    :cond_21
    invoke-virtual {v12, v6}, Landroidx/media3/common/Metadata;->copyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object v6

    goto :goto_16

    :goto_17
    new-instance v12, LI0/w;

    iget v13, v2, LI0/w;->a:I

    iget v14, v2, LI0/w;->b:I

    iget v15, v2, LI0/w;->c:I

    iget v3, v2, LI0/w;->d:I

    iget v6, v2, LI0/w;->e:I

    iget v7, v2, LI0/w;->g:I

    iget v8, v2, LI0/w;->h:I

    iget-wide v10, v2, LI0/w;->j:J

    iget-object v2, v2, LI0/w;->k:LA/j;

    move-object/from16 v22, v2

    move/from16 v16, v3

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    move-wide/from16 v20, v10

    invoke-direct/range {v12 .. v23}, LI0/w;-><init>(IIIIIIIJLA/j;Landroidx/media3/common/Metadata;)V

    goto :goto_15

    :cond_22
    invoke-interface {v1, v3}, LI0/r;->n(I)V

    :goto_18
    sget v3, Lk0/C;->a:I

    iput-object v2, v0, LN0/c;->i:LI0/w;

    move v3, v4

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x7

    const/4 v11, 0x6

    const/16 v30, 0x0

    goto/16 :goto_12

    :cond_23
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_24
    iget-object v1, v0, LN0/c;->i:LI0/w;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, LN0/c;->i:LI0/w;

    iget v1, v1, LI0/w;->c:I

    const/4 v9, 0x6

    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, LN0/c;->j:I

    iget-object v1, v0, LN0/c;->f:LI0/L;

    sget v2, Lk0/C;->a:I

    iget-object v2, v0, LN0/c;->i:LI0/w;

    iget-object v3, v0, LN0/c;->h:Landroidx/media3/common/Metadata;

    invoke-virtual {v2, v5, v3}, LI0/w;->c([BLandroidx/media3/common/Metadata;)Landroidx/media3/common/Format;

    move-result-object v2

    invoke-interface {v1, v2}, LI0/L;->format(Landroidx/media3/common/Format;)V

    const/4 v10, 0x4

    iput v10, v0, LN0/c;->g:I

    const/4 v9, 0x0

    return v9

    :cond_25
    move v9, v4

    move v10, v8

    new-instance v2, Lk0/u;

    invoke-direct {v2, v10}, Lk0/u;-><init>(I)V

    iget-object v3, v2, Lk0/u;->a:[B

    invoke-interface {v1, v3, v9, v10}, LI0/r;->readFully([BII)V

    invoke-virtual {v2}, Lk0/u;->w()J

    move-result-wide v1

    const-wide/32 v3, 0x664c6143

    cmp-long v1, v1, v3

    if-nez v1, :cond_26

    const/4 v1, 0x3

    iput v1, v0, LN0/c;->g:I

    return v9

    :cond_26
    const-string v1, "Failed to read FLAC stream marker."

    invoke-static {v1, v7}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_27
    move v9, v4

    array-length v2, v5

    invoke-interface {v1, v5, v9, v2}, LI0/r;->o([BII)V

    invoke-interface {v1}, LI0/r;->j()V

    iput v6, v0, LN0/c;->g:I

    return v9

    :cond_28
    iget-boolean v2, v0, LN0/c;->c:Z

    xor-int/2addr v2, v3

    invoke-interface {v1}, LI0/r;->j()V

    invoke-interface {v1}, LI0/r;->e()J

    move-result-wide v4

    invoke-static {v1, v2}, LI0/b;->j(LI0/r;Z)Landroidx/media3/common/Metadata;

    move-result-object v2

    invoke-interface {v1}, LI0/r;->e()J

    move-result-wide v6

    sub-long/2addr v6, v4

    long-to-int v4, v6

    invoke-interface {v1, v4}, LI0/r;->n(I)V

    iput-object v2, v0, LN0/c;->h:Landroidx/media3/common/Metadata;

    iput v3, v0, LN0/c;->g:I

    const/16 v30, 0x0

    return v30
.end method

.method public final f(JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    if-nez p1, :cond_0

    iput p2, p0, LN0/c;->g:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, LN0/c;->l:LN0/b;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p3, p4}, LN0/b;->d(J)V

    :cond_1
    :goto_0
    cmp-long p1, p3, v0

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v0, -0x1

    :goto_1
    iput-wide v0, p0, LN0/c;->n:J

    iput p2, p0, LN0/c;->m:I

    iget-object p1, p0, LN0/c;->b:Lk0/u;

    invoke-virtual {p1, p2}, Lk0/u;->D(I)V

    return-void
.end method

.method public final k(LI0/s;)V
    .locals 2

    iput-object p1, p0, LN0/c;->e:LI0/s;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, LI0/s;->track(II)LI0/L;

    move-result-object v0

    iput-object v0, p0, LN0/c;->f:LI0/L;

    invoke-interface {p1}, LI0/s;->endTracks()V

    return-void
.end method

.method public final release()V
    .locals 0

    return-void
.end method
