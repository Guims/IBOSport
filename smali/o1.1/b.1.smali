.class public final Lo1/b;
.super Ljava/lang/Object;

# interfaces
.implements Lo1/j;


# instance fields
.field public final a:LI0/N;

.field public final b:Lk0/u;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public e:Ljava/lang/String;

.field public f:LI0/L;

.field public g:I

.field public h:I

.field public i:Z

.field public j:J

.field public k:Landroidx/media3/common/Format;

.field public l:I

.field public m:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lo1/b;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LI0/N;

    const/16 v1, 0x80

    new-array v2, v1, [B

    invoke-direct {v0, v2, v1}, LI0/N;-><init>([BI)V

    iput-object v0, p0, Lo1/b;->a:LI0/N;

    new-instance v1, Lk0/u;

    iget-object v0, v0, LI0/N;->d:[B

    invoke-direct {v1, v0}, Lk0/u;-><init>([B)V

    iput-object v1, p0, Lo1/b;->b:Lk0/u;

    const/4 v0, 0x0

    iput v0, p0, Lo1/b;->g:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lo1/b;->m:J

    iput-object p1, p0, Lo1/b;->c:Ljava/lang/String;

    iput p2, p0, Lo1/b;->d:I

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lo1/b;->g:I

    iput v0, p0, Lo1/b;->h:I

    iput-boolean v0, p0, Lo1/b;->i:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lo1/b;->m:J

    return-void
.end method

.method public final c(Lk0/u;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lo1/b;->f:LI0/L;

    invoke-static {v2}, Lk0/c;->k(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    invoke-virtual {v1}, Lk0/u;->a()I

    move-result v2

    if-lez v2, :cond_3e

    iget v2, v0, Lo1/b;->g:I

    const/16 v3, 0xb

    iget-object v4, v0, Lo1/b;->b:Lk0/u;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_39

    if-eq v2, v7, :cond_3

    if-eq v2, v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lk0/u;->a()I

    move-result v2

    iget v3, v0, Lo1/b;->l:I

    iget v4, v0, Lo1/b;->h:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, v0, Lo1/b;->f:LI0/L;

    invoke-interface {v3, v1, v2}, LI0/L;->sampleData(Lk0/u;I)V

    iget v3, v0, Lo1/b;->h:I

    add-int/2addr v3, v2

    iput v3, v0, Lo1/b;->h:I

    iget v2, v0, Lo1/b;->l:I

    if-ne v3, v2, :cond_0

    iget-wide v2, v0, Lo1/b;->m:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v7, v6

    :goto_1
    invoke-static {v7}, Lk0/c;->j(Z)V

    iget-object v8, v0, Lo1/b;->f:LI0/L;

    iget-wide v9, v0, Lo1/b;->m:J

    iget v12, v0, Lo1/b;->l:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v11, 0x1

    invoke-interface/range {v8 .. v14}, LI0/L;->sampleMetadata(JIIILI0/K;)V

    iget-wide v2, v0, Lo1/b;->m:J

    iget-wide v4, v0, Lo1/b;->j:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lo1/b;->m:J

    iput v6, v0, Lo1/b;->g:I

    goto :goto_0

    :cond_3
    iget-object v2, v4, Lk0/u;->a:[B

    invoke-virtual {v1}, Lk0/u;->a()I

    move-result v8

    iget v9, v0, Lo1/b;->h:I

    const/16 v10, 0x80

    rsub-int v9, v9, 0x80

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget v9, v0, Lo1/b;->h:I

    invoke-virtual {v1, v2, v9, v8}, Lk0/u;->e([BII)V

    iget v2, v0, Lo1/b;->h:I

    add-int/2addr v2, v8

    iput v2, v0, Lo1/b;->h:I

    if-ne v2, v10, :cond_0

    iget-object v2, v0, Lo1/b;->a:LI0/N;

    invoke-virtual {v2, v6}, LI0/N;->q(I)V

    invoke-virtual {v2}, LI0/N;->g()I

    move-result v8

    const/16 v9, 0x28

    invoke-virtual {v2, v9}, LI0/N;->t(I)V

    const/4 v9, 0x5

    invoke-virtual {v2, v9}, LI0/N;->i(I)I

    move-result v11

    const/16 v12, 0xa

    if-le v11, v12, :cond_4

    move v11, v7

    goto :goto_2

    :cond_4
    move v11, v6

    :goto_2
    invoke-virtual {v2, v8}, LI0/N;->q(I)V

    const-string v8, "audio/ac3"

    sget-object v13, LI0/c;->d:[I

    sget-object v14, LI0/c;->b:[I

    const/16 v15, 0x8

    const/4 v6, 0x3

    if-eqz v11, :cond_30

    const/16 v11, 0x10

    invoke-virtual {v2, v11}, LI0/N;->t(I)V

    invoke-virtual {v2, v5}, LI0/N;->i(I)I

    move-result v10

    if-eqz v10, :cond_7

    if-eq v10, v7, :cond_6

    if-eq v10, v5, :cond_5

    const/4 v10, -0x1

    goto :goto_3

    :cond_5
    move v10, v5

    goto :goto_3

    :cond_6
    move v10, v7

    goto :goto_3

    :cond_7
    const/4 v10, 0x0

    :goto_3
    invoke-virtual {v2, v6}, LI0/N;->t(I)V

    invoke-virtual {v2, v3}, LI0/N;->i(I)I

    move-result v3

    add-int/2addr v3, v7

    mul-int/2addr v3, v5

    invoke-virtual {v2, v5}, LI0/N;->i(I)I

    move-result v11

    if-ne v11, v6, :cond_8

    sget-object v14, LI0/c;->c:[I

    invoke-virtual {v2, v5}, LI0/N;->i(I)I

    move-result v16

    aget v14, v14, v16

    move/from16 v19, v6

    const/4 v5, 0x6

    goto :goto_4

    :cond_8
    invoke-virtual {v2, v5}, LI0/N;->i(I)I

    move-result v16

    sget-object v18, LI0/c;->a:[I

    aget v18, v18, v16

    aget v14, v14, v11

    move/from16 v19, v16

    move/from16 v5, v18

    :goto_4
    mul-int/lit16 v7, v5, 0x100

    mul-int v16, v3, v14

    mul-int/lit8 v20, v5, 0x20

    div-int v16, v16, v20

    invoke-virtual {v2, v6}, LI0/N;->i(I)I

    move-result v9

    invoke-virtual {v2}, LI0/N;->h()Z

    move-result v21

    aget v13, v13, v9

    add-int v13, v13, v21

    invoke-virtual {v2, v12}, LI0/N;->t(I)V

    invoke-virtual {v2}, LI0/N;->h()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-virtual {v2, v15}, LI0/N;->t(I)V

    :cond_9
    if-nez v9, :cond_a

    const/4 v12, 0x5

    invoke-virtual {v2, v12}, LI0/N;->t(I)V

    invoke-virtual {v2}, LI0/N;->h()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-virtual {v2, v15}, LI0/N;->t(I)V

    :cond_a
    const/4 v12, 0x1

    if-ne v10, v12, :cond_b

    invoke-virtual {v2}, LI0/N;->h()Z

    move-result v12

    if-eqz v12, :cond_b

    const/16 v12, 0x10

    invoke-virtual {v2, v12}, LI0/N;->t(I)V

    :cond_b
    invoke-virtual {v2}, LI0/N;->h()Z

    move-result v12

    if-eqz v12, :cond_24

    const/4 v12, 0x2

    if-le v9, v12, :cond_c

    invoke-virtual {v2, v12}, LI0/N;->t(I)V

    :cond_c
    and-int/lit8 v18, v9, 0x1

    if-eqz v18, :cond_d

    if-le v9, v12, :cond_d

    const/4 v12, 0x6

    invoke-virtual {v2, v12}, LI0/N;->t(I)V

    goto :goto_5

    :cond_d
    const/4 v12, 0x6

    :goto_5
    and-int/lit8 v17, v9, 0x4

    if-eqz v17, :cond_e

    invoke-virtual {v2, v12}, LI0/N;->t(I)V

    :cond_e
    if-eqz v21, :cond_f

    invoke-virtual {v2}, LI0/N;->h()Z

    move-result v12

    if-eqz v12, :cond_f

    const/4 v12, 0x5

    invoke-virtual {v2, v12}, LI0/N;->t(I)V

    :cond_f
    if-nez v10, :cond_24

    invoke-virtual {v2}, LI0/N;->h()Z

    move-result v12

    if-eqz v12, :cond_10

    const/4 v12, 0x6

    invoke-virtual {v2, v12}, LI0/N;->t(I)V

    goto :goto_6

    :cond_10
    const/4 v12, 0x6

    :goto_6
    if-nez v9, :cond_11

    invoke-virtual {v2}, LI0/N;->h()Z

    move-result v17

    if-eqz v17, :cond_11

    invoke-virtual {v2, v12}, LI0/N;->t(I)V

    :cond_11
    invoke-virtual {v2}, LI0/N;->h()Z

    move-result v17

    if-eqz v17, :cond_12

    invoke-virtual {v2, v12}, LI0/N;->t(I)V

    :cond_12
    const/4 v12, 0x2

    invoke-virtual {v2, v12}, LI0/N;->i(I)I

    move-result v15

    const/4 v6, 0x1

    if-ne v15, v6, :cond_13

    const/4 v6, 0x5

    invoke-virtual {v2, v6}, LI0/N;->t(I)V

    move v15, v12

    goto/16 :goto_a

    :cond_13
    const/4 v6, 0x5

    if-ne v15, v12, :cond_15

    const/16 v12, 0xc

    invoke-virtual {v2, v12}, LI0/N;->t(I)V

    :cond_14
    const/4 v15, 0x2

    goto/16 :goto_a

    :cond_15
    const/4 v12, 0x3

    if-ne v15, v12, :cond_14

    invoke-virtual {v2, v6}, LI0/N;->i(I)I

    move-result v12

    invoke-virtual {v2}, LI0/N;->h()Z

    move-result v15

    if-eqz v15, :cond_1e

    invoke-virtual {v2, v6}, LI0/N;->t(I)V

    invoke-virtual {v2}, LI0/N;->h()Z

    move-result v6

    if-eqz v6, :cond_16

    const/4 v6, 0x4

    invoke-virtual {v2, v6}, LI0/N;->t(I)V

    goto :goto_7

    :cond_16
    const/4 v6, 0x4

    :goto_7
    invoke-virtual {v2}, LI0/N;->h()Z

    move-result v15

    if-eqz v15, :cond_17

    invoke-virtual {v2, v6}, LI0/N;->t(I)V

    :cond_17
    invoke-virtual {v2}, LI0/N;->h()Z

    move-result v15

    if-eqz v15, :cond_18

    invoke-virtual {v2, v6}, LI0/N;->t(I)V

    :cond_18
    invoke-virtual {v2}, LI0/N;->h()Z

    move-result v15

    if-eqz v15, :cond_19

    invoke-virtual {v2, v6}, LI0/N;->t(I)V

    :cond_19
    invoke-virtual {v2}, LI0/N;->h()Z

    move-result v15

    if-eqz v15, :cond_1a

    invoke-virtual {v2, v6}, LI0/N;->t(I)V

    :cond_1a
    invoke-virtual {v2}, LI0/N;->h()Z

    move-result v15

    if-eqz v15, :cond_1b

    invoke-virtual {v2, v6}, LI0/N;->t(I)V

    :cond_1b
    invoke-virtual {v2}, LI0/N;->h()Z

    move-result v15

    if-eqz v15, :cond_1c

    invoke-virtual {v2, v6}, LI0/N;->t(I)V

    :cond_1c
    invoke-virtual {v2}, LI0/N;->h()Z

    move-result v15

    if-eqz v15, :cond_1e

    invoke-virtual {v2}, LI0/N;->h()Z

    move-result v15

    if-eqz v15, :cond_1d

    invoke-virtual {v2, v6}, LI0/N;->t(I)V

    :cond_1d
    invoke-virtual {v2}, LI0/N;->h()Z

    move-result v15

    if-eqz v15, :cond_1e

    invoke-virtual {v2, v6}, LI0/N;->t(I)V

    :cond_1e
    invoke-virtual {v2}, LI0/N;->h()Z

    move-result v6

    if-eqz v6, :cond_1f

    const/4 v6, 0x5

    invoke-virtual {v2, v6}, LI0/N;->t(I)V

    invoke-virtual {v2}, LI0/N;->h()Z

    move-result v6

    if-eqz v6, :cond_1f

    const/4 v6, 0x7

    invoke-virtual {v2, v6}, LI0/N;->t(I)V

    invoke-virtual {v2}, LI0/N;->h()Z

    move-result v6

    if-eqz v6, :cond_1f

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, LI0/N;->t(I)V

    :goto_8
    const/4 v15, 0x2

    goto :goto_9

    :cond_1f
    const/16 v6, 0x8

    goto :goto_8

    :goto_9
    add-int/2addr v12, v15

    mul-int/2addr v12, v6

    invoke-virtual {v2, v12}, LI0/N;->t(I)V

    invoke-virtual {v2}, LI0/N;->c()V

    :goto_a
    if-ge v9, v15, :cond_21

    invoke-virtual {v2}, LI0/N;->h()Z

    move-result v6

    const/16 v12, 0xe

    if-eqz v6, :cond_20

    invoke-virtual {v2, v12}, LI0/N;->t(I)V

    :cond_20
    if-nez v9, :cond_21

    invoke-virtual {v2}, LI0/N;->h()Z

    move-result v6

    if-eqz v6, :cond_21

    invoke-virtual {v2, v12}, LI0/N;->t(I)V

    :cond_21
    invoke-virtual {v2}, LI0/N;->h()Z

    move-result v6

    if-eqz v6, :cond_24

    move/from16 v6, v19

    if-nez v6, :cond_22

    const/4 v12, 0x5

    invoke-virtual {v2, v12}, LI0/N;->t(I)V

    goto :goto_c

    :cond_22
    const/4 v15, 0x0

    :goto_b
    const/4 v12, 0x5

    if-ge v15, v5, :cond_25

    invoke-virtual {v2}, LI0/N;->h()Z

    move-result v19

    if-eqz v19, :cond_23

    invoke-virtual {v2, v12}, LI0/N;->t(I)V

    :cond_23
    add-int/lit8 v15, v15, 0x1

    goto :goto_b

    :cond_24
    move/from16 v6, v19

    :cond_25
    :goto_c
    invoke-virtual {v2}, LI0/N;->h()Z

    move-result v5

    if-eqz v5, :cond_2a

    const/4 v12, 0x5

    invoke-virtual {v2, v12}, LI0/N;->t(I)V

    const/4 v12, 0x2

    if-ne v9, v12, :cond_26

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, LI0/N;->t(I)V

    :cond_26
    const/4 v5, 0x6

    if-lt v9, v5, :cond_27

    invoke-virtual {v2, v12}, LI0/N;->t(I)V

    :cond_27
    invoke-virtual {v2}, LI0/N;->h()Z

    move-result v5

    if-eqz v5, :cond_28

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, LI0/N;->t(I)V

    goto :goto_d

    :cond_28
    const/16 v5, 0x8

    :goto_d
    if-nez v9, :cond_29

    invoke-virtual {v2}, LI0/N;->h()Z

    move-result v9

    if-eqz v9, :cond_29

    invoke-virtual {v2, v5}, LI0/N;->t(I)V

    :cond_29
    const/4 v12, 0x3

    if-ge v11, v12, :cond_2b

    invoke-virtual {v2}, LI0/N;->s()V

    goto :goto_e

    :cond_2a
    const/4 v12, 0x3

    :cond_2b
    :goto_e
    if-nez v10, :cond_2c

    if-eq v6, v12, :cond_2c

    invoke-virtual {v2}, LI0/N;->s()V

    :cond_2c
    const/4 v15, 0x2

    if-ne v10, v15, :cond_2e

    if-eq v6, v12, :cond_2d

    invoke-virtual {v2}, LI0/N;->h()Z

    move-result v5

    if-eqz v5, :cond_2e

    :cond_2d
    const/4 v12, 0x6

    goto :goto_f

    :cond_2e
    const/4 v12, 0x6

    goto :goto_10

    :goto_f
    invoke-virtual {v2, v12}, LI0/N;->t(I)V

    :goto_10
    invoke-virtual {v2}, LI0/N;->h()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-virtual {v2, v12}, LI0/N;->i(I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2f

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, LI0/N;->i(I)I

    move-result v2

    if-ne v2, v6, :cond_2f

    const-string v2, "audio/eac3-joc"

    goto :goto_11

    :cond_2f
    const-string v2, "audio/eac3"

    :goto_11
    move/from16 v5, v16

    goto :goto_16

    :cond_30
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, LI0/N;->t(I)V

    const/4 v12, 0x2

    invoke-virtual {v2, v12}, LI0/N;->i(I)I

    move-result v3

    const/4 v12, 0x3

    if-ne v3, v12, :cond_31

    const/4 v5, 0x0

    :goto_12
    const/4 v12, 0x6

    goto :goto_13

    :cond_31
    move-object v5, v8

    goto :goto_12

    :goto_13
    invoke-virtual {v2, v12}, LI0/N;->i(I)I

    move-result v6

    div-int/lit8 v7, v6, 0x2

    sget-object v9, LI0/c;->e:[I

    aget v7, v9, v7

    mul-int/lit16 v7, v7, 0x3e8

    invoke-static {v3, v6}, LI0/c;->a(II)I

    move-result v6

    const/16 v9, 0x8

    invoke-virtual {v2, v9}, LI0/N;->t(I)V

    const/4 v12, 0x3

    invoke-virtual {v2, v12}, LI0/N;->i(I)I

    move-result v9

    and-int/lit8 v10, v9, 0x1

    if-eqz v10, :cond_32

    const/4 v12, 0x1

    if-eq v9, v12, :cond_32

    const/4 v12, 0x2

    invoke-virtual {v2, v12}, LI0/N;->t(I)V

    goto :goto_14

    :cond_32
    const/4 v12, 0x2

    :goto_14
    and-int/lit8 v10, v9, 0x4

    if-eqz v10, :cond_33

    invoke-virtual {v2, v12}, LI0/N;->t(I)V

    :cond_33
    if-ne v9, v12, :cond_34

    invoke-virtual {v2, v12}, LI0/N;->t(I)V

    :cond_34
    const/4 v12, 0x3

    if-ge v3, v12, :cond_35

    aget v15, v14, v3

    goto :goto_15

    :cond_35
    const/4 v15, -0x1

    :goto_15
    invoke-virtual {v2}, LI0/N;->h()Z

    move-result v2

    aget v3, v13, v9

    add-int v13, v3, v2

    const/16 v2, 0x600

    move v3, v7

    move v7, v2

    move-object v2, v5

    move v5, v3

    move v3, v6

    move v14, v15

    :goto_16
    iget-object v6, v0, Lo1/b;->k:Landroidx/media3/common/Format;

    if-eqz v6, :cond_36

    iget v9, v6, Landroidx/media3/common/Format;->channelCount:I

    if-ne v13, v9, :cond_36

    iget v9, v6, Landroidx/media3/common/Format;->sampleRate:I

    if-ne v14, v9, :cond_36

    iget-object v6, v6, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    sget v9, Lk0/C;->a:I

    invoke-static {v2, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_38

    :cond_36
    new-instance v6, Landroidx/media3/common/Format$Builder;

    invoke-direct {v6}, Landroidx/media3/common/Format$Builder;-><init>()V

    iget-object v9, v0, Lo1/b;->e:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v6

    invoke-virtual {v6, v13}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v6

    invoke-virtual {v6, v14}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v6

    iget-object v9, v0, Lo1/b;->c:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v6

    iget v9, v0, Lo1/b;->d:I

    invoke-virtual {v6, v9}, Landroidx/media3/common/Format$Builder;->setRoleFlags(I)Landroidx/media3/common/Format$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroidx/media3/common/Format$Builder;->setPeakBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v6

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-virtual {v6, v5}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    :cond_37
    invoke-virtual {v6}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v2

    iput-object v2, v0, Lo1/b;->k:Landroidx/media3/common/Format;

    iget-object v5, v0, Lo1/b;->f:LI0/L;

    invoke-interface {v5, v2}, LI0/L;->format(Landroidx/media3/common/Format;)V

    :cond_38
    iput v3, v0, Lo1/b;->l:I

    const-wide/32 v2, 0xf4240

    int-to-long v5, v7

    mul-long/2addr v5, v2

    iget-object v2, v0, Lo1/b;->k:Landroidx/media3/common/Format;

    iget v2, v2, Landroidx/media3/common/Format;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v5, v2

    iput-wide v5, v0, Lo1/b;->j:J

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Lk0/u;->G(I)V

    iget-object v2, v0, Lo1/b;->f:LI0/L;

    const/16 v3, 0x80

    invoke-interface {v2, v4, v3}, LI0/L;->sampleData(Lk0/u;I)V

    const/4 v12, 0x2

    iput v12, v0, Lo1/b;->g:I

    goto/16 :goto_0

    :cond_39
    :goto_17
    invoke-virtual {v1}, Lk0/u;->a()I

    move-result v2

    if-lez v2, :cond_0

    iget-boolean v2, v0, Lo1/b;->i:Z

    if-nez v2, :cond_3b

    invoke-virtual {v1}, Lk0/u;->u()I

    move-result v2

    if-ne v2, v3, :cond_3a

    const/4 v12, 0x1

    goto :goto_18

    :cond_3a
    const/4 v12, 0x0

    :goto_18
    iput-boolean v12, v0, Lo1/b;->i:Z

    goto :goto_17

    :cond_3b
    invoke-virtual {v1}, Lk0/u;->u()I

    move-result v2

    const/16 v5, 0x77

    if-ne v2, v5, :cond_3c

    const/4 v12, 0x0

    iput-boolean v12, v0, Lo1/b;->i:Z

    const/4 v6, 0x1

    iput v6, v0, Lo1/b;->g:I

    iget-object v2, v4, Lk0/u;->a:[B

    aput-byte v3, v2, v12

    aput-byte v5, v2, v6

    const/4 v15, 0x2

    iput v15, v0, Lo1/b;->h:I

    goto/16 :goto_0

    :cond_3c
    const/4 v6, 0x1

    const/4 v12, 0x0

    const/4 v15, 0x2

    if-ne v2, v3, :cond_3d

    move v2, v6

    goto :goto_19

    :cond_3d
    move v2, v12

    :goto_19
    iput-boolean v2, v0, Lo1/b;->i:Z

    goto :goto_17

    :cond_3e
    return-void
.end method

.method public final d(Z)V
    .locals 0

    return-void
.end method

.method public final e(IJ)V
    .locals 0

    iput-wide p2, p0, Lo1/b;->m:J

    return-void
.end method

.method public final f(LI0/s;Lo1/K;)V
    .locals 1

    invoke-virtual {p2}, Lo1/K;->a()V

    invoke-virtual {p2}, Lo1/K;->b()V

    iget-object v0, p2, Lo1/K;->e:Ljava/lang/String;

    iput-object v0, p0, Lo1/b;->e:Ljava/lang/String;

    invoke-virtual {p2}, Lo1/K;->b()V

    iget p2, p2, Lo1/K;->d:I

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, LI0/s;->track(II)LI0/L;

    move-result-object p1

    iput-object p1, p0, Lo1/b;->f:LI0/L;

    return-void
.end method
