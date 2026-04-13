.class public abstract Lm5/I;
.super Lm5/s;


# static fields
.field public static final synthetic u:I


# instance fields
.field public r:J

.field public s:Z

.field public t:LT4/e;


# virtual methods
.method public abstract A()Ljava/lang/Thread;
.end method

.method public final B(Z)V
    .locals 4

    iget-wide v0, p0, Lm5/I;->r:J

    if-eqz p1, :cond_0

    const-wide v2, 0x100000000L

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1

    :goto_0
    add-long/2addr v2, v0

    iput-wide v2, p0, Lm5/I;->r:J

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lm5/I;->s:Z

    :cond_1
    return-void
.end method

.method public abstract C()J
.end method

.method public final D()Z
    .locals 3

    iget-object v0, p0, Lm5/I;->t:LT4/e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, LT4/e;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, LT4/e;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Lm5/B;

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0}, Lm5/B;->run()V

    const/4 v0, 0x1

    return v0
.end method

.method public abstract shutdown()V
.end method

.method public final z(Z)V
    .locals 4

    iget-wide v0, p0, Lm5/I;->r:J

    if-eqz p1, :cond_0

    const-wide v2, 0x100000000L

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1

    :goto_0
    sub-long/2addr v0, v2

    iput-wide v0, p0, Lm5/I;->r:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean p1, p0, Lm5/I;->s:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lm5/I;->shutdown()V

    :cond_2
    :goto_1
    return-void
.end method
