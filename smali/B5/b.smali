.class public final LB5/b;
.super Ljava/lang/Object;

# interfaces
.implements Lw5/s;


# virtual methods
.method public final a(LB5/g;)Lw5/H;
    .locals 16

    move-object/from16 v0, p1

    const-string v1, "Connection"

    const-string v2, "close"

    const-string v3, "HTTP "

    iget-object v4, v0, LB5/g;->e:LA5/e;

    invoke-static {v4}, Le5/g;->c(Ljava/lang/Object;)V

    iget-object v5, v4, LA5/e;->d:LA5/j;

    iget-object v6, v4, LA5/e;->f:LB5/e;

    iget-object v7, v4, LA5/e;->c:LA5/n;

    iget-object v8, v0, LB5/g;->f:Lw5/B;

    iget-object v0, v8, Lw5/B;->e:Lw5/F;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/4 v11, 0x0

    :try_start_0
    invoke-interface {v6, v8}, LB5/e;->g(Lw5/B;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8

    :try_start_1
    iget-object v13, v8, Lw5/B;->c:Ljava/lang/String;

    invoke-static {v13}, LE5/l;->A(Ljava/lang/String;)Z

    move-result v13
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    const/4 v14, 0x1

    if-eqz v13, :cond_5

    if-eqz v0, :cond_5

    :try_start_2
    const-string v13, "100-continue"

    const-string v15, "Expect"

    iget-object v12, v8, Lw5/B;->d:Lw5/p;

    invoke-virtual {v12, v15}, Lw5/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v12, :cond_0

    :try_start_3
    invoke-interface {v6}, LB5/e;->f()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    invoke-virtual {v4, v14}, LA5/e;->c(Z)Lw5/G;

    move-result-object v12

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v12, 0x0

    :goto_0
    const/4 v13, 0x0

    goto/16 :goto_7

    :catch_1
    move-exception v0

    invoke-virtual {v4, v0}, LA5/e;->d(Ljava/io/IOException;)V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_0
    const/4 v12, 0x0

    :goto_1
    if-nez v12, :cond_2

    :try_start_5
    invoke-virtual {v0}, Lw5/F;->isDuplex()Z

    move-result v5
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    if-eqz v5, :cond_1

    :try_start_6
    invoke-interface {v6}, LB5/e;->f()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :try_start_7
    invoke-virtual {v4, v8, v14}, LA5/e;->b(Lw5/B;Z)LA5/c;

    move-result-object v5

    invoke-static {v5}, LE2/g;->a(LK5/D;)LK5/y;

    move-result-object v5

    invoke-virtual {v0, v5}, Lw5/F;->writeTo(LK5/h;)V

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v4, v0}, LA5/e;->d(Ljava/io/IOException;)V

    throw v0

    :cond_1
    invoke-virtual {v4, v8, v11}, LA5/e;->b(Lw5/B;Z)LA5/c;

    move-result-object v5

    invoke-static {v5}, LE2/g;->a(LK5/D;)LK5/y;

    move-result-object v5

    invoke-virtual {v0, v5}, Lw5/F;->writeTo(LK5/h;)V

    invoke-virtual {v5}, LK5/y;->close()V

    goto :goto_3

    :cond_2
    const/4 v13, 0x0

    invoke-virtual {v5, v4, v14, v11, v13}, LA5/j;->g(LA5/e;ZZLjava/io/IOException;)Ljava/io/IOException;

    iget-object v5, v7, LA5/n;->f:LD5/q;

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    move v14, v11

    :goto_2
    if-nez v14, :cond_4

    invoke-interface {v6}, LB5/e;->d()LA5/n;

    move-result-object v5

    invoke-virtual {v5}, LA5/n;->k()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_4
    :goto_3
    const/4 v13, 0x0

    goto :goto_4

    :cond_5
    const/4 v13, 0x0

    :try_start_8
    invoke-virtual {v5, v4, v14, v11, v13}, LA5/j;->g(LA5/e;ZZLjava/io/IOException;)Ljava/io/IOException;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    move-object v12, v13

    :goto_4
    if-eqz v0, :cond_6

    :try_start_9
    invoke-virtual {v0}, Lw5/F;->isDuplex()Z

    move-result v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    if-nez v0, :cond_7

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_7

    :cond_6
    :goto_5
    :try_start_a
    invoke-interface {v6}, LB5/e;->a()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    :cond_7
    move-object v5, v13

    goto :goto_8

    :catch_5
    move-exception v0

    :try_start_b
    invoke-virtual {v4, v0}, LA5/e;->d(Ljava/io/IOException;)V

    throw v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    :catch_6
    move-exception v0

    :goto_6
    move-object v12, v13

    goto :goto_7

    :catch_7
    move-exception v0

    const/4 v13, 0x0

    goto :goto_6

    :catch_8
    move-exception v0

    const/4 v13, 0x0

    :try_start_c
    invoke-virtual {v4, v0}, LA5/e;->d(Ljava/io/IOException;)V

    throw v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    :goto_7
    instance-of v5, v0, LD5/a;

    if-nez v5, :cond_12

    iget-boolean v5, v4, LA5/e;->b:Z

    if-eqz v5, :cond_11

    move-object v5, v0

    :goto_8
    if-nez v12, :cond_8

    :try_start_d
    invoke-virtual {v4, v11}, LA5/e;->c(Z)Lw5/G;

    move-result-object v12

    invoke-static {v12}, Le5/g;->c(Ljava/lang/Object;)V

    goto :goto_9

    :catch_9
    move-exception v0

    goto/16 :goto_c

    :cond_8
    :goto_9
    iput-object v8, v12, Lw5/G;->a:Lw5/B;

    iget-object v0, v7, LA5/n;->d:Lw5/n;

    iput-object v0, v12, Lw5/G;->e:Lw5/n;

    iput-wide v9, v12, Lw5/G;->k:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v12, Lw5/G;->l:J

    invoke-virtual {v12}, Lw5/G;->a()Lw5/H;

    move-result-object v0

    iget v12, v0, Lw5/H;->s:I

    const/16 v14, 0x64

    if-ne v12, v14, :cond_9

    invoke-virtual {v4, v11}, LA5/e;->c(Z)Lw5/G;

    move-result-object v0

    invoke-static {v0}, Le5/g;->c(Ljava/lang/Object;)V

    iput-object v8, v0, Lw5/G;->a:Lw5/B;

    iget-object v7, v7, LA5/n;->d:Lw5/n;

    iput-object v7, v0, Lw5/G;->e:Lw5/n;

    iput-wide v9, v0, Lw5/G;->k:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v0, Lw5/G;->l:J

    invoke-virtual {v0}, Lw5/G;->a()Lw5/H;

    move-result-object v0

    iget v12, v0, Lw5/H;->s:I

    :cond_9
    invoke-virtual {v0}, Lw5/H;->f()Lw5/G;

    move-result-object v7
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    :try_start_e
    const-string v8, "Content-Type"

    invoke-static {v8, v0}, Lw5/H;->a(Ljava/lang/String;Lw5/H;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v0}, LB5/e;->e(Lw5/H;)J

    move-result-wide v9

    invoke-interface {v6, v0}, LB5/e;->c(Lw5/H;)LK5/F;

    move-result-object v0

    new-instance v11, LA5/d;

    invoke-direct {v11, v4, v0, v9, v10}, LA5/d;-><init>(LA5/e;LK5/F;J)V

    new-instance v0, LB5/h;

    invoke-static {v11}, LE2/g;->b(LK5/F;)LK5/z;

    move-result-object v11

    invoke-direct {v0, v8, v9, v10, v11}, LB5/h;-><init>(Ljava/lang/String;JLK5/z;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    :try_start_f
    iput-object v0, v7, Lw5/G;->g:Lw5/K;

    invoke-virtual {v7}, Lw5/G;->a()Lw5/H;

    move-result-object v0

    iget-object v4, v0, Lw5/H;->b:Lw5/B;

    iget-object v4, v4, Lw5/B;->d:Lw5/p;

    invoke-virtual {v4, v1}, Lw5/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-static {v1, v0}, Lw5/H;->a(Ljava/lang/String;Lw5/H;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    invoke-interface {v6}, LB5/e;->d()LA5/n;

    move-result-object v1

    invoke-virtual {v1}, LA5/n;->k()V

    :cond_b
    const/16 v1, 0xcc

    if-eq v12, v1, :cond_c

    const/16 v1, 0xcd

    if-ne v12, v1, :cond_f

    :cond_c
    iget-object v1, v0, Lw5/H;->v:Lw5/K;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lw5/K;->contentLength()J

    move-result-wide v1

    goto :goto_a

    :cond_d
    const-wide/16 v1, -0x1

    :goto_a
    const-wide/16 v6, 0x0

    cmp-long v1, v1, v6

    if-lez v1, :cond_f

    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " had non-zero Content-Length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lw5/H;->v:Lw5/K;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lw5/K;->contentLength()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    goto :goto_b

    :cond_e
    move-object v12, v13

    :goto_b
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    return-object v0

    :catch_a
    move-exception v0

    invoke-virtual {v4, v0}, LA5/e;->d(Ljava/io/IOException;)V

    throw v0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    :goto_c
    if-eqz v5, :cond_10

    invoke-static {v5, v0}, LE5/d;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v5

    :cond_10
    throw v0

    :cond_11
    throw v0

    :cond_12
    throw v0
.end method
