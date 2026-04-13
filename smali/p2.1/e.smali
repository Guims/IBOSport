.class public final synthetic Lp2/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LM3/c;

.field public final synthetic q:Lj2/j;

.field public final synthetic r:I

.field public final synthetic s:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(LM3/c;Lj2/j;ILjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp2/e;->b:LM3/c;

    iput-object p2, p0, Lp2/e;->q:Lj2/j;

    iput p3, p0, Lp2/e;->r:I

    iput-object p4, p0, Lp2/e;->s:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lp2/e;->q:Lj2/j;

    iget v1, p0, Lp2/e;->r:I

    iget-object v2, p0, Lp2/e;->s:Ljava/lang/Runnable;

    iget-object v3, p0, Lp2/e;->b:LM3/c;

    iget-object v4, v3, LM3/c;->f:Ljava/lang/Object;

    check-cast v4, Lr2/c;

    :try_start_0
    iget-object v5, v3, LM3/c;->c:Ljava/lang/Object;

    check-cast v5, Lq2/d;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lp2/f;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v5}, Lp2/f;-><init>(ILjava/lang/Object;)V

    move-object v5, v4

    check-cast v5, Lq2/h;

    invoke-virtual {v5, v6}, Lq2/h;->s(Lr2/b;)Ljava/lang/Object;

    iget-object v5, v3, LM3/c;->a:Ljava/lang/Object;

    check-cast v5, Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v0, v1}, LM3/c;->c(Lj2/j;I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    new-instance v5, LE4/b;

    invoke-direct {v5, v3, v1, v0}, LE4/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    check-cast v4, Lq2/h;

    invoke-virtual {v4, v5}, Lq2/h;->s(Lr2/b;)Ljava/lang/Object;
    :try_end_0
    .catch Lr2/a; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    return-void

    :catch_0
    :try_start_1
    iget-object v3, v3, LM3/c;->d:Ljava/lang/Object;

    check-cast v3, LJ/l;

    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v1, v4}, LJ/l;->a0(Lj2/j;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    return-void

    :goto_1
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    throw v0
.end method
