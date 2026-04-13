.class public final LA5/f;
.super Ljava/lang/Object;


# instance fields
.field public a:LA5/r;

.field public b:LA5/t;

.field public c:I

.field public d:I

.field public e:I

.field public f:Lw5/L;

.field public final g:LA5/p;

.field public final h:Lw5/a;

.field public final i:LA5/j;


# direct methods
.method public constructor <init>(LA5/p;Lw5/a;LA5/j;)V
    .locals 1

    const-string v0, "connectionPool"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LA5/f;->g:LA5/p;

    iput-object p2, p0, LA5/f;->h:Lw5/a;

    iput-object p3, p0, LA5/f;->i:LA5/j;

    return-void
.end method


# virtual methods
.method public final a(IIIZZ)LA5/n;
    .locals 13

    :goto_0
    iget-object v0, p0, LA5/f;->i:LA5/j;

    iget-boolean v0, v0, LA5/j;->A:Z

    if-nez v0, :cond_25

    iget-object v0, p0, LA5/f;->i:LA5/j;

    iget-object v1, v0, LA5/j;->u:LA5/n;

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    monitor-enter v1

    :try_start_0
    iget-boolean v3, v1, LA5/n;->i:Z

    if-nez v3, :cond_1

    iget-object v3, v1, LA5/n;->q:Lw5/L;

    iget-object v3, v3, Lw5/L;->a:Lw5/a;

    iget-object v3, v3, Lw5/a;->a:Lw5/r;

    invoke-virtual {p0, v3}, LA5/f;->b(Lw5/r;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    move-object v3, v2

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_4

    :cond_1
    :goto_1
    iget-object v3, p0, LA5/f;->i:LA5/j;

    invoke-virtual {v3}, LA5/j;->i()Ljava/net/Socket;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    monitor-exit v1

    iget-object v4, p0, LA5/f;->i:LA5/j;

    iget-object v4, v4, LA5/j;->u:LA5/n;

    if-eqz v4, :cond_3

    if-nez v3, :cond_2

    :goto_3
    move/from16 v2, p5

    goto/16 :goto_10

    :cond_2
    const-string p1, "Check failed."

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    if-eqz v3, :cond_4

    invoke-static {v3}, Lx5/b;->d(Ljava/net/Socket;)V

    goto :goto_5

    :goto_4
    monitor-exit v1

    throw p1

    :cond_4
    :goto_5
    const/4 v1, 0x0

    iput v1, p0, LA5/f;->c:I

    iput v1, p0, LA5/f;->d:I

    iput v1, p0, LA5/f;->e:I

    iget-object v3, p0, LA5/f;->g:LA5/p;

    iget-object v4, p0, LA5/f;->h:Lw5/a;

    iget-object v5, p0, LA5/f;->i:LA5/j;

    invoke-virtual {v3, v4, v5, v2, v1}, LA5/p;->a(Lw5/a;LA5/j;Ljava/util/ArrayList;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v1, p0, LA5/f;->i:LA5/j;

    iget-object v1, v1, LA5/j;->u:LA5/n;

    invoke-static {v1}, Le5/g;->c(Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    iget-object v3, p0, LA5/f;->f:Lw5/L;

    if-eqz v3, :cond_6

    iput-object v2, p0, LA5/f;->f:Lw5/L;

    :goto_6
    move-object v4, v2

    goto/16 :goto_f

    :cond_6
    iget-object v3, p0, LA5/f;->a:LA5/r;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, LA5/r;->a()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v1, p0, LA5/f;->a:LA5/r;

    invoke-static {v1}, Le5/g;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, LA5/r;->a()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, v1, LA5/r;->a:Ljava/util/ArrayList;

    iget v4, v1, LA5/r;->b:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v1, LA5/r;->b:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lw5/L;

    goto :goto_6

    :cond_7
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1

    :cond_8
    iget-object v3, p0, LA5/f;->b:LA5/t;

    if-nez v3, :cond_9

    new-instance v3, LA5/t;

    iget-object v4, p0, LA5/f;->h:Lw5/a;

    iget-object v5, p0, LA5/f;->i:LA5/j;

    iget-object v6, v5, LA5/j;->D:Lw5/y;

    iget-object v6, v6, Lw5/y;->N:Le4/c;

    invoke-direct {v3, v4, v6, v5}, LA5/t;-><init>(Lw5/a;Le4/c;Lw5/e;)V

    iput-object v3, p0, LA5/f;->b:LA5/t;

    :cond_9
    invoke-virtual {v3}, LA5/t;->l()Z

    move-result v4

    if-eqz v4, :cond_24

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_a
    iget v5, v3, LA5/t;->a:I

    iget-object v6, v3, LA5/t;->b:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_18

    iget-object v5, v3, LA5/t;->e:Ljava/lang/Object;

    check-cast v5, Lw5/a;

    const-string v6, "No route to "

    iget v7, v3, LA5/t;->a:I

    iget-object v8, v3, LA5/t;->b:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_17

    iget-object v7, v3, LA5/t;->b:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    iget v8, v3, LA5/t;->a:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v3, LA5/t;->a:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/Proxy;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v3, LA5/t;->c:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v9

    sget-object v10, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v9, v10, :cond_e

    invoke-virtual {v7}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v9

    sget-object v10, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v9, v10, :cond_b

    goto :goto_8

    :cond_b
    invoke-virtual {v7}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v9

    instance-of v10, v9, Ljava/net/InetSocketAddress;

    if-eqz v10, :cond_d

    check-cast v9, Ljava/net/InetSocketAddress;

    invoke-virtual {v9}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    if-eqz v10, :cond_c

    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    const-string v11, "address.hostAddress"

    invoke-static {v10, v11}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_7

    :cond_c
    invoke-virtual {v9}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "hostName"

    invoke-static {v10, v11}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_7
    invoke-virtual {v9}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v9

    goto :goto_9

    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Proxy.address() is not an InetSocketAddress: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_e
    :goto_8
    iget-object v9, v5, Lw5/a;->a:Lw5/r;

    iget-object v10, v9, Lw5/r;->e:Ljava/lang/String;

    iget v9, v9, Lw5/r;->f:I

    :goto_9
    if-gt v0, v9, :cond_16

    const v11, 0xffff

    if-lt v11, v9, :cond_16

    invoke-virtual {v7}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v6

    sget-object v11, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v6, v11, :cond_f

    invoke-static {v10, v9}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_f
    const-string v6, "domainName"

    invoke-static {v10, v6}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, v5, Lw5/a;->d:Lw5/b;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    invoke-static {v10}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v6

    const-string v11, "InetAddress.getAllByName(hostname)"

    invoke-static {v6, v11}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v11, v6

    if-eqz v11, :cond_11

    if-eq v11, v0, :cond_10

    new-instance v11, Ljava/util/ArrayList;

    new-instance v12, LT4/d;

    invoke-direct {v12, v6, v1}, LT4/d;-><init>([Ljava/lang/Object;Z)V

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_a

    :cond_10
    aget-object v6, v6, v1

    invoke-static {v6}, Lcom/bumptech/glide/c;->k(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    goto :goto_a

    :cond_11
    sget-object v11, LT4/p;->b:LT4/p;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_a
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_15

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InetAddress;

    new-instance v10, Ljava/net/InetSocketAddress;

    invoke-direct {v10, v6, v9}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_12
    :goto_c
    iget-object v5, v3, LA5/t;->c:Ljava/lang/Object;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InetSocketAddress;

    new-instance v8, Lw5/L;

    iget-object v9, v3, LA5/t;->e:Ljava/lang/Object;

    check-cast v9, Lw5/a;

    invoke-direct {v8, v9, v7, v6}, Lw5/L;-><init>(Lw5/a;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V

    iget-object v6, v3, LA5/t;->f:Ljava/lang/Object;

    check-cast v6, Le4/c;

    monitor-enter v6

    :try_start_2
    iget-object v9, v6, Le4/c;->q:Ljava/lang/Object;

    check-cast v9, Ljava/util/LinkedHashSet;

    invoke-interface {v9, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v6

    if-eqz v9, :cond_13

    iget-object v6, v3, LA5/t;->d:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_13
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :catchall_1
    move-exception v0

    move-object p1, v0

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_14
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    goto :goto_e

    :cond_15
    new-instance p1, Ljava/net/UnknownHostException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v5, Lw5/a;->d:Lw5/b;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " returned no addresses for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception v0

    move-object p1, v0

    new-instance p2, Ljava/net/UnknownHostException;

    const-string v0, "Broken system behaviour for dns lookup of "

    invoke-virtual {v0, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2

    :cond_16
    new-instance p1, Ljava/net/SocketException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; port is out of range"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    new-instance p1, Ljava/net/SocketException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v5, Lw5/a;->a:Lw5/r;

    iget-object v0, v0, Lw5/r;->e:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; exhausted proxy configurations: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v3, LA5/t;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_18
    :goto_e
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_19

    iget-object v5, v3, LA5/t;->d:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-static {v4, v5}, LT4/m;->v(Ljava/util/ArrayList;Ljava/lang/Iterable;)V

    iget-object v3, v3, LA5/t;->d:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_19
    new-instance v3, LA5/r;

    invoke-direct {v3, v4}, LA5/r;-><init>(Ljava/util/ArrayList;)V

    iput-object v3, p0, LA5/f;->a:LA5/r;

    iget-object v5, p0, LA5/f;->i:LA5/j;

    iget-boolean v5, v5, LA5/j;->A:Z

    if-nez v5, :cond_23

    iget-object v5, p0, LA5/f;->g:LA5/p;

    iget-object v6, p0, LA5/f;->h:Lw5/a;

    iget-object v7, p0, LA5/f;->i:LA5/j;

    invoke-virtual {v5, v6, v7, v4, v1}, LA5/p;->a(Lw5/a;LA5/j;Ljava/util/ArrayList;Z)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, LA5/f;->i:LA5/j;

    iget-object v1, v1, LA5/j;->u:LA5/n;

    invoke-static {v1}, Le5/g;->c(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1a
    invoke-virtual {v3}, LA5/r;->a()Z

    move-result v1

    if-eqz v1, :cond_22

    iget v1, v3, LA5/r;->b:I

    add-int/lit8 v5, v1, 0x1

    iput v5, v3, LA5/r;->b:I

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lw5/L;

    :goto_f
    new-instance v5, LA5/n;

    iget-object v1, p0, LA5/f;->g:LA5/p;

    invoke-direct {v5, v1, v3}, LA5/n;-><init>(LA5/p;Lw5/L;)V

    iget-object v1, p0, LA5/f;->i:LA5/j;

    iput-object v5, v1, LA5/j;->C:LA5/n;

    :try_start_4
    iget-object v10, p0, LA5/f;->i:LA5/j;

    move v6, p1

    move v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-virtual/range {v5 .. v10}, LA5/n;->c(IIIZLw5/e;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    iget-object v1, p0, LA5/f;->i:LA5/j;

    iput-object v2, v1, LA5/j;->C:LA5/n;

    iget-object v1, p0, LA5/f;->i:LA5/j;

    iget-object v1, v1, LA5/j;->D:Lw5/y;

    iget-object v1, v1, Lw5/y;->N:Le4/c;

    monitor-enter v1

    :try_start_5
    iget-object v2, v1, Le4/c;->q:Ljava/lang/Object;

    check-cast v2, Ljava/util/LinkedHashSet;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    monitor-exit v1

    iget-object v1, p0, LA5/f;->g:LA5/p;

    iget-object v2, p0, LA5/f;->h:Lw5/a;

    iget-object v6, p0, LA5/f;->i:LA5/j;

    invoke-virtual {v1, v2, v6, v4, v0}, LA5/p;->a(Lw5/a;LA5/j;Ljava/util/ArrayList;Z)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, LA5/f;->i:LA5/j;

    iget-object v1, v1, LA5/j;->u:LA5/n;

    invoke-static {v1}, Le5/g;->c(Ljava/lang/Object;)V

    iput-object v3, p0, LA5/f;->f:Lw5/L;

    iget-object v2, v5, LA5/n;->c:Ljava/net/Socket;

    invoke-static {v2}, Le5/g;->c(Ljava/lang/Object;)V

    invoke-static {v2}, Lx5/b;->d(Ljava/net/Socket;)V

    goto/16 :goto_3

    :cond_1b
    monitor-enter v5

    :try_start_6
    iget-object v1, p0, LA5/f;->g:LA5/p;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lx5/b;->a:[B

    iget-object v2, v1, LA5/p;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, LA5/p;->b:Lz5/b;

    iget-object v1, v1, LA5/p;->c:LA5/o;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lz5/b;->c(Lz5/a;J)V

    iget-object v1, p0, LA5/f;->i:LA5/j;

    invoke-virtual {v1, v5}, LA5/j;->b(LA5/n;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    monitor-exit v5

    move/from16 v2, p5

    move-object v1, v5

    :goto_10
    invoke-virtual {v1, v2}, LA5/n;->i(Z)Z

    move-result v3

    if-eqz v3, :cond_1c

    return-object v1

    :cond_1c
    invoke-virtual {v1}, LA5/n;->k()V

    iget-object v1, p0, LA5/f;->f:Lw5/L;

    if-eqz v1, :cond_1d

    goto/16 :goto_0

    :cond_1d
    iget-object v1, p0, LA5/f;->a:LA5/r;

    if-eqz v1, :cond_1e

    invoke-virtual {v1}, LA5/r;->a()Z

    move-result v1

    goto :goto_11

    :cond_1e
    move v1, v0

    :goto_11
    if-eqz v1, :cond_1f

    goto/16 :goto_0

    :cond_1f
    iget-object v1, p0, LA5/f;->b:LA5/t;

    if-eqz v1, :cond_20

    invoke-virtual {v1}, LA5/t;->l()Z

    move-result v0

    :cond_20
    if-eqz v0, :cond_21

    goto/16 :goto_0

    :cond_21
    new-instance p1, Ljava/io/IOException;

    const-string p2, "exhausted all routes"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_2
    move-exception v0

    move-object p1, v0

    monitor-exit v5

    throw p1

    :catchall_3
    move-exception v0

    move-object p1, v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p1

    :catchall_4
    move-exception v0

    move-object p1, v0

    iget-object p2, p0, LA5/f;->i:LA5/j;

    iput-object v2, p2, LA5/j;->C:LA5/n;

    throw p1

    :cond_22
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1

    :cond_23
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Canceled"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_24
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1

    :cond_25
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Canceled"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Lw5/r;)Z
    .locals 3

    const-string v0, "url"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LA5/f;->h:Lw5/a;

    iget-object v0, v0, Lw5/a;->a:Lw5/r;

    iget v1, p1, Lw5/r;->f:I

    iget v2, v0, Lw5/r;->f:I

    if-ne v1, v2, :cond_0

    iget-object p1, p1, Lw5/r;->e:Ljava/lang/String;

    iget-object v0, v0, Lw5/r;->e:Ljava/lang/String;

    invoke-static {p1, v0}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c(Ljava/io/IOException;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, LA5/f;->f:Lw5/L;

    instance-of v0, p1, LD5/E;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, LD5/E;

    iget v0, v0, LD5/E;->b:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget p1, p0, LA5/f;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, LA5/f;->c:I

    return-void

    :cond_0
    instance-of p1, p1, LD5/a;

    if-eqz p1, :cond_1

    iget p1, p0, LA5/f;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, LA5/f;->d:I

    return-void

    :cond_1
    iget p1, p0, LA5/f;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, LA5/f;->e:I

    return-void
.end method
