.class public abstract LJ/s0;
.super Ljava/lang/Object;


# instance fields
.field public final a:LJ/B0;

.field public b:[LB/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, LJ/B0;

    invoke-direct {v0}, LJ/B0;-><init>()V

    invoke-direct {p0, v0}, LJ/s0;-><init>(LJ/B0;)V

    return-void
.end method

.method public constructor <init>(LJ/B0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ/s0;->a:LJ/B0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, LJ/s0;->b:[LB/c;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    iget-object v3, p0, LJ/s0;->a:LJ/B0;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    iget-object v4, v3, LJ/B0;->a:LJ/y0;

    invoke-virtual {v4, v0}, LJ/y0;->f(I)LB/c;

    move-result-object v0

    :cond_0
    if-nez v1, :cond_1

    iget-object v1, v3, LJ/B0;->a:LJ/y0;

    invoke-virtual {v1, v2}, LJ/y0;->f(I)LB/c;

    move-result-object v1

    :cond_1
    invoke-static {v1, v0}, LB/c;->a(LB/c;LB/c;)LB/c;

    move-result-object v0

    invoke-virtual {p0, v0}, LJ/s0;->g(LB/c;)V

    iget-object v0, p0, LJ/s0;->b:[LB/c;

    const/16 v1, 0x10

    invoke-static {v1}, LH3/u0;->p(I)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, LJ/s0;->f(LB/c;)V

    :cond_2
    iget-object v0, p0, LJ/s0;->b:[LB/c;

    const/16 v1, 0x20

    invoke-static {v1}, LH3/u0;->p(I)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, LJ/s0;->d(LB/c;)V

    :cond_3
    iget-object v0, p0, LJ/s0;->b:[LB/c;

    const/16 v1, 0x40

    invoke-static {v1}, LH3/u0;->p(I)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, LJ/s0;->h(LB/c;)V

    :cond_4
    return-void
.end method

.method public abstract b()LJ/B0;
.end method

.method public c(ILB/c;)V
    .locals 3

    iget-object v0, p0, LJ/s0;->b:[LB/c;

    if-nez v0, :cond_0

    const/16 v0, 0x9

    new-array v0, v0, [LB/c;

    iput-object v0, p0, LJ/s0;->b:[LB/c;

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x100

    if-gt v0, v1, :cond_2

    and-int v1, p1, v0

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, LJ/s0;->b:[LB/c;

    invoke-static {v0}, LH3/u0;->p(I)I

    move-result v2

    aput-object p2, v1, v2

    :goto_1
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public d(LB/c;)V
    .locals 0

    return-void
.end method

.method public abstract e(LB/c;)V
.end method

.method public f(LB/c;)V
    .locals 0

    return-void
.end method

.method public abstract g(LB/c;)V
.end method

.method public h(LB/c;)V
    .locals 0

    return-void
.end method
