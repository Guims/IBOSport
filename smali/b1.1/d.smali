.class public final Lb1/d;
.super Ljava/lang/Object;

# interfaces
.implements LI0/q;


# instance fields
.field public final a:J

.field public final b:Lk0/u;

.field public final c:LI0/C;

.field public final d:LI0/y;

.field public final e:LI0/A;

.field public final f:LI0/o;

.field public g:LI0/s;

.field public h:LI0/L;

.field public i:LI0/L;

.field public j:I

.field public k:Landroidx/media3/common/Metadata;

.field public l:J

.field public m:J

.field public n:J

.field public o:J

.field public p:I

.field public q:Lb1/f;

.field public r:Z

.field public s:Z

.field public t:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, v0, v1}, Lb1/d;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lb1/d;->a:J

    new-instance p1, Lk0/u;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Lk0/u;-><init>(I)V

    iput-object p1, p0, Lb1/d;->b:Lk0/u;

    new-instance p1, LI0/C;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb1/d;->c:LI0/C;

    new-instance p1, LI0/y;

    invoke-direct {p1}, LI0/y;-><init>()V

    iput-object p1, p0, Lb1/d;->d:LI0/y;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lb1/d;->l:J

    new-instance p1, LI0/A;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, LI0/A;-><init>(I)V

    iput-object p1, p0, Lb1/d;->e:LI0/A;

    new-instance p1, LI0/o;

    invoke-direct {p1}, LI0/o;-><init>()V

    iput-object p1, p0, Lb1/d;->f:LI0/o;

    iput-object p1, p0, Lb1/d;->i:LI0/L;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lb1/d;->o:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    iget-object v0, p0, Lb1/d;->q:Lb1/f;

    instance-of v1, v0, Lb1/a;

    if-eqz v1, :cond_0

    check-cast v0, Lb1/a;

    invoke-virtual {v0}, Lb1/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lb1/d;->o:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lb1/d;->q:Lb1/f;

    invoke-interface {v2}, Lb1/f;->c()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb1/d;->q:Lb1/f;

    check-cast v0, Lb1/a;

    iget-wide v2, p0, Lb1/d;->o:J

    new-instance v1, Lb1/a;

    iget-wide v4, v0, Lb1/a;->h:J

    iget v6, v0, Lb1/a;->i:I

    iget v7, v0, Lb1/a;->j:I

    iget-boolean v8, v0, Lb1/a;->k:Z

    invoke-direct/range {v1 .. v8}, Lb1/a;-><init>(JJIIZ)V

    iput-object v1, p0, Lb1/d;->q:Lb1/f;

    iget-object v0, p0, Lb1/d;->g:LI0/s;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lb1/d;->q:Lb1/f;

    invoke-interface {v0, v1}, LI0/s;->seekMap(LI0/F;)V

    :cond_0
    return-void
.end method

.method public final b(LI0/r;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lb1/d;->d(LI0/r;Z)Z

    move-result p1

    return p1
.end method

.method public final c(LI0/r;)Z
    .locals 8

    iget-object v0, p0, Lb1/d;->q:Lb1/f;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lb1/f;->c()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    invoke-interface {p1}, LI0/r;->e()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    sub-long/2addr v2, v6

    cmp-long v0, v4, v2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lb1/d;->b:Lk0/u;

    iget-object v0, v0, Lk0/u;->a:[B

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-interface {p1, v0, v2, v3, v1}, LI0/r;->d([BIIZ)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p1, v1

    return p1

    :catch_0
    :goto_0
    return v1
.end method

.method public final d(LI0/r;Z)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz p2, :cond_0

    const v2, 0x8000

    goto :goto_0

    :cond_0
    const/high16 v2, 0x20000

    :goto_0
    invoke-interface {v1}, LI0/r;->j()V

    invoke-interface {v1}, LI0/r;->getPosition()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x0

    if-nez v3, :cond_5

    iget-object v3, v0, Lb1/d;->e:LI0/A;

    iget-object v3, v3, LI0/A;->b:Lk0/u;

    const/4 v5, 0x0

    move v7, v4

    move-object v6, v5

    :goto_1
    :try_start_0
    iget-object v8, v3, Lk0/u;->a:[B

    const/16 v9, 0xa

    invoke-interface {v1, v8, v4, v9}, LI0/r;->o([BII)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v3, v4}, Lk0/u;->G(I)V

    invoke-virtual {v3}, Lk0/u;->x()I

    move-result v8

    const v10, 0x494433

    if-eq v8, v10, :cond_1

    goto :goto_3

    :cond_1
    const/4 v8, 0x3

    invoke-virtual {v3, v8}, Lk0/u;->H(I)V

    invoke-virtual {v3}, Lk0/u;->t()I

    move-result v8

    add-int/lit8 v10, v8, 0xa

    if-nez v6, :cond_2

    new-array v6, v10, [B

    iget-object v11, v3, Lk0/u;->a:[B

    invoke-static {v11, v4, v6, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v1, v6, v9, v8}, LI0/r;->o([BII)V

    new-instance v8, LW0/i;

    invoke-direct {v8, v5}, LW0/i;-><init>(LW0/g;)V

    invoke-virtual {v8, v6, v10}, LW0/i;->s([BI)Landroidx/media3/common/Metadata;

    move-result-object v6

    goto :goto_2

    :cond_2
    invoke-interface {v1, v8}, LI0/r;->f(I)V

    :goto_2
    add-int/2addr v7, v10

    goto :goto_1

    :catch_0
    :goto_3
    invoke-interface {v1}, LI0/r;->j()V

    invoke-interface {v1, v7}, LI0/r;->f(I)V

    iput-object v6, v0, Lb1/d;->k:Landroidx/media3/common/Metadata;

    if-eqz v6, :cond_3

    iget-object v3, v0, Lb1/d;->d:LI0/y;

    invoke-virtual {v3, v6}, LI0/y;->b(Landroidx/media3/common/Metadata;)V

    :cond_3
    invoke-interface {v1}, LI0/r;->e()J

    move-result-wide v5

    long-to-int v3, v5

    if-nez p2, :cond_4

    invoke-interface {v1, v3}, LI0/r;->n(I)V

    :cond_4
    move v5, v4

    :goto_4
    move v6, v5

    move v7, v6

    goto :goto_5

    :cond_5
    move v3, v4

    move v5, v3

    goto :goto_4

    :goto_5
    invoke-virtual/range {p0 .. p1}, Lb1/d;->c(LI0/r;)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_7

    if-lez v6, :cond_6

    goto :goto_7

    :cond_6
    invoke-virtual {v0}, Lb1/d;->a()V

    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    :cond_7
    iget-object v8, v0, Lb1/d;->b:Lk0/u;

    invoke-virtual {v8, v4}, Lk0/u;->G(I)V

    invoke-virtual {v8}, Lk0/u;->g()I

    move-result v8

    if-eqz v5, :cond_8

    int-to-long v10, v5

    const v12, -0x1f400

    and-int/2addr v12, v8

    int-to-long v12, v12

    const-wide/32 v14, -0x1f400

    and-long/2addr v10, v14

    cmp-long v10, v12, v10

    if-nez v10, :cond_9

    :cond_8
    invoke-static {v8}, LI0/b;->f(I)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_d

    :cond_9
    add-int/lit8 v5, v7, 0x1

    if-ne v7, v2, :cond_b

    if-eqz p2, :cond_a

    return v4

    :cond_a
    invoke-virtual {v0}, Lb1/d;->a()V

    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    :cond_b
    if-eqz p2, :cond_c

    invoke-interface {v1}, LI0/r;->j()V

    add-int v6, v3, v5

    invoke-interface {v1, v6}, LI0/r;->f(I)V

    goto :goto_6

    :cond_c
    invoke-interface {v1, v9}, LI0/r;->n(I)V

    :goto_6
    move v6, v4

    move v7, v5

    move v5, v6

    goto :goto_5

    :cond_d
    add-int/lit8 v6, v6, 0x1

    if-ne v6, v9, :cond_e

    iget-object v5, v0, Lb1/d;->c:LI0/C;

    invoke-virtual {v5, v8}, LI0/C;->a(I)Z

    move v5, v8

    goto :goto_9

    :cond_e
    const/4 v8, 0x4

    if-ne v6, v8, :cond_10

    :goto_7
    if-eqz p2, :cond_f

    add-int/2addr v3, v7

    invoke-interface {v1, v3}, LI0/r;->n(I)V

    goto :goto_8

    :cond_f
    invoke-interface {v1}, LI0/r;->j()V

    :goto_8
    iput v5, v0, Lb1/d;->j:I

    return v9

    :cond_10
    :goto_9
    add-int/lit8 v10, v10, -0x4

    invoke-interface {v1, v10}, LI0/r;->f(I)V

    goto :goto_5
.end method

.method public final e(LI0/r;LI0/D;)I
    .locals 54

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lb1/d;->h:LI0/L;

    invoke-static {v2}, Lk0/c;->k(Ljava/lang/Object;)V

    sget v2, Lk0/C;->a:I

    iget v2, v0, Lb1/d;->j:I

    const/4 v7, 0x0

    iget-object v8, v0, Lb1/d;->c:LI0/C;

    if-nez v2, :cond_0

    :try_start_0
    invoke-virtual {v0, v1, v7}, Lb1/d;->d(LI0/r;Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 p2, 0x0

    const/4 v7, -0x1

    const/4 v12, -0x1

    const-wide/32 v16, 0xf4240

    goto/16 :goto_29

    :cond_0
    :goto_0
    iget-object v2, v0, Lb1/d;->q:Lb1/f;

    iget-object v9, v0, Lb1/d;->b:Lk0/u;

    const/4 v10, 0x1

    if-nez v2, :cond_31

    new-instance v2, Lk0/u;

    iget v15, v8, LI0/C;->b:I

    invoke-direct {v2, v15}, Lk0/u;-><init>(I)V

    iget-object v15, v2, Lk0/u;->a:[B

    const-wide/32 v16, 0xf4240

    iget v3, v8, LI0/C;->b:I

    invoke-interface {v1, v15, v7, v3}, LI0/r;->o([BII)V

    iget v3, v8, LI0/C;->a:I

    and-int/2addr v3, v10

    const/16 v4, 0x24

    const/16 v15, 0x15

    if-eqz v3, :cond_2

    iget v3, v8, LI0/C;->d:I

    if-eq v3, v10, :cond_1

    move v3, v4

    :goto_1
    const/16 p2, 0x0

    goto :goto_3

    :cond_1
    :goto_2
    move v3, v15

    goto :goto_1

    :cond_2
    iget v3, v8, LI0/C;->d:I

    if-eq v3, v10, :cond_3

    goto :goto_2

    :cond_3
    const/16 v3, 0xd

    goto :goto_1

    :goto_3
    iget v5, v2, Lk0/u;->c:I

    const-wide/16 v18, 0x0

    add-int/lit8 v13, v3, 0x4

    const v14, 0x496e666f

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    const v11, 0x56425249

    const v12, 0x58696e67

    if-lt v5, v13, :cond_4

    invoke-virtual {v2, v3}, Lk0/u;->G(I)V

    invoke-virtual {v2}, Lk0/u;->g()I

    move-result v3

    if-eq v3, v12, :cond_6

    if-ne v3, v14, :cond_4

    goto :goto_4

    :cond_4
    iget v3, v2, Lk0/u;->c:I

    const/16 v5, 0x28

    if-lt v3, v5, :cond_5

    invoke-virtual {v2, v4}, Lk0/u;->G(I)V

    invoke-virtual {v2}, Lk0/u;->g()I

    move-result v3

    if-ne v3, v11, :cond_5

    move v3, v11

    goto :goto_4

    :cond_5
    move v3, v7

    :cond_6
    :goto_4
    iget-object v4, v0, Lb1/d;->d:LI0/y;

    const-wide/16 v22, -0x1

    if-eq v3, v14, :cond_11

    if-eq v3, v11, :cond_7

    if-eq v3, v12, :cond_11

    invoke-interface {v1}, LI0/r;->j()V

    move-object/from16 v35, p2

    :goto_5
    move-object v15, v4

    goto/16 :goto_1b

    :cond_7
    invoke-interface {v1}, LI0/r;->getLength()J

    move-result-wide v11

    invoke-interface {v1}, LI0/r;->getPosition()J

    move-result-wide v13

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lk0/u;->H(I)V

    invoke-virtual {v2}, Lk0/u;->g()I

    move-result v3

    iget v15, v8, LI0/C;->b:I

    int-to-long v6, v15

    add-long/2addr v6, v13

    move-wide/from16 v26, v6

    int-to-long v5, v3

    add-long v6, v26, v5

    invoke-virtual {v2}, Lk0/u;->g()I

    move-result v3

    if-gtz v3, :cond_8

    :goto_6
    move-object/from16 v35, p2

    goto/16 :goto_b

    :cond_8
    iget v5, v8, LI0/C;->c:I

    move-wide/from16 v33, v11

    int-to-long v10, v3

    const/16 v3, 0x7d00

    if-lt v5, v3, :cond_9

    const/16 v3, 0x480

    :goto_7
    move-wide/from16 v26, v10

    goto :goto_8

    :cond_9
    const/16 v3, 0x240

    goto :goto_7

    :goto_8
    int-to-long v10, v3

    mul-long v28, v10, v16

    int-to-long v10, v5

    sget-object v32, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v30, v10

    invoke-static/range {v26 .. v32}, Lk0/C;->Y(JJJLjava/math/RoundingMode;)J

    move-result-wide v38

    invoke-virtual {v2}, Lk0/u;->A()I

    move-result v3

    invoke-virtual {v2}, Lk0/u;->A()I

    move-result v5

    invoke-virtual {v2}, Lk0/u;->A()I

    move-result v10

    const/4 v11, 0x2

    invoke-virtual {v2, v11}, Lk0/u;->H(I)V

    iget v12, v8, LI0/C;->b:I

    int-to-long v11, v12

    add-long/2addr v13, v11

    new-array v11, v3, [J

    new-array v12, v3, [J

    const/4 v15, 0x0

    :goto_9
    if-ge v15, v3, :cond_e

    move-object/from16 v36, v11

    move-object/from16 v37, v12

    int-to-long v11, v15

    mul-long v11, v11, v38

    move-wide/from16 v27, v11

    int-to-long v11, v3

    div-long v11, v27, v11

    aput-wide v11, v36, v15

    aput-wide v13, v37, v15

    const/4 v11, 0x1

    if-eq v10, v11, :cond_d

    const/4 v11, 0x2

    if-eq v10, v11, :cond_c

    const/4 v12, 0x3

    if-eq v10, v12, :cond_b

    const/4 v12, 0x4

    if-eq v10, v12, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {v2}, Lk0/u;->y()I

    move-result v12

    goto :goto_a

    :cond_b
    invoke-virtual {v2}, Lk0/u;->x()I

    move-result v12

    goto :goto_a

    :cond_c
    invoke-virtual {v2}, Lk0/u;->A()I

    move-result v12

    goto :goto_a

    :cond_d
    const/4 v11, 0x2

    invoke-virtual {v2}, Lk0/u;->u()I

    move-result v12

    :goto_a
    int-to-long v11, v12

    move/from16 v27, v10

    move-wide/from16 v28, v11

    int-to-long v10, v5

    mul-long v11, v28, v10

    add-long/2addr v13, v11

    add-int/lit8 v15, v15, 0x1

    move/from16 v10, v27

    move-object/from16 v11, v36

    move-object/from16 v12, v37

    goto :goto_9

    :cond_e
    move-object/from16 v36, v11

    move-object/from16 v37, v12

    cmp-long v2, v33, v22

    const-string v3, ", "

    const-string v5, "VbriSeeker"

    if-eqz v2, :cond_f

    cmp-long v2, v33, v6

    if-eqz v2, :cond_f

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v10, "VBRI data size mismatch: "

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v10, v33

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lk0/c;->z(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    cmp-long v2, v6, v13

    if-eqz v2, :cond_10

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v10, "VBRI bytes and ToC mismatch (using max): "

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "\nSeeking will be inaccurate."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lk0/c;->z(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v7, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    :cond_10
    move-wide/from16 v40, v6

    new-instance v35, Lb1/g;

    iget v2, v8, LI0/C;->e:I

    move/from16 v42, v2

    invoke-direct/range {v35 .. v42}, Lb1/g;-><init>([J[JJJI)V

    :goto_b
    iget v2, v8, LI0/C;->b:I

    invoke-interface {v1, v2}, LI0/r;->n(I)V

    goto/16 :goto_5

    :cond_11
    invoke-virtual {v2}, Lk0/u;->g()I

    move-result v5

    and-int/lit8 v6, v5, 0x1

    if-eqz v6, :cond_12

    invoke-virtual {v2}, Lk0/u;->y()I

    move-result v6

    goto :goto_c

    :cond_12
    const/4 v6, -0x1

    :goto_c
    and-int/lit8 v7, v5, 0x2

    if-eqz v7, :cond_13

    invoke-virtual {v2}, Lk0/u;->w()J

    move-result-wide v10

    move-wide/from16 v40, v10

    goto :goto_d

    :cond_13
    move-wide/from16 v40, v22

    :goto_d
    and-int/lit8 v7, v5, 0x4

    const/4 v10, 0x4

    if-ne v7, v10, :cond_15

    const/16 v7, 0x64

    new-array v10, v7, [J

    const/4 v11, 0x0

    :goto_e
    if-ge v11, v7, :cond_14

    invoke-virtual {v2}, Lk0/u;->u()I

    move-result v13

    int-to-long v13, v13

    aput-wide v13, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    :cond_14
    move-object/from16 v42, v10

    goto :goto_f

    :cond_15
    move-object/from16 v42, p2

    :goto_f
    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_16

    const/4 v10, 0x4

    invoke-virtual {v2, v10}, Lk0/u;->H(I)V

    :cond_16
    invoke-virtual {v2}, Lk0/u;->a()I

    move-result v5

    const/16 v7, 0x18

    if-lt v5, v7, :cond_17

    invoke-virtual {v2, v15}, Lk0/u;->H(I)V

    invoke-virtual {v2}, Lk0/u;->x()I

    move-result v2

    const v5, 0xfff000

    and-int/2addr v5, v2

    shr-int/lit8 v5, v5, 0xc

    and-int/lit16 v2, v2, 0xfff

    goto :goto_10

    :cond_17
    const/4 v2, -0x1

    const/4 v5, -0x1

    :goto_10
    int-to-long v6, v6

    iget v10, v8, LI0/C;->b:I

    iget v11, v8, LI0/C;->c:I

    iget v13, v8, LI0/C;->e:I

    iget v14, v8, LI0/C;->f:I

    iget v15, v4, LI0/y;->a:I

    const/4 v12, -0x1

    if-eq v15, v12, :cond_18

    iget v15, v4, LI0/y;->b:I

    if-eq v15, v12, :cond_18

    goto :goto_11

    :cond_18
    if-eq v5, v12, :cond_19

    if-eq v2, v12, :cond_19

    iput v5, v4, LI0/y;->a:I

    iput v2, v4, LI0/y;->b:I

    :cond_19
    :goto_11
    invoke-interface {v1}, LI0/r;->getPosition()J

    move-result-wide v44

    invoke-interface {v1}, LI0/r;->getLength()J

    move-result-wide v27

    cmp-long v2, v27, v22

    if-eqz v2, :cond_1b

    cmp-long v2, v40, v22

    if-eqz v2, :cond_1b

    invoke-interface {v1}, LI0/r;->getLength()J

    move-result-wide v27

    move/from16 v39, v13

    add-long v12, v44, v40

    cmp-long v2, v27, v12

    if-eqz v2, :cond_1a

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Data size mismatch between stream ("

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v15, v4

    invoke-interface {v1}, LI0/r;->getLength()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ") and Xing frame ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "), using Xing value."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Mp3Extractor"

    invoke-static {v4, v2}, Lk0/c;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_1a
    move-object v15, v4

    goto :goto_12

    :cond_1b
    move-object v15, v4

    move/from16 v39, v13

    :goto_12
    iget v2, v8, LI0/C;->b:I

    invoke-interface {v1, v2}, LI0/r;->n(I)V

    const-wide/16 v4, 0x1

    const v2, 0x58696e67

    if-ne v3, v2, :cond_22

    cmp-long v2, v6, v22

    if-eqz v2, :cond_1d

    cmp-long v2, v6, v18

    if-nez v2, :cond_1c

    goto :goto_13

    :cond_1c
    int-to-long v2, v14

    mul-long/2addr v6, v2

    sub-long/2addr v6, v4

    invoke-static {v11, v6, v7}, Lk0/C;->W(IJ)J

    move-result-wide v2

    move-wide/from16 v47, v2

    goto :goto_14

    :cond_1d
    :goto_13
    move-wide/from16 v47, v20

    :goto_14
    cmp-long v2, v47, v20

    if-nez v2, :cond_1f

    :cond_1e
    :goto_15
    move-object/from16 v35, p2

    goto/16 :goto_1b

    :cond_1f
    cmp-long v2, v40, v22

    if-eqz v2, :cond_20

    if-nez v42, :cond_21

    :cond_20
    move/from16 v46, v10

    goto :goto_16

    :cond_21
    new-instance v33, Lb1/h;

    move/from16 v36, v10

    move-wide/from16 v34, v44

    move-wide/from16 v37, v47

    invoke-direct/range {v33 .. v42}, Lb1/h;-><init>(JIJIJ[J)V

    move-object/from16 v35, v33

    goto/16 :goto_1b

    :goto_16
    new-instance v43, Lb1/h;

    const-wide/16 v50, -0x1

    const/16 v52, 0x0

    move/from16 v49, v39

    invoke-direct/range {v43 .. v52}, Lb1/h;-><init>(JIJIJ[J)V

    move-object/from16 v35, v43

    goto :goto_1b

    :cond_22
    move v2, v10

    invoke-interface {v1}, LI0/r;->getLength()J

    move-result-wide v12

    cmp-long v3, v6, v22

    if-eqz v3, :cond_24

    cmp-long v3, v6, v18

    if-nez v3, :cond_23

    goto :goto_17

    :cond_23
    move-wide/from16 v26, v4

    int-to-long v4, v14

    mul-long/2addr v4, v6

    sub-long v4, v4, v26

    invoke-static {v11, v4, v5}, Lk0/C;->W(IJ)J

    move-result-wide v3

    move-wide/from16 v30, v3

    goto :goto_18

    :cond_24
    :goto_17
    move-wide/from16 v30, v20

    :goto_18
    cmp-long v3, v30, v20

    if-nez v3, :cond_25

    goto :goto_15

    :cond_25
    cmp-long v3, v40, v22

    if-eqz v3, :cond_26

    add-long v12, v44, v40

    int-to-long v3, v2

    sub-long v40, v40, v3

    :goto_19
    move-wide/from16 v47, v12

    move-wide/from16 v26, v40

    goto :goto_1a

    :cond_26
    cmp-long v3, v12, v22

    if-eqz v3, :cond_1e

    sub-long v3, v12, v44

    int-to-long v10, v2

    sub-long v40, v3, v10

    goto :goto_19

    :goto_1a
    sget-object v32, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    const-wide/32 v28, 0x7a1200

    invoke-static/range {v26 .. v32}, Lk0/C;->Y(JJJLjava/math/RoundingMode;)J

    move-result-wide v3

    move-wide/from16 v10, v26

    move-object/from16 v5, v32

    invoke-static {v3, v4}, La/a;->f(J)I

    move-result v51

    invoke-static {v10, v11, v6, v7, v5}, LE5/l;->r(JJLjava/math/RoundingMode;)J

    move-result-wide v3

    invoke-static {v3, v4}, La/a;->f(J)I

    move-result v52

    new-instance v46, Lb1/a;

    int-to-long v2, v2

    add-long v49, v44, v2

    const/16 v53, 0x0

    invoke-direct/range {v46 .. v53}, Lb1/a;-><init>(JJIIZ)V

    move-object/from16 v35, v46

    :goto_1b
    iget-object v2, v0, Lb1/d;->k:Landroidx/media3/common/Metadata;

    invoke-interface {v1}, LI0/r;->getPosition()J

    move-result-wide v3

    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Landroidx/media3/common/Metadata;->length()I

    move-result v5

    const/4 v6, 0x0

    :goto_1c
    if-ge v6, v5, :cond_2b

    invoke-virtual {v2, v6}, Landroidx/media3/common/Metadata;->get(I)Landroidx/media3/common/Metadata$Entry;

    move-result-object v7

    instance-of v10, v7, LW0/m;

    if-eqz v10, :cond_2a

    check-cast v7, LW0/m;

    iget-object v5, v7, LW0/m;->t:[I

    if-eqz v2, :cond_28

    invoke-virtual {v2}, Landroidx/media3/common/Metadata;->length()I

    move-result v6

    const/4 v10, 0x0

    :goto_1d
    if-ge v10, v6, :cond_28

    invoke-virtual {v2, v10}, Landroidx/media3/common/Metadata;->get(I)Landroidx/media3/common/Metadata$Entry;

    move-result-object v11

    instance-of v12, v11, LW0/o;

    if-eqz v12, :cond_27

    check-cast v11, LW0/o;

    iget-object v12, v11, LW0/j;->b:Ljava/lang/String;

    const-string v13, "TLEN"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_27

    iget-object v2, v11, LW0/o;->r:Lp3/H;

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Lk0/C;->Q(J)J

    move-result-wide v10

    goto :goto_1e

    :cond_27
    add-int/lit8 v10, v10, 0x1

    goto :goto_1d

    :cond_28
    move-wide/from16 v10, v20

    :goto_1e
    array-length v2, v5

    add-int/lit8 v6, v2, 0x1

    new-array v12, v6, [J

    new-array v6, v6, [J

    const/16 v24, 0x0

    aput-wide v3, v12, v24

    aput-wide v18, v6, v24

    move-wide/from16 v22, v18

    const/4 v13, 0x1

    :goto_1f
    if-gt v13, v2, :cond_29

    iget v14, v7, LW0/m;->r:I

    add-int/lit8 v26, v13, -0x1

    aget v27, v5, v26

    add-int v14, v14, v27

    move/from16 v27, v2

    move-wide/from16 v28, v3

    int-to-long v2, v14

    add-long v3, v28, v2

    iget v2, v7, LW0/m;->s:I

    iget-object v14, v7, LW0/m;->u:[I

    aget v14, v14, v26

    add-int/2addr v2, v14

    move-wide/from16 v28, v3

    int-to-long v2, v2

    add-long v22, v22, v2

    aput-wide v28, v12, v13

    aput-wide v22, v6, v13

    add-int/lit8 v13, v13, 0x1

    move/from16 v2, v27

    move-wide/from16 v3, v28

    goto :goto_1f

    :cond_29
    new-instance v2, Lb1/c;

    invoke-direct {v2, v10, v11, v12, v6}, Lb1/c;-><init>(J[J[J)V

    goto :goto_20

    :cond_2a
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1c

    :cond_2b
    move-object/from16 v2, p2

    :goto_20
    iget-boolean v3, v0, Lb1/d;->r:Z

    if-eqz v3, :cond_2c

    new-instance v2, Lb1/e;

    move-wide/from16 v3, v20

    invoke-direct {v2, v3, v4}, LI0/v;-><init>(J)V

    goto :goto_22

    :cond_2c
    if-eqz v2, :cond_2d

    move-object/from16 v35, v2

    goto :goto_21

    :cond_2d
    if-eqz v35, :cond_2e

    goto :goto_21

    :cond_2e
    move-object/from16 v35, p2

    :goto_21
    if-eqz v35, :cond_2f

    invoke-interface/range {v35 .. v35}, LI0/F;->d()Z

    move-object/from16 v2, v35

    goto :goto_22

    :cond_2f
    iget-object v2, v9, Lk0/u;->a:[B

    const/4 v6, 0x0

    const/4 v10, 0x4

    invoke-interface {v1, v2, v6, v10}, LI0/r;->o([BII)V

    invoke-virtual {v9, v6}, Lk0/u;->G(I)V

    invoke-virtual {v9}, Lk0/u;->g()I

    move-result v2

    invoke-virtual {v8, v2}, LI0/C;->a(I)Z

    new-instance v25, Lb1/a;

    invoke-interface {v1}, LI0/r;->getLength()J

    move-result-wide v26

    invoke-interface {v1}, LI0/r;->getPosition()J

    move-result-wide v28

    iget v2, v8, LI0/C;->e:I

    iget v3, v8, LI0/C;->b:I

    const/16 v32, 0x0

    move/from16 v30, v2

    move/from16 v31, v3

    invoke-direct/range {v25 .. v32}, Lb1/a;-><init>(JJIIZ)V

    move-object/from16 v2, v25

    :goto_22
    iput-object v2, v0, Lb1/d;->q:Lb1/f;

    iget-object v3, v0, Lb1/d;->g:LI0/s;

    invoke-interface {v3, v2}, LI0/s;->seekMap(LI0/F;)V

    new-instance v2, Landroidx/media3/common/Format$Builder;

    invoke-direct {v2}, Landroidx/media3/common/Format$Builder;-><init>()V

    iget-object v3, v8, LI0/C;->g:Ljava/io/Serializable;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroidx/media3/common/Format$Builder;->setMaxInputSize(I)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    iget v3, v8, LI0/C;->d:I

    invoke-virtual {v2, v3}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    iget v3, v8, LI0/C;->c:I

    invoke-virtual {v2, v3}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    iget v3, v15, LI0/y;->a:I

    invoke-virtual {v2, v3}, Landroidx/media3/common/Format$Builder;->setEncoderDelay(I)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    iget v3, v15, LI0/y;->b:I

    invoke-virtual {v2, v3}, Landroidx/media3/common/Format$Builder;->setEncoderPadding(I)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    iget-object v3, v0, Lb1/d;->k:Landroidx/media3/common/Metadata;

    invoke-virtual {v2, v3}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    iget-object v3, v0, Lb1/d;->q:Lb1/f;

    invoke-interface {v3}, Lb1/f;->i()I

    move-result v3

    const v4, -0x7fffffff

    if-eq v3, v4, :cond_30

    iget-object v3, v0, Lb1/d;->q:Lb1/f;

    invoke-interface {v3}, Lb1/f;->i()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    :cond_30
    iget-object v3, v0, Lb1/d;->i:LI0/L;

    invoke-virtual {v2}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v2

    invoke-interface {v3, v2}, LI0/L;->format(Landroidx/media3/common/Format;)V

    invoke-interface {v1}, LI0/r;->getPosition()J

    move-result-wide v2

    iput-wide v2, v0, Lb1/d;->n:J

    goto :goto_23

    :cond_31
    const/16 p2, 0x0

    const-wide/32 v16, 0xf4240

    const-wide/16 v18, 0x0

    iget-wide v2, v0, Lb1/d;->n:J

    cmp-long v2, v2, v18

    if-eqz v2, :cond_32

    invoke-interface {v1}, LI0/r;->getPosition()J

    move-result-wide v2

    iget-wide v4, v0, Lb1/d;->n:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_32

    sub-long/2addr v4, v2

    long-to-int v2, v4

    invoke-interface {v1, v2}, LI0/r;->n(I)V

    :cond_32
    :goto_23
    iget v2, v0, Lb1/d;->p:I

    if-nez v2, :cond_37

    invoke-interface {v1}, LI0/r;->j()V

    invoke-virtual/range {p0 .. p1}, Lb1/d;->c(LI0/r;)Z

    move-result v2

    if-eqz v2, :cond_33

    goto/16 :goto_28

    :cond_33
    const/4 v6, 0x0

    invoke-virtual {v9, v6}, Lk0/u;->G(I)V

    invoke-virtual {v9}, Lk0/u;->g()I

    move-result v2

    iget v3, v0, Lb1/d;->j:I

    int-to-long v3, v3

    const v5, -0x1f400

    and-int/2addr v5, v2

    int-to-long v5, v5

    const-wide/32 v9, -0x1f400

    and-long/2addr v3, v9

    cmp-long v3, v5, v3

    if-nez v3, :cond_34

    invoke-static {v2}, LI0/b;->f(I)I

    move-result v3

    const/4 v12, -0x1

    if-ne v3, v12, :cond_35

    :cond_34
    const/4 v11, 0x1

    goto :goto_24

    :cond_35
    invoke-virtual {v8, v2}, LI0/C;->a(I)Z

    iget-wide v2, v0, Lb1/d;->l:J

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v20

    if-nez v2, :cond_36

    iget-object v2, v0, Lb1/d;->q:Lb1/f;

    invoke-interface {v1}, LI0/r;->getPosition()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lb1/f;->a(J)J

    move-result-wide v2

    iput-wide v2, v0, Lb1/d;->l:J

    iget-wide v2, v0, Lb1/d;->a:J

    cmp-long v4, v2, v20

    if-eqz v4, :cond_36

    iget-object v4, v0, Lb1/d;->q:Lb1/f;

    move-wide/from16 v5, v18

    invoke-interface {v4, v5, v6}, Lb1/f;->a(J)J

    move-result-wide v4

    iget-wide v6, v0, Lb1/d;->l:J

    sub-long/2addr v2, v4

    add-long/2addr v2, v6

    iput-wide v2, v0, Lb1/d;->l:J

    :cond_36
    iget v2, v8, LI0/C;->b:I

    iput v2, v0, Lb1/d;->p:I

    invoke-interface {v1}, LI0/r;->getPosition()J

    move-result-wide v2

    iget v4, v8, LI0/C;->b:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lb1/d;->o:J

    iget-object v2, v0, Lb1/d;->q:Lb1/f;

    instance-of v2, v2, Lb1/b;

    if-nez v2, :cond_38

    :cond_37
    const/4 v11, 0x1

    goto :goto_27

    :cond_38
    iget-wide v1, v0, Lb1/d;->m:J

    iget v3, v8, LI0/C;->f:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    mul-long v1, v1, v16

    iget v3, v8, LI0/C;->c:I

    int-to-long v3, v3

    div-long/2addr v1, v3

    throw p2

    :goto_24
    invoke-interface {v1, v11}, LI0/r;->n(I)V

    const/4 v6, 0x0

    iput v6, v0, Lb1/d;->j:I

    :goto_25
    const/4 v7, 0x0

    :goto_26
    const/4 v12, -0x1

    goto :goto_29

    :goto_27
    iget-object v2, v0, Lb1/d;->i:LI0/L;

    iget v3, v0, Lb1/d;->p:I

    invoke-interface {v2, v1, v3, v11}, LI0/L;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result v1

    const/4 v12, -0x1

    if-ne v1, v12, :cond_39

    :goto_28
    const/4 v7, -0x1

    goto :goto_26

    :cond_39
    iget v2, v0, Lb1/d;->p:I

    sub-int/2addr v2, v1

    iput v2, v0, Lb1/d;->p:I

    if-lez v2, :cond_3a

    goto :goto_25

    :cond_3a
    iget-object v9, v0, Lb1/d;->i:LI0/L;

    iget-wide v1, v0, Lb1/d;->m:J

    iget-wide v3, v0, Lb1/d;->l:J

    mul-long v1, v1, v16

    iget v5, v8, LI0/C;->c:I

    int-to-long v5, v5

    div-long/2addr v1, v5

    add-long v10, v1, v3

    iget v13, v8, LI0/C;->b:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v12, 0x1

    invoke-interface/range {v9 .. v15}, LI0/L;->sampleMetadata(JIIILI0/K;)V

    iget-wide v1, v0, Lb1/d;->m:J

    iget v3, v8, LI0/C;->f:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lb1/d;->m:J

    const/4 v6, 0x0

    iput v6, v0, Lb1/d;->p:I

    move v7, v6

    goto :goto_26

    :goto_29
    if-ne v7, v12, :cond_3c

    iget-object v1, v0, Lb1/d;->q:Lb1/f;

    instance-of v2, v1, Lb1/b;

    if-eqz v2, :cond_3c

    iget-wide v2, v0, Lb1/d;->m:J

    iget-wide v4, v0, Lb1/d;->l:J

    mul-long v2, v2, v16

    iget v6, v8, LI0/C;->c:I

    int-to-long v8, v6

    div-long/2addr v2, v8

    add-long/2addr v2, v4

    invoke-interface {v1}, LI0/F;->j()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-nez v1, :cond_3b

    goto :goto_2a

    :cond_3b
    iget-object v1, v0, Lb1/d;->q:Lb1/f;

    check-cast v1, Lb1/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw p2

    :cond_3c
    :goto_2a
    return v7
.end method

.method public final f(JJ)V
    .locals 2

    const/4 p1, 0x0

    iput p1, p0, Lb1/d;->j:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lb1/d;->l:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lb1/d;->m:J

    iput p1, p0, Lb1/d;->p:I

    iput-wide p3, p0, Lb1/d;->t:J

    iget-object p1, p0, Lb1/d;->q:Lb1/f;

    instance-of p1, p1, Lb1/b;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public final k(LI0/s;)V
    .locals 2

    iput-object p1, p0, Lb1/d;->g:LI0/s;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, LI0/s;->track(II)LI0/L;

    move-result-object p1

    iput-object p1, p0, Lb1/d;->h:LI0/L;

    iput-object p1, p0, Lb1/d;->i:LI0/L;

    iget-object p1, p0, Lb1/d;->g:LI0/s;

    invoke-interface {p1}, LI0/s;->endTracks()V

    return-void
.end method

.method public final release()V
    .locals 0

    return-void
.end method
