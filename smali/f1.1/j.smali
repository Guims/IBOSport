.class public abstract Lf1/j;
.super Lp0/g;

# interfaces
.implements Lf1/d;


# instance fields
.field public u:Lf1/d;

.field public v:J


# virtual methods
.method public final e(J)I
    .locals 3

    iget-object v0, p0, Lf1/j;->u:Lf1/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v1, p0, Lf1/j;->v:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lf1/d;->e(J)I

    move-result p1

    return p1
.end method

.method public final j(I)J
    .locals 4

    iget-object v0, p0, Lf1/j;->u:Lf1/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p1}, Lf1/d;->j(I)J

    move-result-wide v0

    iget-wide v2, p0, Lf1/j;->v:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final k()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, LU2/e;->q:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lp0/g;->r:J

    iput v0, p0, Lp0/g;->s:I

    iput-boolean v0, p0, Lp0/g;->t:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lf1/j;->u:Lf1/d;

    return-void
.end method

.method public final t(J)Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lf1/j;->u:Lf1/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v1, p0, Lf1/j;->v:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lf1/d;->t(J)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final w()I
    .locals 1

    iget-object v0, p0, Lf1/j;->u:Lf1/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lf1/d;->w()I

    move-result v0

    return v0
.end method
