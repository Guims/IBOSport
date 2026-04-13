.class public final LI0/B;
.super Ljava/lang/Object;

# interfaces
.implements LI0/F;


# instance fields
.field public final a:LE1/t;

.field public final b:LE1/t;

.field public c:J


# direct methods
.method public constructor <init>(J[J[J)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p3

    array-length v1, p4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lk0/c;->d(Z)V

    array-length v0, p4

    if-lez v0, :cond_1

    aget-wide v1, p4, v2

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-lez v1, :cond_1

    new-instance v1, LE1/t;

    add-int/2addr v0, v3

    invoke-direct {v1, v0}, LE1/t;-><init>(I)V

    iput-object v1, p0, LI0/B;->a:LE1/t;

    new-instance v2, LE1/t;

    invoke-direct {v2, v0}, LE1/t;-><init>(I)V

    iput-object v2, p0, LI0/B;->b:LE1/t;

    invoke-virtual {v1, v4, v5}, LE1/t;->n(J)V

    invoke-virtual {v2, v4, v5}, LE1/t;->n(J)V

    goto :goto_1

    :cond_1
    new-instance v1, LE1/t;

    invoke-direct {v1, v0}, LE1/t;-><init>(I)V

    iput-object v1, p0, LI0/B;->a:LE1/t;

    new-instance v1, LE1/t;

    invoke-direct {v1, v0}, LE1/t;-><init>(I)V

    iput-object v1, p0, LI0/B;->b:LE1/t;

    :goto_1
    iget-object v0, p0, LI0/B;->a:LE1/t;

    invoke-virtual {v0, p3}, LE1/t;->o([J)V

    iget-object p3, p0, LI0/B;->b:LE1/t;

    invoke-virtual {p3, p4}, LE1/t;->o([J)V

    iput-wide p1, p0, LI0/B;->c:J

    return-void
.end method


# virtual methods
.method public final d()Z
    .locals 1

    iget-object v0, p0, LI0/B;->b:LE1/t;

    iget v0, v0, LE1/t;->q:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final h(J)LI0/E;
    .locals 8

    iget-object v0, p0, LI0/B;->b:LE1/t;

    iget v1, v0, LE1/t;->q:I

    if-nez v1, :cond_0

    new-instance p1, LI0/E;

    sget-object p2, LI0/G;->c:LI0/G;

    invoke-direct {p1, p2, p2}, LI0/E;-><init>(LI0/G;LI0/G;)V

    return-object p1

    :cond_0
    invoke-static {v0, p1, p2}, Lk0/C;->b(LE1/t;J)I

    move-result v1

    new-instance v2, LI0/G;

    invoke-virtual {v0, v1}, LE1/t;->p(I)J

    move-result-wide v3

    iget-object v5, p0, LI0/B;->a:LE1/t;

    invoke-virtual {v5, v1}, LE1/t;->p(I)J

    move-result-wide v6

    invoke-direct {v2, v3, v4, v6, v7}, LI0/G;-><init>(JJ)V

    cmp-long p1, v3, p1

    if-eqz p1, :cond_2

    iget p1, v0, LE1/t;->q:I

    add-int/lit8 p1, p1, -0x1

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, LI0/G;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, LE1/t;->p(I)J

    move-result-wide v3

    invoke-virtual {v5, v1}, LE1/t;->p(I)J

    move-result-wide v0

    invoke-direct {p1, v3, v4, v0, v1}, LI0/G;-><init>(JJ)V

    new-instance p2, LI0/E;

    invoke-direct {p2, v2, p1}, LI0/E;-><init>(LI0/G;LI0/G;)V

    return-object p2

    :cond_2
    :goto_0
    new-instance p1, LI0/E;

    invoke-direct {p1, v2, v2}, LI0/E;-><init>(LI0/G;LI0/G;)V

    return-object p1
.end method

.method public final j()J
    .locals 2

    iget-wide v0, p0, LI0/B;->c:J

    return-wide v0
.end method
