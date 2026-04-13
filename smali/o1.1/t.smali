.class public final Lo1/t;
.super Ljava/lang/Object;

# interfaces
.implements Lo1/j;


# instance fields
.field public final a:Lo1/H;

.field public b:Ljava/lang/String;

.field public c:LI0/L;

.field public d:Lo1/s;

.field public e:Z

.field public final f:[Z

.field public final g:Lo1/z;

.field public final h:Lo1/z;

.field public final i:Lo1/z;

.field public final j:Lo1/z;

.field public final k:Lo1/z;

.field public l:J

.field public m:J

.field public final n:Lk0/u;


# direct methods
.method public constructor <init>(Lo1/H;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo1/t;->a:Lo1/H;

    const/4 p1, 0x3

    new-array p1, p1, [Z

    iput-object p1, p0, Lo1/t;->f:[Z

    new-instance p1, Lo1/z;

    const/16 v0, 0x20

    invoke-direct {p1, v0}, Lo1/z;-><init>(I)V

    iput-object p1, p0, Lo1/t;->g:Lo1/z;

    new-instance p1, Lo1/z;

    const/16 v0, 0x21

    invoke-direct {p1, v0}, Lo1/z;-><init>(I)V

    iput-object p1, p0, Lo1/t;->h:Lo1/z;

    new-instance p1, Lo1/z;

    const/16 v0, 0x22

    invoke-direct {p1, v0}, Lo1/z;-><init>(I)V

    iput-object p1, p0, Lo1/t;->i:Lo1/z;

    new-instance p1, Lo1/z;

    const/16 v0, 0x27

    invoke-direct {p1, v0}, Lo1/z;-><init>(I)V

    iput-object p1, p0, Lo1/t;->j:Lo1/z;

    new-instance p1, Lo1/z;

    const/16 v0, 0x28

    invoke-direct {p1, v0}, Lo1/z;-><init>(I)V

    iput-object p1, p0, Lo1/t;->k:Lo1/z;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lo1/t;->m:J

    new-instance p1, Lk0/u;

    invoke-direct {p1}, Lk0/u;-><init>()V

    iput-object p1, p0, Lo1/t;->n:Lk0/u;

    return-void
.end method


# virtual methods
.method public final a([BII)V
    .locals 3

    iget-object v0, p0, Lo1/t;->d:Lo1/s;

    iget-boolean v1, v0, Lo1/s;->f:Z

    if-eqz v1, :cond_2

    add-int/lit8 v1, p2, 0x2

    iget v2, v0, Lo1/s;->d:I

    sub-int/2addr v1, v2

    if-ge v1, p3, :cond_1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0x80

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lo1/s;->g:Z

    iput-boolean v2, v0, Lo1/s;->f:Z

    goto :goto_1

    :cond_1
    sub-int v1, p3, p2

    add-int/2addr v1, v2

    iput v1, v0, Lo1/s;->d:I

    :cond_2
    :goto_1
    iget-boolean v0, p0, Lo1/t;->e:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lo1/t;->g:Lo1/z;

    invoke-virtual {v0, p1, p2, p3}, Lo1/z;->a([BII)V

    iget-object v0, p0, Lo1/t;->h:Lo1/z;

    invoke-virtual {v0, p1, p2, p3}, Lo1/z;->a([BII)V

    iget-object v0, p0, Lo1/t;->i:Lo1/z;

    invoke-virtual {v0, p1, p2, p3}, Lo1/z;->a([BII)V

    :cond_3
    iget-object v0, p0, Lo1/t;->j:Lo1/z;

    invoke-virtual {v0, p1, p2, p3}, Lo1/z;->a([BII)V

    iget-object v0, p0, Lo1/t;->k:Lo1/z;

    invoke-virtual {v0, p1, p2, p3}, Lo1/z;->a([BII)V

    return-void
.end method

.method public final b()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo1/t;->l:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lo1/t;->m:J

    iget-object v0, p0, Lo1/t;->f:[Z

    invoke-static {v0}, Ll0/n;->a([Z)V

    iget-object v0, p0, Lo1/t;->g:Lo1/z;

    invoke-virtual {v0}, Lo1/z;->f()V

    iget-object v0, p0, Lo1/t;->h:Lo1/z;

    invoke-virtual {v0}, Lo1/z;->f()V

    iget-object v0, p0, Lo1/t;->i:Lo1/z;

    invoke-virtual {v0}, Lo1/z;->f()V

    iget-object v0, p0, Lo1/t;->j:Lo1/z;

    invoke-virtual {v0}, Lo1/z;->f()V

    iget-object v0, p0, Lo1/t;->k:Lo1/z;

    invoke-virtual {v0}, Lo1/z;->f()V

    iget-object v0, p0, Lo1/t;->a:Lo1/H;

    iget-object v0, v0, Lo1/H;->c:LA5/t;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LA5/t;->i(I)V

    iget-object v0, p0, Lo1/t;->d:Lo1/s;

    if-eqz v0, :cond_0

    iput-boolean v1, v0, Lo1/s;->f:Z

    iput-boolean v1, v0, Lo1/s;->g:Z

    iput-boolean v1, v0, Lo1/s;->h:Z

    iput-boolean v1, v0, Lo1/s;->i:Z

    iput-boolean v1, v0, Lo1/s;->j:Z

    :cond_0
    return-void
.end method

.method public final c(Lk0/u;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lo1/t;->c:LI0/L;

    invoke-static {v2}, Lk0/c;->k(Ljava/lang/Object;)V

    sget v2, Lk0/C;->a:I

    :goto_0
    invoke-virtual {v1}, Lk0/u;->a()I

    move-result v2

    if-lez v2, :cond_19

    iget v2, v1, Lk0/u;->b:I

    iget v3, v1, Lk0/u;->c:I

    iget-object v4, v1, Lk0/u;->a:[B

    iget-wide v5, v0, Lo1/t;->l:J

    invoke-virtual {v1}, Lk0/u;->a()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, v0, Lo1/t;->l:J

    iget-object v5, v0, Lo1/t;->c:LI0/L;

    invoke-virtual {v1}, Lk0/u;->a()I

    move-result v6

    invoke-interface {v5, v1, v6}, LI0/L;->sampleData(Lk0/u;I)V

    :goto_1
    if-ge v2, v3, :cond_18

    iget-object v5, v0, Lo1/t;->f:[Z

    invoke-static {v4, v2, v3, v5}, Ll0/n;->b([BII[Z)I

    move-result v5

    if-ne v5, v3, :cond_0

    invoke-virtual {v0, v4, v2, v3}, Lo1/t;->a([BII)V

    return-void

    :cond_0
    add-int/lit8 v6, v5, 0x3

    aget-byte v7, v4, v6

    and-int/lit8 v7, v7, 0x7e

    const/4 v8, 0x1

    shr-int/2addr v7, v8

    sub-int v9, v5, v2

    if-lez v9, :cond_1

    invoke-virtual {v0, v4, v2, v5}, Lo1/t;->a([BII)V

    :cond_1
    sub-int v2, v3, v5

    iget-wide v10, v0, Lo1/t;->l:J

    int-to-long v12, v2

    sub-long/2addr v10, v12

    if-gez v9, :cond_2

    neg-int v9, v9

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    iget-wide v12, v0, Lo1/t;->m:J

    iget-object v14, v0, Lo1/t;->a:Lo1/H;

    iget-object v14, v14, Lo1/H;->c:LA5/t;

    iget-object v15, v0, Lo1/t;->d:Lo1/s;

    iget-boolean v8, v0, Lo1/t;->e:Z

    iget-boolean v5, v15, Lo1/s;->j:Z

    if-eqz v5, :cond_4

    iget-boolean v5, v15, Lo1/s;->g:Z

    if-eqz v5, :cond_4

    iget-boolean v5, v15, Lo1/s;->c:Z

    iput-boolean v5, v15, Lo1/s;->m:Z

    const/4 v5, 0x0

    iput-boolean v5, v15, Lo1/s;->j:Z

    :cond_3
    move v5, v3

    move-object v8, v4

    goto :goto_4

    :cond_4
    iget-boolean v5, v15, Lo1/s;->h:Z

    if-nez v5, :cond_5

    iget-boolean v5, v15, Lo1/s;->g:Z

    if-eqz v5, :cond_3

    :cond_5
    if-eqz v8, :cond_6

    iget-boolean v5, v15, Lo1/s;->i:Z

    if-eqz v5, :cond_6

    move v5, v3

    move-object v8, v4

    iget-wide v3, v15, Lo1/s;->b:J

    sub-long v3, v10, v3

    long-to-int v3, v3

    add-int/2addr v3, v2

    invoke-virtual {v15, v3}, Lo1/s;->a(I)V

    goto :goto_3

    :cond_6
    move v5, v3

    move-object v8, v4

    :goto_3
    iget-wide v3, v15, Lo1/s;->b:J

    iput-wide v3, v15, Lo1/s;->k:J

    iget-wide v3, v15, Lo1/s;->e:J

    iput-wide v3, v15, Lo1/s;->l:J

    iget-boolean v3, v15, Lo1/s;->c:Z

    iput-boolean v3, v15, Lo1/s;->m:Z

    const/4 v3, 0x1

    iput-boolean v3, v15, Lo1/s;->i:Z

    :goto_4
    iget-boolean v3, v0, Lo1/t;->e:Z

    iget-object v4, v0, Lo1/t;->g:Lo1/z;

    iget-object v15, v0, Lo1/t;->h:Lo1/z;

    iget-object v1, v0, Lo1/t;->i:Lo1/z;

    if-nez v3, :cond_a

    invoke-virtual {v4, v9}, Lo1/z;->e(I)Z

    invoke-virtual {v15, v9}, Lo1/z;->e(I)Z

    invoke-virtual {v1, v9}, Lo1/z;->e(I)Z

    iget-boolean v3, v4, Lo1/z;->e:Z

    if-eqz v3, :cond_a

    iget-boolean v3, v15, Lo1/z;->e:Z

    if-eqz v3, :cond_a

    iget-boolean v3, v1, Lo1/z;->e:Z

    if-eqz v3, :cond_a

    iget-object v3, v0, Lo1/t;->b:Ljava/lang/String;

    move/from16 v16, v5

    iget v5, v4, Lo1/z;->c:I

    move/from16 v17, v6

    iget v6, v15, Lo1/z;->c:I

    add-int/2addr v6, v5

    move/from16 v18, v6

    iget v6, v1, Lo1/z;->c:I

    add-int v6, v18, v6

    new-array v6, v6, [B

    move-object/from16 v18, v8

    iget-object v8, v4, Lo1/z;->f:Ljava/lang/Object;

    check-cast v8, [B

    move/from16 v19, v2

    const/4 v2, 0x0

    invoke-static {v8, v2, v6, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, v15, Lo1/z;->f:Ljava/lang/Object;

    check-cast v5, [B

    iget v8, v4, Lo1/z;->c:I

    move/from16 v20, v7

    iget v7, v15, Lo1/z;->c:I

    invoke-static {v5, v2, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, v1, Lo1/z;->f:Ljava/lang/Object;

    check-cast v5, [B

    iget v7, v4, Lo1/z;->c:I

    iget v8, v15, Lo1/z;->c:I

    add-int/2addr v7, v8

    iget v8, v1, Lo1/z;->c:I

    invoke-static {v5, v2, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v15, Lo1/z;->f:Ljava/lang/Object;

    check-cast v2, [B

    iget v5, v15, Lo1/z;->c:I

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static {v2, v7, v5, v8}, Ll0/n;->g([BIILK1/c;)Ll0/j;

    move-result-object v2

    iget-object v5, v2, Ll0/j;->a:Ll0/g;

    if-eqz v5, :cond_7

    iget v7, v5, Ll0/g;->a:I

    iget-boolean v8, v5, Ll0/g;->b:Z

    move-object/from16 v27, v6

    iget v6, v5, Ll0/g;->c:I

    move/from16 v23, v6

    iget v6, v5, Ll0/g;->d:I

    move/from16 v24, v6

    iget-object v6, v5, Ll0/g;->e:[I

    iget v5, v5, Ll0/g;->f:I

    move/from16 v26, v5

    move-object/from16 v25, v6

    move/from16 v21, v7

    move/from16 v22, v8

    invoke-static/range {v21 .. v26}, Lk0/e;->a(IZII[II)Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    :cond_7
    move-object/from16 v27, v6

    :goto_5
    new-instance v5, Landroidx/media3/common/Format$Builder;

    invoke-direct {v5}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {v5, v3}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    const-string v5, "video/hevc"

    invoke-virtual {v3, v5}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    iget v5, v2, Ll0/j;->d:I

    invoke-virtual {v3, v5}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    iget v5, v2, Ll0/j;->e:I

    invoke-virtual {v3, v5}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    new-instance v5, Landroidx/media3/common/ColorInfo$Builder;

    invoke-direct {v5}, Landroidx/media3/common/ColorInfo$Builder;-><init>()V

    iget v6, v2, Ll0/j;->h:I

    invoke-virtual {v5, v6}, Landroidx/media3/common/ColorInfo$Builder;->setColorSpace(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v5

    iget v6, v2, Ll0/j;->i:I

    invoke-virtual {v5, v6}, Landroidx/media3/common/ColorInfo$Builder;->setColorRange(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v5

    iget v6, v2, Ll0/j;->j:I

    invoke-virtual {v5, v6}, Landroidx/media3/common/ColorInfo$Builder;->setColorTransfer(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v5

    iget v6, v2, Ll0/j;->b:I

    add-int/lit8 v6, v6, 0x8

    invoke-virtual {v5, v6}, Landroidx/media3/common/ColorInfo$Builder;->setLumaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v5

    iget v6, v2, Ll0/j;->c:I

    add-int/lit8 v6, v6, 0x8

    invoke-virtual {v5, v6}, Landroidx/media3/common/ColorInfo$Builder;->setChromaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/media3/common/Format$Builder;->setColorInfo(Landroidx/media3/common/ColorInfo;)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    iget v5, v2, Ll0/j;->f:F

    invoke-virtual {v3, v5}, Landroidx/media3/common/Format$Builder;->setPixelWidthHeightRatio(F)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    iget v2, v2, Ll0/j;->g:I

    invoke-virtual {v3, v2}, Landroidx/media3/common/Format$Builder;->setMaxNumReorderSamples(I)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    invoke-static/range {v27 .. v27}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v2

    iget-object v3, v0, Lo1/t;->c:LI0/L;

    invoke-interface {v3, v2}, LI0/L;->format(Landroidx/media3/common/Format;)V

    iget v2, v2, Landroidx/media3/common/Format;->maxNumReorderSamples:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_9

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz v2, :cond_8

    const/4 v3, 0x1

    goto :goto_6

    :cond_8
    const/4 v3, 0x0

    :goto_6
    invoke-static {v3}, Lk0/c;->j(Z)V

    iput v2, v14, LA5/t;->a:I

    invoke-virtual {v14, v2}, LA5/t;->i(I)V

    const/4 v3, 0x1

    iput-boolean v3, v0, Lo1/t;->e:Z

    goto :goto_7

    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_a
    move/from16 v19, v2

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v20, v7

    move-object/from16 v18, v8

    :goto_7
    iget-object v2, v0, Lo1/t;->j:Lo1/z;

    invoke-virtual {v2, v9}, Lo1/z;->e(I)Z

    move-result v3

    const/4 v5, 0x5

    iget-object v6, v0, Lo1/t;->n:Lk0/u;

    if-eqz v3, :cond_b

    iget-object v3, v2, Lo1/z;->f:Ljava/lang/Object;

    check-cast v3, [B

    iget v7, v2, Lo1/z;->c:I

    invoke-static {v3, v7}, Ll0/n;->k([BI)I

    move-result v3

    iget-object v7, v2, Lo1/z;->f:Ljava/lang/Object;

    check-cast v7, [B

    invoke-virtual {v6, v7, v3}, Lk0/u;->E([BI)V

    invoke-virtual {v6, v5}, Lk0/u;->H(I)V

    invoke-virtual {v14, v12, v13, v6}, LA5/t;->a(JLk0/u;)V

    :cond_b
    iget-object v3, v0, Lo1/t;->k:Lo1/z;

    invoke-virtual {v3, v9}, Lo1/z;->e(I)Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, v3, Lo1/z;->f:Ljava/lang/Object;

    check-cast v7, [B

    iget v8, v3, Lo1/z;->c:I

    invoke-static {v7, v8}, Ll0/n;->k([BI)I

    move-result v7

    iget-object v8, v3, Lo1/z;->f:Ljava/lang/Object;

    check-cast v8, [B

    invoke-virtual {v6, v8, v7}, Lk0/u;->E([BI)V

    invoke-virtual {v6, v5}, Lk0/u;->H(I)V

    invoke-virtual {v14, v12, v13, v6}, LA5/t;->a(JLk0/u;)V

    :cond_c
    iget-wide v5, v0, Lo1/t;->m:J

    iget-object v7, v0, Lo1/t;->d:Lo1/s;

    iget-boolean v8, v0, Lo1/t;->e:Z

    const/4 v9, 0x0

    iput-boolean v9, v7, Lo1/s;->g:Z

    iput-boolean v9, v7, Lo1/s;->h:Z

    iput-wide v5, v7, Lo1/s;->e:J

    iput v9, v7, Lo1/s;->d:I

    iput-wide v10, v7, Lo1/s;->b:J

    const/16 v5, 0x20

    move/from16 v6, v20

    if-lt v6, v5, :cond_d

    const/16 v9, 0x28

    if-ne v6, v9, :cond_e

    :cond_d
    const/4 v8, 0x1

    const/4 v9, 0x0

    goto :goto_9

    :cond_e
    iget-boolean v9, v7, Lo1/s;->i:Z

    if-eqz v9, :cond_10

    iget-boolean v9, v7, Lo1/s;->j:Z

    if-nez v9, :cond_10

    if-eqz v8, :cond_f

    move/from16 v8, v19

    invoke-virtual {v7, v8}, Lo1/s;->a(I)V

    :cond_f
    const/4 v9, 0x0

    iput-boolean v9, v7, Lo1/s;->i:Z

    goto :goto_8

    :cond_10
    const/4 v9, 0x0

    :goto_8
    if-gt v5, v6, :cond_11

    const/16 v5, 0x23

    if-le v6, v5, :cond_12

    :cond_11
    const/16 v5, 0x27

    if-ne v6, v5, :cond_13

    :cond_12
    iget-boolean v5, v7, Lo1/s;->j:Z

    const/4 v8, 0x1

    xor-int/2addr v5, v8

    iput-boolean v5, v7, Lo1/s;->h:Z

    iput-boolean v8, v7, Lo1/s;->j:Z

    goto :goto_9

    :cond_13
    const/4 v8, 0x1

    :goto_9
    const/16 v5, 0x10

    if-lt v6, v5, :cond_14

    const/16 v5, 0x15

    if-gt v6, v5, :cond_14

    move v5, v8

    goto :goto_a

    :cond_14
    move v5, v9

    :goto_a
    iput-boolean v5, v7, Lo1/s;->c:Z

    if-nez v5, :cond_16

    const/16 v5, 0x9

    if-gt v6, v5, :cond_15

    goto :goto_b

    :cond_15
    move v8, v9

    :cond_16
    :goto_b
    iput-boolean v8, v7, Lo1/s;->f:Z

    iget-boolean v5, v0, Lo1/t;->e:Z

    if-nez v5, :cond_17

    invoke-virtual {v4, v6}, Lo1/z;->g(I)V

    invoke-virtual {v15, v6}, Lo1/z;->g(I)V

    invoke-virtual {v1, v6}, Lo1/z;->g(I)V

    :cond_17
    invoke-virtual {v2, v6}, Lo1/z;->g(I)V

    invoke-virtual {v3, v6}, Lo1/z;->g(I)V

    move-object/from16 v1, p1

    move/from16 v3, v16

    move/from16 v2, v17

    move-object/from16 v4, v18

    goto/16 :goto_1

    :cond_18
    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_19
    return-void
.end method

.method public final d(Z)V
    .locals 5

    iget-object v0, p0, Lo1/t;->c:LI0/L;

    invoke-static {v0}, Lk0/c;->k(Ljava/lang/Object;)V

    sget v0, Lk0/C;->a:I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo1/t;->a:Lo1/H;

    iget-object p1, p1, Lo1/H;->c:LA5/t;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LA5/t;->i(I)V

    iget-object p1, p0, Lo1/t;->d:Lo1/s;

    iget-wide v1, p0, Lo1/t;->l:J

    iget-boolean v3, p1, Lo1/s;->c:Z

    iput-boolean v3, p1, Lo1/s;->m:Z

    iget-wide v3, p1, Lo1/s;->b:J

    sub-long v3, v1, v3

    long-to-int v3, v3

    invoke-virtual {p1, v3}, Lo1/s;->a(I)V

    iget-wide v3, p1, Lo1/s;->b:J

    iput-wide v3, p1, Lo1/s;->k:J

    iput-wide v1, p1, Lo1/s;->b:J

    invoke-virtual {p1, v0}, Lo1/s;->a(I)V

    iput-boolean v0, p1, Lo1/s;->i:Z

    :cond_0
    return-void
.end method

.method public final e(IJ)V
    .locals 0

    iput-wide p2, p0, Lo1/t;->m:J

    return-void
.end method

.method public final f(LI0/s;Lo1/K;)V
    .locals 2

    invoke-virtual {p2}, Lo1/K;->a()V

    invoke-virtual {p2}, Lo1/K;->b()V

    iget-object v0, p2, Lo1/K;->e:Ljava/lang/String;

    iput-object v0, p0, Lo1/t;->b:Ljava/lang/String;

    invoke-virtual {p2}, Lo1/K;->b()V

    iget v0, p2, Lo1/K;->d:I

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, LI0/s;->track(II)LI0/L;

    move-result-object v0

    iput-object v0, p0, Lo1/t;->c:LI0/L;

    new-instance v1, Lo1/s;

    invoke-direct {v1, v0}, Lo1/s;-><init>(LI0/L;)V

    iput-object v1, p0, Lo1/t;->d:Lo1/s;

    iget-object v0, p0, Lo1/t;->a:Lo1/H;

    invoke-virtual {v0, p1, p2}, Lo1/H;->a(LI0/s;Lo1/K;)V

    return-void
.end method
