.class public final LC5/g;
.super LC5/b;


# instance fields
.field public s:Z


# virtual methods
.method public final close()V
    .locals 1

    iget-boolean v0, p0, LC5/b;->q:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, LC5/g;->s:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, LC5/b;->a()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, LC5/b;->q:Z

    return-void
.end method

.method public final read(LK5/g;J)J
    .locals 3

    const-string v0, "sink"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_3

    iget-boolean v0, p0, LC5/b;->q:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, LC5/g;->s:Z

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    invoke-super {p0, p1, p2, p3}, LC5/b;->read(LK5/g;J)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-nez p3, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, LC5/g;->s:Z

    invoke-virtual {p0}, LC5/b;->a()V

    return-wide v1

    :cond_1
    return-wide p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const-string p1, "byteCount < 0: "

    invoke-static {p2, p3, p1}, Lcom/google/android/material/datepicker/e;->e(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
