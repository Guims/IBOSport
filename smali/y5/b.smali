.class public final Ly5/b;
.super Ljava/lang/Object;

# interfaces
.implements Lw5/s;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final a(LB5/g;)Lw5/H;
    .locals 30

    move-object/from16 v0, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v1, v0, LB5/g;->f:Lw5/B;

    const-string v2, "request"

    invoke-static {v1, v2}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lp5/p;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Lp5/p;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object v5, v1, Lw5/B;->a:Lw5/c;

    if-nez v5, :cond_1a

    sget v5, Lw5/c;->n:I

    iget-object v5, v1, Lw5/B;->d:Lw5/p;

    invoke-virtual {v5}, Lw5/p;->size()I

    move-result v7

    move-object v12, v4

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    :goto_0
    if-ge v10, v7, :cond_18

    const/16 v25, 0x1

    invoke-virtual {v5, v10}, Lw5/p;->c(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v10}, Lw5/p;->e(I)Ljava/lang/String;

    move-result-object v6

    const-string v3, "Cache-Control"

    invoke-static {v8, v3}, Lk5/n;->D(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v12, :cond_0

    :goto_1
    const/4 v11, 0x0

    goto :goto_2

    :cond_0
    move-object v12, v6

    goto :goto_2

    :cond_1
    const-string v3, "Pragma"

    invoke-static {v8, v3}, Lk5/n;->D(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    goto :goto_1

    :goto_2
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v3, v8, :cond_17

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    move v4, v3

    :goto_4
    if-ge v4, v8, :cond_3

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    move-object/from16 v27, v2

    const-string v2, "=,;"

    invoke-static {v2, v9}, Lk5/f;->I(Ljava/lang/CharSequence;C)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_5

    :cond_2
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, v27

    goto :goto_4

    :cond_3
    move-object/from16 v27, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    :goto_5
    invoke-virtual {v6, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v2, v3}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lk5/f;->V(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v4, v8, :cond_4

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2c

    if-eq v8, v9, :cond_4

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x3b

    if-ne v8, v9, :cond_5

    :cond_4
    move-object/from16 v28, v5

    move/from16 v29, v7

    goto/16 :goto_a

    :cond_5
    add-int/lit8 v4, v4, 0x1

    sget-object v8, Lx5/b;->a:[B

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    :goto_6
    if-ge v4, v8, :cond_7

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    move/from16 v28, v4

    const/16 v4, 0x20

    if-eq v9, v4, :cond_6

    const/16 v4, 0x9

    if-eq v9, v4, :cond_6

    move/from16 v4, v28

    goto :goto_7

    :cond_6
    add-int/lit8 v4, v28, 0x1

    goto :goto_6

    :cond_7
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    :goto_7
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v4, v8, :cond_8

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x22

    if-ne v8, v9, :cond_8

    add-int/lit8 v4, v4, 0x1

    const/4 v8, 0x4

    invoke-static {v6, v9, v4, v8}, Lk5/f;->M(Ljava/lang/CharSequence;CII)I

    move-result v8

    invoke-virtual {v6, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v28, v5

    move/from16 v29, v7

    move v3, v8

    goto :goto_b

    :cond_8
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    move v9, v4

    :goto_8
    if-ge v9, v8, :cond_a

    move-object/from16 v28, v5

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move/from16 v29, v7

    const-string v7, ",;"

    invoke-static {v7, v5}, Lk5/f;->I(Ljava/lang/CharSequence;C)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_9

    :cond_9
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v5, v28

    move/from16 v7, v29

    goto :goto_8

    :cond_a
    move-object/from16 v28, v5

    move/from16 v29, v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    :goto_9
    invoke-virtual {v6, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lk5/f;->V(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    move v3, v9

    goto :goto_b

    :goto_a
    add-int/lit8 v4, v4, 0x1

    move v3, v4

    const/4 v4, 0x0

    :goto_b
    const-string v5, "no-cache"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    move/from16 v13, v25

    :goto_c
    const/4 v5, -0x1

    goto/16 :goto_d

    :cond_b
    const-string v5, "no-store"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    move/from16 v14, v25

    goto :goto_c

    :cond_c
    const-string v5, "max-age"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    const/4 v5, -0x1

    invoke-static {v5, v4}, Lx5/b;->v(ILjava/lang/String;)I

    move-result v2

    move v15, v2

    goto/16 :goto_d

    :cond_d
    const/4 v5, -0x1

    const-string v7, "s-maxage"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-static {v5, v4}, Lx5/b;->v(ILjava/lang/String;)I

    move-result v2

    move/from16 v16, v2

    goto/16 :goto_d

    :cond_e
    const-string v5, "private"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    move/from16 v17, v25

    goto :goto_c

    :cond_f
    const-string v5, "public"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    move/from16 v18, v25

    goto :goto_c

    :cond_10
    const-string v5, "must-revalidate"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    move/from16 v19, v25

    goto :goto_c

    :cond_11
    const-string v5, "max-stale"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    const v2, 0x7fffffff

    invoke-static {v2, v4}, Lx5/b;->v(ILjava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    goto :goto_c

    :cond_12
    const-string v5, "min-fresh"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    const/4 v5, -0x1

    invoke-static {v5, v4}, Lx5/b;->v(ILjava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    goto :goto_d

    :cond_13
    const/4 v5, -0x1

    const-string v4, "only-if-cached"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    move/from16 v22, v25

    goto :goto_d

    :cond_14
    const-string v4, "no-transform"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    move/from16 v23, v25

    goto :goto_d

    :cond_15
    const-string v4, "immutable"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    move/from16 v24, v25

    :cond_16
    :goto_d
    move-object/from16 v2, v27

    move-object/from16 v5, v28

    move/from16 v7, v29

    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_17
    move-object/from16 v27, v2

    move-object/from16 v28, v5

    move/from16 v29, v7

    const/4 v5, -0x1

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, v27

    move-object/from16 v5, v28

    move/from16 v7, v29

    const/16 v3, 0x13

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_18
    move-object/from16 v27, v2

    if-nez v11, :cond_19

    const/16 v25, 0x0

    goto :goto_e

    :cond_19
    move-object/from16 v25, v12

    :goto_e
    new-instance v12, Lw5/c;

    invoke-direct/range {v12 .. v25}, Lw5/c;-><init>(ZZIIZZZIIZZZLjava/lang/String;)V

    iput-object v12, v1, Lw5/B;->a:Lw5/c;

    move-object v5, v12

    goto :goto_f

    :cond_1a
    move-object/from16 v27, v2

    :goto_f
    iget-boolean v2, v5, Lw5/c;->j:Z

    if-eqz v2, :cond_1b

    new-instance v2, Lp5/p;

    const/4 v3, 0x0

    const/16 v4, 0x13

    invoke-direct {v2, v3, v4, v3}, Lp5/p;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_10

    :cond_1b
    move-object/from16 v2, v27

    :goto_10
    iget-object v3, v2, Lp5/p;->q:Ljava/lang/Object;

    check-cast v3, Lw5/B;

    iget-object v2, v2, Lp5/p;->r:Ljava/lang/Object;

    check-cast v2, Lw5/H;

    if-nez v3, :cond_1c

    if-nez v2, :cond_1c

    new-instance v0, Lw5/o;

    invoke-direct {v0}, Lw5/o;-><init>()V

    sget-object v7, Lx5/b;->c:LB5/h;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v0}, Lw5/o;->c()Lw5/p;

    move-result-object v6

    new-instance v0, Lw5/H;

    sget-object v2, Lw5/z;->r:Lw5/z;

    const-string v3, "Unsatisfiable Request (only-if-cached)"

    const/16 v4, 0x1f8

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, -0x1

    const/4 v15, 0x0

    invoke-direct/range {v0 .. v15}, Lw5/H;-><init>(Lw5/B;Lw5/z;Ljava/lang/String;ILw5/n;Lw5/p;Lw5/K;Lw5/H;Lw5/H;Lw5/H;JJLA5/e;)V

    return-object v0

    :cond_1c
    const-string v1, "cacheResponse"

    if-nez v3, :cond_1d

    invoke-static {v2}, Le5/g;->c(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lw5/H;->f()Lw5/G;

    move-result-object v0

    invoke-static {v2}, Ly5/a;->a(Lw5/H;)Lw5/H;

    move-result-object v2

    invoke-static {v1, v2}, Lw5/G;->b(Ljava/lang/String;Lw5/H;)V

    iput-object v2, v0, Lw5/G;->i:Lw5/H;

    invoke-virtual {v0}, Lw5/G;->a()Lw5/H;

    move-result-object v0

    return-object v0

    :cond_1d
    invoke-virtual {v0, v3}, LB5/g;->b(Lw5/B;)Lw5/H;

    move-result-object v0

    const-string v3, "networkResponse"

    if-eqz v2, :cond_28

    iget v4, v0, Lw5/H;->s:I

    const/16 v5, 0x130

    if-ne v4, v5, :cond_27

    invoke-virtual {v2}, Lw5/H;->f()Lw5/G;

    move-result-object v4

    iget-object v5, v2, Lw5/H;->u:Lw5/p;

    iget-object v6, v0, Lw5/H;->u:Lw5/p;

    new-instance v7, Lw5/o;

    invoke-direct {v7}, Lw5/o;-><init>()V

    invoke-virtual {v5}, Lw5/p;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_11
    const-string v10, "Content-Type"

    const-string v11, "Content-Encoding"

    const-string v12, "Content-Length"

    if-ge v9, v8, :cond_23

    invoke-virtual {v5, v9}, Lw5/p;->c(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v9}, Lw5/p;->e(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "Warning"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1e

    const-string v15, "1"

    move-object/from16 v16, v5

    const/4 v5, 0x0

    invoke-static {v14, v15, v5}, Lk5/n;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_1f

    goto :goto_13

    :cond_1e
    move-object/from16 v16, v5

    const/4 v5, 0x0

    :cond_1f
    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_21

    invoke-virtual {v11, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_21

    invoke-virtual {v10, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_20

    goto :goto_12

    :cond_20
    invoke-static {v13}, Ly5/a;->b(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_21

    invoke-virtual {v6, v13}, Lw5/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_22

    :cond_21
    :goto_12
    invoke-virtual {v7, v13, v14}, Lw5/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    :goto_13
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v5, v16

    goto :goto_11

    :cond_23
    const/4 v5, 0x0

    invoke-virtual {v6}, Lw5/p;->size()I

    move-result v8

    :goto_14
    if-ge v5, v8, :cond_26

    invoke-virtual {v6, v5}, Lw5/p;->c(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_25

    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_25

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_24

    goto :goto_15

    :cond_24
    invoke-static {v9}, Ly5/a;->b(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_25

    invoke-virtual {v6, v5}, Lw5/p;->e(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v9, v13}, Lw5/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    :goto_15
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    :cond_26
    invoke-virtual {v7}, Lw5/o;->c()Lw5/p;

    move-result-object v5

    invoke-virtual {v5}, Lw5/p;->d()Lw5/o;

    move-result-object v5

    iput-object v5, v4, Lw5/G;->f:Lw5/o;

    iget-wide v5, v0, Lw5/H;->z:J

    iput-wide v5, v4, Lw5/G;->k:J

    iget-wide v5, v0, Lw5/H;->A:J

    iput-wide v5, v4, Lw5/G;->l:J

    invoke-static {v2}, Ly5/a;->a(Lw5/H;)Lw5/H;

    move-result-object v2

    invoke-static {v1, v2}, Lw5/G;->b(Ljava/lang/String;Lw5/H;)V

    iput-object v2, v4, Lw5/G;->i:Lw5/H;

    invoke-static {v0}, Ly5/a;->a(Lw5/H;)Lw5/H;

    move-result-object v1

    invoke-static {v3, v1}, Lw5/G;->b(Ljava/lang/String;Lw5/H;)V

    iput-object v1, v4, Lw5/G;->h:Lw5/H;

    invoke-virtual {v4}, Lw5/G;->a()Lw5/H;

    iget-object v0, v0, Lw5/H;->v:Lw5/K;

    invoke-static {v0}, Le5/g;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lw5/K;->close()V

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Le5/g;->c(Ljava/lang/Object;)V

    throw v26

    :cond_27
    iget-object v4, v2, Lw5/H;->v:Lw5/K;

    if-eqz v4, :cond_28

    invoke-static {v4}, Lx5/b;->c(Ljava/io/Closeable;)V

    :cond_28
    invoke-virtual {v0}, Lw5/H;->f()Lw5/G;

    move-result-object v4

    invoke-static {v2}, Ly5/a;->a(Lw5/H;)Lw5/H;

    move-result-object v2

    invoke-static {v1, v2}, Lw5/G;->b(Ljava/lang/String;Lw5/H;)V

    iput-object v2, v4, Lw5/G;->i:Lw5/H;

    invoke-static {v0}, Ly5/a;->a(Lw5/H;)Lw5/H;

    move-result-object v0

    invoke-static {v3, v0}, Lw5/G;->b(Ljava/lang/String;Lw5/H;)V

    iput-object v0, v4, Lw5/G;->h:Lw5/H;

    invoke-virtual {v4}, Lw5/G;->a()Lw5/H;

    move-result-object v0

    return-object v0
.end method
