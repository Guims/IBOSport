.class Landroidx/fragment/app/FragmentManager$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/p;


# instance fields
.field public final synthetic b:Landroidx/fragment/app/O;

.field public final synthetic q:Landroidx/lifecycle/t;

.field public final synthetic r:Landroidx/fragment/app/K;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/K;Landroidx/fragment/app/O;Landroidx/lifecycle/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/FragmentManager$6;->r:Landroidx/fragment/app/K;

    iput-object p2, p0, Landroidx/fragment/app/FragmentManager$6;->b:Landroidx/fragment/app/O;

    iput-object p3, p0, Landroidx/fragment/app/FragmentManager$6;->q:Landroidx/lifecycle/t;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/r;Landroidx/lifecycle/l;)V
    .locals 4

    iget-object p1, p0, Landroidx/fragment/app/FragmentManager$6;->r:Landroidx/fragment/app/K;

    iget-object v0, p1, Landroidx/fragment/app/K;->k:Ljava/util/Map;

    sget-object v1, Landroidx/lifecycle/l;->ON_START:Landroidx/lifecycle/l;

    const-string v2, "requestKey"

    if-ne p2, v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v3, p0, Landroidx/fragment/app/FragmentManager$6;->b:Landroidx/fragment/app/O;

    invoke-interface {v3, v1}, Landroidx/fragment/app/O;->h(Landroid/os/Bundle;)V

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/K;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    const-string v1, "Clearing fragment result with key requestKey"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Landroidx/lifecycle/l;->ON_DESTROY:Landroidx/lifecycle/l;

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Landroidx/fragment/app/FragmentManager$6;->q:Landroidx/lifecycle/t;

    invoke-virtual {p2, p0}, Landroidx/lifecycle/t;->f(Landroidx/lifecycle/q;)V

    iget-object p1, p1, Landroidx/fragment/app/K;->l:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
