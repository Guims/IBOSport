.class public final LC5/h;
.super Ljava/lang/Object;

# interfaces
.implements LB5/e;


# instance fields
.field public a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lw5/y;LA5/n;LK5/z;LK5/y;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p3, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p4, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LC5/h;->d:Ljava/lang/Object;

    iput-object p2, p0, LC5/h;->e:Ljava/lang/Object;

    iput-object p3, p0, LC5/h;->f:Ljava/lang/Object;

    iput-object p4, p0, LC5/h;->g:Ljava/lang/Object;

    new-instance p1, LC5/a;

    invoke-direct {p1, p3}, LC5/a;-><init>(LK5/i;)V

    iput-object p1, p0, LC5/h;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LC5/h;->g:Ljava/lang/Object;

    check-cast v0, LK5/h;

    invoke-interface {v0}, LK5/h;->flush()V

    return-void
.end method

.method public b(Z)Lw5/G;
    .locals 8

    iget-object v0, p0, LC5/h;->b:Ljava/lang/Object;

    check-cast v0, LC5/a;

    iget v1, p0, LC5/h;->a:I

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "state: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, LC5/h;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    :try_start_0
    iget-object v1, v0, LC5/a;->r:Ljava/lang/Object;

    check-cast v1, LK5/i;

    iget-wide v4, v0, LC5/a;->q:J

    invoke-interface {v1, v4, v5}, LK5/i;->g(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v4, v0, LC5/a;->q:J

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v6, v2

    sub-long/2addr v4, v6

    iput-wide v4, v0, LC5/a;->q:J

    invoke-static {v1}, LH3/u0;->s(Ljava/lang/String;)LA/d;

    move-result-object v1

    iget v2, v1, LA/d;->q:I

    new-instance v4, Lw5/G;

    invoke-direct {v4}, Lw5/G;-><init>()V

    iget-object v5, v1, LA/d;->r:Ljava/lang/Object;

    check-cast v5, Lw5/z;

    iput-object v5, v4, Lw5/G;->b:Lw5/z;

    iput v2, v4, Lw5/G;->c:I

    iget-object v1, v1, LA/d;->s:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iput-object v1, v4, Lw5/G;->d:Ljava/lang/String;

    invoke-virtual {v0}, LC5/a;->u()Lw5/p;

    move-result-object v0

    invoke-virtual {v0}, Lw5/p;->d()Lw5/o;

    move-result-object v0

    iput-object v0, v4, Lw5/G;->f:Lw5/o;

    const/16 v0, 0x64

    if-eqz p1, :cond_2

    if-ne v2, v0, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    if-ne v2, v0, :cond_3

    iput v3, p0, LC5/h;->a:I

    return-object v4

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x4

    iput p1, p0, LC5/h;->a:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :goto_1
    iget-object v0, p0, LC5/h;->e:Ljava/lang/Object;

    check-cast v0, LA5/n;

    iget-object v0, v0, LA5/n;->q:Lw5/L;

    iget-object v0, v0, Lw5/L;->a:Lw5/a;

    iget-object v0, v0, Lw5/a;->a:Lw5/r;

    invoke-virtual {v0}, Lw5/r;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "unexpected end of stream on "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public c(Lw5/H;)LK5/F;
    .locals 8

    invoke-static {p1}, LB5/f;->a(Lw5/H;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, LC5/h;->j(J)LC5/e;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "Transfer-Encoding"

    invoke-static {v0, p1}, Lw5/H;->a(Ljava/lang/String;Lw5/H;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chunked"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "state: "

    const/4 v2, 0x5

    const/4 v3, 0x4

    if-eqz v0, :cond_2

    iget-object p1, p1, Lw5/H;->b:Lw5/B;

    iget-object p1, p1, Lw5/B;->b:Lw5/r;

    iget v0, p0, LC5/h;->a:I

    if-ne v0, v3, :cond_1

    iput v2, p0, LC5/h;->a:I

    new-instance v0, LC5/d;

    invoke-direct {v0, p0, p1}, LC5/d;-><init>(LC5/h;Lw5/r;)V

    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, LC5/h;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {p1}, Lx5/b;->i(Lw5/H;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long p1, v4, v6

    if-eqz p1, :cond_3

    invoke-virtual {p0, v4, v5}, LC5/h;->j(J)LC5/e;

    move-result-object p1

    return-object p1

    :cond_3
    iget p1, p0, LC5/h;->a:I

    if-ne p1, v3, :cond_4

    iput v2, p0, LC5/h;->a:I

    iget-object p1, p0, LC5/h;->e:Ljava/lang/Object;

    check-cast p1, LA5/n;

    invoke-virtual {p1}, LA5/n;->k()V

    new-instance p1, LC5/g;

    invoke-direct {p1, p0}, LC5/b;-><init>(LC5/h;)V

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, LC5/h;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, LC5/h;->e:Ljava/lang/Object;

    check-cast v0, LA5/n;

    iget-object v0, v0, LA5/n;->b:Ljava/net/Socket;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lx5/b;->d(Ljava/net/Socket;)V

    :cond_0
    return-void
.end method

.method public d()LA5/n;
    .locals 1

    iget-object v0, p0, LC5/h;->e:Ljava/lang/Object;

    check-cast v0, LA5/n;

    return-object v0
.end method

.method public e(Lw5/H;)J
    .locals 2

    invoke-static {p1}, LB5/f;->a(Lw5/H;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const-string v0, "Transfer-Encoding"

    invoke-static {v0, p1}, Lw5/H;->a(Ljava/lang/String;Lw5/H;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chunked"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_1
    invoke-static {p1}, Lx5/b;->i(Lw5/H;)J

    move-result-wide v0

    return-wide v0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, LC5/h;->g:Ljava/lang/Object;

    check-cast v0, LK5/h;

    invoke-interface {v0}, LK5/h;->flush()V

    return-void
.end method

.method public g(Lw5/B;)V
    .locals 4

    const-string v0, "request"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LC5/h;->e:Ljava/lang/Object;

    check-cast v0, LA5/n;

    iget-object v0, v0, LA5/n;->q:Lw5/L;

    iget-object v0, v0, Lw5/L;->b:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    const-string v1, "connection.route().proxy.type()"

    invoke-static {v0, v1}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lw5/B;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lw5/B;->b:Lw5/r;

    iget-boolean v3, v2, Lw5/r;->a:Z

    if-nez v3, :cond_0

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lw5/r;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lw5/r;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3f

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v0, " HTTP/1.1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lw5/B;->d:Lw5/p;

    invoke-virtual {p0, p1, v0}, LC5/h;->k(Lw5/p;Ljava/lang/String;)V

    return-void
.end method

.method public h(Lw5/B;J)LK5/D;
    .locals 5

    const-string v0, "request"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lw5/B;->e:Lw5/F;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lw5/F;->isDuplex()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "Duplex connections are not supported for HTTP/1"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const-string v0, "Transfer-Encoding"

    iget-object p1, p1, Lw5/B;->d:Lw5/p;

    invoke-virtual {p1, v0}, Lw5/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "chunked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "state: "

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    iget p1, p0, LC5/h;->a:I

    if-ne p1, v2, :cond_2

    iput v1, p0, LC5/h;->a:I

    new-instance p1, LC5/c;

    invoke-direct {p1, p0}, LC5/c;-><init>(LC5/h;)V

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, LC5/h;->a:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    const-wide/16 v3, -0x1

    cmp-long p1, p2, v3

    if-eqz p1, :cond_5

    iget p1, p0, LC5/h;->a:I

    if-ne p1, v2, :cond_4

    iput v1, p0, LC5/h;->a:I

    new-instance p1, LC5/f;

    invoke-direct {p1, p0}, LC5/f;-><init>(LC5/h;)V

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, LC5/h;->a:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i()LZ3/a;
    .locals 12

    iget v0, p0, LC5/h;->a:I

    if-nez v0, :cond_0

    const-string v0, " registrationStatus"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, LC5/h;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_1

    const-string v1, " expiresInSecs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, LC5/h;->f:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_2

    const-string v1, " tokenCreationEpochInSecs"

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/e;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v2, LZ3/a;

    iget-object v0, p0, LC5/h;->b:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget v4, p0, LC5/h;->a:I

    iget-object v0, p0, LC5/h;->c:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    iget-object v0, p0, LC5/h;->d:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    iget-object v0, p0, LC5/h;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v0, p0, LC5/h;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-object v0, p0, LC5/h;->g:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    invoke-direct/range {v2 .. v11}, LZ3/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    return-object v2

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public j(J)LC5/e;
    .locals 2

    iget v0, p0, LC5/h;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    iput v0, p0, LC5/h;->a:I

    new-instance v0, LC5/e;

    invoke-direct {v0, p0, p1, p2}, LC5/e;-><init>(LC5/h;J)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "state: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, LC5/h;->a:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public k(Lw5/p;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, LC5/h;->g:Ljava/lang/Object;

    check-cast v0, LK5/h;

    const-string v1, "requestLine"

    invoke-static {p2, v1}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p0, LC5/h;->a:I

    if-nez v1, :cond_1

    invoke-interface {v0, p2}, LK5/h;->i(Ljava/lang/String;)LK5/h;

    move-result-object p2

    const-string v1, "\r\n"

    invoke-interface {p2, v1}, LK5/h;->i(Ljava/lang/String;)LK5/h;

    invoke-virtual {p1}, Lw5/p;->size()I

    move-result p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    invoke-virtual {p1, v2}, Lw5/p;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, LK5/h;->i(Ljava/lang/String;)LK5/h;

    move-result-object v3

    const-string v4, ": "

    invoke-interface {v3, v4}, LK5/h;->i(Ljava/lang/String;)LK5/h;

    move-result-object v3

    invoke-virtual {p1, v2}, Lw5/p;->e(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, LK5/h;->i(Ljava/lang/String;)LK5/h;

    move-result-object v3

    invoke-interface {v3, v1}, LK5/h;->i(Ljava/lang/String;)LK5/h;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, LK5/h;->i(Ljava/lang/String;)LK5/h;

    const/4 p1, 0x1

    iput p1, p0, LC5/h;->a:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "state: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, LC5/h;->a:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
