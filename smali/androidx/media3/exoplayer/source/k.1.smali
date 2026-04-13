.class public abstract Landroidx/media3/exoplayer/source/k;
.super Landroidx/media3/exoplayer/source/a;


# instance fields
.field public final h:Ljava/util/HashMap;

.field public i:Landroid/os/Handler;

.field public j:Landroidx/media3/datasource/TransferListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/source/a;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/k;->h:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/k;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/j;

    iget-object v1, v1, Landroidx/media3/exoplayer/source/j;->a:Landroidx/media3/exoplayer/source/G;

    invoke-interface {v1}, Landroidx/media3/exoplayer/source/G;->d()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final k()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/source/k;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/j;

    iget-object v2, v1, Landroidx/media3/exoplayer/source/j;->a:Landroidx/media3/exoplayer/source/G;

    iget-object v1, v1, Landroidx/media3/exoplayer/source/j;->b:Landroidx/media3/exoplayer/source/h;

    check-cast v2, Landroidx/media3/exoplayer/source/a;

    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/source/a;->j(Landroidx/media3/exoplayer/source/F;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final m()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/source/k;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/j;

    iget-object v2, v1, Landroidx/media3/exoplayer/source/j;->a:Landroidx/media3/exoplayer/source/G;

    iget-object v1, v1, Landroidx/media3/exoplayer/source/j;->b:Landroidx/media3/exoplayer/source/h;

    check-cast v2, Landroidx/media3/exoplayer/source/a;

    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/source/a;->l(Landroidx/media3/exoplayer/source/F;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public r()V
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/source/k;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/source/j;

    iget-object v3, v2, Landroidx/media3/exoplayer/source/j;->a:Landroidx/media3/exoplayer/source/G;

    iget-object v4, v2, Landroidx/media3/exoplayer/source/j;->c:Landroidx/media3/exoplayer/source/i;

    iget-object v2, v2, Landroidx/media3/exoplayer/source/j;->b:Landroidx/media3/exoplayer/source/h;

    move-object v5, v3

    check-cast v5, Landroidx/media3/exoplayer/source/a;

    invoke-virtual {v5, v2}, Landroidx/media3/exoplayer/source/a;->q(Landroidx/media3/exoplayer/source/F;)V

    check-cast v3, Landroidx/media3/exoplayer/source/a;

    invoke-virtual {v3, v4}, Landroidx/media3/exoplayer/source/a;->t(Landroidx/media3/exoplayer/source/K;)V

    invoke-virtual {v3, v4}, Landroidx/media3/exoplayer/source/a;->s(Lu0/n;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public abstract u(Ljava/lang/Object;Landroidx/media3/exoplayer/source/E;)Landroidx/media3/exoplayer/source/E;
.end method

.method public v(Ljava/lang/Object;J)J
    .locals 0

    return-wide p2
.end method

.method public w(ILjava/lang/Object;)I
    .locals 0

    return p1
.end method

.method public abstract x(Ljava/lang/Object;Landroidx/media3/exoplayer/source/a;Landroidx/media3/common/Timeline;)V
.end method

.method public final y(Ljava/lang/Object;Landroidx/media3/exoplayer/source/G;)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/source/k;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lk0/c;->d(Z)V

    new-instance v1, Landroidx/media3/exoplayer/source/h;

    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/source/h;-><init>(Landroidx/media3/exoplayer/source/k;Ljava/lang/Object;)V

    new-instance v2, Landroidx/media3/exoplayer/source/i;

    invoke-direct {v2, p0, p1}, Landroidx/media3/exoplayer/source/i;-><init>(Landroidx/media3/exoplayer/source/k;Ljava/lang/Object;)V

    new-instance v3, Landroidx/media3/exoplayer/source/j;

    invoke-direct {v3, p2, v1, v2}, Landroidx/media3/exoplayer/source/j;-><init>(Landroidx/media3/exoplayer/source/G;Landroidx/media3/exoplayer/source/h;Landroidx/media3/exoplayer/source/i;)V

    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Landroidx/media3/exoplayer/source/k;->i:Landroid/os/Handler;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Landroidx/media3/exoplayer/source/a;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p2, Landroidx/media3/exoplayer/source/a;->c:LA/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, LA/d;->s:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v3, Landroidx/media3/exoplayer/source/J;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object p1, v3, Landroidx/media3/exoplayer/source/J;->a:Landroid/os/Handler;

    iput-object v2, v3, Landroidx/media3/exoplayer/source/J;->b:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/media3/exoplayer/source/k;->i:Landroid/os/Handler;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p2, Landroidx/media3/exoplayer/source/a;->d:Lu0/m;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lu0/m;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v3, Lu0/l;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object p1, v3, Lu0/l;->a:Landroid/os/Handler;

    iput-object v2, v3, Lu0/l;->b:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/media3/exoplayer/source/k;->j:Landroidx/media3/datasource/TransferListener;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/a;->g:Lq0/q;

    invoke-static {v0}, Lk0/c;->k(Ljava/lang/Object;)V

    invoke-virtual {p2, v1, p1, v0}, Landroidx/media3/exoplayer/source/a;->n(Landroidx/media3/exoplayer/source/F;Landroidx/media3/datasource/TransferListener;Lq0/q;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/source/a;->b:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2, v1}, Landroidx/media3/exoplayer/source/a;->j(Landroidx/media3/exoplayer/source/F;)V

    :cond_0
    return-void
.end method
