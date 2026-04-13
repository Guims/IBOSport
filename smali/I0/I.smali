.class public final LI0/I;
.super Ljava/lang/Object;

# interfaces
.implements LI0/F;


# virtual methods
.method public final d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final h(J)LI0/E;
    .locals 4

    new-instance v0, LI0/E;

    new-instance v1, LI0/G;

    const-wide/16 v2, 0x0

    invoke-direct {v1, p1, p2, v2, v3}, LI0/G;-><init>(JJ)V

    invoke-direct {v0, v1, v1}, LI0/E;-><init>(LI0/G;LI0/G;)V

    return-object v0
.end method

.method public final j()J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method
