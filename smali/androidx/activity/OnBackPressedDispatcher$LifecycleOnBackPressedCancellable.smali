.class final Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/p;
.implements Landroidx/activity/c;


# instance fields
.field public final b:Landroidx/lifecycle/t;

.field public final q:Landroidx/fragment/app/B;

.field public r:Landroidx/activity/r;

.field public final synthetic s:Landroidx/activity/t;


# direct methods
.method public constructor <init>(Landroidx/activity/t;Landroidx/lifecycle/t;Landroidx/fragment/app/B;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "onBackPressedCallback"

    invoke-static {p3, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->s:Landroidx/activity/t;

    iput-object p2, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->b:Landroidx/lifecycle/t;

    iput-object p3, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->q:Landroidx/fragment/app/B;

    invoke-virtual {p2, p0}, Landroidx/lifecycle/t;->a(Landroidx/lifecycle/q;)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/r;Landroidx/lifecycle/l;)V
    .locals 9

    sget-object p1, Landroidx/lifecycle/l;->ON_START:Landroidx/lifecycle/l;

    if-ne p2, p1, :cond_0

    iget-object v2, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->s:Landroidx/activity/t;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "onBackPressedCallback"

    iget-object p2, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->q:Landroidx/fragment/app/B;

    invoke-static {p2, p1}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, v2, Landroidx/activity/t;->b:LT4/e;

    invoke-virtual {p1, p2}, LT4/e;->addLast(Ljava/lang/Object;)V

    new-instance p1, Landroidx/activity/r;

    invoke-direct {p1, v2, p2}, Landroidx/activity/r;-><init>(Landroidx/activity/t;Landroidx/fragment/app/B;)V

    iget-object v0, p2, Landroidx/fragment/app/B;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/activity/t;->d()V

    new-instance v0, Landroidx/activity/s;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v1, 0x0

    const-class v3, Landroidx/activity/t;

    const-string v4, "updateEnabledCallbacks"

    const-string v5, "updateEnabledCallbacks()V"

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Landroidx/activity/s;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    iput-object v0, p2, Landroidx/fragment/app/B;->c:Le5/f;

    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->r:Landroidx/activity/r;

    return-void

    :cond_0
    sget-object p1, Landroidx/lifecycle/l;->ON_STOP:Landroidx/lifecycle/l;

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->r:Landroidx/activity/r;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/activity/r;->cancel()V

    return-void

    :cond_1
    sget-object p1, Landroidx/lifecycle/l;->ON_DESTROY:Landroidx/lifecycle/l;

    if-ne p2, p1, :cond_2

    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->cancel()V

    :cond_2
    return-void
.end method

.method public final cancel()V
    .locals 1

    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->b:Landroidx/lifecycle/t;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/t;->f(Landroidx/lifecycle/q;)V

    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->q:Landroidx/fragment/app/B;

    iget-object v0, v0, Landroidx/fragment/app/B;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->r:Landroidx/activity/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/activity/r;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->r:Landroidx/activity/r;

    return-void
.end method
