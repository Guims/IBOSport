.class public final LQ0/c;
.super LI0/x;


# instance fields
.field public final synthetic b:LI0/F;

.field public final synthetic c:LC5/a;


# direct methods
.method public constructor <init>(LC5/a;LI0/F;LI0/F;)V
    .locals 0

    iput-object p1, p0, LQ0/c;->c:LC5/a;

    iput-object p3, p0, LQ0/c;->b:LI0/F;

    invoke-direct {p0, p2}, LI0/x;-><init>(LI0/F;)V

    return-void
.end method


# virtual methods
.method public final h(J)LI0/E;
    .locals 8

    iget-object v0, p0, LQ0/c;->b:LI0/F;

    invoke-interface {v0, p1, p2}, LI0/F;->h(J)LI0/E;

    move-result-object p1

    new-instance p2, LI0/E;

    new-instance v0, LI0/G;

    iget-object v1, p1, LI0/E;->a:LI0/G;

    iget-wide v2, v1, LI0/G;->a:J

    iget-wide v4, v1, LI0/G;->b:J

    iget-object v1, p0, LQ0/c;->c:LC5/a;

    iget-wide v6, v1, LC5/a;->q:J

    add-long/2addr v4, v6

    invoke-direct {v0, v2, v3, v4, v5}, LI0/G;-><init>(JJ)V

    new-instance v1, LI0/G;

    iget-object p1, p1, LI0/E;->b:LI0/G;

    iget-wide v2, p1, LI0/G;->a:J

    iget-wide v4, p1, LI0/G;->b:J

    add-long/2addr v4, v6

    invoke-direct {v1, v2, v3, v4, v5}, LI0/G;-><init>(JJ)V

    invoke-direct {p2, v0, v1}, LI0/E;-><init>(LI0/G;LI0/G;)V

    return-object p2
.end method
