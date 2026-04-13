.class public final Lw5/q;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public final f:Ljava/util/ArrayList;

.field public g:Ljava/util/ArrayList;

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lw5/q;->b:Ljava/lang/String;

    iput-object v0, p0, Lw5/q;->c:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lw5/q;->e:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lw5/q;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a()Lw5/r;
    .locals 15

    iget-object v1, p0, Lw5/q;->a:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v0, p0, Lw5/q;->b:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-static {v0, v2, v2, v3}, Lw5/b;->f(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lw5/q;->c:Ljava/lang/String;

    invoke-static {v4, v2, v2, v3}, Lw5/b;->f(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v4

    move v5, v3

    move-object v3, v4

    iget-object v4, p0, Lw5/q;->d:Ljava/lang/String;

    if-eqz v4, :cond_5

    move v6, v5

    invoke-virtual {p0}, Lw5/q;->b()I

    move-result v5

    move v7, v6

    new-instance v6, Ljava/util/ArrayList;

    iget-object v8, p0, Lw5/q;->f:Ljava/util/ArrayList;

    invoke-static {v8}, LT4/i;->u(Ljava/lang/Iterable;)I

    move-result v9

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v10, v2

    :goto_0
    if-ge v10, v9, :cond_0

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Ljava/lang/String;

    invoke-static {v11, v2, v2, v7}, Lw5/b;->f(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v8, p0, Lw5/q;->g:Ljava/util/ArrayList;

    const/4 v9, 0x0

    if-eqz v8, :cond_2

    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v8}, LT4/i;->u(Ljava/lang/Iterable;)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v12, v2

    :goto_1
    if-ge v12, v11, :cond_3

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v12, v12, 0x1

    check-cast v13, Ljava/lang/String;

    if-eqz v13, :cond_1

    const/4 v14, 0x3

    invoke-static {v13, v2, v2, v14}, Lw5/b;->f(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    :cond_1
    move-object v13, v9

    :goto_2
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v10, v9

    :cond_3
    iget-object v8, p0, Lw5/q;->h:Ljava/lang/String;

    if-eqz v8, :cond_4

    invoke-static {v8, v2, v2, v7}, Lw5/b;->f(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v9

    :cond_4
    move-object v8, v9

    invoke-virtual {p0}, Lw5/q;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v2, v0

    new-instance v0, Lw5/r;

    move-object v7, v10

    invoke-direct/range {v0 .. v9}, Lw5/r;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()I
    .locals 4

    iget v0, p0, Lw5/q;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lw5/q;->a:Ljava/lang/String;

    invoke-static {v0}, Le5/g;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x310888    # 4.503E-39f

    if-eq v2, v3, :cond_2

    const v3, 0x5f008eb

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "https"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0x1bb

    goto :goto_0

    :cond_2
    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0x50

    :cond_3
    :goto_0
    return v1
.end method

.method public final c(Lw5/r;Ljava/lang/String;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    const-string v2, "input"

    invoke-static {v4, v2}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lx5/b;->a:[B

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v7, 0x0

    invoke-static {v4, v7, v2}, Lx5/b;->l(Ljava/lang/String;II)I

    move-result v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v4, v2, v3}, Lx5/b;->m(Ljava/lang/String;II)I

    move-result v8

    sub-int v3, v8, v2

    const/16 v9, 0x3a

    const/4 v10, -0x1

    const/4 v5, 0x2

    if-ge v3, v5, :cond_0

    goto :goto_5

    :cond_0
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x61

    invoke-static {v3, v6}, Le5/g;->h(II)I

    move-result v11

    const/16 v12, 0x5a

    const/16 v13, 0x41

    const/16 v14, 0x7a

    if-ltz v11, :cond_1

    invoke-static {v3, v14}, Le5/g;->h(II)I

    move-result v11

    if-lez v11, :cond_2

    :cond_1
    invoke-static {v3, v13}, Le5/g;->h(II)I

    move-result v11

    if-ltz v11, :cond_c

    invoke-static {v3, v12}, Le5/g;->h(II)I

    move-result v3

    if-lez v3, :cond_2

    goto :goto_5

    :cond_2
    add-int/lit8 v3, v2, 0x1

    :goto_0
    if-ge v3, v8, :cond_c

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-le v6, v11, :cond_3

    goto :goto_1

    :cond_3
    if-lt v14, v11, :cond_4

    goto :goto_4

    :cond_4
    :goto_1
    if-le v13, v11, :cond_5

    goto :goto_2

    :cond_5
    if-lt v12, v11, :cond_6

    goto :goto_4

    :cond_6
    :goto_2
    const/16 v15, 0x30

    if-le v15, v11, :cond_7

    goto :goto_3

    :cond_7
    const/16 v15, 0x39

    if-lt v15, v11, :cond_8

    goto :goto_4

    :cond_8
    :goto_3
    const/16 v15, 0x2b

    if-ne v11, v15, :cond_9

    goto :goto_4

    :cond_9
    const/16 v15, 0x2d

    if-ne v11, v15, :cond_a

    goto :goto_4

    :cond_a
    const/16 v15, 0x2e

    if-ne v11, v15, :cond_b

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_b
    if-ne v11, v9, :cond_c

    goto :goto_6

    :cond_c
    :goto_5
    move v3, v10

    :goto_6
    const-string v11, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    const/4 v12, 0x1

    if-eq v3, v10, :cond_f

    const-string v6, "https:"

    invoke-static {v4, v2, v6, v12}, Lk5/n;->G(Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_d

    const-string v3, "https"

    iput-object v3, v0, Lw5/q;->a:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x6

    goto :goto_7

    :cond_d
    const-string v6, "http:"

    invoke-static {v4, v2, v6, v12}, Lk5/n;->G(Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_e

    const-string v3, "http"

    iput-object v3, v0, Lw5/q;->a:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x5

    goto :goto_7

    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Expected URL scheme \'http\' or \'https\' but was \'"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v11}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    if-eqz v1, :cond_34

    iget-object v3, v1, Lw5/r;->b:Ljava/lang/String;

    iput-object v3, v0, Lw5/q;->a:Ljava/lang/String;

    :goto_7
    move v3, v2

    move v6, v7

    :goto_8
    const/16 v13, 0x2f

    const/16 v14, 0x5c

    if-ge v3, v8, :cond_11

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-eq v15, v14, :cond_10

    if-ne v15, v13, :cond_11

    :cond_10
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_11
    const/16 v15, 0x3f

    iget-object v3, v0, Lw5/q;->f:Ljava/util/ArrayList;

    const/16 v7, 0x23

    if-ge v6, v5, :cond_16

    if-eqz v1, :cond_16

    iget-object v5, v1, Lw5/r;->b:Ljava/lang/String;

    move/from16 v16, v12

    iget-object v12, v0, Lw5/q;->a:Ljava/lang/String;

    invoke-static {v5, v12}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    goto :goto_a

    :cond_12
    invoke-virtual {v1}, Lw5/r;->e()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lw5/q;->b:Ljava/lang/String;

    invoke-virtual {v1}, Lw5/r;->a()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lw5/q;->c:Ljava/lang/String;

    iget-object v5, v1, Lw5/r;->e:Ljava/lang/String;

    iput-object v5, v0, Lw5/q;->d:Ljava/lang/String;

    iget v5, v1, Lw5/r;->f:I

    iput v5, v0, Lw5/q;->e:I

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v1}, Lw5/r;->c()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eq v2, v8, :cond_13

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_15

    :cond_13
    invoke-virtual {v1}, Lw5/r;->d()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_14

    const/16 v22, 0x1

    const/16 v19, 0xd3

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v21, " \"\'<>#"

    invoke-static/range {v17 .. v22}, Lw5/b;->b(IIILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lw5/b;->g(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_9

    :cond_14
    const/4 v1, 0x0

    :goto_9
    iput-object v1, v0, Lw5/q;->g:Ljava/util/ArrayList;

    :cond_15
    move-object/from16 v19, v3

    goto/16 :goto_16

    :cond_16
    move/from16 v16, v12

    :goto_a
    add-int/2addr v2, v6

    move v1, v2

    const/4 v12, 0x0

    const/16 v17, 0x0

    :goto_b
    const-string v2, "@/\\?#"

    invoke-static {v1, v8, v4, v2}, Lx5/b;->e(IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eq v2, v8, :cond_17

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_c

    :cond_17
    move v5, v10

    :goto_c
    if-eq v5, v10, :cond_1c

    if-eq v5, v7, :cond_1c

    if-eq v5, v13, :cond_1c

    if-eq v5, v14, :cond_1c

    if-eq v5, v15, :cond_1c

    const/16 v6, 0x40

    if-eq v5, v6, :cond_18

    move-object/from16 v19, v3

    goto/16 :goto_f

    :cond_18
    const-string v5, "%40"

    if-nez v12, :cond_1b

    move v6, v2

    invoke-static {v4, v9, v1, v6}, Lx5/b;->f(Ljava/lang/String;CII)I

    move-result v2

    move/from16 v18, v6

    const/4 v6, 0x0

    move-object/from16 v19, v3

    const/16 v3, 0xf0

    move-object/from16 v20, v5

    const-string v5, " \"\':;<=>@[]^`{}|/\\?#"

    move/from16 v7, v18

    move-object/from16 v15, v20

    invoke-static/range {v1 .. v6}, Lw5/b;->b(IIILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v17, :cond_19

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lw5/q;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_19
    iput-object v1, v0, Lw5/q;->b:Ljava/lang/String;

    if-eq v2, v7, :cond_1a

    add-int/lit8 v1, v2, 0x1

    const/4 v6, 0x0

    const/16 v3, 0xf0

    const-string v5, " \"\':;<=>@[]^`{}|/\\?#"

    move-object/from16 v4, p2

    move v2, v7

    invoke-static/range {v1 .. v6}, Lw5/b;->b(IIILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lw5/q;->c:Ljava/lang/String;

    move/from16 v12, v16

    goto :goto_d

    :cond_1a
    move v2, v7

    :goto_d
    move-object/from16 v4, p2

    move/from16 v17, v16

    goto :goto_e

    :cond_1b
    move-object/from16 v19, v3

    move-object v15, v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lw5/q;->c:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    const/16 v3, 0xf0

    const-string v5, " \"\':;<=>@[]^`{}|/\\?#"

    move-object/from16 v4, p2

    invoke-static/range {v1 .. v6}, Lw5/b;->b(IIILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lw5/q;->c:Ljava/lang/String;

    :goto_e
    add-int/lit8 v2, v2, 0x1

    move v1, v2

    :goto_f
    move-object/from16 v3, v19

    const/16 v7, 0x23

    const/16 v15, 0x3f

    goto/16 :goto_b

    :cond_1c
    move v7, v1

    move-object/from16 v19, v3

    move v1, v7

    :goto_10
    if-ge v1, v2, :cond_20

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v9, :cond_1f

    const/16 v5, 0x5b

    if-eq v3, v5, :cond_1d

    goto :goto_11

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v2, :cond_1e

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x5d

    if-ne v3, v5, :cond_1d

    :cond_1e
    :goto_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1f
    move v9, v1

    goto :goto_12

    :cond_20
    move v9, v2

    :goto_12
    add-int/lit8 v1, v9, 0x1

    const/4 v3, 0x4

    const/16 v12, 0x22

    if-ge v1, v2, :cond_24

    invoke-static {v4, v7, v9, v3}, Lw5/b;->f(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/media/session/b;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lw5/q;->d:Ljava/lang/String;

    :try_start_0
    const-string v5, ""

    const/4 v6, 0x0

    const/16 v3, 0xf8

    invoke-static/range {v1 .. v6}, Lw5/b;->b(IIILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v5, v16

    if-le v5, v3, :cond_21

    goto :goto_13

    :cond_21
    const v5, 0xffff

    if-lt v5, v3, :cond_22

    goto :goto_14

    :catch_0
    :cond_22
    :goto_13
    move v3, v10

    :goto_14
    iput v3, v0, Lw5/q;->e:I

    if-eq v3, v10, :cond_23

    goto :goto_15

    :cond_23
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Invalid URL port: \""

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v11}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_24
    invoke-static {v4, v7, v9, v3}, Lw5/b;->f(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/media/session/b;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lw5/q;->d:Ljava/lang/String;

    iget-object v1, v0, Lw5/q;->a:Ljava/lang/String;

    invoke-static {v1}, Le5/g;->c(Ljava/lang/Object;)V

    invoke-static {v1}, Lw5/b;->c(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lw5/q;->e:I

    :goto_15
    iget-object v1, v0, Lw5/q;->d:Ljava/lang/String;

    if-eqz v1, :cond_33

    :goto_16
    const-string v1, "?#"

    invoke-static {v2, v8, v4, v1}, Lx5/b;->e(IILjava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-ne v2, v7, :cond_25

    goto/16 :goto_1e

    :cond_25
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const-string v9, ""

    if-eq v1, v13, :cond_26

    if-ne v1, v14, :cond_27

    :cond_26
    move-object/from16 v10, v19

    goto :goto_17

    :cond_27
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v16, 0x1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v10, v19

    invoke-virtual {v10, v1, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    :goto_17
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1d

    :cond_28
    :goto_18
    move v1, v2

    if-ge v1, v7, :cond_30

    const-string v2, "/\\"

    invoke-static {v1, v7, v4, v2}, Lx5/b;->e(IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ge v2, v7, :cond_29

    const/4 v11, 0x1

    goto :goto_19

    :cond_29
    const/4 v11, 0x0

    :goto_19
    const/4 v6, 0x0

    const/16 v3, 0xf0

    const-string v5, " \"<>^`{}|/\\?#"

    invoke-static/range {v1 .. v6}, Lw5/b;->b(IIILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    const-string v3, "%2e"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto/16 :goto_1c

    :cond_2a
    const-string v3, ".."

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    const-string v3, "%2e."

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2d

    const-string v3, ".%2e"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2d

    const-string v3, "%2e%2e"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    goto :goto_1b

    :cond_2b
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v16, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2c

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v10, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    :cond_2c
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1a
    if-eqz v11, :cond_2f

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_2d
    :goto_1b
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v16, 0x1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2e

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v10, v1, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    :cond_2e
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2f
    :goto_1c
    if-eqz v11, :cond_28

    :goto_1d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_18

    :cond_30
    :goto_1e
    if-ge v7, v8, :cond_31

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3f

    if-ne v1, v2, :cond_31

    const/16 v1, 0x23

    invoke-static {v4, v1, v7, v8}, Lx5/b;->f(Ljava/lang/String;CII)I

    move-result v2

    add-int/lit8 v1, v7, 0x1

    const/4 v6, 0x1

    const/16 v3, 0xd0

    const-string v5, " \"\'<>#"

    invoke-static/range {v1 .. v6}, Lw5/b;->b(IIILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lw5/b;->g(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lw5/q;->g:Ljava/util/ArrayList;

    move v7, v2

    :cond_31
    if-ge v7, v8, :cond_32

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_32

    const/16 v16, 0x1

    add-int/lit8 v1, v7, 0x1

    const/4 v6, 0x0

    const/16 v3, 0xb0

    const-string v5, ""

    move v2, v8

    invoke-static/range {v1 .. v6}, Lw5/b;->b(IIILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lw5/q;->h:Ljava/lang/String;

    :cond_32
    return-void

    :cond_33
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid URL host: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v11}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_34
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-le v1, v2, :cond_35

    invoke-static {v2, v4}, Lk5/f;->U(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1f

    :cond_35
    move-object v1, v4

    :goto_1f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Expected URL scheme \'http\' or \'https\' but no scheme was found for "

    invoke-static {v3, v1}, Lcom/google/android/material/datepicker/e;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lw5/q;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v1, p0, Lw5/q;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x3a

    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lw5/q;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    :goto_1
    iget-object v1, p0, Lw5/q;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lw5/q;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lw5/q;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lw5/q;->d:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-static {v1, v2}, Lk5/f;->I(Ljava/lang/CharSequence;C)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lw5/q;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lw5/q;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_2
    iget v1, p0, Lw5/q;->e:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_6

    iget-object v1, p0, Lw5/q;->a:Ljava/lang/String;

    if-eqz v1, :cond_b

    :cond_6
    invoke-virtual {p0}, Lw5/q;->b()I

    move-result v1

    iget-object v4, p0, Lw5/q;->a:Ljava/lang/String;

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0x310888    # 4.503E-39f

    if-eq v5, v6, :cond_8

    const v6, 0x5f008eb

    if-eq v5, v6, :cond_7

    goto :goto_3

    :cond_7
    const-string v5, "https"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/16 v3, 0x1bb

    goto :goto_3

    :cond_8
    const-string v5, "http"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/16 v3, 0x50

    :cond_9
    :goto_3
    if-eq v1, v3, :cond_b

    :cond_a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_b
    const-string v1, "$this$toPathString"

    iget-object v2, p0, Lw5/q;->f:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    move v4, v3

    :goto_4
    if-ge v4, v1, :cond_c

    const/16 v5, 0x2f

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_c
    iget-object v1, p0, Lw5/q;->g:Ljava/util/ArrayList;

    if-eqz v1, :cond_10

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lw5/q;->g:Ljava/util/ArrayList;

    invoke-static {v1}, Le5/g;->c(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v3, v2}, LQ5/d;->B(II)Lh5/c;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, LQ5/d;->A(Lh5/a;I)Lh5/a;

    move-result-object v2

    iget v3, v2, Lh5/a;->b:I

    iget v4, v2, Lh5/a;->q:I

    iget v2, v2, Lh5/a;->r:I

    if-ltz v2, :cond_d

    if-gt v3, v4, :cond_10

    goto :goto_5

    :cond_d
    if-lt v3, v4, :cond_10

    :goto_5
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    add-int/lit8 v6, v3, 0x1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-lez v3, :cond_e

    const/16 v7, 0x26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_e
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_f

    const/16 v5, 0x3d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    if-eq v3, v4, :cond_10

    add-int/2addr v3, v2

    goto :goto_5

    :cond_10
    iget-object v1, p0, Lw5/q;->h:Ljava/lang/String;

    if-eqz v1, :cond_11

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lw5/q;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
