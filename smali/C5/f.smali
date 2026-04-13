.class public final LC5/f;
.super Ljava/lang/Object;

# interfaces
.implements LK5/D;


# instance fields
.field public final b:LK5/p;

.field public q:Z

.field public final synthetic r:LC5/h;


# direct methods
.method public constructor <init>(LC5/h;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LC5/f;->r:LC5/h;

    new-instance v0, LK5/p;

    iget-object p1, p1, LC5/h;->g:Ljava/lang/Object;

    check-cast p1, LK5/h;

    invoke-interface {p1}, LK5/D;->timeout()LK5/H;

    move-result-object p1

    invoke-direct {v0, p1}, LK5/p;-><init>(LK5/H;)V

    iput-object v0, p0, LC5/f;->b:LK5/p;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    iget-boolean v0, p0, LC5/f;->q:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LC5/f;->q:Z

    iget-object v0, p0, LC5/f;->b:LK5/p;

    iget-object v1, v0, LK5/p;->e:LK5/H;

    sget-object v2, LK5/H;->d:LK5/G;

    iput-object v2, v0, LK5/p;->e:LK5/H;

    invoke-virtual {v1}, LK5/H;->a()LK5/H;

    invoke-virtual {v1}, LK5/H;->b()LK5/H;

    const/4 v0, 0x3

    iget-object v1, p0, LC5/f;->r:LC5/h;

    iput v0, v1, LC5/h;->a:I

    return-void
.end method

.method public final flush()V
    .locals 1

    iget-boolean v0, p0, LC5/f;->q:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LC5/f;->r:LC5/h;

    iget-object v0, v0, LC5/h;->g:Ljava/lang/Object;

    check-cast v0, LK5/h;

    invoke-interface {v0}, LK5/h;->flush()V

    return-void
.end method

.method public final q(LK5/g;J)V
    .locals 5

    iget-boolean v0, p0, LC5/f;->q:Z

    if-nez v0, :cond_1

    iget-wide v0, p1, LK5/g;->q:J

    sget-object v2, Lx5/b;->a:[B

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-ltz v4, :cond_0

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    cmp-long v0, v0, p2

    if-ltz v0, :cond_0

    iget-object v0, p0, LC5/f;->r:LC5/h;

    iget-object v0, v0, LC5/h;->g:Ljava/lang/Object;

    check-cast v0, LK5/h;

    invoke-interface {v0, p1, p2, p3}, LK5/D;->q(LK5/g;J)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final timeout()LK5/H;
    .locals 1

    iget-object v0, p0, LC5/f;->b:LK5/p;

    return-object v0
.end method
