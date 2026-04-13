.class public abstract Landroidx/fragment/app/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroidx/lifecycle/r;
.implements Landroidx/lifecycle/M;
.implements Landroidx/lifecycle/h;
.implements Lw1/d;


# static fields
.field public static final i0:Ljava/lang/Object;


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:I

.field public G:Landroidx/fragment/app/K;

.field public H:Landroidx/fragment/app/v;

.field public I:Landroidx/fragment/app/K;

.field public J:Landroidx/fragment/app/t;

.field public K:I

.field public L:I

.field public M:Ljava/lang/String;

.field public N:Z

.field public O:Z

.field public P:Z

.field public final Q:Z

.field public R:Z

.field public S:Landroid/view/ViewGroup;

.field public T:Landroid/view/View;

.field public U:Z

.field public V:Z

.field public W:Landroidx/fragment/app/r;

.field public X:Z

.field public Y:Z

.field public Z:Ljava/lang/String;

.field public a0:Landroidx/lifecycle/m;

.field public b:I

.field public b0:Landroidx/lifecycle/t;

.field public c0:Landroidx/fragment/app/U;

.field public final d0:Landroidx/lifecycle/x;

.field public e0:Lcom/bumptech/glide/manager/r;

.field public final f0:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final g0:Ljava/util/ArrayList;

.field public final h0:Landroidx/fragment/app/o;

.field public q:Landroid/os/Bundle;

.field public r:Landroid/util/SparseArray;

.field public s:Landroid/os/Bundle;

.field public t:Ljava/lang/String;

.field public u:Landroid/os/Bundle;

.field public v:Landroidx/fragment/app/t;

.field public w:Ljava/lang/String;

.field public x:I

.field public y:Ljava/lang/Boolean;

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/fragment/app/t;->i0:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/fragment/app/t;->b:I

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/t;->t:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/t;->w:Ljava/lang/String;

    iput-object v0, p0, Landroidx/fragment/app/t;->y:Ljava/lang/Boolean;

    new-instance v0, Landroidx/fragment/app/K;

    invoke-direct {v0}, Landroidx/fragment/app/K;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/t;->I:Landroidx/fragment/app/K;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/t;->Q:Z

    iput-boolean v0, p0, Landroidx/fragment/app/t;->V:Z

    sget-object v0, Landroidx/lifecycle/m;->t:Landroidx/lifecycle/m;

    iput-object v0, p0, Landroidx/fragment/app/t;->a0:Landroidx/lifecycle/m;

    new-instance v0, Landroidx/lifecycle/x;

    invoke-direct {v0}, Landroidx/lifecycle/x;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/t;->d0:Landroidx/lifecycle/x;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/t;->f0:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/t;->g0:Ljava/util/ArrayList;

    new-instance v0, Landroidx/fragment/app/o;

    invoke-direct {v0, p0}, Landroidx/fragment/app/o;-><init>(Landroidx/fragment/app/t;)V

    iput-object v0, p0, Landroidx/fragment/app/t;->h0:Landroidx/fragment/app/o;

    invoke-virtual {p0}, Landroidx/fragment/app/t;->n()V

    return-void
.end method


# virtual methods
.method public A(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object p1, p0, Landroidx/fragment/app/t;->H:Landroidx/fragment/app/v;

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/fragment/app/v;->v:Lf/i;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object v0, p0, Landroidx/fragment/app/t;->I:Landroidx/fragment/app/K;

    iget-object v0, v0, Landroidx/fragment/app/K;->f:Landroidx/fragment/app/y;

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public B()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/t;->R:Z

    return-void
.end method

.method public C()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/t;->R:Z

    return-void
.end method

.method public D(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public E()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/t;->R:Z

    return-void
.end method

.method public F()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/t;->R:Z

    return-void
.end method

.method public G(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/t;->R:Z

    return-void
.end method

.method public H(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 2

    iget-object p3, p0, Landroidx/fragment/app/t;->I:Landroidx/fragment/app/K;

    invoke-virtual {p3}, Landroidx/fragment/app/K;->N()V

    const/4 p3, 0x1

    iput-boolean p3, p0, Landroidx/fragment/app/t;->E:Z

    new-instance v0, Landroidx/fragment/app/U;

    invoke-virtual {p0}, Landroidx/fragment/app/t;->b()Landroidx/lifecycle/L;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/U;-><init>(Landroidx/fragment/app/t;Landroidx/lifecycle/L;)V

    iput-object v0, p0, Landroidx/fragment/app/t;->c0:Landroidx/fragment/app/U;

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/t;->w(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/t;->T:Landroid/view/View;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/fragment/app/t;->c0:Landroidx/fragment/app/U;

    invoke-virtual {p1}, Landroidx/fragment/app/U;->e()V

    iget-object p1, p0, Landroidx/fragment/app/t;->T:Landroid/view/View;

    iget-object v0, p0, Landroidx/fragment/app/t;->c0:Landroidx/fragment/app/U;

    invoke-static {p1, v0}, Landroidx/lifecycle/G;->b(Landroid/view/View;Landroidx/lifecycle/r;)V

    iget-object p1, p0, Landroidx/fragment/app/t;->T:Landroid/view/View;

    iget-object v0, p0, Landroidx/fragment/app/t;->c0:Landroidx/fragment/app/U;

    const-string v1, "<this>"

    invoke-static {p1, v1}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f0b042e

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/fragment/app/t;->T:Landroid/view/View;

    iget-object v0, p0, Landroidx/fragment/app/t;->c0:Landroidx/fragment/app/U;

    invoke-static {p1, v0}, Lcom/bumptech/glide/c;->n(Landroid/view/View;Lw1/d;)V

    iget-object p1, p0, Landroidx/fragment/app/t;->d0:Landroidx/lifecycle/x;

    iget-object v0, p0, Landroidx/fragment/app/t;->c0:Landroidx/fragment/app/U;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "setValue"

    invoke-static {v1}, Landroidx/lifecycle/x;->a(Ljava/lang/String;)V

    iget v1, p1, Landroidx/lifecycle/x;->g:I

    add-int/2addr v1, p3

    iput v1, p1, Landroidx/lifecycle/x;->g:I

    iput-object v0, p1, Landroidx/lifecycle/x;->e:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/x;->c(Landroidx/lifecycle/w;)V

    return-void

    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/t;->c0:Landroidx/fragment/app/U;

    iget-object p1, p1, Landroidx/fragment/app/U;->r:Landroidx/lifecycle/t;

    if-nez p1, :cond_1

    iput-object p2, p0, Landroidx/fragment/app/t;->c0:Landroidx/fragment/app/U;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Called getViewLifecycleOwner() but onCreateView() returned null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final I()Lf/i;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/t;->g()Lf/i;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not attached to an activity."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final J()Landroid/content/Context;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not attached to a context."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final K()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/t;->T:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not return a View from onCreateView() or this was called before onCreateView()."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final L(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "android:support:fragments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/t;->I:Landroidx/fragment/app/K;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/K;->U(Landroid/os/Parcelable;)V

    iget-object p1, p0, Landroidx/fragment/app/t;->I:Landroidx/fragment/app/K;

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/fragment/app/K;->F:Z

    iput-boolean v0, p1, Landroidx/fragment/app/K;->G:Z

    iget-object v1, p1, Landroidx/fragment/app/K;->M:Landroidx/fragment/app/M;

    iput-boolean v0, v1, Landroidx/fragment/app/M;->h:Z

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/K;->t(I)V

    :cond_0
    return-void
.end method

.method public final M(IIII)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/t;->W:Landroidx/fragment/app/r;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/t;->f()Landroidx/fragment/app/r;

    move-result-object v0

    iput p1, v0, Landroidx/fragment/app/r;->b:I

    invoke-virtual {p0}, Landroidx/fragment/app/t;->f()Landroidx/fragment/app/r;

    move-result-object p1

    iput p2, p1, Landroidx/fragment/app/r;->c:I

    invoke-virtual {p0}, Landroidx/fragment/app/t;->f()Landroidx/fragment/app/r;

    move-result-object p1

    iput p3, p1, Landroidx/fragment/app/r;->d:I

    invoke-virtual {p0}, Landroidx/fragment/app/t;->f()Landroidx/fragment/app/r;

    move-result-object p1

    iput p4, p1, Landroidx/fragment/app/r;->e:I

    return-void
.end method

.method public final N(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/t;->G:Landroidx/fragment/app/K;

    if-eqz v0, :cond_2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/K;->L()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Fragment already added and state has been saved"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    iput-object p1, p0, Landroidx/fragment/app/t;->u:Landroid/os/Bundle;

    return-void
.end method

.method public final O(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/t;->H:Landroidx/fragment/app/v;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iget-object v0, v0, Landroidx/fragment/app/v;->s:Lf/i;

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not attached to Activity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a()Lg0/b;
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/t;->J()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Application;

    goto :goto_1

    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    const/4 v1, 0x3

    invoke-static {v1}, Landroidx/fragment/app/K;->G(I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not find Application instance from Context "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/t;->J()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", you will not be able to use AndroidViewModel with the default ViewModelProvider.Factory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v1, Lg0/b;

    invoke-direct {v1}, Lg0/b;-><init>()V

    iget-object v2, v1, LL1/a;->a:Ljava/lang/Object;

    check-cast v2, Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_3

    sget-object v3, Landroidx/lifecycle/K;->a:Landroidx/lifecycle/K;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object v0, Landroidx/lifecycle/G;->a:Landroidx/lifecycle/K;

    invoke-interface {v2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroidx/lifecycle/G;->b:Landroidx/lifecycle/K;

    invoke-interface {v2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/fragment/app/t;->u:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    sget-object v3, Landroidx/lifecycle/G;->c:Landroidx/lifecycle/K;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object v1
.end method

.method public final b()Landroidx/lifecycle/L;
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/t;->G:Landroidx/fragment/app/K;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/t;->k()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/t;->G:Landroidx/fragment/app/K;

    iget-object v0, v0, Landroidx/fragment/app/K;->M:Landroidx/fragment/app/M;

    iget-object v0, v0, Landroidx/fragment/app/M;->e:Ljava/util/HashMap;

    iget-object v1, p0, Landroidx/fragment/app/t;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/L;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/lifecycle/L;

    invoke-direct {v1}, Landroidx/lifecycle/L;-><init>()V

    iget-object v2, p0, Landroidx/fragment/app/t;->t:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t access ViewModels from detached fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()LC2/b;
    .locals 1

    new-instance v0, Landroidx/fragment/app/p;

    invoke-direct {v0, p0}, Landroidx/fragment/app/p;-><init>(Landroidx/fragment/app/t;)V

    return-object v0
.end method

.method public final d()Lk/r;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/t;->e0:Lcom/bumptech/glide/manager/r;

    iget-object v0, v0, Lcom/bumptech/glide/manager/r;->s:Ljava/lang/Object;

    check-cast v0, Lk/r;

    return-object v0
.end method

.method public final f()Landroidx/fragment/app/r;
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/t;->W:Landroidx/fragment/app/r;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/fragment/app/r;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Landroidx/fragment/app/t;->i0:Ljava/lang/Object;

    iput-object v1, v0, Landroidx/fragment/app/r;->g:Ljava/lang/Object;

    iput-object v1, v0, Landroidx/fragment/app/r;->h:Ljava/lang/Object;

    iput-object v1, v0, Landroidx/fragment/app/r;->i:Ljava/lang/Object;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroidx/fragment/app/r;->j:F

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/fragment/app/r;->k:Landroid/view/View;

    iput-object v0, p0, Landroidx/fragment/app/t;->W:Landroidx/fragment/app/r;

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/t;->W:Landroidx/fragment/app/r;

    return-object v0
.end method

.method public final g()Lf/i;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/t;->H:Landroidx/fragment/app/v;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/v;->r:Lf/i;

    return-object v0
.end method

.method public final h()Landroidx/lifecycle/t;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/t;->b0:Landroidx/lifecycle/t;

    return-object v0
.end method

.method public final i()Landroidx/fragment/app/K;
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/t;->H:Landroidx/fragment/app/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/t;->I:Landroidx/fragment/app/K;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has not been attached yet."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/t;->H:Landroidx/fragment/app/v;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/v;->s:Lf/i;

    return-object v0
.end method

.method public final k()I
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/t;->a0:Landroidx/lifecycle/m;

    sget-object v1, Landroidx/lifecycle/m;->q:Landroidx/lifecycle/m;

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Landroidx/fragment/app/t;->J:Landroidx/fragment/app/t;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p0, Landroidx/fragment/app/t;->J:Landroidx/fragment/app/t;

    invoke-virtual {v1}, Landroidx/fragment/app/t;->k()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public final l()Landroidx/fragment/app/K;
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/t;->G:Landroidx/fragment/app/K;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not associated with a fragment manager."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final m()Landroid/content/res/Resources;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/t;->J()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public final n()V
    .locals 3

    new-instance v0, Landroidx/lifecycle/t;

    invoke-direct {v0, p0}, Landroidx/lifecycle/t;-><init>(Landroidx/lifecycle/r;)V

    iput-object v0, p0, Landroidx/fragment/app/t;->b0:Landroidx/lifecycle/t;

    new-instance v0, Lcom/bumptech/glide/manager/r;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/manager/r;-><init>(Lw1/d;)V

    iput-object v0, p0, Landroidx/fragment/app/t;->e0:Lcom/bumptech/glide/manager/r;

    iget-object v0, p0, Landroidx/fragment/app/t;->g0:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/t;->h0:Landroidx/fragment/app/o;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Landroidx/fragment/app/t;->b:I

    if-ltz v2, :cond_0

    invoke-virtual {v1}, Landroidx/fragment/app/o;->a()V

    return-void

    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final o()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/t;->n()V

    iget-object v0, p0, Landroidx/fragment/app/t;->t:Ljava/lang/String;

    iput-object v0, p0, Landroidx/fragment/app/t;->Z:Ljava/lang/String;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/t;->t:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/t;->z:Z

    iput-boolean v0, p0, Landroidx/fragment/app/t;->A:Z

    iput-boolean v0, p0, Landroidx/fragment/app/t;->B:Z

    iput-boolean v0, p0, Landroidx/fragment/app/t;->C:Z

    iput-boolean v0, p0, Landroidx/fragment/app/t;->D:Z

    iput v0, p0, Landroidx/fragment/app/t;->F:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/fragment/app/t;->G:Landroidx/fragment/app/K;

    new-instance v2, Landroidx/fragment/app/K;

    invoke-direct {v2}, Landroidx/fragment/app/K;-><init>()V

    iput-object v2, p0, Landroidx/fragment/app/t;->I:Landroidx/fragment/app/K;

    iput-object v1, p0, Landroidx/fragment/app/t;->H:Landroidx/fragment/app/v;

    iput v0, p0, Landroidx/fragment/app/t;->K:I

    iput v0, p0, Landroidx/fragment/app/t;->L:I

    iput-object v1, p0, Landroidx/fragment/app/t;->M:Ljava/lang/String;

    iput-boolean v0, p0, Landroidx/fragment/app/t;->N:Z

    iput-boolean v0, p0, Landroidx/fragment/app/t;->O:Z

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/t;->R:Z

    return-void
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/t;->I()Lf/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public final onLowMemory()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/t;->R:Z

    return-void
.end method

.method public final p()Z
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/t;->H:Landroidx/fragment/app/v;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/t;->z:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final q()Z
    .locals 3

    iget-boolean v0, p0, Landroidx/fragment/app/t;->N:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/fragment/app/t;->G:Landroidx/fragment/app/K;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Landroidx/fragment/app/t;->J:Landroidx/fragment/app/t;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroidx/fragment/app/t;->q()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    return v1

    :cond_2
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public final r()Z
    .locals 1

    iget v0, p0, Landroidx/fragment/app/t;->F:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public s()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/t;->R:Z

    return-void
.end method

.method public t(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/K;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " received the following in onActivityResult(): requestCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " resultCode: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " data: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FragmentManager"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "} ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/t;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/fragment/app/t;->K:I

    if-eqz v1, :cond_0

    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/fragment/app/t;->K:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/t;->M:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/t;->M:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Landroid/content/Context;)V
    .locals 1

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/t;->R:Z

    iget-object v0, p0, Landroidx/fragment/app/t;->H:Landroidx/fragment/app/v;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/v;->r:Lf/i;

    :goto_0
    if-eqz v0, :cond_1

    iput-boolean p1, p0, Landroidx/fragment/app/t;->R:Z

    :cond_1
    return-void
.end method

.method public v(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/t;->R:Z

    invoke-virtual {p0, p1}, Landroidx/fragment/app/t;->L(Landroid/os/Bundle;)V

    iget-object p1, p0, Landroidx/fragment/app/t;->I:Landroidx/fragment/app/K;

    iget v1, p1, Landroidx/fragment/app/K;->t:I

    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p1, Landroidx/fragment/app/K;->F:Z

    iput-boolean v1, p1, Landroidx/fragment/app/K;->G:Z

    iget-object v2, p1, Landroidx/fragment/app/K;->M:Landroidx/fragment/app/M;

    iput-boolean v1, v2, Landroidx/fragment/app/M;->h:Z

    invoke-virtual {p1, v0}, Landroidx/fragment/app/K;->t(I)V

    return-void
.end method

.method public w(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public x()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/t;->R:Z

    return-void
.end method

.method public y()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/t;->R:Z

    return-void
.end method

.method public z()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/t;->R:Z

    return-void
.end method
