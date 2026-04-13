.class public final LD5/r;
.super Ljava/lang/Object;

# interfaces
.implements LB5/e;


# static fields
.field public static final g:Ljava/util/List;

.field public static final h:Ljava/util/List;


# instance fields
.field public volatile a:LD5/y;

.field public final b:Lw5/z;

.field public volatile c:Z

.field public final d:LA5/n;

.field public final e:LB5/g;

.field public final f:LD5/q;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v10, ":scheme"

    const-string v11, ":authority"

    const-string v0, "connection"

    const-string v1, "host"

    const-string v2, "keep-alive"

    const-string v3, "proxy-connection"

    const-string v4, "te"

    const-string v5, "transfer-encoding"

    const-string v6, "encoding"

    const-string v7, "upgrade"

    const-string v8, ":method"

    const-string v9, ":path"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx5/b;->j([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, LD5/r;->g:Ljava/util/List;

    const-string v7, "encoding"

    const-string v8, "upgrade"

    const-string v1, "connection"

    const-string v2, "host"

    const-string v3, "keep-alive"

    const-string v4, "proxy-connection"

    const-string v5, "te"

    const-string v6, "transfer-encoding"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx5/b;->j([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, LD5/r;->h:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lw5/y;LA5/n;LB5/g;LD5/q;)V
    .locals 1

    const-string v0, "http2Connection"

    invoke-static {p4, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LD5/r;->d:LA5/n;

    iput-object p3, p0, LD5/r;->e:LB5/g;

    iput-object p4, p0, LD5/r;->f:LD5/q;

    iget-object p1, p1, Lw5/y;->G:Ljava/util/List;

    sget-object p2, Lw5/z;->u:Lw5/z;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lw5/z;->t:Lw5/z;

    :goto_0
    iput-object p2, p0, LD5/r;->b:Lw5/z;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, LD5/r;->a:LD5/y;

    invoke-static {v0}, Le5/g;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, LD5/y;->f()LD5/v;

    move-result-object v0

    invoke-virtual {v0}, LD5/v;->close()V

    return-void
.end method

.method public final b(Z)Lw5/G;
    .locals 11

    iget-object v0, p0, LD5/r;->a:LD5/y;

    if-eqz v0, :cond_9

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, LD5/y;->i:LD5/x;

    invoke-virtual {v1}, LK5/d;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    iget-object v1, v0, LD5/y;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, LD5/y;->k:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    :try_start_4
    iget-object v1, v0, LD5/y;->i:LD5/x;

    invoke-virtual {v1}, LD5/x;->k()V

    iget-object v1, v0, LD5/y;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, LD5/y;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "headersQueue.removeFirst()"

    invoke-static {v1, v2}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lw5/p;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v0

    iget-object v0, p0, LD5/r;->b:Lw5/z;

    const-string v2, "protocol"

    invoke-static {v0, v2}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Lw5/p;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v7, v4

    move v6, v5

    :goto_1
    if-ge v6, v3, :cond_3

    invoke-virtual {v1, v6}, Lw5/p;->c(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v6}, Lw5/p;->e(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, ":status"

    invoke-static {v8, v10}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "HTTP/1.1 "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, LH3/u0;->s(Ljava/lang/String;)LA/d;

    move-result-object v7

    goto :goto_2

    :cond_1
    sget-object v10, LD5/r;->h:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "name"

    invoke-static {v8, v10}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "value"

    invoke-static {v9, v10}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v9}, Lk5/f;->V(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    if-eqz v7, :cond_6

    new-instance v1, Lw5/G;

    invoke-direct {v1}, Lw5/G;-><init>()V

    iput-object v0, v1, Lw5/G;->b:Lw5/z;

    iget v0, v7, LA/d;->q:I

    iput v0, v1, Lw5/G;->c:I

    iget-object v0, v7, LA/d;->s:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lw5/G;->d:Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, [Ljava/lang/String;

    new-instance v2, Lw5/o;

    invoke-direct {v2}, Lw5/o;-><init>()V

    iget-object v3, v2, Lw5/o;->a:Ljava/util/ArrayList;

    const-string v5, "<this>"

    invoke-static {v3, v5}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v5, "asList(...)"

    invoke-static {v0, v5}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iput-object v2, v1, Lw5/G;->f:Lw5/o;

    if-eqz p1, :cond_4

    iget p1, v1, Lw5/G;->c:I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_4

    return-object v4

    :cond_4
    return-object v1

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "Expected \':status\' header not present"

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    goto :goto_5

    :cond_7
    :try_start_5
    iget-object p1, v0, LD5/y;->l:Ljava/io/IOException;

    if-eqz p1, :cond_8

    goto :goto_3

    :cond_8
    new-instance p1, LD5/E;

    iget v1, v0, LD5/y;->k:I

    invoke-static {v1}, Lcom/google/android/material/datepicker/e;->i(I)V

    invoke-direct {p1, v1}, LD5/E;-><init>(I)V

    :goto_3
    throw p1

    :goto_4
    iget-object v1, v0, LD5/y;->i:LD5/x;

    invoke-virtual {v1}, LD5/x;->k()V

    throw p1

    :goto_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1

    :cond_9
    new-instance p1, Ljava/io/IOException;

    const-string v0, "stream wasn\'t created"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Lw5/H;)LK5/F;
    .locals 0

    iget-object p1, p0, LD5/r;->a:LD5/y;

    invoke-static {p1}, Le5/g;->c(Ljava/lang/Object;)V

    iget-object p1, p1, LD5/y;->g:LD5/w;

    return-object p1
.end method

.method public final cancel()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, LD5/r;->c:Z

    iget-object v0, p0, LD5/r;->a:LD5/y;

    if-eqz v0, :cond_0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, LD5/y;->e(I)V

    :cond_0
    return-void
.end method

.method public final d()LA5/n;
    .locals 1

    iget-object v0, p0, LD5/r;->d:LA5/n;

    return-object v0
.end method

.method public final e(Lw5/H;)J
    .locals 2

    invoke-static {p1}, LB5/f;->a(Lw5/H;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-static {p1}, Lx5/b;->i(Lw5/H;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, LD5/r;->f:LD5/q;

    invoke-virtual {v0}, LD5/q;->flush()V

    return-void
.end method

.method public final g(Lw5/B;)V
    .locals 13

    const-string v0, "request"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LD5/r;->a:LD5/y;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lw5/B;->e:Lw5/F;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v3, p1, Lw5/B;->d:Lw5/p;

    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v3}, Lw5/p;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, LD5/b;

    sget-object v6, LD5/b;->f:LK5/j;

    iget-object v7, p1, Lw5/B;->c:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, LD5/b;-><init>(LK5/j;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, LD5/b;

    sget-object v6, LD5/b;->g:LK5/j;

    iget-object v7, p1, Lw5/B;->b:Lw5/r;

    const-string v8, "url"

    invoke-static {v7, v8}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Lw5/r;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lw5/r;->d()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x3f

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_2
    invoke-direct {v5, v6, v8}, LD5/b;-><init>(LK5/j;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "Host"

    iget-object p1, p1, Lw5/B;->d:Lw5/p;

    invoke-virtual {p1, v5}, Lw5/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v5, LD5/b;

    sget-object v6, LD5/b;->i:LK5/j;

    invoke-direct {v5, v6, p1}, LD5/b;-><init>(LK5/j;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance p1, LD5/b;

    sget-object v5, LD5/b;->h:LK5/j;

    iget-object v6, v7, Lw5/r;->b:Ljava/lang/String;

    invoke-direct {p1, v5, v6}, LD5/b;-><init>(LK5/j;Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lw5/p;->size()I

    move-result p1

    move v5, v1

    :goto_1
    if-ge v5, p1, :cond_7

    invoke-virtual {v3, v5}, Lw5/p;->c(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "Locale.US"

    invoke-static {v7, v8}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v6, :cond_6

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v6, v7}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, LD5/r;->g:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "te"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v3, v5}, Lw5/p;->e(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "trailers"

    invoke-static {v7, v8}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    new-instance v7, LD5/b;

    invoke-virtual {v3, v5}, Lw5/p;->e(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v6, v8}, LD5/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    iget-object v7, p0, LD5/r;->f:LD5/q;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    xor-int/lit8 v8, v0, 0x1

    iget-object p1, v7, LD5/q;->L:LD5/z;

    monitor-enter p1

    :try_start_0
    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget v3, v7, LD5/q;->t:I

    const v5, 0x3fffffff    # 1.9999999f

    if-le v3, v5, :cond_8

    const/16 v3, 0x8

    invoke-virtual {v7, v3}, LD5/q;->h(I)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_8
    :goto_2
    iget-boolean v3, v7, LD5/q;->u:Z

    if-nez v3, :cond_e

    iget v6, v7, LD5/q;->t:I

    add-int/lit8 v3, v6, 0x2

    iput v3, v7, LD5/q;->t:I

    new-instance v5, LD5/y;

    const/4 v10, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v10}, LD5/y;-><init>(ILD5/q;ZZLw5/p;)V

    if-eqz v0, :cond_9

    iget-wide v9, v7, LD5/q;->I:J

    iget-wide v11, v7, LD5/q;->J:J

    cmp-long v0, v9, v11

    if-gez v0, :cond_9

    iget-wide v9, v5, LD5/y;->c:J

    iget-wide v11, v5, LD5/y;->d:J

    cmp-long v0, v9, v11

    if-ltz v0, :cond_a

    :cond_9
    move v1, v2

    :cond_a
    invoke-virtual {v5}, LD5/y;->h()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v7, LD5/q;->q:Ljava/util/LinkedHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_b
    :try_start_2
    monitor-exit v7

    iget-object v0, v7, LD5/q;->L:LD5/z;

    invoke-virtual {v0, v8, v6, v4}, LD5/z;->r(ZILjava/util/ArrayList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p1

    if-eqz v1, :cond_c

    iget-object p1, v7, LD5/q;->L:LD5/z;

    invoke-virtual {p1}, LD5/z;->flush()V

    :cond_c
    iput-object v5, p0, LD5/r;->a:LD5/y;

    iget-boolean p1, p0, LD5/r;->c:Z

    if-nez p1, :cond_d

    iget-object p1, p0, LD5/r;->a:LD5/y;

    invoke-static {p1}, Le5/g;->c(Ljava/lang/Object;)V

    iget-object p1, p1, LD5/y;->i:LD5/x;

    iget-object v0, p0, LD5/r;->e:LB5/g;

    iget v0, v0, LB5/g;->h:I

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1}, LK5/H;->g(J)LK5/H;

    iget-object p1, p0, LD5/r;->a:LD5/y;

    invoke-static {p1}, Le5/g;->c(Ljava/lang/Object;)V

    iget-object p1, p1, LD5/y;->j:LD5/x;

    iget-object v0, p0, LD5/r;->e:LB5/g;

    iget v0, v0, LB5/g;->i:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, LK5/H;->g(J)LK5/H;

    return-void

    :cond_d
    iget-object p1, p0, LD5/r;->a:LD5/y;

    invoke-static {p1}, Le5/g;->c(Ljava/lang/Object;)V

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, LD5/y;->e(I)V

    new-instance p1, Ljava/io/IOException;

    const-string v0, "Canceled"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_e
    :try_start_3
    new-instance v0, LD5/a;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    :try_start_4
    monitor-exit v7

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_4
    monitor-exit p1

    throw v0
.end method

.method public final h(Lw5/B;J)LK5/D;
    .locals 0

    const-string p2, "request"

    invoke-static {p1, p2}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, LD5/r;->a:LD5/y;

    invoke-static {p1}, Le5/g;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, LD5/y;->f()LD5/v;

    move-result-object p1

    return-object p1
.end method
