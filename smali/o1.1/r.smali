.class public final Lo1/r;
.super Ljava/lang/Object;

# interfaces
.implements Lo1/j;


# instance fields
.field public final a:Lo1/H;

.field public final b:Z

.field public final c:Z

.field public final d:Lo1/z;

.field public final e:Lo1/z;

.field public final f:Lo1/z;

.field public g:J

.field public final h:[Z

.field public i:Ljava/lang/String;

.field public j:LI0/L;

.field public k:Lo1/q;

.field public l:Z

.field public m:J

.field public n:Z

.field public final o:Lk0/u;


# direct methods
.method public constructor <init>(Lo1/H;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo1/r;->a:Lo1/H;

    iput-boolean p2, p0, Lo1/r;->b:Z

    iput-boolean p3, p0, Lo1/r;->c:Z

    const/4 p1, 0x3

    new-array p1, p1, [Z

    iput-object p1, p0, Lo1/r;->h:[Z

    new-instance p1, Lo1/z;

    const/4 p2, 0x7

    invoke-direct {p1, p2}, Lo1/z;-><init>(I)V

    iput-object p1, p0, Lo1/r;->d:Lo1/z;

    new-instance p1, Lo1/z;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Lo1/z;-><init>(I)V

    iput-object p1, p0, Lo1/r;->e:Lo1/z;

    new-instance p1, Lo1/z;

    const/4 p2, 0x6

    invoke-direct {p1, p2}, Lo1/z;-><init>(I)V

    iput-object p1, p0, Lo1/r;->f:Lo1/z;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lo1/r;->m:J

    new-instance p1, Lk0/u;

    invoke-direct {p1}, Lk0/u;-><init>()V

    iput-object p1, p0, Lo1/r;->o:Lk0/u;

    return-void
.end method


# virtual methods
.method public final a([BII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget-boolean v4, v0, Lo1/r;->l:Z

    if-eqz v4, :cond_0

    iget-object v4, v0, Lo1/r;->k:Lo1/q;

    iget-boolean v4, v4, Lo1/q;->c:Z

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, v0, Lo1/r;->d:Lo1/z;

    invoke-virtual {v4, v1, v2, v3}, Lo1/z;->a([BII)V

    iget-object v4, v0, Lo1/r;->e:Lo1/z;

    invoke-virtual {v4, v1, v2, v3}, Lo1/z;->a([BII)V

    :cond_1
    iget-object v4, v0, Lo1/r;->f:Lo1/z;

    invoke-virtual {v4, v1, v2, v3}, Lo1/z;->a([BII)V

    iget-object v4, v0, Lo1/r;->k:Lo1/q;

    iget-object v5, v4, Lo1/q;->e:Landroid/util/SparseArray;

    iget-object v6, v4, Lo1/q;->f:LI0/N;

    iget-boolean v7, v4, Lo1/q;->k:Z

    if-nez v7, :cond_2

    goto/16 :goto_6

    :cond_2
    sub-int/2addr v3, v2

    iget-object v7, v4, Lo1/q;->g:[B

    array-length v8, v7

    iget v9, v4, Lo1/q;->h:I

    add-int/2addr v9, v3

    const/4 v10, 0x2

    if-ge v8, v9, :cond_3

    mul-int/2addr v9, v10

    invoke-static {v7, v9}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v7

    iput-object v7, v4, Lo1/q;->g:[B

    :cond_3
    iget-object v7, v4, Lo1/q;->g:[B

    iget v8, v4, Lo1/q;->h:I

    invoke-static {v1, v2, v7, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, v4, Lo1/q;->h:I

    add-int/2addr v1, v3

    iput v1, v4, Lo1/q;->h:I

    iget-object v2, v4, Lo1/q;->g:[B

    iput-object v2, v6, LI0/N;->d:[B

    const/4 v2, 0x0

    iput v2, v6, LI0/N;->c:I

    iput v1, v6, LI0/N;->b:I

    iput v2, v6, LI0/N;->e:I

    invoke-virtual {v6}, LI0/N;->a()V

    const/16 v1, 0x8

    invoke-virtual {v6, v1}, LI0/N;->d(I)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_6

    :cond_4
    invoke-virtual {v6}, LI0/N;->s()V

    invoke-virtual {v6, v10}, LI0/N;->i(I)I

    move-result v1

    const/4 v3, 0x5

    invoke-virtual {v6, v3}, LI0/N;->t(I)V

    invoke-virtual {v6}, LI0/N;->e()Z

    move-result v7

    if-nez v7, :cond_5

    goto/16 :goto_6

    :cond_5
    invoke-virtual {v6}, LI0/N;->m()I

    invoke-virtual {v6}, LI0/N;->e()Z

    move-result v7

    if-nez v7, :cond_6

    goto/16 :goto_6

    :cond_6
    invoke-virtual {v6}, LI0/N;->m()I

    move-result v7

    iget-boolean v8, v4, Lo1/q;->c:Z

    const/4 v9, 0x1

    if-nez v8, :cond_7

    iput-boolean v2, v4, Lo1/q;->k:Z

    iget-object v1, v4, Lo1/q;->n:Lo1/p;

    iput v7, v1, Lo1/p;->e:I

    iput-boolean v9, v1, Lo1/p;->b:Z

    return-void

    :cond_7
    invoke-virtual {v6}, LI0/N;->e()Z

    move-result v8

    if-nez v8, :cond_8

    goto/16 :goto_6

    :cond_8
    invoke-virtual {v6}, LI0/N;->m()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v11

    if-gez v11, :cond_9

    iput-boolean v2, v4, Lo1/q;->k:Z

    return-void

    :cond_9
    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ll0/l;

    iget-object v11, v4, Lo1/q;->d:Landroid/util/SparseArray;

    iget v12, v5, Ll0/l;->a:I

    iget-boolean v5, v5, Ll0/l;->b:Z

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ll0/m;

    iget-boolean v12, v11, Ll0/m;->j:Z

    iget v13, v11, Ll0/m;->n:I

    iget v14, v11, Ll0/m;->l:I

    if-eqz v12, :cond_b

    invoke-virtual {v6, v10}, LI0/N;->d(I)Z

    move-result v12

    if-nez v12, :cond_a

    goto/16 :goto_6

    :cond_a
    invoke-virtual {v6, v10}, LI0/N;->t(I)V

    :cond_b
    invoke-virtual {v6, v14}, LI0/N;->d(I)Z

    move-result v10

    if-nez v10, :cond_c

    goto/16 :goto_6

    :cond_c
    invoke-virtual {v6, v14}, LI0/N;->i(I)I

    move-result v10

    iget-boolean v12, v11, Ll0/m;->k:Z

    if-nez v12, :cond_10

    invoke-virtual {v6, v9}, LI0/N;->d(I)Z

    move-result v12

    if-nez v12, :cond_d

    goto/16 :goto_6

    :cond_d
    invoke-virtual {v6}, LI0/N;->h()Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-virtual {v6, v9}, LI0/N;->d(I)Z

    move-result v14

    if-nez v14, :cond_e

    goto/16 :goto_6

    :cond_e
    invoke-virtual {v6}, LI0/N;->h()Z

    move-result v14

    move v15, v9

    goto :goto_1

    :cond_f
    move v14, v2

    :goto_0
    move v15, v14

    goto :goto_1

    :cond_10
    move v12, v2

    move v14, v12

    goto :goto_0

    :goto_1
    iget v2, v4, Lo1/q;->i:I

    if-ne v2, v3, :cond_11

    move v2, v9

    goto :goto_2

    :cond_11
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_13

    invoke-virtual {v6}, LI0/N;->e()Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_6

    :cond_12
    invoke-virtual {v6}, LI0/N;->m()I

    move-result v3

    goto :goto_3

    :cond_13
    const/4 v3, 0x0

    :goto_3
    iget v9, v11, Ll0/m;->m:I

    if-nez v9, :cond_17

    invoke-virtual {v6, v13}, LI0/N;->d(I)Z

    move-result v9

    if-nez v9, :cond_14

    goto :goto_6

    :cond_14
    invoke-virtual {v6, v13}, LI0/N;->i(I)I

    move-result v9

    if-eqz v5, :cond_16

    if-nez v12, :cond_16

    invoke-virtual {v6}, LI0/N;->e()Z

    move-result v5

    if-nez v5, :cond_15

    goto :goto_6

    :cond_15
    invoke-virtual {v6}, LI0/N;->n()I

    move-result v5

    :goto_4
    const/4 v6, 0x0

    :goto_5
    const/4 v13, 0x0

    goto :goto_8

    :cond_16
    const/4 v5, 0x0

    goto :goto_4

    :cond_17
    const/4 v13, 0x1

    if-ne v9, v13, :cond_1b

    iget-boolean v9, v11, Ll0/m;->o:Z

    if-nez v9, :cond_1b

    invoke-virtual {v6}, LI0/N;->e()Z

    move-result v9

    if-nez v9, :cond_18

    goto :goto_6

    :cond_18
    invoke-virtual {v6}, LI0/N;->n()I

    move-result v9

    if-eqz v5, :cond_1a

    if-nez v12, :cond_1a

    invoke-virtual {v6}, LI0/N;->e()Z

    move-result v5

    if-nez v5, :cond_19

    :goto_6
    return-void

    :cond_19
    invoke-virtual {v6}, LI0/N;->n()I

    move-result v5

    move v6, v5

    move v13, v9

    const/4 v5, 0x0

    :goto_7
    const/4 v9, 0x0

    goto :goto_8

    :cond_1a
    move v13, v9

    const/4 v5, 0x0

    const/4 v6, 0x0

    goto :goto_7

    :cond_1b
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    goto :goto_5

    :goto_8
    iget-object v0, v4, Lo1/q;->n:Lo1/p;

    iput-object v11, v0, Lo1/p;->c:Ll0/m;

    iput v1, v0, Lo1/p;->d:I

    iput v7, v0, Lo1/p;->e:I

    iput v10, v0, Lo1/p;->f:I

    iput v8, v0, Lo1/p;->g:I

    iput-boolean v12, v0, Lo1/p;->h:Z

    iput-boolean v15, v0, Lo1/p;->i:Z

    iput-boolean v14, v0, Lo1/p;->j:Z

    iput-boolean v2, v0, Lo1/p;->k:Z

    iput v3, v0, Lo1/p;->l:I

    iput v9, v0, Lo1/p;->m:I

    iput v5, v0, Lo1/p;->n:I

    iput v13, v0, Lo1/p;->o:I

    iput v6, v0, Lo1/p;->p:I

    const/4 v13, 0x1

    iput-boolean v13, v0, Lo1/p;->a:Z

    iput-boolean v13, v0, Lo1/p;->b:Z

    const/4 v0, 0x0

    iput-boolean v0, v4, Lo1/q;->k:Z

    return-void
.end method

.method public final b()V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo1/r;->g:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo1/r;->n:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lo1/r;->m:J

    iget-object v1, p0, Lo1/r;->h:[Z

    invoke-static {v1}, Ll0/n;->a([Z)V

    iget-object v1, p0, Lo1/r;->d:Lo1/z;

    invoke-virtual {v1}, Lo1/z;->f()V

    iget-object v1, p0, Lo1/r;->e:Lo1/z;

    invoke-virtual {v1}, Lo1/z;->f()V

    iget-object v1, p0, Lo1/r;->f:Lo1/z;

    invoke-virtual {v1}, Lo1/z;->f()V

    iget-object v1, p0, Lo1/r;->a:Lo1/H;

    iget-object v1, v1, Lo1/H;->c:LA5/t;

    invoke-virtual {v1, v0}, LA5/t;->i(I)V

    iget-object v1, p0, Lo1/r;->k:Lo1/q;

    if-eqz v1, :cond_0

    iput-boolean v0, v1, Lo1/q;->k:Z

    iput-boolean v0, v1, Lo1/q;->o:Z

    iget-object v1, v1, Lo1/q;->n:Lo1/p;

    iput-boolean v0, v1, Lo1/p;->b:Z

    iput-boolean v0, v1, Lo1/p;->a:Z

    :cond_0
    return-void
.end method

.method public final c(Lk0/u;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lo1/r;->j:LI0/L;

    invoke-static {v2}, Lk0/c;->k(Ljava/lang/Object;)V

    sget v2, Lk0/C;->a:I

    iget v2, v1, Lk0/u;->b:I

    iget v3, v1, Lk0/u;->c:I

    iget-object v4, v1, Lk0/u;->a:[B

    iget-wide v5, v0, Lo1/r;->g:J

    invoke-virtual {v1}, Lk0/u;->a()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, v0, Lo1/r;->g:J

    iget-object v5, v0, Lo1/r;->j:LI0/L;

    invoke-virtual {v1}, Lk0/u;->a()I

    move-result v6

    invoke-interface {v5, v1, v6}, LI0/L;->sampleData(Lk0/u;I)V

    :goto_0
    iget-object v1, v0, Lo1/r;->h:[Z

    invoke-static {v4, v2, v3, v1}, Ll0/n;->b([BII[Z)I

    move-result v1

    if-ne v1, v3, :cond_0

    invoke-virtual {v0, v4, v2, v3}, Lo1/r;->a([BII)V

    return-void

    :cond_0
    add-int/lit8 v5, v1, 0x3

    aget-byte v6, v4, v5

    and-int/lit8 v6, v6, 0x1f

    sub-int v7, v1, v2

    if-lez v7, :cond_1

    invoke-virtual {v0, v4, v2, v1}, Lo1/r;->a([BII)V

    :cond_1
    sub-int v1, v3, v1

    iget-wide v8, v0, Lo1/r;->g:J

    int-to-long v10, v1

    sub-long/2addr v8, v10

    if-gez v7, :cond_2

    neg-int v7, v7

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    iget-wide v10, v0, Lo1/r;->m:J

    iget-object v12, v0, Lo1/r;->a:Lo1/H;

    iget-object v12, v12, Lo1/H;->c:LA5/t;

    iget-boolean v13, v0, Lo1/r;->l:Z

    iget-object v15, v0, Lo1/r;->d:Lo1/z;

    iget-object v2, v0, Lo1/r;->e:Lo1/z;

    if-eqz v13, :cond_4

    iget-object v13, v0, Lo1/r;->k:Lo1/q;

    iget-boolean v13, v13, Lo1/q;->c:Z

    if-eqz v13, :cond_3

    goto :goto_2

    :cond_3
    move/from16 v17, v1

    move/from16 v18, v3

    move-object/from16 v19, v4

    move/from16 v20, v5

    move/from16 v23, v6

    move-wide/from16 v21, v8

    goto/16 :goto_5

    :cond_4
    :goto_2
    invoke-virtual {v15, v7}, Lo1/z;->e(I)Z

    invoke-virtual {v2, v7}, Lo1/z;->e(I)Z

    iget-boolean v13, v0, Lo1/r;->l:Z

    if-nez v13, :cond_6

    iget-boolean v13, v15, Lo1/z;->e:Z

    if-eqz v13, :cond_3

    iget-boolean v13, v2, Lo1/z;->e:Z

    if-eqz v13, :cond_3

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iget-object v14, v15, Lo1/z;->f:Ljava/lang/Object;

    check-cast v14, [B

    move/from16 v17, v1

    iget v1, v15, Lo1/z;->c:I

    invoke-static {v14, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v2, Lo1/z;->f:Ljava/lang/Object;

    check-cast v1, [B

    iget v14, v2, Lo1/z;->c:I

    invoke-static {v1, v14}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v15, Lo1/z;->f:Ljava/lang/Object;

    check-cast v1, [B

    iget v14, v15, Lo1/z;->c:I

    move/from16 v18, v3

    const/4 v3, 0x3

    invoke-static {v1, v3, v14}, Ll0/n;->i([BII)Ll0/m;

    move-result-object v1

    iget v3, v1, Ll0/m;->s:I

    iget-object v14, v2, Lo1/z;->f:Ljava/lang/Object;

    check-cast v14, [B

    move-object/from16 v19, v4

    iget v4, v2, Lo1/z;->c:I

    move/from16 v20, v5

    new-instance v5, LI0/N;

    move-wide/from16 v21, v8

    const/4 v8, 0x4

    invoke-direct {v5, v14, v8, v4}, LI0/N;-><init>([BII)V

    invoke-virtual {v5}, LI0/N;->m()I

    move-result v4

    invoke-virtual {v5}, LI0/N;->m()I

    move-result v8

    invoke-virtual {v5}, LI0/N;->s()V

    invoke-virtual {v5}, LI0/N;->h()Z

    move-result v5

    new-instance v9, Ll0/l;

    invoke-direct {v9, v4, v8, v5}, Ll0/l;-><init>(IIZ)V

    iget v5, v1, Ll0/m;->a:I

    iget v8, v1, Ll0/m;->b:I

    iget v14, v1, Ll0/m;->c:I

    sget-object v16, Lk0/e;->a:[B

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v5, v8, v14}, [Ljava/lang/Object;

    move-result-object v5

    const-string v8, "avc1.%02X%02X%02X"

    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v8, v0, Lo1/r;->j:LI0/L;

    new-instance v14, Landroidx/media3/common/Format$Builder;

    invoke-direct {v14}, Landroidx/media3/common/Format$Builder;-><init>()V

    move/from16 v23, v6

    iget-object v6, v0, Lo1/r;->i:Ljava/lang/String;

    invoke-virtual {v14, v6}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v6

    const-string v14, "video/avc"

    invoke-virtual {v6, v14}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    iget v6, v1, Ll0/m;->e:I

    invoke-virtual {v5, v6}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    iget v6, v1, Ll0/m;->f:I

    invoke-virtual {v5, v6}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    new-instance v6, Landroidx/media3/common/ColorInfo$Builder;

    invoke-direct {v6}, Landroidx/media3/common/ColorInfo$Builder;-><init>()V

    iget v14, v1, Ll0/m;->p:I

    invoke-virtual {v6, v14}, Landroidx/media3/common/ColorInfo$Builder;->setColorSpace(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v6

    iget v14, v1, Ll0/m;->q:I

    invoke-virtual {v6, v14}, Landroidx/media3/common/ColorInfo$Builder;->setColorRange(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v6

    iget v14, v1, Ll0/m;->r:I

    invoke-virtual {v6, v14}, Landroidx/media3/common/ColorInfo$Builder;->setColorTransfer(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v6

    iget v14, v1, Ll0/m;->h:I

    add-int/lit8 v14, v14, 0x8

    invoke-virtual {v6, v14}, Landroidx/media3/common/ColorInfo$Builder;->setLumaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v6

    iget v14, v1, Ll0/m;->i:I

    add-int/lit8 v14, v14, 0x8

    invoke-virtual {v6, v14}, Landroidx/media3/common/ColorInfo$Builder;->setChromaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/media3/common/Format$Builder;->setColorInfo(Landroidx/media3/common/ColorInfo;)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    iget v6, v1, Ll0/m;->g:F

    invoke-virtual {v5, v6}, Landroidx/media3/common/Format$Builder;->setPixelWidthHeightRatio(F)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    invoke-virtual {v5, v13}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroidx/media3/common/Format$Builder;->setMaxNumReorderSamples(I)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v5

    invoke-interface {v8, v5}, LI0/L;->format(Landroidx/media3/common/Format;)V

    const/4 v5, 0x1

    iput-boolean v5, v0, Lo1/r;->l:Z

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz v3, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    invoke-static {v5}, Lk0/c;->j(Z)V

    iput v3, v12, LA5/t;->a:I

    invoke-virtual {v12, v3}, LA5/t;->i(I)V

    iget-object v3, v0, Lo1/r;->k:Lo1/q;

    iget-object v3, v3, Lo1/q;->d:Landroid/util/SparseArray;

    iget v5, v1, Ll0/m;->d:I

    invoke-virtual {v3, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v1, v0, Lo1/r;->k:Lo1/q;

    iget-object v1, v1, Lo1/q;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v4, v9}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-virtual {v15}, Lo1/z;->f()V

    invoke-virtual {v2}, Lo1/z;->f()V

    goto :goto_5

    :cond_6
    move/from16 v17, v1

    move/from16 v18, v3

    move-object/from16 v19, v4

    move/from16 v20, v5

    move/from16 v23, v6

    move-wide/from16 v21, v8

    iget-boolean v1, v15, Lo1/z;->e:Z

    if-eqz v1, :cond_8

    iget-object v1, v15, Lo1/z;->f:Ljava/lang/Object;

    check-cast v1, [B

    iget v3, v15, Lo1/z;->c:I

    const/4 v4, 0x3

    invoke-static {v1, v4, v3}, Ll0/n;->i([BII)Ll0/m;

    move-result-object v1

    iget v3, v1, Ll0/m;->s:I

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz v3, :cond_7

    const/4 v4, 0x1

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    :goto_4
    invoke-static {v4}, Lk0/c;->j(Z)V

    iput v3, v12, LA5/t;->a:I

    invoke-virtual {v12, v3}, LA5/t;->i(I)V

    iget-object v3, v0, Lo1/r;->k:Lo1/q;

    iget-object v3, v3, Lo1/q;->d:Landroid/util/SparseArray;

    iget v4, v1, Ll0/m;->d:I

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-virtual {v15}, Lo1/z;->f()V

    goto :goto_5

    :cond_8
    iget-boolean v1, v2, Lo1/z;->e:Z

    if-eqz v1, :cond_9

    iget-object v1, v2, Lo1/z;->f:Ljava/lang/Object;

    check-cast v1, [B

    iget v3, v2, Lo1/z;->c:I

    new-instance v4, LI0/N;

    const/4 v8, 0x4

    invoke-direct {v4, v1, v8, v3}, LI0/N;-><init>([BII)V

    invoke-virtual {v4}, LI0/N;->m()I

    move-result v1

    invoke-virtual {v4}, LI0/N;->m()I

    move-result v3

    invoke-virtual {v4}, LI0/N;->s()V

    invoke-virtual {v4}, LI0/N;->h()Z

    move-result v4

    new-instance v5, Ll0/l;

    invoke-direct {v5, v1, v3, v4}, Ll0/l;-><init>(IIZ)V

    iget-object v3, v0, Lo1/r;->k:Lo1/q;

    iget-object v3, v3, Lo1/q;->e:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-virtual {v2}, Lo1/z;->f()V

    :cond_9
    :goto_5
    iget-object v1, v0, Lo1/r;->f:Lo1/z;

    invoke-virtual {v1, v7}, Lo1/z;->e(I)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, v1, Lo1/z;->f:Ljava/lang/Object;

    check-cast v3, [B

    iget v4, v1, Lo1/z;->c:I

    invoke-static {v3, v4}, Ll0/n;->k([BI)I

    move-result v3

    iget-object v4, v1, Lo1/z;->f:Ljava/lang/Object;

    check-cast v4, [B

    iget-object v5, v0, Lo1/r;->o:Lk0/u;

    invoke-virtual {v5, v4, v3}, Lk0/u;->E([BI)V

    const/4 v8, 0x4

    invoke-virtual {v5, v8}, Lk0/u;->G(I)V

    invoke-virtual {v12, v10, v11, v5}, LA5/t;->a(JLk0/u;)V

    :cond_a
    iget-object v3, v0, Lo1/r;->k:Lo1/q;

    iget-boolean v4, v0, Lo1/r;->l:Z

    iget v5, v3, Lo1/q;->i:I

    const/16 v6, 0x9

    if-eq v5, v6, :cond_12

    iget-boolean v5, v3, Lo1/q;->c:Z

    if-eqz v5, :cond_11

    iget-object v5, v3, Lo1/q;->n:Lo1/p;

    iget-object v6, v3, Lo1/q;->m:Lo1/p;

    iget-boolean v7, v5, Lo1/p;->a:Z

    if-nez v7, :cond_b

    goto/16 :goto_6

    :cond_b
    iget-boolean v7, v6, Lo1/p;->a:Z

    if-nez v7, :cond_c

    goto/16 :goto_7

    :cond_c
    iget-object v7, v5, Lo1/p;->c:Ll0/m;

    invoke-static {v7}, Lk0/c;->k(Ljava/lang/Object;)V

    iget-object v8, v6, Lo1/p;->c:Ll0/m;

    invoke-static {v8}, Lk0/c;->k(Ljava/lang/Object;)V

    iget v8, v8, Ll0/m;->m:I

    iget v9, v5, Lo1/p;->f:I

    iget v10, v6, Lo1/p;->f:I

    if-ne v9, v10, :cond_12

    iget v9, v5, Lo1/p;->g:I

    iget v10, v6, Lo1/p;->g:I

    if-ne v9, v10, :cond_12

    iget-boolean v9, v5, Lo1/p;->h:Z

    iget-boolean v10, v6, Lo1/p;->h:Z

    if-ne v9, v10, :cond_12

    iget-boolean v9, v5, Lo1/p;->i:Z

    if-eqz v9, :cond_d

    iget-boolean v9, v6, Lo1/p;->i:Z

    if-eqz v9, :cond_d

    iget-boolean v9, v5, Lo1/p;->j:Z

    iget-boolean v10, v6, Lo1/p;->j:Z

    if-ne v9, v10, :cond_12

    :cond_d
    iget v9, v5, Lo1/p;->d:I

    iget v10, v6, Lo1/p;->d:I

    if-eq v9, v10, :cond_e

    if-eqz v9, :cond_12

    if-eqz v10, :cond_12

    :cond_e
    iget v7, v7, Ll0/m;->m:I

    if-nez v7, :cond_f

    if-nez v8, :cond_f

    iget v9, v5, Lo1/p;->m:I

    iget v10, v6, Lo1/p;->m:I

    if-ne v9, v10, :cond_12

    iget v9, v5, Lo1/p;->n:I

    iget v10, v6, Lo1/p;->n:I

    if-ne v9, v10, :cond_12

    :cond_f
    const/4 v9, 0x1

    if-ne v7, v9, :cond_10

    if-ne v8, v9, :cond_10

    iget v7, v5, Lo1/p;->o:I

    iget v8, v6, Lo1/p;->o:I

    if-ne v7, v8, :cond_12

    iget v7, v5, Lo1/p;->p:I

    iget v8, v6, Lo1/p;->p:I

    if-ne v7, v8, :cond_12

    :cond_10
    iget-boolean v7, v5, Lo1/p;->k:Z

    iget-boolean v8, v6, Lo1/p;->k:Z

    if-ne v7, v8, :cond_12

    if-eqz v7, :cond_11

    iget v5, v5, Lo1/p;->l:I

    iget v6, v6, Lo1/p;->l:I

    if-eq v5, v6, :cond_11

    goto :goto_7

    :cond_11
    :goto_6
    const/4 v4, 0x0

    goto :goto_9

    :cond_12
    :goto_7
    if-eqz v4, :cond_14

    iget-boolean v4, v3, Lo1/q;->o:Z

    if-eqz v4, :cond_14

    iget-wide v4, v3, Lo1/q;->j:J

    sub-long v8, v21, v4

    long-to-int v6, v8

    add-int v12, v17, v6

    iget-wide v8, v3, Lo1/q;->q:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v8, v6

    if-nez v6, :cond_13

    goto :goto_8

    :cond_13
    iget-boolean v10, v3, Lo1/q;->r:Z

    iget-wide v6, v3, Lo1/q;->p:J

    sub-long/2addr v4, v6

    long-to-int v11, v4

    iget-object v7, v3, Lo1/q;->a:LI0/L;

    const/4 v13, 0x0

    invoke-interface/range {v7 .. v13}, LI0/L;->sampleMetadata(JIIILI0/K;)V

    :cond_14
    :goto_8
    iget-wide v4, v3, Lo1/q;->j:J

    iput-wide v4, v3, Lo1/q;->p:J

    iget-wide v4, v3, Lo1/q;->l:J

    iput-wide v4, v3, Lo1/q;->q:J

    const/4 v4, 0x0

    iput-boolean v4, v3, Lo1/q;->r:Z

    const/4 v5, 0x1

    iput-boolean v5, v3, Lo1/q;->o:Z

    :goto_9
    invoke-virtual {v3}, Lo1/q;->a()V

    iget-boolean v3, v3, Lo1/q;->r:Z

    if-eqz v3, :cond_15

    iput-boolean v4, v0, Lo1/r;->n:Z

    :cond_15
    iget-wide v3, v0, Lo1/r;->m:J

    iget-boolean v5, v0, Lo1/r;->l:Z

    if-eqz v5, :cond_16

    iget-object v5, v0, Lo1/r;->k:Lo1/q;

    iget-boolean v5, v5, Lo1/q;->c:Z

    if-eqz v5, :cond_17

    :cond_16
    move/from16 v5, v23

    goto :goto_a

    :cond_17
    move/from16 v5, v23

    goto :goto_b

    :goto_a
    invoke-virtual {v15, v5}, Lo1/z;->g(I)V

    invoke-virtual {v2, v5}, Lo1/z;->g(I)V

    :goto_b
    invoke-virtual {v1, v5}, Lo1/z;->g(I)V

    iget-object v1, v0, Lo1/r;->k:Lo1/q;

    iget-boolean v2, v0, Lo1/r;->n:Z

    iput v5, v1, Lo1/q;->i:I

    iput-wide v3, v1, Lo1/q;->l:J

    move-wide/from16 v8, v21

    iput-wide v8, v1, Lo1/q;->j:J

    iput-boolean v2, v1, Lo1/q;->s:Z

    iget-boolean v2, v1, Lo1/q;->b:Z

    const/4 v9, 0x1

    if-eqz v2, :cond_18

    if-eq v5, v9, :cond_19

    :cond_18
    iget-boolean v2, v1, Lo1/q;->c:Z

    if-eqz v2, :cond_1a

    const/4 v2, 0x5

    if-eq v5, v2, :cond_19

    if-eq v5, v9, :cond_19

    const/4 v2, 0x2

    if-ne v5, v2, :cond_1a

    :cond_19
    iget-object v2, v1, Lo1/q;->m:Lo1/p;

    iget-object v3, v1, Lo1/q;->n:Lo1/p;

    iput-object v3, v1, Lo1/q;->m:Lo1/p;

    iput-object v2, v1, Lo1/q;->n:Lo1/p;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lo1/p;->b:Z

    iput-boolean v4, v2, Lo1/p;->a:Z

    iput v4, v1, Lo1/q;->h:I

    const/4 v5, 0x1

    iput-boolean v5, v1, Lo1/q;->k:Z

    :cond_1a
    move/from16 v3, v18

    move-object/from16 v4, v19

    move/from16 v2, v20

    goto/16 :goto_0
.end method

.method public final d(Z)V
    .locals 10

    iget-object v0, p0, Lo1/r;->j:LI0/L;

    invoke-static {v0}, Lk0/c;->k(Ljava/lang/Object;)V

    sget v0, Lk0/C;->a:I

    if-eqz p1, :cond_1

    iget-object p1, p0, Lo1/r;->a:Lo1/H;

    iget-object p1, p1, Lo1/H;->c:LA5/t;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LA5/t;->i(I)V

    iget-object p1, p0, Lo1/r;->k:Lo1/q;

    iget-wide v0, p0, Lo1/r;->g:J

    invoke-virtual {p1}, Lo1/q;->a()V

    iput-wide v0, p1, Lo1/q;->j:J

    iget-wide v3, p1, Lo1/q;->q:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v3, v5

    const/4 v7, 0x0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v5, p1, Lo1/q;->r:Z

    iget-wide v8, p1, Lo1/q;->p:J

    sub-long/2addr v0, v8

    long-to-int v6, v0

    iget-object v2, p1, Lo1/q;->a:LI0/L;

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, LI0/L;->sampleMetadata(JIIILI0/K;)V

    :goto_0
    iput-boolean v7, p1, Lo1/q;->o:Z

    :cond_1
    return-void
.end method

.method public final e(IJ)V
    .locals 0

    iput-wide p2, p0, Lo1/r;->m:J

    iget-boolean p2, p0, Lo1/r;->n:Z

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, p2

    iput-boolean p1, p0, Lo1/r;->n:Z

    return-void
.end method

.method public final f(LI0/s;Lo1/K;)V
    .locals 4

    invoke-virtual {p2}, Lo1/K;->a()V

    invoke-virtual {p2}, Lo1/K;->b()V

    iget-object v0, p2, Lo1/K;->e:Ljava/lang/String;

    iput-object v0, p0, Lo1/r;->i:Ljava/lang/String;

    invoke-virtual {p2}, Lo1/K;->b()V

    iget v0, p2, Lo1/K;->d:I

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, LI0/s;->track(II)LI0/L;

    move-result-object v0

    iput-object v0, p0, Lo1/r;->j:LI0/L;

    new-instance v1, Lo1/q;

    iget-boolean v2, p0, Lo1/r;->b:Z

    iget-boolean v3, p0, Lo1/r;->c:Z

    invoke-direct {v1, v0, v2, v3}, Lo1/q;-><init>(LI0/L;ZZ)V

    iput-object v1, p0, Lo1/r;->k:Lo1/q;

    iget-object v0, p0, Lo1/r;->a:Lo1/H;

    invoke-virtual {v0, p1, p2}, Lo1/H;->a(LI0/s;Lo1/K;)V

    return-void
.end method
