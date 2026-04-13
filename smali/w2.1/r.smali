.class public final Lw2/r;
.super Lw2/n;


# instance fields
.field public final b:Lcom/bumptech/glide/manager/r;

.field public final c:LL2/i;

.field public final d:Lv0/n;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/manager/r;LL2/i;Lv0/n;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lw2/n;-><init>(I)V

    iput-object p2, p0, Lw2/r;->c:LL2/i;

    iput-object p1, p0, Lw2/r;->b:Lcom/bumptech/glide/manager/r;

    iput-object p3, p0, Lw2/r;->d:Lv0/n;

    iget-boolean p1, p1, Lcom/bumptech/glide/manager/r;->q:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Best-effort write calls cannot pass methods that should auto-resolve missing features."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Lw2/j;)Z
    .locals 0

    iget-object p1, p0, Lw2/r;->b:Lcom/bumptech/glide/manager/r;

    iget-boolean p1, p1, Lcom/bumptech/glide/manager/r;->q:Z

    return p1
.end method

.method public final b(Lw2/j;)[Lu2/c;
    .locals 0

    iget-object p1, p0, Lw2/r;->b:Lcom/bumptech/glide/manager/r;

    iget-object p1, p1, Lcom/bumptech/glide/manager/r;->r:Ljava/lang/Object;

    check-cast p1, [Lu2/c;

    return-object p1
.end method

.method public final c(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lw2/r;->d:Lv0/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/google/android/gms/common/api/Status;->r:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    new-instance v0, Lv2/f;

    invoke-direct {v0, p1}, Lr0/q;-><init>(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lr0/q;

    invoke-direct {v0, p1}, Lr0/q;-><init>(Lcom/google/android/gms/common/api/Status;)V

    :goto_0
    iget-object p1, p0, Lw2/r;->c:LL2/i;

    invoke-virtual {p1, v0}, LL2/i;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public final d(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lw2/r;->c:LL2/i;

    invoke-virtual {v0, p1}, LL2/i;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public final e(Lw2/j;)V
    .locals 2

    iget-object v0, p0, Lw2/r;->c:LL2/i;

    :try_start_0
    iget-object v1, p0, Lw2/r;->b:Lcom/bumptech/glide/manager/r;

    iget-object p1, p1, Lw2/j;->c:Lv2/a;

    invoke-virtual {v1, p1, v0}, Lcom/bumptech/glide/manager/r;->d(Lv2/a;LL2/i;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_2

    :goto_0
    invoke-virtual {v0, p1}, LL2/i;->a(Ljava/lang/Exception;)V

    return-void

    :goto_1
    invoke-static {p1}, Lw2/n;->g(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lw2/r;->c(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :goto_2
    throw p1
.end method

.method public final f(Lp5/p;Z)V
    .locals 4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iget-object v0, p1, Lp5/p;->r:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lw2/r;->c:LL2/i;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, v1, LL2/i;->a:LL2/r;

    new-instance v0, Lp5/p;

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lp5/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, LL2/j;->a:LL2/q;

    new-instance v1, LL2/m;

    invoke-direct {v1, p1, v0}, LL2/m;-><init>(Ljava/util/concurrent/Executor;LL2/d;)V

    iget-object p1, p2, LL2/r;->b:Lcom/bumptech/glide/manager/r;

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/manager/r;->k(LL2/n;)V

    invoke-virtual {p2}, LL2/r;->n()V

    return-void
.end method
