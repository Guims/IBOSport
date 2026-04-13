.class public abstract Landroidx/media3/exoplayer/source/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/source/G;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/util/HashSet;

.field public final c:LA/d;

.field public final d:Lu0/m;

.field public e:Landroid/os/Looper;

.field public f:Landroidx/media3/common/Timeline;

.field public g:Lq0/q;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/a;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/a;->b:Ljava/util/HashSet;

    new-instance v0, LA/d;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, LA/d;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media3/exoplayer/source/E;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/a;->c:LA/d;

    new-instance v0, Lu0/m;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lu0/m;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media3/exoplayer/source/E;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/a;->d:Lu0/m;

    return-void
.end method


# virtual methods
.method public final i(Landroidx/media3/exoplayer/source/E;)LA/d;
    .locals 3

    new-instance v0, LA/d;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/a;->c:LA/d;

    iget-object v1, v1, LA/d;->s:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, LA/d;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media3/exoplayer/source/E;)V

    return-object v0
.end method

.method public final j(Landroidx/media3/exoplayer/source/F;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/a;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/a;->k()V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public final l(Landroidx/media3/exoplayer/source/F;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/a;->e:Landroid/os/Looper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/a;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/a;->m()V

    :cond_0
    return-void
.end method

.method public m()V
    .locals 0

    return-void
.end method

.method public final n(Landroidx/media3/exoplayer/source/F;Landroidx/media3/datasource/TransferListener;Lq0/q;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/a;->e:Landroid/os/Looper;

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lk0/c;->d(Z)V

    iput-object p3, p0, Landroidx/media3/exoplayer/source/a;->g:Lq0/q;

    iget-object p3, p0, Landroidx/media3/exoplayer/source/a;->f:Landroidx/media3/common/Timeline;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroidx/media3/exoplayer/source/a;->e:Landroid/os/Looper;

    if-nez v1, :cond_2

    iput-object v0, p0, Landroidx/media3/exoplayer/source/a;->e:Landroid/os/Looper;

    iget-object p3, p0, Landroidx/media3/exoplayer/source/a;->b:Ljava/util/HashSet;

    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/source/a;->o(Landroidx/media3/datasource/TransferListener;)V

    return-void

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/a;->l(Landroidx/media3/exoplayer/source/F;)V

    invoke-interface {p1, p0, p3}, Landroidx/media3/exoplayer/source/F;->onSourceInfoRefreshed(Landroidx/media3/exoplayer/source/G;Landroidx/media3/common/Timeline;)V

    :cond_3
    return-void
.end method

.method public abstract o(Landroidx/media3/datasource/TransferListener;)V
.end method

.method public final p(Landroidx/media3/common/Timeline;)V
    .locals 4

    iput-object p1, p0, Landroidx/media3/exoplayer/source/a;->f:Landroidx/media3/common/Timeline;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroidx/media3/exoplayer/source/F;

    invoke-interface {v3, p0, p1}, Landroidx/media3/exoplayer/source/F;->onSourceInfoRefreshed(Landroidx/media3/exoplayer/source/G;Landroidx/media3/common/Timeline;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final q(Landroidx/media3/exoplayer/source/F;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/a;->e:Landroid/os/Looper;

    iput-object p1, p0, Landroidx/media3/exoplayer/source/a;->f:Landroidx/media3/common/Timeline;

    iput-object p1, p0, Landroidx/media3/exoplayer/source/a;->g:Lq0/q;

    iget-object p1, p0, Landroidx/media3/exoplayer/source/a;->b:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/a;->r()V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/a;->j(Landroidx/media3/exoplayer/source/F;)V

    return-void
.end method

.method public abstract r()V
.end method

.method public final s(Lu0/n;)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/source/a;->d:Lu0/m;

    iget-object v0, v0, Lu0/m;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu0/l;

    iget-object v3, v2, Lu0/l;->b:Ljava/lang/Object;

    if-ne v3, p1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final t(Landroidx/media3/exoplayer/source/K;)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/source/a;->c:LA/d;

    iget-object v0, v0, LA/d;->s:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/source/J;

    iget-object v3, v2, Landroidx/media3/exoplayer/source/J;->b:Ljava/lang/Object;

    if-ne v3, p1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method
