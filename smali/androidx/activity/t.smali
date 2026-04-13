.class public final Landroidx/activity/t;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final b:LT4/e;

.field public c:Landroidx/fragment/app/B;

.field public final d:Landroid/window/OnBackInvokedCallback;

.field public e:Landroid/window/OnBackInvokedDispatcher;

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/t;->a:Ljava/lang/Runnable;

    new-instance p1, LT4/e;

    invoke-direct {p1}, LT4/e;-><init>()V

    iput-object p1, p0, Landroidx/activity/t;->b:LT4/e;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p1, v0, :cond_1

    const/16 v0, 0x22

    if-lt p1, v0, :cond_0

    new-instance p1, Landroidx/activity/l;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroidx/activity/l;-><init>(Landroidx/activity/t;I)V

    new-instance v0, Landroidx/activity/l;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/activity/l;-><init>(Landroidx/activity/t;I)V

    new-instance v1, Landroidx/activity/m;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/activity/m;-><init>(Landroidx/activity/t;I)V

    new-instance v2, Landroidx/activity/m;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Landroidx/activity/m;-><init>(Landroidx/activity/t;I)V

    sget-object v3, Landroidx/activity/q;->a:Landroidx/activity/q;

    invoke-virtual {v3, p1, v0, v1, v2}, Landroidx/activity/q;->a(Ld5/l;Ld5/l;Ld5/a;Ld5/a;)Landroid/window/OnBackInvokedCallback;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Landroidx/activity/m;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Landroidx/activity/m;-><init>(Landroidx/activity/t;I)V

    sget-object v0, Landroidx/activity/o;->a:Landroidx/activity/o;

    invoke-virtual {v0, p1}, Landroidx/activity/o;->a(Ld5/a;)Landroid/window/OnBackInvokedCallback;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroidx/activity/t;->d:Landroid/window/OnBackInvokedCallback;

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/r;Landroidx/fragment/app/B;)V
    .locals 10

    const-string v0, "onBackPressedCallback"

    invoke-static {p2, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroidx/lifecycle/r;->h()Landroidx/lifecycle/t;

    move-result-object p1

    iget-object v0, p1, Landroidx/lifecycle/t;->c:Landroidx/lifecycle/m;

    sget-object v1, Landroidx/lifecycle/m;->b:Landroidx/lifecycle/m;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;

    invoke-direct {v0, p0, p1, p2}, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;-><init>(Landroidx/activity/t;Landroidx/lifecycle/t;Landroidx/fragment/app/B;)V

    iget-object p1, p2, Landroidx/fragment/app/B;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/activity/t;->d()V

    new-instance v1, Landroidx/activity/s;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x0

    const-class v4, Landroidx/activity/t;

    const-string v5, "updateEnabledCallbacks"

    const-string v6, "updateEnabledCallbacks()V"

    const/4 v7, 0x0

    move-object v3, p0

    invoke-direct/range {v1 .. v9}, Landroidx/activity/s;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    iput-object v1, p2, Landroidx/fragment/app/B;->c:Le5/f;

    return-void
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Landroidx/activity/t;->b:LT4/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, LT4/e;->r:I

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/fragment/app/B;

    iget-boolean v3, v3, Landroidx/fragment/app/B;->a:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Landroidx/fragment/app/B;

    iput-object v2, p0, Landroidx/activity/t;->c:Landroidx/fragment/app/B;

    if-eqz v1, :cond_3

    iget-object v0, v1, Landroidx/fragment/app/B;->d:Landroidx/fragment/app/K;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/K;->y(Z)Z

    iget-object v1, v0, Landroidx/fragment/app/K;->h:Landroidx/fragment/app/B;

    iget-boolean v1, v1, Landroidx/fragment/app/B;->a:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/K;->P()Z

    return-void

    :cond_2
    iget-object v0, v0, Landroidx/fragment/app/K;->g:Landroidx/activity/t;

    invoke-virtual {v0}, Landroidx/activity/t;->b()V

    return-void

    :cond_3
    iget-object v0, p0, Landroidx/activity/t;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final c(Z)V
    .locals 5

    iget-object v0, p0, Landroidx/activity/t;->e:Landroid/window/OnBackInvokedDispatcher;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/activity/t;->d:Landroid/window/OnBackInvokedCallback;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    sget-object v3, Landroidx/activity/o;->a:Landroidx/activity/o;

    if-eqz p1, :cond_0

    iget-boolean v4, p0, Landroidx/activity/t;->f:Z

    if-nez v4, :cond_0

    invoke-virtual {v3, v0, v2, v1}, Landroidx/activity/o;->b(Ljava/lang/Object;ILjava/lang/Object;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/activity/t;->f:Z

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-boolean p1, p0, Landroidx/activity/t;->f:Z

    if-eqz p1, :cond_1

    invoke-virtual {v3, v0, v1}, Landroidx/activity/o;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-boolean v2, p0, Landroidx/activity/t;->f:Z

    :cond_1
    return-void
.end method

.method public final d()V
    .locals 4

    iget-boolean v0, p0, Landroidx/activity/t;->g:Z

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/activity/t;->b:LT4/e;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/B;

    iget-boolean v3, v3, Landroidx/fragment/app/B;->a:Z

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_2
    :goto_0
    iput-boolean v1, p0, Landroidx/activity/t;->g:Z

    if-eq v1, v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v0, v2, :cond_3

    invoke-virtual {p0, v1}, Landroidx/activity/t;->c(Z)V

    :cond_3
    return-void
.end method
