.class final Lcom/bumptech/glide/manager/LifecycleLifecycle;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/manager/h;
.implements Landroidx/lifecycle/q;


# instance fields
.field public final b:Ljava/util/HashSet;

.field public final q:Landroidx/lifecycle/t;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/t;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/LifecycleLifecycle;->b:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/bumptech/glide/manager/LifecycleLifecycle;->q:Landroidx/lifecycle/t;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/t;->a(Landroidx/lifecycle/q;)V

    return-void
.end method


# virtual methods
.method public final c(Lcom/bumptech/glide/manager/i;)V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/manager/LifecycleLifecycle;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/bumptech/glide/manager/LifecycleLifecycle;->q:Landroidx/lifecycle/t;

    iget-object v0, v0, Landroidx/lifecycle/t;->c:Landroidx/lifecycle/m;

    sget-object v1, Landroidx/lifecycle/m;->b:Landroidx/lifecycle/m;

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lcom/bumptech/glide/manager/i;->d()V

    return-void

    :cond_0
    sget-object v1, Landroidx/lifecycle/m;->s:Landroidx/lifecycle/m;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_1

    invoke-interface {p1}, Lcom/bumptech/glide/manager/i;->k()V

    return-void

    :cond_1
    invoke-interface {p1}, Lcom/bumptech/glide/manager/i;->f()V

    return-void
.end method

.method public final h(Lcom/bumptech/glide/manager/i;)V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/manager/LifecycleLifecycle;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/r;)V
    .locals 4
    .annotation runtime Landroidx/lifecycle/y;
        value = .enum Landroidx/lifecycle/l;->ON_DESTROY:Landroidx/lifecycle/l;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/manager/LifecycleLifecycle;->b:Ljava/util/HashSet;

    invoke-static {v0}, Ld2/n;->e(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/bumptech/glide/manager/i;

    invoke-interface {v3}, Lcom/bumptech/glide/manager/i;->d()V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroidx/lifecycle/r;->h()Landroidx/lifecycle/t;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/t;->f(Landroidx/lifecycle/q;)V

    return-void
.end method

.method public onStart(Landroidx/lifecycle/r;)V
    .locals 3
    .annotation runtime Landroidx/lifecycle/y;
        value = .enum Landroidx/lifecycle/l;->ON_START:Landroidx/lifecycle/l;
    .end annotation

    iget-object p1, p0, Lcom/bumptech/glide/manager/LifecycleLifecycle;->b:Ljava/util/HashSet;

    invoke-static {p1}, Ld2/n;->e(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/bumptech/glide/manager/i;

    invoke-interface {v2}, Lcom/bumptech/glide/manager/i;->k()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStop(Landroidx/lifecycle/r;)V
    .locals 3
    .annotation runtime Landroidx/lifecycle/y;
        value = .enum Landroidx/lifecycle/l;->ON_STOP:Landroidx/lifecycle/l;
    .end annotation

    iget-object p1, p0, Lcom/bumptech/glide/manager/LifecycleLifecycle;->b:Ljava/util/HashSet;

    invoke-static {p1}, Ld2/n;->e(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/bumptech/glide/manager/i;

    invoke-interface {v2}, Lcom/bumptech/glide/manager/i;->f()V

    goto :goto_0

    :cond_0
    return-void
.end method
