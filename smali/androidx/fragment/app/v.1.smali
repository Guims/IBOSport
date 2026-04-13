.class public final Landroidx/fragment/app/v;
.super LC2/b;

# interfaces
.implements Landroidx/lifecycle/M;
.implements Landroidx/activity/u;
.implements Lw1/d;
.implements Landroidx/fragment/app/N;


# instance fields
.field public final r:Lf/i;

.field public final s:Lf/i;

.field public final t:Landroid/os/Handler;

.field public final u:Landroidx/fragment/app/K;

.field public final synthetic v:Lf/i;


# direct methods
.method public constructor <init>(Lf/i;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/v;->v:Lf/i;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Landroidx/fragment/app/K;

    invoke-direct {v1}, Landroidx/fragment/app/K;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/v;->u:Landroidx/fragment/app/K;

    iput-object p1, p0, Landroidx/fragment/app/v;->r:Lf/i;

    iput-object p1, p0, Landroidx/fragment/app/v;->s:Lf/i;

    iput-object v0, p0, Landroidx/fragment/app/v;->t:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final D(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/v;->v:Lf/i;

    invoke-virtual {v0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final E()Z
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/v;->v:Lf/i;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final a()V
    .locals 0

    return-void
.end method

.method public final b()Landroidx/lifecycle/L;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/v;->v:Lf/i;

    invoke-virtual {v0}, Landroidx/activity/j;->b()Landroidx/lifecycle/L;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lk/r;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/v;->v:Lf/i;

    iget-object v0, v0, Landroidx/activity/j;->t:Lcom/bumptech/glide/manager/r;

    iget-object v0, v0, Lcom/bumptech/glide/manager/r;->s:Ljava/lang/Object;

    check-cast v0, Lk/r;

    return-object v0
.end method

.method public final h()Landroidx/lifecycle/t;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/v;->v:Lf/i;

    iget-object v0, v0, Lf/i;->I:Landroidx/lifecycle/t;

    return-object v0
.end method
