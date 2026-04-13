.class public final LK5/y;
.super Ljava/lang/Object;

# interfaces
.implements LK5/h;


# instance fields
.field public final b:LK5/D;

.field public final q:LK5/g;

.field public r:Z


# direct methods
.method public constructor <init>(LK5/D;)V
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK5/y;->b:LK5/D;

    new-instance p1, LK5/g;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK5/y;->q:LK5/g;

    return-void
.end method


# virtual methods
.method public final a()LK5/h;
    .locals 5

    iget-boolean v0, p0, LK5/y;->r:Z

    if-nez v0, :cond_1

    iget-object v0, p0, LK5/y;->q:LK5/g;

    invoke-virtual {v0}, LK5/g;->b()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    iget-object v3, p0, LK5/y;->b:LK5/D;

    invoke-interface {v3, v0, v1, v2}, LK5/D;->q(LK5/g;J)V

    :cond_0
    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final close()V
    .locals 6

    iget-object v0, p0, LK5/y;->b:LK5/D;

    iget-boolean v1, p0, LK5/y;->r:Z

    if-nez v1, :cond_3

    :try_start_0
    iget-object v1, p0, LK5/y;->q:LK5/g;

    iget-wide v2, v1, LK5/g;->q:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    invoke-interface {v0, v1, v2, v3}, LK5/D;->q(LK5/g;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, 0x0

    :goto_1
    :try_start_1
    invoke-interface {v0}, LK5/D;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    if-nez v1, :cond_1

    move-object v1, v0

    :cond_1
    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, LK5/y;->r:Z

    if-nez v1, :cond_2

    goto :goto_3

    :cond_2
    throw v1

    :cond_3
    :goto_3
    return-void
.end method

.method public final e(LK5/F;)J
    .locals 6

    const-wide/16 v0, 0x0

    :goto_0
    const-wide/16 v2, 0x2000

    move-object v4, p1

    check-cast v4, LK5/c;

    iget-object v5, p0, LK5/y;->q:LK5/g;

    invoke-virtual {v4, v5, v2, v3}, LK5/c;->read(LK5/g;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    add-long/2addr v0, v2

    invoke-virtual {p0}, LK5/y;->a()LK5/h;

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public final flush()V
    .locals 5

    iget-boolean v0, p0, LK5/y;->r:Z

    if-nez v0, :cond_1

    iget-object v0, p0, LK5/y;->q:LK5/g;

    iget-wide v1, v0, LK5/g;->q:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    iget-object v4, p0, LK5/y;->b:LK5/D;

    if-lez v3, :cond_0

    invoke-interface {v4, v0, v1, v2}, LK5/D;->q(LK5/g;J)V

    :cond_0
    invoke-interface {v4}, LK5/D;->flush()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getBuffer()LK5/g;
    .locals 1

    iget-object v0, p0, LK5/y;->q:LK5/g;

    return-object v0
.end method

.method public final i(Ljava/lang/String;)LK5/h;
    .locals 1

    const-string v0, "string"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, LK5/y;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LK5/y;->q:LK5/g;

    invoke-virtual {v0, p1}, LK5/g;->L(Ljava/lang/String;)V

    invoke-virtual {p0}, LK5/y;->a()LK5/h;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final isOpen()Z
    .locals 1

    iget-boolean v0, p0, LK5/y;->r:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final l(J)LK5/h;
    .locals 1

    iget-boolean v0, p0, LK5/y;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LK5/y;->q:LK5/g;

    invoke-virtual {v0, p1, p2}, LK5/g;->I(J)V

    invoke-virtual {p0}, LK5/y;->a()LK5/h;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final p(LK5/j;)LK5/h;
    .locals 1

    const-string v0, "byteString"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, LK5/y;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LK5/y;->q:LK5/g;

    invoke-virtual {v0, p1}, LK5/g;->F(LK5/j;)V

    invoke-virtual {p0}, LK5/y;->a()LK5/h;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final q(LK5/g;J)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, LK5/y;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LK5/y;->q:LK5/g;

    invoke-virtual {v0, p1, p2, p3}, LK5/g;->q(LK5/g;J)V

    invoke-virtual {p0}, LK5/y;->a()LK5/h;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final timeout()LK5/H;
    .locals 1

    iget-object v0, p0, LK5/y;->b:LK5/D;

    invoke-interface {v0}, LK5/D;->timeout()LK5/H;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "buffer("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LK5/y;->b:LK5/D;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(J)LK5/h;
    .locals 1

    iget-boolean v0, p0, LK5/y;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LK5/y;->q:LK5/g;

    invoke-virtual {v0, p1, p2}, LK5/g;->H(J)V

    invoke-virtual {p0}, LK5/y;->a()LK5/h;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final write(Ljava/nio/ByteBuffer;)I
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, LK5/y;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LK5/y;->q:LK5/g;

    invoke-virtual {v0, p1}, LK5/g;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    invoke-virtual {p0}, LK5/y;->a()LK5/h;

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final write([B)LK5/h;
    .locals 3

    const-string v0, "source"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, LK5/y;->r:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    array-length v1, p1

    iget-object v2, p0, LK5/y;->q:LK5/g;

    invoke-virtual {v2, p1, v0, v1}, LK5/g;->write([BII)V

    invoke-virtual {p0}, LK5/y;->a()LK5/h;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final write([BII)LK5/h;
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, LK5/y;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LK5/y;->q:LK5/g;

    invoke-virtual {v0, p1, p2, p3}, LK5/g;->write([BII)V

    invoke-virtual {p0}, LK5/y;->a()LK5/h;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final writeByte(I)LK5/h;
    .locals 1

    iget-boolean v0, p0, LK5/y;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LK5/y;->q:LK5/g;

    invoke-virtual {v0, p1}, LK5/g;->G(I)V

    invoke-virtual {p0}, LK5/y;->a()LK5/h;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final writeInt(I)LK5/h;
    .locals 1

    iget-boolean v0, p0, LK5/y;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LK5/y;->q:LK5/g;

    invoke-virtual {v0, p1}, LK5/g;->J(I)V

    invoke-virtual {p0}, LK5/y;->a()LK5/h;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final writeShort(I)LK5/h;
    .locals 1

    iget-boolean v0, p0, LK5/y;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LK5/y;->q:LK5/g;

    invoke-virtual {v0, p1}, LK5/g;->K(I)V

    invoke-virtual {p0}, LK5/y;->a()LK5/h;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
