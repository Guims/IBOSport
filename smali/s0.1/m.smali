.class public final Ls0/m;
.super LB0/b;


# instance fields
.field public final s:Ls0/l;


# direct methods
.method public constructor <init>(Ls0/l;JJ)V
    .locals 0

    invoke-direct {p0, p2, p3, p4, p5}, LB0/b;-><init>(JJ)V

    iput-object p1, p0, Ls0/m;->s:Ls0/l;

    return-void
.end method


# virtual methods
.method public final d()J
    .locals 3

    invoke-virtual {p0}, LB0/b;->a()V

    iget-object v0, p0, Ls0/m;->s:Ls0/l;

    iget-wide v1, p0, LB0/b;->r:J

    invoke-virtual {v0, v1, v2}, Ls0/l;->f(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final m()J
    .locals 3

    invoke-virtual {p0}, LB0/b;->a()V

    iget-object v0, p0, Ls0/m;->s:Ls0/l;

    iget-wide v1, p0, LB0/b;->r:J

    invoke-virtual {v0, v1, v2}, Ls0/l;->e(J)J

    move-result-wide v0

    return-wide v0
.end method
