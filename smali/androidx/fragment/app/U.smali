.class public final Landroidx/fragment/app/U;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/h;
.implements Lw1/d;
.implements Landroidx/lifecycle/M;


# instance fields
.field public final b:Landroidx/fragment/app/t;

.field public final q:Landroidx/lifecycle/L;

.field public r:Landroidx/lifecycle/t;

.field public s:Lcom/bumptech/glide/manager/r;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/t;Landroidx/lifecycle/L;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/U;->r:Landroidx/lifecycle/t;

    iput-object v0, p0, Landroidx/fragment/app/U;->s:Lcom/bumptech/glide/manager/r;

    iput-object p1, p0, Landroidx/fragment/app/U;->b:Landroidx/fragment/app/t;

    iput-object p2, p0, Landroidx/fragment/app/U;->q:Landroidx/lifecycle/L;

    return-void
.end method


# virtual methods
.method public final a()Lg0/b;
    .locals 5

    iget-object v0, p0, Landroidx/fragment/app/U;->b:Landroidx/fragment/app/t;

    invoke-virtual {v0}, Landroidx/fragment/app/t;->J()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    :goto_0
    instance-of v2, v1, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_1

    instance-of v2, v1, Landroid/app/Application;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/app/Application;

    goto :goto_1

    :cond_0
    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    new-instance v2, Lg0/b;

    invoke-direct {v2}, Lg0/b;-><init>()V

    iget-object v3, v2, LL1/a;->a:Ljava/lang/Object;

    check-cast v3, Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_2

    sget-object v4, Landroidx/lifecycle/K;->a:Landroidx/lifecycle/K;

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object v1, Landroidx/lifecycle/G;->a:Landroidx/lifecycle/K;

    invoke-interface {v3, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Landroidx/lifecycle/G;->b:Landroidx/lifecycle/K;

    invoke-interface {v3, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Landroidx/fragment/app/t;->u:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    sget-object v1, Landroidx/lifecycle/G;->c:Landroidx/lifecycle/K;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v2
.end method

.method public final b()Landroidx/lifecycle/L;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/U;->e()V

    iget-object v0, p0, Landroidx/fragment/app/U;->q:Landroidx/lifecycle/L;

    return-object v0
.end method

.method public final c(Landroidx/lifecycle/l;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/U;->r:Landroidx/lifecycle/t;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/t;->d(Landroidx/lifecycle/l;)V

    return-void
.end method

.method public final d()Lk/r;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/U;->e()V

    iget-object v0, p0, Landroidx/fragment/app/U;->s:Lcom/bumptech/glide/manager/r;

    iget-object v0, v0, Lcom/bumptech/glide/manager/r;->s:Ljava/lang/Object;

    check-cast v0, Lk/r;

    return-object v0
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/U;->r:Landroidx/lifecycle/t;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/t;

    invoke-direct {v0, p0}, Landroidx/lifecycle/t;-><init>(Landroidx/lifecycle/r;)V

    iput-object v0, p0, Landroidx/fragment/app/U;->r:Landroidx/lifecycle/t;

    new-instance v0, Lcom/bumptech/glide/manager/r;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/manager/r;-><init>(Lw1/d;)V

    iput-object v0, p0, Landroidx/fragment/app/U;->s:Lcom/bumptech/glide/manager/r;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/r;->h()V

    invoke-static {p0}, Landroidx/lifecycle/G;->a(Lw1/d;)V

    :cond_0
    return-void
.end method

.method public final h()Landroidx/lifecycle/t;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/U;->e()V

    iget-object v0, p0, Landroidx/fragment/app/U;->r:Landroidx/lifecycle/t;

    return-object v0
.end method
