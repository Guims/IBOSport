.class public final LC5/d;
.super LC5/b;


# instance fields
.field public s:J

.field public t:Z

.field public final u:Lw5/r;

.field public final synthetic v:LC5/h;


# direct methods
.method public constructor <init>(LC5/h;Lw5/r;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p2, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, LC5/d;->v:LC5/h;

    invoke-direct {p0, p1}, LC5/b;-><init>(LC5/h;)V

    iput-object p2, p0, LC5/d;->u:Lw5/r;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, LC5/d;->s:J

    const/4 p1, 0x1

    iput-boolean p1, p0, LC5/d;->t:Z

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-boolean v0, p0, LC5/b;->q:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, LC5/d;->t:Z

    if-eqz v0, :cond_1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Lx5/b;->a:[B

    const-string v1, "timeUnit"

    invoke-static {v0, v1}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x64

    :try_start_0
    invoke-static {p0, v0}, Lx5/b;->r(LK5/F;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, LC5/d;->v:LC5/h;

    iget-object v0, v0, LC5/h;->e:Ljava/lang/Object;

    check-cast v0, LA5/n;

    invoke-virtual {v0}, LA5/n;->k()V

    invoke-virtual {p0}, LC5/b;->a()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, LC5/b;->q:Z

    return-void
.end method

.method public final read(LK5/g;J)J
    .locals 11

    iget-object v0, p0, LC5/d;->v:LC5/h;

    iget-object v1, v0, LC5/h;->f:Ljava/lang/Object;

    check-cast v1, LK5/i;

    const-string v2, "sink"

    invoke-static {p1, v2}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-ltz v4, :cond_9

    iget-boolean v4, p0, LC5/b;->q:Z

    if-nez v4, :cond_8

    iget-boolean v4, p0, LC5/d;->t:Z

    const-wide/16 v5, -0x1

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v7, p0, LC5/d;->s:J

    cmp-long v4, v7, v2

    if-eqz v4, :cond_1

    cmp-long v4, v7, v5

    if-nez v4, :cond_5

    :cond_1
    const-string v4, "expected chunk size and optional extensions but was \""

    cmp-long v7, v7, v5

    if-eqz v7, :cond_2

    invoke-interface {v1}, LK5/i;->o()Ljava/lang/String;

    :cond_2
    :try_start_0
    invoke-interface {v1}, LK5/i;->v()J

    move-result-wide v7

    iput-wide v7, p0, LC5/d;->s:J

    invoke-interface {v1}, LK5/i;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lk5/f;->V(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v7, p0, LC5/d;->s:J

    cmp-long v7, v7, v2

    if-ltz v7, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x0

    if-lez v7, :cond_3

    const-string v7, ";"

    invoke-static {v1, v7, v8}, Lk5/n;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_7

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_3
    :goto_0
    iget-wide v9, p0, LC5/d;->s:J

    cmp-long v1, v9, v2

    if-nez v1, :cond_4

    iput-boolean v8, p0, LC5/d;->t:Z

    iget-object v1, v0, LC5/h;->b:Ljava/lang/Object;

    check-cast v1, LC5/a;

    invoke-virtual {v1}, LC5/a;->u()Lw5/p;

    move-result-object v1

    iput-object v1, v0, LC5/h;->c:Ljava/lang/Object;

    iget-object v1, v0, LC5/h;->d:Ljava/lang/Object;

    check-cast v1, Lw5/y;

    invoke-static {v1}, Le5/g;->c(Ljava/lang/Object;)V

    iget-object v1, v1, Lw5/y;->y:Lw5/b;

    iget-object v2, v0, LC5/h;->c:Ljava/lang/Object;

    check-cast v2, Lw5/p;

    invoke-static {v2}, Le5/g;->c(Ljava/lang/Object;)V

    iget-object v3, p0, LC5/d;->u:Lw5/r;

    invoke-static {v1, v3, v2}, LB5/f;->b(Lw5/b;Lw5/r;Lw5/p;)V

    invoke-virtual {p0}, LC5/b;->a()V

    :cond_4
    iget-boolean v1, p0, LC5/d;->t:Z

    if-nez v1, :cond_5

    :goto_1
    return-wide v5

    :cond_5
    iget-wide v1, p0, LC5/d;->s:J

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-super {p0, p1, p2, p3}, LC5/b;->read(LK5/g;J)J

    move-result-wide p1

    cmp-long p3, p1, v5

    if-eqz p3, :cond_6

    iget-wide v0, p0, LC5/d;->s:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, LC5/d;->s:J

    return-wide p1

    :cond_6
    iget-object p1, v0, LC5/h;->e:Ljava/lang/Object;

    check-cast p1, LA5/n;

    invoke-virtual {p1}, LA5/n;->k()V

    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "unexpected end of stream"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, LC5/b;->a()V

    throw p1

    :cond_7
    :try_start_1
    new-instance p1, Ljava/net/ProtocolException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, LC5/d;->s:J

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x22

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    new-instance p2, Ljava/net/ProtocolException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    const-string p1, "byteCount < 0: "

    invoke-static {p2, p3, p1}, Lcom/google/android/material/datepicker/e;->e(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
