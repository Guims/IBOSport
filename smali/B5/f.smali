.class public abstract LB5/f;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, LK5/j;->s:LK5/j;

    const-string v0, "\"\\"

    invoke-static {v0}, LW3/e;->r(Ljava/lang/String;)LK5/j;

    const-string v0, "\t ,="

    invoke-static {v0}, LW3/e;->r(Ljava/lang/String;)LK5/j;

    return-void
.end method

.method public static final a(Lw5/H;)Z
    .locals 4

    iget-object v0, p0, Lw5/H;->b:Lw5/B;

    iget-object v0, v0, Lw5/B;->c:Ljava/lang/String;

    const-string v1, "HEAD"

    invoke-static {v0, v1}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lw5/H;->s:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_2

    :cond_1
    const/16 v1, 0xcc

    if-eq v0, v1, :cond_2

    const/16 v1, 0x130

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p0}, Lx5/b;->i(Lw5/H;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const-string v0, "Transfer-Encoding"

    invoke-static {v0, p0}, Lw5/H;->a(Ljava/lang/String;Lw5/H;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "chunked"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final b(Lw5/b;Lw5/r;Lw5/p;)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "$this$receiveHeaders"

    invoke-static {v0, v3}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "url"

    invoke-static {v1, v3}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "headers"

    invoke-static {v2, v3}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lw5/b;->b:Lw5/b;

    if-ne v0, v3, :cond_0

    return-void

    :cond_0
    sget-object v0, Lw5/k;->j:Ljava/util/regex/Pattern;

    invoke-virtual {v2}, Lw5/p;->size()I

    move-result v0

    const/4 v3, 0x0

    move v5, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v0, :cond_3

    invoke-virtual {v2, v5}, Lw5/p;->c(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Set-Cookie"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-nez v6, :cond_1

    new-instance v6, Ljava/util/ArrayList;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    :cond_1
    invoke-virtual {v2, v5}, Lw5/p;->e(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    sget-object v2, LT4/p;->b:LT4/p;

    if-eqz v6, :cond_4

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const-string v5, "Collections.unmodifiableList(result)"

    invoke-static {v0, v5}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v0

    goto :goto_1

    :cond_4
    move-object v5, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    move v7, v3

    const/4 v8, 0x0

    :goto_2
    if-ge v7, v6, :cond_24

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    const-string v0, "setCookie"

    invoke-static {v9, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sget-object v0, Lx5/b;->a:[B

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v12, 0x3b

    invoke-static {v9, v12, v3, v0}, Lx5/b;->f(Ljava/lang/String;CII)I

    move-result v0

    const/16 v13, 0x3d

    invoke-static {v9, v13, v3, v0}, Lx5/b;->f(Ljava/lang/String;CII)I

    move-result v14

    if-ne v14, v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {v9, v3, v14}, Lx5/b;->w(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_6

    goto :goto_3

    :cond_6
    invoke-static/range {v16 .. v16}, Lx5/b;->k(Ljava/lang/String;)I

    move-result v15

    const/4 v4, -0x1

    if-eq v15, v4, :cond_7

    goto :goto_3

    :cond_7
    add-int/lit8 v14, v14, 0x1

    invoke-static {v9, v14, v0}, Lx5/b;->w(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lx5/b;->k(Ljava/lang/String;)I

    move-result v14

    if-eq v14, v4, :cond_8

    :goto_3
    move v13, v3

    :goto_4
    const/4 v15, 0x0

    goto/16 :goto_f

    :cond_8
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    const-wide/16 v18, -0x1

    const-wide v20, 0xe677d21fdbffL

    move/from16 v24, v3

    move/from16 v26, v24

    move/from16 v29, v26

    move-wide/from16 v22, v18

    move-wide/from16 v27, v20

    const/16 p2, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v25, 0x1

    :goto_5
    const-wide v30, 0x7fffffffffffffffL

    const-wide/high16 v32, -0x8000000000000000L

    if-ge v0, v4, :cond_15

    invoke-static {v9, v12, v0, v4}, Lx5/b;->f(Ljava/lang/String;CII)I

    move-result v3

    invoke-static {v9, v13, v0, v3}, Lx5/b;->f(Ljava/lang/String;CII)I

    move-result v12

    invoke-static {v9, v0, v12}, Lx5/b;->w(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    if-ge v12, v3, :cond_9

    add-int/lit8 v12, v12, 0x1

    invoke-static {v9, v12, v3}, Lx5/b;->w(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v12

    goto :goto_6

    :cond_9
    const-string v12, ""

    :goto_6
    const-string v13, "expires"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    :try_start_0
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0, v12}, LE2/g;->B(ILjava/lang/String;)J

    move-result-wide v27
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_7
    move/from16 v26, p2

    goto/16 :goto_8

    :cond_a
    const-string v13, "max-age"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_e

    :try_start_1
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v22, 0x0

    cmp-long v0, v12, v22

    if-gtz v0, :cond_b

    move-wide/from16 v22, v32

    goto :goto_7

    :cond_b
    move-wide/from16 v22, v12

    goto :goto_7

    :catch_0
    move-exception v0

    :try_start_2
    const-string v13, "-?\\d+"

    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    move-object/from16 v34, v0

    const-string v0, "compile(...)"

    invoke-static {v13, v0}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "-"

    const/4 v13, 0x0

    invoke-static {v12, v0, v13}, Lk5/n;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    move-wide/from16 v30, v32

    :cond_c
    move-wide/from16 v22, v30

    goto :goto_7

    :cond_d
    throw v34
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_e
    const-string v13, "domain"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_11

    :try_start_3
    const-string v0, "."

    const/4 v13, 0x0

    invoke-static {v12, v0, v13}, Lk5/n;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v30

    if-nez v30, :cond_10

    invoke-static {v12, v0}, Lk5/f;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/session/b;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    move-object v15, v0

    const/16 v25, 0x0

    goto :goto_8

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_10
    const-string v0, "Failed requirement."

    new-instance v12, Ljava/lang/IllegalArgumentException;

    invoke-direct {v12, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_11
    const-string v13, "path"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_12

    move-object v14, v12

    goto :goto_8

    :cond_12
    const-string v12, "secure"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_13

    move/from16 v29, p2

    goto :goto_8

    :cond_13
    const-string v12, "httponly"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    move/from16 v24, p2

    :catch_1
    :cond_14
    :goto_8
    add-int/lit8 v0, v3, 0x1

    const/4 v3, 0x0

    const/16 v12, 0x3b

    const/16 v13, 0x3d

    goto/16 :goto_5

    :cond_15
    cmp-long v0, v22, v32

    if-nez v0, :cond_16

    move-wide/from16 v18, v32

    goto :goto_a

    :cond_16
    cmp-long v0, v22, v18

    if-eqz v0, :cond_1a

    const-wide v3, 0x20c49ba5e353f7L

    cmp-long v0, v22, v3

    if-gtz v0, :cond_17

    const/16 v0, 0x3e8

    int-to-long v3, v0

    mul-long v30, v22, v3

    :cond_17
    add-long v30, v10, v30

    cmp-long v0, v30, v10

    if-ltz v0, :cond_19

    cmp-long v0, v30, v20

    if-lez v0, :cond_18

    goto :goto_9

    :cond_18
    move-wide/from16 v18, v30

    goto :goto_a

    :cond_19
    :goto_9
    move-wide/from16 v18, v20

    goto :goto_a

    :cond_1a
    move-wide/from16 v18, v27

    :goto_a
    iget-object v0, v1, Lw5/r;->e:Ljava/lang/String;

    if-nez v15, :cond_1b

    move-object v15, v0

    goto :goto_b

    :cond_1b
    invoke-static {v0, v15}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    goto :goto_b

    :cond_1c
    const/4 v13, 0x0

    invoke-static {v0, v15, v13}, Lk5/n;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_1d

    sget-object v3, Lx5/b;->f:Lk5/e;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v3, Lk5/e;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_1d

    :goto_b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v0, v3, :cond_1e

    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->g:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    invoke-virtual {v0, v15}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1e

    :cond_1d
    const/4 v13, 0x0

    goto/16 :goto_4

    :cond_1e
    const-string v0, "/"

    const/4 v13, 0x0

    if-eqz v14, :cond_20

    invoke-static {v14, v0, v13}, Lk5/n;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1f

    goto :goto_d

    :cond_1f
    :goto_c
    move-object/from16 v21, v14

    move-object/from16 v20, v15

    goto :goto_e

    :cond_20
    :goto_d
    invoke-virtual {v1}, Lw5/r;->b()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2f

    const/4 v9, 0x6

    invoke-static {v3, v4, v13, v9}, Lk5/f;->P(Ljava/lang/String;CII)I

    move-result v4

    if-eqz v4, :cond_21

    invoke-virtual {v3, v13, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v3, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v3}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_21
    move-object v14, v0

    goto :goto_c

    :goto_e
    new-instance v15, Lw5/k;

    move/from16 v23, v24

    move/from16 v24, v26

    move/from16 v22, v29

    invoke-direct/range {v15 .. v25}, Lw5/k;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V

    :goto_f
    if-eqz v15, :cond_23

    if-nez v8, :cond_22

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :cond_22
    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_23
    add-int/lit8 v7, v7, 0x1

    move v3, v13

    goto/16 :goto_2

    :cond_24
    if-eqz v8, :cond_25

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    const-string v0, "Collections.unmodifiableList(cookies)"

    invoke-static {v2, v0}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_25
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    return-void
.end method
