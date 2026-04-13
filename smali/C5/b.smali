.class public abstract LC5/b;
.super Ljava/lang/Object;

# interfaces
.implements LK5/F;


# instance fields
.field public final b:LK5/p;

.field public q:Z

.field public final synthetic r:LC5/h;


# direct methods
.method public constructor <init>(LC5/h;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LC5/b;->r:LC5/h;

    new-instance v0, LK5/p;

    iget-object p1, p1, LC5/h;->f:Ljava/lang/Object;

    check-cast p1, LK5/i;

    invoke-interface {p1}, LK5/F;->timeout()LK5/H;

    move-result-object p1

    invoke-direct {v0, p1}, LK5/p;-><init>(LK5/H;)V

    iput-object v0, p0, LC5/b;->b:LK5/p;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, LC5/b;->r:LC5/h;

    iget v1, v0, LC5/h;->a:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x5

    if-ne v1, v3, :cond_1

    iget-object v1, p0, LC5/b;->b:LK5/p;

    iget-object v3, v1, LK5/p;->e:LK5/H;

    sget-object v4, LK5/H;->d:LK5/G;

    iput-object v4, v1, LK5/p;->e:LK5/H;

    invoke-virtual {v3}, LK5/H;->a()LK5/H;

    invoke-virtual {v3}, LK5/H;->b()LK5/H;

    iput v2, v0, LC5/h;->a:I

    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "state: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, LC5/h;->a:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public read(LK5/g;J)J
    .locals 2

    iget-object v0, p0, LC5/b;->r:LC5/h;

    const-string v1, "sink"

    invoke-static {p1, v1}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, v0, LC5/h;->f:Ljava/lang/Object;

    check-cast v1, LK5/i;

    invoke-interface {v1, p1, p2, p3}, LK5/F;->read(LK5/g;J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    iget-object p2, v0, LC5/h;->e:Ljava/lang/Object;

    check-cast p2, LA5/n;

    invoke-virtual {p2}, LA5/n;->k()V

    invoke-virtual {p0}, LC5/b;->a()V

    throw p1
.end method

.method public final timeout()LK5/H;
    .locals 1

    iget-object v0, p0, LC5/b;->b:LK5/p;

    return-object v0
.end method
