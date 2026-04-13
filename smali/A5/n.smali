.class public final LA5/n;
.super LD5/i;


# instance fields
.field public b:Ljava/net/Socket;

.field public c:Ljava/net/Socket;

.field public d:Lw5/n;

.field public e:Lw5/z;

.field public f:LD5/q;

.field public g:LK5/z;

.field public h:LK5/y;

.field public i:Z

.field public j:Z

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public final o:Ljava/util/ArrayList;

.field public p:J

.field public final q:Lw5/L;


# direct methods
.method public constructor <init>(LA5/p;Lw5/L;)V
    .locals 1

    const-string v0, "connectionPool"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "route"

    invoke-static {p2, p1}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LA5/n;->q:Lw5/L;

    const/4 p1, 0x1

    iput p1, p0, LA5/n;->n:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LA5/n;->o:Ljava/util/ArrayList;

    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, LA5/n;->p:J

    return-void
.end method

.method public static d(Lw5/y;Lw5/L;Ljava/io/IOException;)V
    .locals 3

    const-string v0, "failedRoute"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failure"

    invoke-static {p2, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lw5/L;->b:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lw5/L;->a:Lw5/a;

    iget-object v1, v0, Lw5/a;->j:Ljava/net/ProxySelector;

    iget-object v0, v0, Lw5/a;->a:Lw5/r;

    invoke-virtual {v0}, Lw5/r;->h()Ljava/net/URI;

    move-result-object v0

    iget-object v2, p1, Lw5/L;->b:Ljava/net/Proxy;

    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    :cond_0
    iget-object p0, p0, Lw5/y;->N:Le4/c;

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Le4/c;->q:Ljava/lang/Object;

    check-cast p2, Ljava/util/LinkedHashSet;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized a(LD5/q;LD5/D;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    const-string p1, "settings"

    invoke-static {p2, p1}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p2, LD5/D;->a:I

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_0

    iget-object p1, p2, LD5/D;->b:[I

    const/4 p2, 0x4

    aget p1, p1, p2

    goto :goto_0

    :cond_0
    const p1, 0x7fffffff

    :goto_0
    iput p1, p0, LA5/n;->n:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b(LD5/y;)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, LD5/y;->c(Ljava/io/IOException;I)V

    return-void
.end method

.method public final c(IIIZLw5/e;)V
    .locals 7

    const-string v0, "inetSocketAddress"

    iget-object v1, p0, LA5/n;->e:Lw5/z;

    if-nez v1, :cond_e

    iget-object v1, p0, LA5/n;->q:Lw5/L;

    iget-object v1, v1, Lw5/L;->a:Lw5/a;

    iget-object v1, v1, Lw5/a;->c:Ljava/util/List;

    new-instance v2, LA5/b;

    invoke-direct {v2, v1}, LA5/b;-><init>(Ljava/util/List;)V

    iget-object v3, p0, LA5/n;->q:Lw5/L;

    iget-object v3, v3, Lw5/L;->a:Lw5/a;

    iget-object v4, v3, Lw5/a;->f:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v4, :cond_2

    sget-object v3, Lw5/j;->f:Lw5/j;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, LA5/n;->q:Lw5/L;

    iget-object v1, v1, Lw5/L;->a:Lw5/a;

    iget-object v1, v1, Lw5/a;->a:Lw5/r;

    iget-object v1, v1, Lw5/r;->e:Ljava/lang/String;

    sget-object v3, LE5/n;->a:LE5/n;

    sget-object v3, LE5/n;->a:LE5/n;

    invoke-virtual {v3, v1}, LE5/n;->h(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, LA5/q;

    new-instance p2, Ljava/net/UnknownServiceException;

    const-string p3, "CLEARTEXT communication to "

    const-string p4, " not permitted by network security policy"

    invoke-static {p3, v1, p4}, LB/f;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, LA5/q;-><init>(Ljava/io/IOException;)V

    throw p1

    :cond_1
    new-instance p1, LA5/q;

    new-instance p2, Ljava/net/UnknownServiceException;

    const-string p3, "CLEARTEXT communication not enabled for client"

    invoke-direct {p2, p3}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, LA5/q;-><init>(Ljava/io/IOException;)V

    throw p1

    :cond_2
    iget-object v1, v3, Lw5/a;->b:Ljava/util/List;

    sget-object v3, Lw5/z;->u:Lw5/z;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    :goto_0
    const/4 v1, 0x0

    move-object v3, v1

    :goto_1
    const/4 v4, 0x1

    :try_start_0
    iget-object v5, p0, LA5/n;->q:Lw5/L;

    iget-object v6, v5, Lw5/L;->a:Lw5/a;

    iget-object v6, v6, Lw5/a;->f:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v6, :cond_3

    iget-object v5, v5, Lw5/L;->b:Ljava/net/Proxy;

    invoke-virtual {v5}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v5

    sget-object v6, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v5, v6, :cond_3

    move v5, v4

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_4

    invoke-virtual {p0, p1, p2, p3, p5}, LA5/n;->f(IIILw5/e;)V

    iget-object v5, p0, LA5/n;->b:Ljava/net/Socket;

    if-nez v5, :cond_5

    goto :goto_3

    :catch_0
    move-exception v5

    goto :goto_5

    :cond_4
    invoke-virtual {p0, p1, p2, p5}, LA5/n;->e(IILw5/e;)V

    :cond_5
    invoke-virtual {p0, v2, p5}, LA5/n;->g(LA5/b;Lw5/e;)V

    iget-object v5, p0, LA5/n;->q:Lw5/L;

    iget-object v5, v5, Lw5/L;->c:Ljava/net/InetSocketAddress;

    invoke-static {v5, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    iget-object p1, p0, LA5/n;->q:Lw5/L;

    iget-object p2, p1, Lw5/L;->a:Lw5/a;

    iget-object p2, p2, Lw5/a;->f:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz p2, :cond_7

    iget-object p1, p1, Lw5/L;->b:Ljava/net/Proxy;

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p1

    sget-object p2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne p1, p2, :cond_7

    iget-object p1, p0, LA5/n;->b:Ljava/net/Socket;

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    new-instance p1, LA5/q;

    new-instance p2, Ljava/net/ProtocolException;

    const-string p3, "Too many tunnel connections attempted: 21"

    invoke-direct {p2, p3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, LA5/q;-><init>(Ljava/io/IOException;)V

    throw p1

    :cond_7
    :goto_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, LA5/n;->p:J

    return-void

    :goto_5
    iget-object v6, p0, LA5/n;->c:Ljava/net/Socket;

    if-eqz v6, :cond_8

    invoke-static {v6}, Lx5/b;->d(Ljava/net/Socket;)V

    :cond_8
    iget-object v6, p0, LA5/n;->b:Ljava/net/Socket;

    if-eqz v6, :cond_9

    invoke-static {v6}, Lx5/b;->d(Ljava/net/Socket;)V

    :cond_9
    iput-object v1, p0, LA5/n;->c:Ljava/net/Socket;

    iput-object v1, p0, LA5/n;->b:Ljava/net/Socket;

    iput-object v1, p0, LA5/n;->g:LK5/z;

    iput-object v1, p0, LA5/n;->h:LK5/y;

    iput-object v1, p0, LA5/n;->d:Lw5/n;

    iput-object v1, p0, LA5/n;->e:Lw5/z;

    iput-object v1, p0, LA5/n;->f:LD5/q;

    iput v4, p0, LA5/n;->n:I

    iget-object v6, p0, LA5/n;->q:Lw5/L;

    iget-object v6, v6, Lw5/L;->c:Ljava/net/InetSocketAddress;

    invoke-static {v6, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v3, :cond_a

    new-instance v3, LA5/q;

    invoke-direct {v3, v5}, LA5/q;-><init>(Ljava/io/IOException;)V

    goto :goto_6

    :cond_a
    iget-object v6, v3, LA5/q;->q:Ljava/io/IOException;

    invoke-static {v6, v5}, LE5/d;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    iput-object v5, v3, LA5/q;->b:Ljava/io/IOException;

    :goto_6
    if-eqz p4, :cond_c

    iput-boolean v4, v2, LA5/b;->c:Z

    iget-boolean v4, v2, LA5/b;->b:Z

    if-eqz v4, :cond_c

    instance-of v4, v5, Ljava/net/ProtocolException;

    if-nez v4, :cond_c

    instance-of v4, v5, Ljava/io/InterruptedIOException;

    if-nez v4, :cond_c

    instance-of v4, v5, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v4, :cond_b

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Ljava/security/cert/CertificateException;

    if-nez v4, :cond_c

    :cond_b
    instance-of v4, v5, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-nez v4, :cond_c

    instance-of v4, v5, Ljavax/net/ssl/SSLException;

    if-eqz v4, :cond_c

    goto/16 :goto_1

    :cond_c
    throw v3

    :cond_d
    new-instance p1, LA5/q;

    new-instance p2, Ljava/net/UnknownServiceException;

    const-string p3, "H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"

    invoke-direct {p2, p3}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, LA5/q;-><init>(Ljava/io/IOException;)V

    throw p1

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "already connected"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e(IILw5/e;)V
    .locals 3

    iget-object p3, p0, LA5/n;->q:Lw5/L;

    iget-object v0, p3, Lw5/L;->b:Ljava/net/Proxy;

    iget-object p3, p3, Lw5/L;->a:Lw5/a;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, LA5/k;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    :goto_0
    new-instance p3, Ljava/net/Socket;

    invoke-direct {p3, v0}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_1

    :cond_1
    iget-object p3, p3, Lw5/a;->e:Ljavax/net/SocketFactory;

    invoke-virtual {p3}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object p3

    invoke-static {p3}, Le5/g;->c(Ljava/lang/Object;)V

    :goto_1
    iput-object p3, p0, LA5/n;->b:Ljava/net/Socket;

    iget-object v0, p0, LA5/n;->q:Lw5/L;

    iget-object v0, v0, Lw5/L;->c:Ljava/net/InetSocketAddress;

    const-string v1, "inetSocketAddress"

    invoke-static {v0, v1}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    :try_start_0
    sget-object p2, LE5/n;->a:LE5/n;

    sget-object p2, LE5/n;->a:LE5/n;

    iget-object v0, p0, LA5/n;->q:Lw5/L;

    iget-object v0, v0, Lw5/L;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {p2, p3, v0, p1}, LE5/n;->e(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {p3}, LE2/g;->I(Ljava/net/Socket;)LK5/c;

    move-result-object p1

    invoke-static {p1}, LE2/g;->b(LK5/F;)LK5/z;

    move-result-object p1

    iput-object p1, p0, LA5/n;->g:LK5/z;

    invoke-static {p3}, LE2/g;->H(Ljava/net/Socket;)LK5/b;

    move-result-object p1

    invoke-static {p1}, LE2/g;->a(LK5/D;)LK5/y;

    move-result-object p1

    iput-object p1, p0, LA5/n;->h:LK5/y;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "throw with null exception"

    invoke-static {p2, p3}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    return-void

    :cond_2
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Ljava/net/ConnectException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Failed to connect to "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, LA5/n;->q:Lw5/L;

    iget-object v0, v0, Lw5/L;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method public final f(IIILw5/e;)V
    .locals 9

    new-instance v0, Lw5/A;

    invoke-direct {v0}, Lw5/A;-><init>()V

    iget-object v1, p0, LA5/n;->q:Lw5/L;

    iget-object v2, v1, Lw5/L;->a:Lw5/a;

    iget-object v2, v2, Lw5/a;->a:Lw5/r;

    const-string v3, "url"

    invoke-static {v2, v3}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lw5/A;->a:Lw5/r;

    const-string v2, "CONNECT"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lw5/A;->c(Ljava/lang/String;Lw5/F;)V

    iget-object v1, v1, Lw5/L;->a:Lw5/a;

    iget-object v2, v1, Lw5/a;->a:Lw5/r;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lx5/b;->t(Lw5/r;Z)Ljava/lang/String;

    move-result-object v2

    const-string v5, "Host"

    invoke-virtual {v0, v5, v2}, Lw5/A;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Proxy-Connection"

    const-string v5, "Keep-Alive"

    invoke-virtual {v0, v2, v5}, Lw5/A;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "User-Agent"

    const-string v5, "okhttp/5.0.0-alpha.2"

    invoke-virtual {v0, v2, v5}, Lw5/A;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lw5/A;->a()Lw5/B;

    move-result-object v0

    new-instance v2, Lw5/o;

    invoke-direct {v2}, Lw5/o;-><init>()V

    const-string v5, "Proxy-Authenticate"

    invoke-static {v5}, LE5/l;->j(Ljava/lang/String;)V

    const-string v6, "OkHttp-Preemptive"

    invoke-static {v6, v5}, LE5/l;->l(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lw5/o;->d(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Lw5/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lw5/o;->c()Lw5/p;

    iget-object v2, v1, Lw5/a;->i:Lw5/b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lw5/B;->b:Lw5/r;

    invoke-virtual {p0, p1, p2, p4}, LA5/n;->e(IILw5/e;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "CONNECT "

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v4}, Lx5/b;->t(Lw5/r;Z)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " HTTP/1.1"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p4, p0, LA5/n;->g:LK5/z;

    invoke-static {p4}, Le5/g;->c(Ljava/lang/Object;)V

    iget-object v2, p0, LA5/n;->h:LK5/y;

    invoke-static {v2}, Le5/g;->c(Ljava/lang/Object;)V

    new-instance v4, LC5/h;

    invoke-direct {v4, v3, p0, p4, v2}, LC5/h;-><init>(Lw5/y;LA5/n;LK5/z;LK5/y;)V

    iget-object v3, p4, LK5/z;->b:LK5/F;

    invoke-interface {v3}, LK5/F;->timeout()LK5/H;

    move-result-object v3

    int-to-long v5, p2

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v5, v6}, LK5/H;->g(J)LK5/H;

    iget-object p2, v2, LK5/y;->b:LK5/D;

    invoke-interface {p2}, LK5/D;->timeout()LK5/H;

    move-result-object p2

    int-to-long v5, p3

    invoke-virtual {p2, v5, v6}, LK5/H;->g(J)LK5/H;

    iget-object p2, v0, Lw5/B;->d:Lw5/p;

    invoke-virtual {v4, p2, p1}, LC5/h;->k(Lw5/p;Ljava/lang/String;)V

    invoke-virtual {v4}, LC5/h;->a()V

    const/4 p1, 0x0

    invoke-virtual {v4, p1}, LC5/h;->b(Z)Lw5/G;

    move-result-object p1

    invoke-static {p1}, Le5/g;->c(Ljava/lang/Object;)V

    iput-object v0, p1, Lw5/G;->a:Lw5/B;

    invoke-virtual {p1}, Lw5/G;->a()Lw5/H;

    move-result-object p1

    iget p2, p1, Lw5/H;->s:I

    invoke-static {p1}, Lx5/b;->i(Lw5/H;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long p1, v5, v7

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v5, v6}, LC5/h;->j(J)LC5/e;

    move-result-object p1

    const p3, 0x7fffffff

    invoke-static {p1, p3}, Lx5/b;->r(LK5/F;I)Z

    invoke-virtual {p1}, LC5/e;->close()V

    :goto_0
    const/16 p1, 0xc8

    if-eq p2, p1, :cond_2

    const/16 p1, 0x197

    if-ne p2, p1, :cond_1

    iget-object p1, v1, Lw5/a;->i:Lw5/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to authenticate with proxy"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p3, "Unexpected response code for CONNECT: "

    invoke-static {p2, p3}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, p4, LK5/z;->q:LK5/g;

    invoke-virtual {p1}, LK5/g;->h()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, v2, LK5/y;->q:LK5/g;

    invoke-virtual {p1}, LK5/g;->h()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TLS tunnel buffered too many bytes!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(LA5/b;Lw5/e;)V
    .locals 11

    sget-object p2, Lw5/z;->r:Lw5/z;

    iget-object v0, p0, LA5/n;->q:Lw5/L;

    iget-object v0, v0, Lw5/L;->a:Lw5/a;

    iget-object v1, v0, Lw5/a;->f:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v1, :cond_1

    iget-object p1, v0, Lw5/a;->b:Ljava/util/List;

    sget-object v0, Lw5/z;->u:Lw5/z;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LA5/n;->b:Ljava/net/Socket;

    iput-object p1, p0, LA5/n;->c:Ljava/net/Socket;

    iput-object v0, p0, LA5/n;->e:Lw5/z;

    invoke-virtual {p0}, LA5/n;->l()V

    return-void

    :cond_0
    iget-object p1, p0, LA5/n;->b:Ljava/net/Socket;

    iput-object p1, p0, LA5/n;->c:Ljava/net/Socket;

    iput-object p2, p0, LA5/n;->e:Lw5/z;

    return-void

    :cond_1
    const-string v2, "Hostname "

    const-string v3, "\n              |Hostname "

    const/4 v4, 0x0

    :try_start_0
    invoke-static {v1}, Le5/g;->c(Ljava/lang/Object;)V

    iget-object v5, p0, LA5/n;->b:Ljava/net/Socket;

    iget-object v6, v0, Lw5/a;->a:Lw5/r;

    iget-object v7, v6, Lw5/r;->e:Ljava/lang/String;

    iget v6, v6, Lw5/r;->f:I

    const/4 v8, 0x1

    invoke-virtual {v1, v5, v7, v6, v8}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v1

    if-eqz v1, :cond_9

    check-cast v1, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1, v1}, LA5/b;->a(Ljavax/net/ssl/SSLSocket;)Lw5/j;

    move-result-object p1

    iget-boolean v5, p1, Lw5/j;->b:Z

    if-eqz v5, :cond_2

    sget-object v5, LE5/n;->a:LE5/n;

    sget-object v5, LE5/n;->a:LE5/n;

    iget-object v6, v0, Lw5/a;->a:Lw5/r;

    iget-object v6, v6, Lw5/r;->e:Ljava/lang/String;

    iget-object v7, v0, Lw5/a;->b:Ljava/util/List;

    invoke-virtual {v5, v1, v6, v7}, LE5/n;->d(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v4, v1

    goto/16 :goto_1

    :cond_2
    :goto_0
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v5

    const-string v6, "sslSocketSession"

    invoke-static {v5, v6}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, LE5/d;->p(Ljavax/net/ssl/SSLSession;)Lw5/n;

    move-result-object v6

    iget-object v7, v0, Lw5/a;->g:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v7}, Le5/g;->c(Ljava/lang/Object;)V

    iget-object v8, v0, Lw5/a;->a:Lw5/r;

    iget-object v8, v8, Lw5/r;->e:Ljava/lang/String;

    invoke-interface {v7, v8, v5}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v5

    const/4 v7, 0x0

    if-nez v5, :cond_5

    invoke-virtual {v6}, Lw5/n;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    check-cast p1, Ljava/security/cert/X509Certificate;

    new-instance p2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lw5/a;->a:Lw5/r;

    iget-object v0, v0, Lw5/r;->e:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not verified:\n              |    certificate: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lw5/g;->c:Lw5/g;

    invoke-static {p1}, LC2/b;->H(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n              |    DN: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    const-string v3, "cert.subjectDN"

    invoke-static {v0, v3}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n              |    subjectAltNames: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x7

    invoke-static {p1, v0}, LI5/c;->a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x2

    invoke-static {p1, v3}, LI5/c;->a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, LT4/g;->B(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\n              "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lk5/g;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    new-instance p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lw5/a;->a:Lw5/r;

    iget-object v0, v0, Lw5/r;->e:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not verified (no certificates)"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    iget-object v2, v0, Lw5/a;->h:Lw5/g;

    invoke-static {v2}, Le5/g;->c(Ljava/lang/Object;)V

    new-instance v3, Lw5/n;

    iget-object v5, v6, Lw5/n;->b:Lw5/M;

    iget-object v8, v6, Lw5/n;->c:Lw5/i;

    iget-object v9, v6, Lw5/n;->d:Ljava/util/List;

    new-instance v10, LA5/l;

    invoke-direct {v10, v2, v6, v0, v7}, LA5/l;-><init>(Lw5/g;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {v3, v5, v8, v9, v10}, Lw5/n;-><init>(Lw5/M;Lw5/i;Ljava/util/List;Ld5/a;)V

    iput-object v3, p0, LA5/n;->d:Lw5/n;

    iget-object v0, v0, Lw5/a;->a:Lw5/r;

    iget-object v0, v0, Lw5/r;->e:Ljava/lang/String;

    new-instance v3, LA5/m;

    invoke-direct {v3, v7, p0}, LA5/m;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v0, v3}, Lw5/g;->a(Ljava/lang/String;Ld5/a;)V

    iget-boolean p1, p1, Lw5/j;->b:Z

    if-eqz p1, :cond_6

    sget-object p1, LE5/n;->a:LE5/n;

    sget-object p1, LE5/n;->a:LE5/n;

    invoke-virtual {p1, v1}, LE5/n;->f(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v4

    :cond_6
    iput-object v1, p0, LA5/n;->c:Ljava/net/Socket;

    invoke-static {v1}, LE2/g;->I(Ljava/net/Socket;)LK5/c;

    move-result-object p1

    invoke-static {p1}, LE2/g;->b(LK5/F;)LK5/z;

    move-result-object p1

    iput-object p1, p0, LA5/n;->g:LK5/z;

    invoke-static {v1}, LE2/g;->H(Ljava/net/Socket;)LK5/b;

    move-result-object p1

    invoke-static {p1}, LE2/g;->a(LK5/D;)LK5/y;

    move-result-object p1

    iput-object p1, p0, LA5/n;->h:LK5/y;

    if-eqz v4, :cond_7

    invoke-static {v4}, LQ5/d;->h(Ljava/lang/String;)Lw5/z;

    move-result-object p2

    :cond_7
    iput-object p2, p0, LA5/n;->e:Lw5/z;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object p1, LE5/n;->a:LE5/n;

    sget-object p1, LE5/n;->a:LE5/n;

    invoke-virtual {p1, v1}, LE5/n;->a(Ljavax/net/ssl/SSLSocket;)V

    iget-object p1, p0, LA5/n;->e:Lw5/z;

    sget-object p2, Lw5/z;->t:Lw5/z;

    if-ne p1, p2, :cond_8

    invoke-virtual {p0}, LA5/n;->l()V

    :cond_8
    return-void

    :catchall_1
    move-exception p1

    goto :goto_1

    :cond_9
    :try_start_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type javax.net.ssl.SSLSocket"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    if-eqz v4, :cond_a

    sget-object p2, LE5/n;->a:LE5/n;

    sget-object p2, LE5/n;->a:LE5/n;

    invoke-virtual {p2, v4}, LE5/n;->a(Ljavax/net/ssl/SSLSocket;)V

    :cond_a
    if-eqz v4, :cond_b

    invoke-static {v4}, Lx5/b;->d(Ljava/net/Socket;)V

    :cond_b
    throw p1
.end method

.method public final h(Lw5/a;Ljava/util/List;)Z
    .locals 9

    iget-object v0, p1, Lw5/a;->a:Lw5/r;

    sget-object v1, Lx5/b;->a:[B

    iget-object v1, p0, LA5/n;->o:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, LA5/n;->n:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_a

    iget-boolean v1, p0, LA5/n;->i:Z

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, LA5/n;->q:Lw5/L;

    iget-object v2, v1, Lw5/L;->a:Lw5/a;

    iget-object v4, v1, Lw5/L;->a:Lw5/a;

    invoke-virtual {v2, p1}, Lw5/a;->a(Lw5/a;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v2, v0, Lw5/r;->e:Ljava/lang/String;

    iget-object v5, v0, Lw5/r;->e:Ljava/lang/String;

    iget-object v6, v4, Lw5/a;->a:Lw5/r;

    iget-object v6, v6, Lw5/r;->e:Ljava/lang/String;

    invoke-static {v2, v6}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v6, 0x1

    if-eqz v2, :cond_2

    return v6

    :cond_2
    iget-object v2, p0, LA5/n;->f:LD5/q;

    if-nez v2, :cond_3

    goto/16 :goto_1

    :cond_3
    if-eqz p2, :cond_a

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_1

    :cond_4
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw5/L;

    iget-object v7, v2, Lw5/L;->b:Ljava/net/Proxy;

    invoke-virtual {v7}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v7

    sget-object v8, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v7, v8, :cond_5

    iget-object v7, v1, Lw5/L;->b:Ljava/net/Proxy;

    invoke-virtual {v7}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v7

    if-ne v7, v8, :cond_5

    iget-object v7, v1, Lw5/L;->c:Ljava/net/InetSocketAddress;

    iget-object v2, v2, Lw5/L;->c:Ljava/net/InetSocketAddress;

    invoke-static {v7, v2}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object p2, p1, Lw5/a;->g:Ljavax/net/ssl/HostnameVerifier;

    sget-object v1, LI5/c;->a:LI5/c;

    if-eq p2, v1, :cond_6

    goto :goto_1

    :cond_6
    sget-object p2, Lx5/b;->a:[B

    iget-object p2, v4, Lw5/a;->a:Lw5/r;

    iget v0, v0, Lw5/r;->f:I

    iget v1, p2, Lw5/r;->f:I

    if-eq v0, v1, :cond_7

    goto :goto_1

    :cond_7
    iget-object p2, p2, Lw5/r;->e:Ljava/lang/String;

    invoke-static {v5, p2}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_0

    :cond_8
    iget-boolean p2, p0, LA5/n;->j:Z

    if-nez p2, :cond_a

    iget-object p2, p0, LA5/n;->d:Lw5/n;

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Lw5/n;->a()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_9

    check-cast p2, Ljava/security/cert/X509Certificate;

    invoke-static {v5, p2}, LI5/c;->c(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p2

    if-eqz p2, :cond_a

    :goto_0
    :try_start_0
    iget-object p1, p1, Lw5/a;->h:Lw5/g;

    invoke-static {p1}, Le5/g;->c(Ljava/lang/Object;)V

    iget-object p2, p0, LA5/n;->d:Lw5/n;

    invoke-static {p2}, Le5/g;->c(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lw5/n;->a()Ljava/util/List;

    move-result-object p2

    const-string v0, "hostname"

    invoke-static {v5, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "peerCertificates"

    invoke-static {p2, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LA5/l;

    invoke-direct {v0, p1, p2, v5, v6}, LA5/l;-><init>(Lw5/g;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, v5, v0}, Lw5/g;->a(Ljava/lang/String;Ld5/a;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    :cond_a
    :goto_1
    return v3
.end method

.method public final i(Z)Z
    .locals 9

    sget-object v0, Lx5/b;->a:[B

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object v2, p0, LA5/n;->b:Ljava/net/Socket;

    invoke-static {v2}, Le5/g;->c(Ljava/lang/Object;)V

    iget-object v3, p0, LA5/n;->c:Ljava/net/Socket;

    invoke-static {v3}, Le5/g;->c(Ljava/lang/Object;)V

    iget-object v4, p0, LA5/n;->g:LK5/z;

    invoke-static {v4}, Le5/g;->c(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    const/4 v5, 0x0

    if-nez v2, :cond_5

    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v3}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v3}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, LA5/n;->f:LD5/q;

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    monitor-enter v2

    :try_start_0
    iget-boolean p1, v2, LD5/q;->u:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    monitor-exit v2

    return v5

    :cond_1
    :try_start_1
    iget-wide v3, v2, LD5/q;->C:J

    iget-wide v7, v2, LD5/q;->B:J

    cmp-long p1, v3, v7

    if-gez p1, :cond_2

    iget-wide v3, v2, LD5/q;->D:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long p1, v0, v3

    if-ltz p1, :cond_2

    monitor-exit v2

    return v5

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_2
    monitor-exit v2

    return v6

    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_3
    monitor-enter p0

    :try_start_3
    iget-wide v7, p0, LA5/n;->p:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    sub-long/2addr v0, v7

    monitor-exit p0

    const-wide v7, 0x2540be400L

    cmp-long v0, v0, v7

    if-ltz v0, :cond_4

    if-eqz p1, :cond_4

    :try_start_4
    invoke-virtual {v3}, Ljava/net/Socket;->getSoTimeout()I

    move-result p1
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    invoke-virtual {v3, v6}, Ljava/net/Socket;->setSoTimeout(I)V

    invoke-virtual {v4}, LK5/z;->a()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    xor-int/2addr v0, v6

    :try_start_6
    invoke-virtual {v3, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return v0

    :catchall_1
    move-exception v0

    invoke-virtual {v3, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v0
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :catch_0
    move v5, v6

    :catch_1
    return v5

    :cond_4
    return v6

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_5
    :goto_1
    return v5
.end method

.method public final j(Lw5/y;LB5/g;)LB5/e;
    .locals 6

    iget v0, p2, LB5/g;->h:I

    iget-object v1, p0, LA5/n;->c:Ljava/net/Socket;

    invoke-static {v1}, Le5/g;->c(Ljava/lang/Object;)V

    iget-object v2, p0, LA5/n;->g:LK5/z;

    invoke-static {v2}, Le5/g;->c(Ljava/lang/Object;)V

    iget-object v3, p0, LA5/n;->h:LK5/y;

    invoke-static {v3}, Le5/g;->c(Ljava/lang/Object;)V

    iget-object v4, p0, LA5/n;->f:LD5/q;

    if-eqz v4, :cond_0

    new-instance v0, LD5/r;

    invoke-direct {v0, p1, p0, p2, v4}, LD5/r;-><init>(Lw5/y;LA5/n;LB5/g;LD5/q;)V

    return-object v0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v1, v2, LK5/z;->b:LK5/F;

    invoke-interface {v1}, LK5/F;->timeout()LK5/H;

    move-result-object v1

    int-to-long v4, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5}, LK5/H;->g(J)LK5/H;

    iget-object v0, v3, LK5/y;->b:LK5/D;

    invoke-interface {v0}, LK5/D;->timeout()LK5/H;

    move-result-object v0

    iget p2, p2, LB5/g;->i:I

    int-to-long v4, p2

    invoke-virtual {v0, v4, v5}, LK5/H;->g(J)LK5/H;

    new-instance p2, LC5/h;

    invoke-direct {p2, p1, p0, v2, v3}, LC5/h;-><init>(Lw5/y;LA5/n;LK5/z;LK5/y;)V

    return-object p2
.end method

.method public final declared-synchronized k()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, LA5/n;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final l()V
    .locals 10

    iget-object v0, p0, LA5/n;->c:Ljava/net/Socket;

    invoke-static {v0}, Le5/g;->c(Ljava/lang/Object;)V

    iget-object v1, p0, LA5/n;->g:LK5/z;

    invoke-static {v1}, Le5/g;->c(Ljava/lang/Object;)V

    iget-object v2, p0, LA5/n;->h:LK5/y;

    invoke-static {v2}, Le5/g;->c(Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v4, LD5/g;

    sget-object v5, Lz5/c;->h:Lz5/c;

    const-string v6, "taskRunner"

    invoke-static {v5, v6}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v5, v4, LD5/g;->f:Ljava/lang/Object;

    sget-object v6, LD5/i;->a:LD5/h;

    iput-object v6, v4, LD5/g;->e:Ljava/lang/Object;

    iget-object v6, p0, LA5/n;->q:Lw5/L;

    iget-object v6, v6, Lw5/L;->a:Lw5/a;

    iget-object v6, v6, Lw5/a;->a:Lw5/r;

    iget-object v6, v6, Lw5/r;->e:Ljava/lang/String;

    const-string v7, "peerName"

    invoke-static {v6, v7}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v4, LD5/g;->a:Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lx5/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, LD5/g;->b:Ljava/lang/Object;

    iput-object v1, v4, LD5/g;->c:Ljava/lang/Object;

    iput-object v2, v4, LD5/g;->d:Ljava/lang/Object;

    iput-object p0, v4, LD5/g;->e:Ljava/lang/Object;

    new-instance v0, LD5/q;

    invoke-direct {v0, v4}, LD5/q;-><init>(LD5/g;)V

    iput-object v0, p0, LA5/n;->f:LD5/q;

    sget-object v1, LD5/q;->O:LD5/D;

    iget v2, v1, LD5/D;->a:I

    and-int/lit8 v2, v2, 0x10

    const/4 v4, 0x4

    if-eqz v2, :cond_0

    iget-object v1, v1, LD5/D;->b:[I

    aget v1, v1, v4

    goto :goto_0

    :cond_0
    const v1, 0x7fffffff

    :goto_0
    iput v1, p0, LA5/n;->n:I

    iget-object v1, v0, LD5/q;->L:LD5/z;

    const-string v2, ">> CONNECTION "

    monitor-enter v1

    :try_start_0
    iget-boolean v6, v1, LD5/z;->r:Z

    if-nez v6, :cond_9

    sget-object v6, LD5/z;->u:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, LD5/f;->a:LK5/j;

    invoke-virtual {v2}, LK5/j;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v2, v7}, Lx5/b;->g(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_1
    :goto_1
    iget-object v2, v1, LD5/z;->t:LK5/h;

    sget-object v6, LD5/f;->a:LK5/j;

    invoke-interface {v2, v6}, LK5/h;->p(LK5/j;)LK5/h;

    iget-object v2, v1, LD5/z;->t:LK5/h;

    invoke-interface {v2}, LK5/h;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v2, v0, LD5/q;->L:LD5/z;

    iget-object v1, v0, LD5/q;->E:LD5/D;

    monitor-enter v2

    :try_start_1
    const-string v6, "settings"

    invoke-static {v1, v6}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v6, v2, LD5/z;->r:Z

    if-nez v6, :cond_8

    iget v6, v1, LD5/D;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->bitCount(I)I

    move-result v6

    mul-int/lit8 v6, v6, 0x6

    invoke-virtual {v2, v3, v6, v4, v3}, LD5/z;->f(IIII)V

    move v6, v3

    :goto_2
    const/16 v7, 0xa

    if-ge v6, v7, :cond_6

    const/4 v7, 0x1

    shl-int v8, v7, v6

    iget v9, v1, LD5/D;->a:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_2

    goto :goto_3

    :cond_2
    move v7, v3

    :goto_3
    if-nez v7, :cond_3

    goto :goto_5

    :cond_3
    if-eq v6, v4, :cond_5

    const/4 v7, 0x7

    if-eq v6, v7, :cond_4

    move v7, v6

    goto :goto_4

    :cond_4
    move v7, v4

    goto :goto_4

    :cond_5
    const/4 v7, 0x3

    :goto_4
    iget-object v8, v2, LD5/z;->t:LK5/h;

    invoke-interface {v8, v7}, LK5/h;->writeShort(I)LK5/h;

    iget-object v7, v2, LD5/z;->t:LK5/h;

    iget-object v8, v1, LD5/D;->b:[I

    aget v8, v8, v6

    invoke-interface {v7, v8}, LK5/h;->writeInt(I)LK5/h;

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_6

    :cond_6
    iget-object v1, v2, LD5/z;->t:LK5/h;

    invoke-interface {v1}, LK5/h;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v2

    iget-object v1, v0, LD5/q;->E:LD5/D;

    invoke-virtual {v1}, LD5/D;->a()I

    move-result v1

    const v2, 0xffff

    if-eq v1, v2, :cond_7

    iget-object v4, v0, LD5/q;->L:LD5/z;

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v4, v3, v1, v2}, LD5/z;->y(IJ)V

    :cond_7
    invoke-virtual {v5}, Lz5/c;->e()Lz5/b;

    move-result-object v1

    iget-object v2, v0, LD5/q;->r:Ljava/lang/String;

    iget-object v0, v0, LD5/q;->M:LD5/l;

    new-instance v3, LA5/o;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v2, v4}, LA5/o;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v3, v4, v5}, Lz5/b;->c(Lz5/a;J)V

    return-void

    :cond_8
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_6
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_9
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    const-string v2, "closed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_7
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connection{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LA5/n;->q:Lw5/L;

    iget-object v2, v1, Lw5/L;->a:Lw5/a;

    iget-object v2, v2, Lw5/a;->a:Lw5/r;

    iget-object v2, v2, Lw5/r;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lw5/L;->a:Lw5/a;

    iget-object v2, v2, Lw5/a;->a:Lw5/r;

    iget v2, v2, Lw5/r;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", proxy="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lw5/L;->b:Ljava/net/Proxy;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " hostAddress="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lw5/L;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LA5/n;->d:Lw5/n;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lw5/n;->c:Lw5/i;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "none"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LA5/n;->e:Lw5/z;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
