.class public final Lt0/k;
.super Lt0/m;

# interfaces
.implements Ls0/i;


# instance fields
.field public final w:Lt0/n;


# direct methods
.method public constructor <init>(Landroidx/media3/common/Format;Lp3/H;Lt0/n;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lt0/m;-><init>(Landroidx/media3/common/Format;Ljava/util/List;Lt0/s;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    move-object p1, p0

    iput-object p3, p1, Lt0/k;->w:Lt0/n;

    return-void
.end method


# virtual methods
.method public final E()Z
    .locals 1

    iget-object v0, p0, Lt0/k;->w:Lt0/n;

    invoke-virtual {v0}, Lt0/n;->i()Z

    move-result v0

    return v0
.end method

.method public final G()J
    .locals 2

    iget-object v0, p0, Lt0/k;->w:Lt0/n;

    iget-wide v0, v0, Lt0/n;->d:J

    return-wide v0
.end method

.method public final J(J)J
    .locals 1

    iget-object v0, p0, Lt0/k;->w:Lt0/n;

    invoke-virtual {v0, p1, p2}, Lt0/n;->d(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final K(JJ)J
    .locals 1

    iget-object v0, p0, Lt0/k;->w:Lt0/n;

    invoke-virtual {v0, p1, p2, p3, p4}, Lt0/n;->b(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final a(J)J
    .locals 1

    iget-object v0, p0, Lt0/k;->w:Lt0/n;

    invoke-virtual {v0, p1, p2}, Lt0/n;->g(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Ls0/i;
    .locals 0

    return-object p0
.end method

.method public final d()Lt0/j;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final g(JJ)J
    .locals 1

    iget-object v0, p0, Lt0/k;->w:Lt0/n;

    invoke-virtual {v0, p1, p2, p3, p4}, Lt0/n;->e(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final k(JJ)J
    .locals 1

    iget-object v0, p0, Lt0/k;->w:Lt0/n;

    invoke-virtual {v0, p1, p2, p3, p4}, Lt0/n;->c(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final l(JJ)J
    .locals 3

    iget-object v0, p0, Lt0/k;->w:Lt0/n;

    iget-object v1, v0, Lt0/n;->f:Ljava/util/List;

    if-eqz v1, :cond_0

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p1

    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lt0/n;->c(JJ)J

    move-result-wide v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lt0/n;->b(JJ)J

    move-result-wide p3

    add-long/2addr p3, v1

    invoke-virtual {v0, p3, p4}, Lt0/n;->g(J)J

    move-result-wide v1

    invoke-virtual {v0, p3, p4, p1, p2}, Lt0/n;->e(JJ)J

    move-result-wide p1

    add-long/2addr p1, v1

    iget-wide p3, v0, Lt0/n;->i:J

    sub-long/2addr p1, p3

    return-wide p1
.end method

.method public final m(J)Lt0/j;
    .locals 1

    iget-object v0, p0, Lt0/k;->w:Lt0/n;

    invoke-virtual {v0, p0, p1, p2}, Lt0/n;->h(Lt0/k;J)Lt0/j;

    move-result-object p1

    return-object p1
.end method

.method public final x(JJ)J
    .locals 1

    iget-object v0, p0, Lt0/k;->w:Lt0/n;

    invoke-virtual {v0, p1, p2, p3, p4}, Lt0/n;->f(JJ)J

    move-result-wide p1

    return-wide p1
.end method
