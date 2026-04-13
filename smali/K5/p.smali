.class public final LK5/p;
.super LK5/H;


# instance fields
.field public e:LK5/H;


# direct methods
.method public constructor <init>(LK5/H;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK5/p;->e:LK5/H;

    return-void
.end method


# virtual methods
.method public final a()LK5/H;
    .locals 1

    iget-object v0, p0, LK5/p;->e:LK5/H;

    invoke-virtual {v0}, LK5/H;->a()LK5/H;

    move-result-object v0

    return-object v0
.end method

.method public final b()LK5/H;
    .locals 1

    iget-object v0, p0, LK5/p;->e:LK5/H;

    invoke-virtual {v0}, LK5/H;->b()LK5/H;

    move-result-object v0

    return-object v0
.end method

.method public final c()J
    .locals 2

    iget-object v0, p0, LK5/p;->e:LK5/H;

    invoke-virtual {v0}, LK5/H;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d(J)LK5/H;
    .locals 1

    iget-object v0, p0, LK5/p;->e:LK5/H;

    invoke-virtual {v0, p1, p2}, LK5/H;->d(J)LK5/H;

    move-result-object p1

    return-object p1
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, LK5/p;->e:LK5/H;

    invoke-virtual {v0}, LK5/H;->e()Z

    move-result v0

    return v0
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, LK5/p;->e:LK5/H;

    invoke-virtual {v0}, LK5/H;->f()V

    return-void
.end method

.method public final g(J)LK5/H;
    .locals 2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v1, "unit"

    invoke-static {v0, v1}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LK5/p;->e:LK5/H;

    invoke-virtual {v0, p1, p2}, LK5/H;->g(J)LK5/H;

    move-result-object p1

    return-object p1
.end method
