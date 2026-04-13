.class public final LQ5/b;
.super Ljava/lang/Object;

# interfaces
.implements LO5/a;


# instance fields
.field public final b:Ljava/lang/String;

.field public volatile q:LO5/a;

.field public r:Ljava/lang/Boolean;

.field public s:Ljava/lang/reflect/Method;

.field public t:LJ/l;

.field public final u:Ljava/util/Queue;

.field public final v:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/concurrent/LinkedBlockingQueue;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQ5/b;->b:Ljava/lang/String;

    iput-object p2, p0, LQ5/b;->u:Ljava/util/Queue;

    iput-boolean p3, p0, LQ5/b;->v:Z

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    invoke-virtual {p0}, LQ5/b;->a()LO5/a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, LO5/a;->A(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public final a()LO5/a;
    .locals 4

    iget-object v0, p0, LQ5/b;->q:LO5/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, LQ5/b;->q:LO5/a;

    return-object v0

    :cond_0
    iget-boolean v0, p0, LQ5/b;->v:Z

    if-eqz v0, :cond_1

    sget-object v0, LQ5/a;->b:LQ5/a;

    return-object v0

    :cond_1
    iget-object v0, p0, LQ5/b;->t:LJ/l;

    if-nez v0, :cond_2

    new-instance v0, LJ/l;

    iget-object v1, p0, LQ5/b;->u:Ljava/util/Queue;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, LJ/l;-><init>(IZ)V

    iput-object p0, v0, LJ/l;->s:Ljava/lang/Object;

    iget-object v2, p0, LQ5/b;->b:Ljava/lang/String;

    iput-object v2, v0, LJ/l;->r:Ljava/lang/Object;

    iput-object v1, v0, LJ/l;->q:Ljava/lang/Object;

    iput-object v0, p0, LQ5/b;->t:LJ/l;

    :cond_2
    iget-object v0, p0, LQ5/b;->t:LJ/l;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    invoke-virtual {p0}, LQ5/b;->a()LO5/a;

    move-result-object v0

    invoke-interface {v0}, LO5/a;->b()Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 1

    invoke-virtual {p0}, LQ5/b;->a()LO5/a;

    move-result-object v0

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    return v0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, LQ5/b;->a()LO5/a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, LO5/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final e()Z
    .locals 3

    iget-object v0, p0, LQ5/b;->r:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, LQ5/b;->q:LO5/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "log"

    const-class v2, LP5/a;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, LQ5/b;->s:Ljava/lang/reflect/Method;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, LQ5/b;->r:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, LQ5/b;->r:Ljava/lang/Boolean;

    :goto_0
    iget-object v0, p0, LQ5/b;->r:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const-class v2, LQ5/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, LQ5/b;

    iget-object v2, p0, LQ5/b;->b:Ljava/lang/String;

    iget-object p1, p1, LQ5/b;->b:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQ5/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    invoke-virtual {p0}, LQ5/b;->a()LO5/a;

    move-result-object v0

    invoke-interface {v0}, LO5/a;->h()Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, LQ5/b;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, LQ5/b;->a()LO5/a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, LO5/a;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final k()Z
    .locals 1

    invoke-virtual {p0}, LQ5/b;->a()LO5/a;

    move-result-object v0

    invoke-interface {v0}, LO5/a;->k()Z

    move-result v0

    return v0
.end method

.method public final n(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, LQ5/b;->a()LO5/a;

    move-result-object v0

    invoke-interface {v0, p1}, LO5/a;->n(Ljava/lang/String;)V

    return-void
.end method

.method public final o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, LQ5/b;->a()LO5/a;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final varargs q(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, LQ5/b;->a()LO5/a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, LO5/a;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final varargs r([Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, LQ5/b;->a()LO5/a;

    move-result-object v0

    invoke-interface {v0, p1}, LO5/a;->r([Ljava/lang/Object;)V

    return-void
.end method

.method public final s(Ljava/lang/String;Ljavax/net/ssl/SSLException;)V
    .locals 1

    invoke-virtual {p0}, LQ5/b;->a()LO5/a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, LO5/a;->s(Ljava/lang/String;Ljavax/net/ssl/SSLException;)V

    return-void
.end method

.method public final u(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, LQ5/b;->a()LO5/a;

    move-result-object v0

    invoke-interface {v0, p1}, LO5/a;->u(Ljava/lang/String;)V

    return-void
.end method

.method public final v(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, LQ5/b;->a()LO5/a;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, LO5/a;->v(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final y(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, LQ5/b;->a()LO5/a;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, LO5/a;->y(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final z(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, LQ5/b;->a()LO5/a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
