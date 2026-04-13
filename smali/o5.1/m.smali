.class public final Lo5/m;
.super Lm5/a;

# interfaces
.implements Lo5/n;
.implements Lo5/f;


# instance fields
.field public final s:Lo5/b;


# direct methods
.method public constructor <init>(LV4/i;Lo5/b;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lm5/a;-><init>(LV4/i;Z)V

    iput-object p2, p0, Lo5/m;->s:Lo5/b;

    return-void
.end method


# virtual methods
.method public final Q(Ljava/lang/Throwable;Z)V
    .locals 2

    iget-object v0, p0, Lo5/m;->s:Lo5/b;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lo5/b;->h(Ljava/lang/Throwable;Z)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    iget-object p2, p0, Lm5/a;->r:LV4/i;

    invoke-static {p2, p1}, Lm5/w;->e(LV4/i;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final R(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, LS4/i;

    iget-object p1, p0, Lo5/m;->s:Lo5/b;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lo5/b;->h(Ljava/lang/Throwable;Z)Z

    return-void
.end method

.method public final b(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    invoke-virtual {p0}, Lm5/a0;->A()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lm5/n;

    if-nez v1, :cond_2

    instance-of v1, v0, Lm5/Y;

    if-eqz v1, :cond_0

    check-cast v0, Lm5/Y;

    invoke-virtual {v0}, Lm5/Y;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Lm5/S;

    invoke-virtual {p0}, Lm5/a;->p()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, Lm5/S;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lm5/a0;)V

    :cond_1
    invoke-virtual {p0, p1}, Lo5/m;->n(Ljava/util/concurrent/CancellationException;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final c(LV4/d;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lo5/m;->s:Lo5/b;

    invoke-interface {v0, p1, p2}, Lo5/p;->c(LV4/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final n(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    iget-object v0, p0, Lo5/m;->s:Lo5/b;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lo5/b;->h(Ljava/lang/Throwable;Z)Z

    invoke-virtual {p0, p1}, Lm5/a0;->m(Ljava/lang/Object;)Z

    return-void
.end method
