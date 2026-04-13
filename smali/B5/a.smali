.class public final LB5/a;
.super Ljava/lang/Object;

# interfaces
.implements Lw5/s;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lw5/b;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LB5/a;->a:I

    const-string v0, "cookieJar"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LB5/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lw5/y;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LB5/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LB5/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public static d(Lw5/H;I)I
    .locals 1

    const-string v0, "Retry-After"

    invoke-static {v0, p0}, Lw5/H;->a(Ljava/lang/String;Lw5/H;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p1, "\\d+"

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    const-string v0, "compile(...)"

    invoke-static {p1, v0}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "Integer.valueOf(header)"

    invoke-static {p0, p1}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const p0, 0x7fffffff

    return p0

    :cond_1
    return p1
.end method


# virtual methods
.method public final a(LB5/g;)Lw5/H;
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v1, LB5/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, v2, LB5/g;->f:Lw5/B;

    iget-object v3, v2, LB5/g;->b:LA5/j;

    sget-object v4, LT4/p;->b:LT4/p;

    move-object v8, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v0

    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v11, "request"

    invoke-static {v4, v11}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v11, v3, LA5/j;->w:LA5/e;

    if-nez v11, :cond_12

    monitor-enter v3

    :try_start_0
    iget-boolean v11, v3, LA5/j;->y:Z

    if-nez v11, :cond_11

    iget-boolean v11, v3, LA5/j;->x:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v11, :cond_10

    monitor-exit v3

    if-eqz v0, :cond_2

    new-instance v0, LA5/f;

    iget-object v11, v3, LA5/j;->b:LA5/p;

    iget-object v12, v4, Lw5/B;->b:Lw5/r;

    iget-object v13, v3, LA5/j;->D:Lw5/y;

    iget-boolean v14, v12, Lw5/r;->a:Z

    if-eqz v14, :cond_1

    iget-object v14, v13, Lw5/y;->D:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v14, :cond_0

    iget-object v15, v13, Lw5/y;->H:LI5/c;

    iget-object v5, v13, Lw5/y;->I:Lw5/g;

    move-object/from16 v24, v5

    move-object/from16 v22, v14

    move-object/from16 v23, v15

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "CLEARTEXT-only client"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    :goto_2
    new-instance v17, Lw5/a;

    iget-object v5, v12, Lw5/r;->e:Ljava/lang/String;

    iget v12, v12, Lw5/r;->f:I

    iget-object v14, v13, Lw5/y;->z:Lw5/b;

    iget-object v15, v13, Lw5/y;->C:Ljavax/net/SocketFactory;

    iget-object v7, v13, Lw5/y;->B:Lw5/b;

    iget-object v6, v13, Lw5/y;->G:Ljava/util/List;

    move-object/from16 v18, v5

    iget-object v5, v13, Lw5/y;->F:Ljava/util/List;

    iget-object v13, v13, Lw5/y;->A:Ljava/net/ProxySelector;

    move-object/from16 v27, v5

    move-object/from16 v26, v6

    move-object/from16 v25, v7

    move/from16 v19, v12

    move-object/from16 v28, v13

    move-object/from16 v20, v14

    move-object/from16 v21, v15

    invoke-direct/range {v17 .. v28}, Lw5/a;-><init>(Ljava/lang/String;ILw5/b;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lw5/g;Lw5/b;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    move-object/from16 v5, v17

    invoke-direct {v0, v11, v5, v3}, LA5/f;-><init>(LA5/p;Lw5/a;LA5/j;)V

    iput-object v0, v3, LA5/j;->t:LA5/f;

    :cond_2
    :try_start_1
    iget-boolean v0, v3, LA5/j;->A:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_f

    :try_start_2
    invoke-virtual {v2, v4}, LB5/g;->b(Lw5/B;)Lw5/H;

    move-result-object v0
    :try_end_2
    .catch LA5/q; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v9, :cond_4

    :try_start_3
    invoke-virtual {v0}, Lw5/H;->f()Lw5/G;

    move-result-object v0

    invoke-virtual {v9}, Lw5/H;->f()Lw5/G;

    move-result-object v4

    const/4 v5, 0x0

    iput-object v5, v4, Lw5/G;->g:Lw5/K;

    invoke-virtual {v4}, Lw5/G;->a()Lw5/H;

    move-result-object v4

    iget-object v6, v4, Lw5/H;->v:Lw5/K;

    if-nez v6, :cond_3

    iput-object v4, v0, Lw5/G;->j:Lw5/H;

    invoke-virtual {v0}, Lw5/G;->a()Lw5/H;

    move-result-object v0

    :goto_3
    move-object v9, v0

    goto :goto_4

    :catchall_0
    move-exception v0

    const/4 v2, 0x1

    goto/16 :goto_9

    :cond_3
    const-string v0, "priorResponse.body != null"

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    const/4 v5, 0x0

    goto :goto_3

    :goto_4
    iget-object v0, v3, LA5/j;->w:LA5/e;

    invoke-virtual {v1, v9, v0}, LB5/a;->b(Lw5/H;LA5/e;)Lw5/B;

    move-result-object v4

    if-nez v4, :cond_7

    if-eqz v0, :cond_5

    iget-boolean v0, v0, LA5/e;->a:Z

    if-eqz v0, :cond_5

    iget-boolean v0, v3, LA5/j;->v:Z

    if-nez v0, :cond_6

    const/4 v2, 0x1

    iput-boolean v2, v3, LA5/j;->v:Z

    iget-object v0, v3, LA5/j;->q:LA5/i;

    invoke-virtual {v0}, LK5/d;->i()Z

    :cond_5
    const/4 v6, 0x0

    goto :goto_5

    :cond_6
    const-string v0, "Check failed."

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_5
    invoke-virtual {v3, v6}, LA5/j;->e(Z)V

    goto :goto_6

    :cond_7
    const/4 v6, 0x0

    :try_start_4
    iget-object v0, v4, Lw5/B;->e:Lw5/F;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lw5/F;->isOneShot()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_5

    :goto_6
    return-object v9

    :cond_8
    iget-object v0, v9, Lw5/H;->v:Lw5/K;

    if-eqz v0, :cond_9

    invoke-static {v0}, Lx5/b;->c(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_9
    add-int/lit8 v10, v10, 0x1

    const/16 v0, 0x14

    if-gt v10, v0, :cond_a

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, LA5/j;->e(Z)V

    goto/16 :goto_0

    :cond_a
    :try_start_5
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Too many follow-up requests: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    const/4 v5, 0x0

    instance-of v6, v0, LD5/a;

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    invoke-virtual {v1, v0, v3, v4, v6}, LB5/a;->c(Ljava/io/IOException;LA5/j;Lw5/B;Z)Z

    move-result v6

    if-eqz v6, :cond_b

    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v11

    add-int/2addr v11, v7

    invoke-direct {v6, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {v3, v7}, LA5/j;->e(Z)V

    move-object v8, v6

    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_b
    :try_start_6
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Exception;

    invoke-static {v0, v4}, LE5/d;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_c
    throw v0

    :catch_1
    move-exception v0

    const/4 v5, 0x0

    iget-object v6, v0, LA5/q;->b:Ljava/io/IOException;

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v3, v4, v7}, LB5/a;->c(Ljava/io/IOException;LA5/j;Lw5/B;Z)Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v0, v0, LA5/q;->q:Ljava/io/IOException;

    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v11

    const/4 v12, 0x1

    add-int/2addr v11, v12

    invoke-direct {v6, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-virtual {v3, v12}, LA5/j;->e(Z)V

    move-object v8, v6

    move v0, v7

    goto/16 :goto_1

    :cond_d
    :try_start_7
    iget-object v0, v0, LA5/q;->q:Ljava/io/IOException;

    const-string v2, "$this$withSuppressed"

    invoke-static {v0, v2}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Exception;

    invoke-static {v0, v4}, LE5/d;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_e
    throw v0

    :cond_f
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_9
    invoke-virtual {v3, v2}, LA5/j;->e(Z)V

    throw v0

    :cond_10
    :try_start_8
    const-string v0, "Check failed."

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_1
    move-exception v0

    goto :goto_a

    :cond_11
    const-string v0, "cannot make a new request because the previous response is still open: please call response.close()"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_a
    monitor-exit v3

    throw v0

    :cond_12
    const-string v0, "Check failed."

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    const-string v0, "Content-Encoding"

    const-string v3, "User-Agent"

    iget-object v4, v1, LB5/a;->b:Ljava/lang/Object;

    check-cast v4, Lw5/b;

    const-string v5, "gzip"

    const-string v6, "Accept-Encoding"

    const-string v7, "Connection"

    const-string v8, "Host"

    const-string v9, "Transfer-Encoding"

    const-string v10, "Content-Type"

    const-string v11, "Content-Length"

    iget-object v12, v2, LB5/g;->f:Lw5/B;

    invoke-virtual {v12}, Lw5/B;->a()Lw5/A;

    move-result-object v13

    iget-object v14, v12, Lw5/B;->d:Lw5/p;

    iget-object v15, v12, Lw5/B;->b:Lw5/r;

    iget-object v1, v12, Lw5/B;->e:Lw5/F;

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    const-wide/16 v18, -0x1

    if-eqz v17, :cond_15

    invoke-virtual/range {v17 .. v17}, Lw5/F;->contentType()Lw5/t;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, v0, Lw5/t;->a:Ljava/lang/String;

    invoke-virtual {v13, v10, v0}, Lw5/A;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    invoke-virtual/range {v17 .. v17}, Lw5/F;->contentLength()J

    move-result-wide v0

    cmp-long v17, v0, v18

    if-eqz v17, :cond_14

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v11, v0}, Lw5/A;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v13, Lw5/A;->c:Lw5/o;

    invoke-virtual {v0, v9}, Lw5/o;->d(Ljava/lang/String;)V

    goto :goto_b

    :cond_14
    const-string v0, "chunked"

    invoke-virtual {v13, v9, v0}, Lw5/A;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v13, Lw5/A;->c:Lw5/o;

    invoke-virtual {v0, v11}, Lw5/o;->d(Ljava/lang/String;)V

    :cond_15
    :goto_b
    invoke-virtual {v14, v8}, Lw5/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_16

    invoke-static {v15, v1}, Lx5/b;->t(Lw5/r;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v8, v0}, Lw5/A;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    invoke-virtual {v14, v7}, Lw5/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_17

    const-string v0, "Keep-Alive"

    invoke-virtual {v13, v7, v0}, Lw5/A;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    invoke-virtual {v14, v6}, Lw5/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_18

    const-string v0, "Range"

    invoke-virtual {v14, v0}, Lw5/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_18

    invoke-virtual {v13, v6, v5}, Lw5/A;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_18
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "url"

    invoke-static {v15, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14, v3}, Lw5/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_19

    const-string v0, "okhttp/5.0.0-alpha.2"

    invoke-virtual {v13, v3, v0}, Lw5/A;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    invoke-virtual {v13}, Lw5/A;->a()Lw5/B;

    move-result-object v0

    invoke-virtual {v2, v0}, LB5/g;->b(Lw5/B;)Lw5/H;

    move-result-object v0

    iget-object v2, v0, Lw5/H;->u:Lw5/p;

    invoke-static {v4, v15, v2}, LB5/f;->b(Lw5/b;Lw5/r;Lw5/p;)V

    invoke-virtual {v0}, Lw5/H;->f()Lw5/G;

    move-result-object v3

    iput-object v12, v3, Lw5/G;->a:Lw5/B;

    if-eqz v1, :cond_1a

    move-object/from16 v1, v16

    invoke-static {v1, v0}, Lw5/H;->a(Ljava/lang/String;Lw5/H;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-static {v0}, LB5/f;->a(Lw5/H;)Z

    move-result v4

    if-eqz v4, :cond_1a

    iget-object v4, v0, Lw5/H;->v:Lw5/K;

    if-eqz v4, :cond_1a

    new-instance v5, LK5/q;

    invoke-virtual {v4}, Lw5/K;->source()LK5/i;

    move-result-object v4

    invoke-direct {v5, v4}, LK5/q;-><init>(LK5/F;)V

    invoke-virtual {v2}, Lw5/p;->d()Lw5/o;

    move-result-object v2

    invoke-virtual {v2, v1}, Lw5/o;->d(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Lw5/o;->d(Ljava/lang/String;)V

    invoke-virtual {v2}, Lw5/o;->c()Lw5/p;

    move-result-object v1

    invoke-virtual {v1}, Lw5/p;->d()Lw5/o;

    move-result-object v1

    iput-object v1, v3, Lw5/G;->f:Lw5/o;

    invoke-static {v10, v0}, Lw5/H;->a(Ljava/lang/String;Lw5/H;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, LB5/h;

    invoke-static {v5}, LE2/g;->b(LK5/F;)LK5/z;

    move-result-object v2

    move-wide/from16 v4, v18

    invoke-direct {v1, v0, v4, v5, v2}, LB5/h;-><init>(Ljava/lang/String;JLK5/z;)V

    iput-object v1, v3, Lw5/G;->g:Lw5/K;

    :cond_1a
    invoke-virtual {v3}, Lw5/G;->a()Lw5/H;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public b(Lw5/H;LA5/e;)Lw5/B;
    .locals 11

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p2, LA5/e;->c:LA5/n;

    if-eqz v1, :cond_0

    iget-object v1, v1, LA5/n;->q:Lw5/L;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iget v2, p1, Lw5/H;->s:I

    iget-object v3, p1, Lw5/H;->b:Lw5/B;

    iget-object v4, v3, Lw5/B;->c:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0x134

    const/16 v8, 0x133

    if-eq v2, v8, :cond_e

    if-eq v2, v7, :cond_e

    const/16 v9, 0x191

    if-eq v2, v9, :cond_d

    const/16 v9, 0x1a5

    if-eq v2, v9, :cond_a

    const/16 p2, 0x1f7

    if-eq v2, p2, :cond_8

    const/16 p2, 0x197

    if-eq v2, p2, :cond_6

    const/16 p2, 0x198

    if-eq v2, p2, :cond_1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_3

    :cond_1
    iget-object v1, p0, LB5/a;->b:Ljava/lang/Object;

    check-cast v1, Lw5/y;

    iget-boolean v1, v1, Lw5/y;->u:Z

    if-nez v1, :cond_2

    goto/16 :goto_3

    :cond_2
    iget-object v1, v3, Lw5/B;->e:Lw5/F;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lw5/F;->isOneShot()Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_3

    :cond_3
    iget-object v1, p1, Lw5/H;->y:Lw5/H;

    if-eqz v1, :cond_4

    iget v1, v1, Lw5/H;->s:I

    if-ne v1, p2, :cond_4

    goto/16 :goto_3

    :cond_4
    invoke-static {p1, v5}, LB5/a;->d(Lw5/H;I)I

    move-result p2

    if-lez p2, :cond_5

    goto/16 :goto_3

    :cond_5
    iget-object p1, p1, Lw5/H;->b:Lw5/B;

    return-object p1

    :cond_6
    invoke-static {v1}, Le5/g;->c(Ljava/lang/Object;)V

    iget-object p1, v1, Lw5/L;->b:Ljava/net/Proxy;

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p1

    sget-object p2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne p1, p2, :cond_7

    iget-object p1, p0, LB5/a;->b:Ljava/lang/Object;

    check-cast p1, Lw5/y;

    iget-object p1, p1, Lw5/y;->B:Lw5/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :cond_7
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    iget-object v1, p1, Lw5/H;->y:Lw5/H;

    if-eqz v1, :cond_9

    iget v1, v1, Lw5/H;->s:I

    if-ne v1, p2, :cond_9

    goto/16 :goto_3

    :cond_9
    const p2, 0x7fffffff

    invoke-static {p1, p2}, LB5/a;->d(Lw5/H;I)I

    move-result p2

    if-nez p2, :cond_18

    iget-object p1, p1, Lw5/H;->b:Lw5/B;

    return-object p1

    :cond_a
    iget-object v1, v3, Lw5/B;->e:Lw5/F;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lw5/F;->isOneShot()Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_3

    :cond_b
    if-eqz p2, :cond_18

    iget-object v1, p2, LA5/e;->e:LA5/f;

    iget-object v1, v1, LA5/f;->h:Lw5/a;

    iget-object v1, v1, Lw5/a;->a:Lw5/r;

    iget-object v1, v1, Lw5/r;->e:Ljava/lang/String;

    iget-object v2, p2, LA5/e;->c:LA5/n;

    iget-object v2, v2, LA5/n;->q:Lw5/L;

    iget-object v2, v2, Lw5/L;->a:Lw5/a;

    iget-object v2, v2, Lw5/a;->a:Lw5/r;

    iget-object v2, v2, Lw5/r;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto/16 :goto_3

    :cond_c
    iget-object p2, p2, LA5/e;->c:LA5/n;

    monitor-enter p2

    :try_start_0
    iput-boolean v6, p2, LA5/n;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    iget-object p1, p1, Lw5/H;->b:Lw5/B;

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_d
    iget-object p1, p0, LB5/a;->b:Ljava/lang/Object;

    check-cast p1, Lw5/y;

    iget-object p1, p1, Lw5/y;->v:Lw5/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :cond_e
    :pswitch_0
    const-string p2, "PROPFIND"

    iget-object v1, p0, LB5/a;->b:Ljava/lang/Object;

    check-cast v1, Lw5/y;

    iget-boolean v2, v1, Lw5/y;->w:Z

    if-nez v2, :cond_f

    goto/16 :goto_3

    :cond_f
    const-string v2, "Location"

    invoke-static {v2, p1}, Lw5/H;->a(Ljava/lang/String;Lw5/H;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lw5/H;->b:Lw5/B;

    if-eqz v2, :cond_18

    iget-object v9, v3, Lw5/B;->b:Lw5/r;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9, v2}, Lw5/r;->f(Ljava/lang/String;)Lw5/q;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Lw5/q;->a()Lw5/r;

    move-result-object v2

    goto :goto_1

    :cond_10
    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_18

    iget-object v9, v2, Lw5/r;->b:Ljava/lang/String;

    iget-object v10, v3, Lw5/B;->b:Lw5/r;

    iget-object v10, v10, Lw5/r;->b:Ljava/lang/String;

    invoke-static {v9, v10}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    iget-boolean v1, v1, Lw5/y;->x:Z

    if-nez v1, :cond_11

    goto :goto_3

    :cond_11
    invoke-virtual {v3}, Lw5/B;->a()Lw5/A;

    move-result-object v1

    invoke-static {v4}, LE5/l;->A(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_16

    iget p1, p1, Lw5/H;->s:I

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_12

    if-eq p1, v7, :cond_12

    if-ne p1, v8, :cond_13

    :cond_12
    move v5, v6

    :cond_13
    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_14

    if-eq p1, v7, :cond_14

    if-eq p1, v8, :cond_14

    const-string p1, "GET"

    invoke-virtual {v1, p1, v0}, Lw5/A;->c(Ljava/lang/String;Lw5/F;)V

    goto :goto_2

    :cond_14
    if-eqz v5, :cond_15

    iget-object v0, v3, Lw5/B;->e:Lw5/F;

    :cond_15
    invoke-virtual {v1, v4, v0}, Lw5/A;->c(Ljava/lang/String;Lw5/F;)V

    :goto_2
    if-nez v5, :cond_16

    const-string p1, "Transfer-Encoding"

    iget-object p2, v1, Lw5/A;->c:Lw5/o;

    invoke-virtual {p2, p1}, Lw5/o;->d(Ljava/lang/String;)V

    const-string p1, "Content-Length"

    iget-object p2, v1, Lw5/A;->c:Lw5/o;

    invoke-virtual {p2, p1}, Lw5/o;->d(Ljava/lang/String;)V

    const-string p1, "Content-Type"

    iget-object p2, v1, Lw5/A;->c:Lw5/o;

    invoke-virtual {p2, p1}, Lw5/o;->d(Ljava/lang/String;)V

    :cond_16
    iget-object p1, v3, Lw5/B;->b:Lw5/r;

    invoke-static {p1, v2}, Lx5/b;->a(Lw5/r;Lw5/r;)Z

    move-result p1

    if-nez p1, :cond_17

    const-string p1, "Authorization"

    iget-object p2, v1, Lw5/A;->c:Lw5/o;

    invoke-virtual {p2, p1}, Lw5/o;->d(Ljava/lang/String;)V

    :cond_17
    iput-object v2, v1, Lw5/A;->a:Lw5/r;

    invoke-virtual {v1}, Lw5/A;->a()Lw5/B;

    move-result-object p1

    return-object p1

    :cond_18
    :goto_3
    return-object v0

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public c(Ljava/io/IOException;LA5/j;Lw5/B;Z)Z
    .locals 3

    iget-object v0, p0, LB5/a;->b:Ljava/lang/Object;

    check-cast v0, Lw5/y;

    iget-boolean v0, v0, Lw5/y;->u:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    if-eqz p4, :cond_2

    iget-object p3, p3, Lw5/B;->e:Lw5/F;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lw5/F;->isOneShot()Z

    move-result p3

    if-nez p3, :cond_10

    :cond_1
    instance-of p3, p1, Ljava/io/FileNotFoundException;

    if-eqz p3, :cond_2

    return v1

    :cond_2
    instance-of p3, p1, Ljava/net/ProtocolException;

    if-eqz p3, :cond_3

    return v1

    :cond_3
    instance-of p3, p1, Ljava/io/InterruptedIOException;

    if-eqz p3, :cond_4

    instance-of p1, p1, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_10

    if-nez p4, :cond_10

    goto :goto_0

    :cond_4
    instance-of p3, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p3, :cond_5

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p3

    instance-of p3, p3, Ljava/security/cert/CertificateException;

    if-eqz p3, :cond_5

    goto/16 :goto_4

    :cond_5
    instance-of p1, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz p1, :cond_6

    return v1

    :cond_6
    :goto_0
    iget-object p1, p2, LA5/j;->t:LA5/f;

    invoke-static {p1}, Le5/g;->c(Ljava/lang/Object;)V

    iget p2, p1, LA5/f;->c:I

    const/4 p3, 0x1

    if-nez p2, :cond_7

    iget p4, p1, LA5/f;->d:I

    if-nez p4, :cond_7

    iget p4, p1, LA5/f;->e:I

    if-nez p4, :cond_7

    move p1, v1

    goto :goto_3

    :cond_7
    iget-object p4, p1, LA5/f;->f:Lw5/L;

    if-eqz p4, :cond_8

    goto :goto_2

    :cond_8
    const/4 p4, 0x0

    if-gt p2, p3, :cond_c

    iget p2, p1, LA5/f;->d:I

    if-gt p2, p3, :cond_c

    iget p2, p1, LA5/f;->e:I

    if-lez p2, :cond_9

    goto :goto_1

    :cond_9
    iget-object p2, p1, LA5/f;->i:LA5/j;

    iget-object p2, p2, LA5/j;->u:LA5/n;

    if-eqz p2, :cond_c

    monitor-enter p2

    :try_start_0
    iget v0, p2, LA5/n;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_a

    monitor-exit p2

    goto :goto_1

    :cond_a
    :try_start_1
    iget-object v0, p2, LA5/n;->q:Lw5/L;

    iget-object v0, v0, Lw5/L;->a:Lw5/a;

    iget-object v0, v0, Lw5/a;->a:Lw5/r;

    iget-object v2, p1, LA5/f;->h:Lw5/a;

    iget-object v2, v2, Lw5/a;->a:Lw5/r;

    invoke-static {v0, v2}, Lx5/b;->a(Lw5/r;Lw5/r;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_b

    monitor-exit p2

    goto :goto_1

    :cond_b
    :try_start_2
    iget-object p4, p2, LA5/n;->q:Lw5/L;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p2

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p2

    throw p1

    :cond_c
    :goto_1
    if-eqz p4, :cond_e

    iput-object p4, p1, LA5/f;->f:Lw5/L;

    :cond_d
    :goto_2
    move p1, p3

    goto :goto_3

    :cond_e
    iget-object p2, p1, LA5/f;->a:LA5/r;

    if-eqz p2, :cond_f

    invoke-virtual {p2}, LA5/r;->a()Z

    move-result p2

    if-ne p2, p3, :cond_f

    goto :goto_2

    :cond_f
    iget-object p1, p1, LA5/f;->b:LA5/t;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, LA5/t;->l()Z

    move-result p1

    :goto_3
    if-nez p1, :cond_11

    :cond_10
    :goto_4
    return v1

    :cond_11
    return p3
.end method
