.class public abstract Lg1/i;
.super Ljava/lang/Object;

# interfaces
.implements Lf1/e;


# instance fields
.field public final a:Ljava/util/ArrayDeque;

.field public final b:Ljava/util/ArrayDeque;

.field public final c:Ljava/util/ArrayDeque;

.field public d:Lg1/g;

.field public e:J

.field public f:J

.field public g:J


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lg1/i;->a:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lg1/i;->a:Ljava/util/ArrayDeque;

    new-instance v3, Lg1/g;

    invoke-direct {v3}, Lf1/i;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lg1/i;->b:Ljava/util/ArrayDeque;

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lg1/i;->b:Ljava/util/ArrayDeque;

    new-instance v2, Lg1/h;

    new-instance v3, LA3/d;

    const/16 v4, 0xf

    invoke-direct {v3, v4, p0}, LA3/d;-><init>(ILjava/lang/Object;)V

    invoke-direct {v2}, LU2/e;-><init>()V

    iput-object v3, v2, Lg1/h;->w:LA3/d;

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lg1/i;->c:Ljava/util/ArrayDeque;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lg1/i;->g:J

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lg1/i;->g:J

    return-void
.end method

.method public final b(J)V
    .locals 0

    iput-wide p1, p0, Lg1/i;->e:J

    return-void
.end method

.method public bridge synthetic c()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lg1/i;->h()Lf1/j;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lg1/i;->d:Lg1/g;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lk0/c;->j(Z)V

    iget-object v0, p0, Lg1/i;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg1/g;

    iput-object v0, p0, Lg1/i;->d:Lg1/g;

    return-object v0
.end method

.method public final e(Lf1/i;)V
    .locals 6

    iget-object v0, p0, Lg1/i;->d:Lg1/g;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lk0/c;->d(Z)V

    check-cast p1, Lg1/g;

    iget-wide v0, p1, Lp0/f;->v:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lg1/i;->g:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    invoke-virtual {p1}, Lp0/f;->k()V

    iget-object v0, p0, Lg1/i;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-wide v0, p0, Lg1/i;->f:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lg1/i;->f:J

    iput-wide v0, p1, Lg1/g;->A:J

    iget-object v0, p0, Lg1/i;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :goto_1
    const/4 p1, 0x0

    iput-object p1, p0, Lg1/i;->d:Lg1/g;

    return-void
.end method

.method public abstract f()Lcom/bumptech/glide/f;
.end method

.method public flush()V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lg1/i;->f:J

    iput-wide v0, p0, Lg1/i;->e:J

    :goto_0
    iget-object v0, p0, Lg1/i;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    iget-object v2, p0, Lg1/i;->a:Ljava/util/ArrayDeque;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg1/g;

    sget v1, Lk0/C;->a:I

    invoke-virtual {v0}, Lp0/f;->k()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg1/i;->d:Lg1/g;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lp0/f;->k()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lg1/i;->d:Lg1/g;

    :cond_1
    return-void
.end method

.method public abstract g(Lg1/g;)V
.end method

.method public h()Lf1/j;
    .locals 7

    iget-object v0, p0, Lg1/i;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lg1/i;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg1/g;

    sget v3, Lk0/C;->a:I

    iget-wide v2, v2, Lp0/f;->v:J

    iget-wide v4, p0, Lg1/i;->e:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg1/g;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, LU2/e;->c(I)Z

    move-result v3

    iget-object v4, p0, Lg1/i;->a:Ljava/util/ArrayDeque;

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf1/j;

    invoke-virtual {v0, v2}, LU2/e;->a(I)V

    invoke-virtual {v1}, Lp0/f;->k()V

    invoke-virtual {v4, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_1
    invoke-virtual {p0, v1}, Lg1/i;->g(Lg1/g;)V

    invoke-virtual {p0}, Lg1/i;->i()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lg1/i;->f()Lcom/bumptech/glide/f;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf1/j;

    iget-wide v5, v1, Lp0/f;->v:J

    iput-wide v5, v0, Lp0/g;->r:J

    iput-object v2, v0, Lf1/j;->u:Lf1/d;

    iput-wide v5, v0, Lf1/j;->v:J

    invoke-virtual {v1}, Lp0/f;->k()V

    invoke-virtual {v4, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_2
    invoke-virtual {v1}, Lp0/f;->k()V

    invoke-virtual {v4, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract i()Z
.end method

.method public release()V
    .locals 0

    return-void
.end method
