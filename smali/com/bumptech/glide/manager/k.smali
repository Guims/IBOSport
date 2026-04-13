.class public final Lcom/bumptech/glide/manager/k;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Lu2/j;


# direct methods
.method public constructor <init>(Lu2/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/k;->a:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/bumptech/glide/manager/k;->b:Lu2/j;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/bumptech/glide/b;Landroidx/lifecycle/t;Landroidx/fragment/app/K;Z)Lcom/bumptech/glide/m;
    .locals 3

    invoke-static {}, Ld2/n;->a()V

    invoke-static {}, Ld2/n;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/manager/k;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/m;

    if-nez v1, :cond_1

    new-instance v1, Lcom/bumptech/glide/manager/LifecycleLifecycle;

    invoke-direct {v1, p3}, Lcom/bumptech/glide/manager/LifecycleLifecycle;-><init>(Landroidx/lifecycle/t;)V

    new-instance v2, Lh3/e;

    invoke-direct {v2, p0, p4}, Lh3/e;-><init>(Lcom/bumptech/glide/manager/k;Landroidx/fragment/app/K;)V

    iget-object p4, p0, Lcom/bumptech/glide/manager/k;->b:Lu2/j;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p4, Lcom/bumptech/glide/m;

    invoke-direct {p4, p2, v1, v2, p1}, Lcom/bumptech/glide/m;-><init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/manager/h;Lcom/bumptech/glide/manager/n;Landroid/content/Context;)V

    invoke-virtual {v0, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/bumptech/glide/manager/j;

    invoke-direct {p1, p0, p3}, Lcom/bumptech/glide/manager/j;-><init>(Lcom/bumptech/glide/manager/k;Landroidx/lifecycle/t;)V

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/manager/LifecycleLifecycle;->c(Lcom/bumptech/glide/manager/i;)V

    if-eqz p5, :cond_0

    invoke-virtual {p4}, Lcom/bumptech/glide/m;->k()V

    :cond_0
    return-object p4

    :cond_1
    return-object v1
.end method
