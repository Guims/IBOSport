.class public final Lo1/B;
.super Ljava/lang/Object;

# interfaces
.implements Lo1/L;


# instance fields
.field public final a:Lo1/j;

.field public final b:LI0/N;

.field public c:I

.field public d:I

.field public e:Lk0/z;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:I

.field public j:I

.field public k:Z

.field public l:J


# direct methods
.method public constructor <init>(Lo1/j;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo1/B;->a:Lo1/j;

    new-instance p1, LI0/N;

    const/16 v0, 0xa

    new-array v1, v0, [B

    invoke-direct {p1, v1, v0}, LI0/N;-><init>([BI)V

    iput-object p1, p0, Lo1/B;->b:LI0/N;

    const/4 p1, 0x0

    iput p1, p0, Lo1/B;->c:I

    return-void
.end method


# virtual methods
.method public final a(Lk0/z;LI0/s;Lo1/K;)V
    .locals 0

    iput-object p1, p0, Lo1/B;->e:Lk0/z;

    iget-object p1, p0, Lo1/B;->a:Lo1/j;

    invoke-interface {p1, p2, p3}, Lo1/j;->f(LI0/s;Lo1/K;)V

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lo1/B;->c:I

    iput v0, p0, Lo1/B;->d:I

    iput-boolean v0, p0, Lo1/B;->h:Z

    iget-object v0, p0, Lo1/B;->a:Lo1/j;

    invoke-interface {v0}, Lo1/j;->b()V

    return-void
.end method

.method public final c(Lk0/u;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lo1/B;->e:Lk0/z;

    invoke-static {v2}, Lk0/c;->k(Ljava/lang/Object;)V

    and-int/lit8 v2, p2, 0x1

    const-string v3, "PesReader"

    iget-object v4, v0, Lo1/B;->a:Lo1/j;

    const/4 v5, -0x1

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v2, :cond_5

    iget v2, v0, Lo1/B;->c:I

    if-eqz v2, :cond_4

    if-eq v2, v9, :cond_4

    if-eq v2, v7, :cond_3

    if-ne v2, v6, :cond_2

    iget v2, v0, Lo1/B;->j:I

    if-eq v2, v5, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v10, "Unexpected start indicator: expected "

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, v0, Lo1/B;->j:I

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " more bytes"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lk0/c;->z(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget v2, v1, Lk0/u;->c:I

    if-nez v2, :cond_1

    move v2, v9

    goto :goto_0

    :cond_1
    move v2, v8

    :goto_0
    invoke-interface {v4, v2}, Lo1/j;->d(Z)V

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_3
    const-string v2, "Unexpected start indicator reading extended header"

    invoke-static {v3, v2}, Lk0/c;->z(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    iput v9, v0, Lo1/B;->c:I

    iput v8, v0, Lo1/B;->d:I

    :cond_5
    move/from16 v2, p2

    :goto_2
    invoke-virtual {v1}, Lk0/u;->a()I

    move-result v10

    if-lez v10, :cond_14

    iget v10, v0, Lo1/B;->c:I

    if-eqz v10, :cond_13

    iget-object v11, v0, Lo1/B;->b:LI0/N;

    if-eq v10, v9, :cond_e

    if-eq v10, v7, :cond_a

    if-ne v10, v6, :cond_9

    invoke-virtual {v1}, Lk0/u;->a()I

    move-result v10

    iget v11, v0, Lo1/B;->j:I

    if-ne v11, v5, :cond_6

    move v11, v8

    goto :goto_3

    :cond_6
    sub-int v11, v10, v11

    :goto_3
    if-lez v11, :cond_7

    sub-int/2addr v10, v11

    iget v11, v1, Lk0/u;->b:I

    add-int/2addr v11, v10

    invoke-virtual {v1, v11}, Lk0/u;->F(I)V

    :cond_7
    invoke-interface {v4, v1}, Lo1/j;->c(Lk0/u;)V

    iget v11, v0, Lo1/B;->j:I

    if-eq v11, v5, :cond_8

    sub-int/2addr v11, v10

    iput v11, v0, Lo1/B;->j:I

    if-nez v11, :cond_8

    invoke-interface {v4, v8}, Lo1/j;->d(Z)V

    iput v9, v0, Lo1/B;->c:I

    iput v8, v0, Lo1/B;->d:I

    :cond_8
    move v10, v7

    move v7, v8

    goto/16 :goto_7

    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_a
    const/16 v10, 0xa

    iget v12, v0, Lo1/B;->i:I

    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    iget-object v12, v11, LI0/N;->d:[B

    invoke-virtual {v0, v1, v12, v10}, Lo1/B;->d(Lk0/u;[BI)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v10, 0x0

    iget v12, v0, Lo1/B;->i:I

    invoke-virtual {v0, v1, v10, v12}, Lo1/B;->d(Lk0/u;[BI)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {v11, v8}, LI0/N;->q(I)V

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v12, v0, Lo1/B;->l:J

    iget-boolean v10, v0, Lo1/B;->f:Z

    const/4 v12, 0x4

    if-eqz v10, :cond_c

    invoke-virtual {v11, v12}, LI0/N;->t(I)V

    invoke-virtual {v11, v6}, LI0/N;->i(I)I

    move-result v10

    int-to-long v13, v10

    const/16 v10, 0x1e

    shl-long/2addr v13, v10

    invoke-virtual {v11, v9}, LI0/N;->t(I)V

    const/16 v15, 0xf

    invoke-virtual {v11, v15}, LI0/N;->i(I)I

    move-result v16

    move/from16 p2, v10

    shl-int/lit8 v10, v16, 0xf

    int-to-long v7, v10

    or-long/2addr v7, v13

    invoke-virtual {v11, v9}, LI0/N;->t(I)V

    invoke-virtual {v11, v15}, LI0/N;->i(I)I

    move-result v10

    int-to-long v13, v10

    or-long/2addr v7, v13

    invoke-virtual {v11, v9}, LI0/N;->t(I)V

    iget-boolean v10, v0, Lo1/B;->h:Z

    if-nez v10, :cond_b

    iget-boolean v10, v0, Lo1/B;->g:Z

    if-eqz v10, :cond_b

    invoke-virtual {v11, v12}, LI0/N;->t(I)V

    invoke-virtual {v11, v6}, LI0/N;->i(I)I

    move-result v10

    int-to-long v13, v10

    shl-long v13, v13, p2

    invoke-virtual {v11, v9}, LI0/N;->t(I)V

    invoke-virtual {v11, v15}, LI0/N;->i(I)I

    move-result v10

    shl-int/2addr v10, v15

    move-wide/from16 v17, v13

    int-to-long v12, v10

    or-long v12, v17, v12

    invoke-virtual {v11, v9}, LI0/N;->t(I)V

    invoke-virtual {v11, v15}, LI0/N;->i(I)I

    move-result v10

    int-to-long v14, v10

    or-long/2addr v12, v14

    invoke-virtual {v11, v9}, LI0/N;->t(I)V

    iget-object v10, v0, Lo1/B;->e:Lk0/z;

    invoke-virtual {v10, v12, v13}, Lk0/z;->b(J)J

    iput-boolean v9, v0, Lo1/B;->h:Z

    :cond_b
    iget-object v10, v0, Lo1/B;->e:Lk0/z;

    invoke-virtual {v10, v7, v8}, Lk0/z;->b(J)J

    move-result-wide v7

    iput-wide v7, v0, Lo1/B;->l:J

    :cond_c
    iget-boolean v7, v0, Lo1/B;->k:Z

    if-eqz v7, :cond_d

    const/4 v12, 0x4

    goto :goto_4

    :cond_d
    const/4 v12, 0x0

    :goto_4
    or-int/2addr v2, v12

    iget-wide v7, v0, Lo1/B;->l:J

    invoke-interface {v4, v2, v7, v8}, Lo1/j;->e(IJ)V

    iput v6, v0, Lo1/B;->c:I

    const/4 v7, 0x0

    iput v7, v0, Lo1/B;->d:I

    move v8, v7

    const/4 v7, 0x2

    goto/16 :goto_2

    :cond_e
    move v7, v8

    iget-object v8, v11, LI0/N;->d:[B

    const/16 v10, 0x9

    invoke-virtual {v0, v1, v8, v10}, Lo1/B;->d(Lk0/u;[BI)Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-virtual {v11, v7}, LI0/N;->q(I)V

    const/16 v7, 0x18

    invoke-virtual {v11, v7}, LI0/N;->i(I)I

    move-result v7

    if-eq v7, v9, :cond_f

    const-string v8, "Unexpected start code prefix: "

    invoke-static {v8, v7, v3}, Lcom/google/android/material/datepicker/e;->m(Ljava/lang/String;ILjava/lang/String;)V

    iput v5, v0, Lo1/B;->j:I

    const/4 v7, 0x0

    const/4 v10, 0x2

    goto :goto_6

    :cond_f
    const/16 v7, 0x8

    invoke-virtual {v11, v7}, LI0/N;->t(I)V

    const/16 v8, 0x10

    invoke-virtual {v11, v8}, LI0/N;->i(I)I

    move-result v8

    const/4 v10, 0x5

    invoke-virtual {v11, v10}, LI0/N;->t(I)V

    invoke-virtual {v11}, LI0/N;->h()Z

    move-result v10

    iput-boolean v10, v0, Lo1/B;->k:Z

    const/4 v10, 0x2

    invoke-virtual {v11, v10}, LI0/N;->t(I)V

    invoke-virtual {v11}, LI0/N;->h()Z

    move-result v12

    iput-boolean v12, v0, Lo1/B;->f:Z

    invoke-virtual {v11}, LI0/N;->h()Z

    move-result v12

    iput-boolean v12, v0, Lo1/B;->g:Z

    const/4 v12, 0x6

    invoke-virtual {v11, v12}, LI0/N;->t(I)V

    invoke-virtual {v11, v7}, LI0/N;->i(I)I

    move-result v7

    iput v7, v0, Lo1/B;->i:I

    if-nez v8, :cond_10

    iput v5, v0, Lo1/B;->j:I

    goto :goto_5

    :cond_10
    add-int/lit8 v8, v8, -0x3

    sub-int/2addr v8, v7

    iput v8, v0, Lo1/B;->j:I

    if-gez v8, :cond_11

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Found negative packet payload size: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v0, Lo1/B;->j:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lk0/c;->z(Ljava/lang/String;Ljava/lang/String;)V

    iput v5, v0, Lo1/B;->j:I

    :cond_11
    :goto_5
    move v7, v10

    :goto_6
    iput v7, v0, Lo1/B;->c:I

    const/4 v7, 0x0

    iput v7, v0, Lo1/B;->d:I

    goto :goto_7

    :cond_12
    const/4 v10, 0x2

    goto :goto_7

    :cond_13
    move v10, v7

    move v7, v8

    invoke-virtual {v1}, Lk0/u;->a()I

    move-result v8

    invoke-virtual {v1, v8}, Lk0/u;->H(I)V

    :goto_7
    move v8, v7

    move v7, v10

    goto/16 :goto_2

    :cond_14
    return-void
.end method

.method public final d(Lk0/u;[BI)Z
    .locals 3

    invoke-virtual {p1}, Lk0/u;->a()I

    move-result v0

    iget v1, p0, Lo1/B;->d:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    return v1

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p1, v0}, Lk0/u;->H(I)V

    goto :goto_0

    :cond_1
    iget v2, p0, Lo1/B;->d:I

    invoke-virtual {p1, p2, v2, v0}, Lk0/u;->e([BII)V

    :goto_0
    iget p1, p0, Lo1/B;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lo1/B;->d:I

    if-ne p1, p3, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
