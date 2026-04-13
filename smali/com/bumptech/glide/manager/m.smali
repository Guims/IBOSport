.class public final Lcom/bumptech/glide/manager/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final s:Lu2/j;


# instance fields
.field public volatile b:Lcom/bumptech/glide/m;

.field public final q:Lcom/bumptech/glide/manager/g;

.field public final r:Lcom/bumptech/glide/manager/k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lu2/j;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lu2/j;-><init>(I)V

    sput-object v0, Lcom/bumptech/glide/manager/m;->s:Lu2/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/manager/k;

    sget-object v1, Lcom/bumptech/glide/manager/m;->s:Lu2/j;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/manager/k;-><init>(Lu2/j;)V

    iput-object v0, p0, Lcom/bumptech/glide/manager/m;->r:Lcom/bumptech/glide/manager/k;

    sget-boolean v0, LR1/x;->f:Z

    if-eqz v0, :cond_1

    sget-boolean v0, LR1/x;->e:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bumptech/glide/manager/f;

    invoke-direct {v0}, Lcom/bumptech/glide/manager/f;-><init>()V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Lx2/f;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lx2/f;-><init>(I)V

    :goto_1
    iput-object v0, p0, Lcom/bumptech/glide/manager/m;->q:Lcom/bumptech/glide/manager/g;

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/app/Activity;

    return-object p0

    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/manager/m;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final b(Landroid/content/Context;)Lcom/bumptech/glide/m;
    .locals 7

    if-eqz p1, :cond_9

    sget-object v0, Ld2/n;->a:[C

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_6

    instance-of v0, p1, Landroid/app/Application;

    if-nez v0, :cond_6

    instance-of v0, p1, Lf/i;

    if-eqz v0, :cond_5

    move-object v2, p1

    check-cast v2, Lf/i;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-ne p1, v0, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-nez p1, :cond_1

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/m;->b(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/bumptech/glide/manager/m;->q:Lcom/bumptech/glide/manager/g;

    invoke-interface {p1, v2}, Lcom/bumptech/glide/manager/g;->f(Lf/i;)V

    invoke-static {v2}, Lcom/bumptech/glide/manager/m;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move v6, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v6, v3

    :goto_2
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/b;->a(Landroid/content/Context;)Lcom/bumptech/glide/b;

    move-result-object v3

    iget-object v1, p0, Lcom/bumptech/glide/manager/m;->r:Lcom/bumptech/glide/manager/k;

    iget-object v4, v2, Landroidx/activity/j;->s:Landroidx/lifecycle/t;

    invoke-virtual {v2}, Lf/i;->o()Landroidx/fragment/app/K;

    move-result-object v5

    invoke-virtual/range {v1 .. v6}, Lcom/bumptech/glide/manager/k;->a(Landroid/content/Context;Lcom/bumptech/glide/b;Landroidx/lifecycle/t;Landroidx/fragment/app/K;Z)Lcom/bumptech/glide/m;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot start a load for a destroyed activity"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/m;->b(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object p1

    return-object p1

    :cond_6
    iget-object v0, p0, Lcom/bumptech/glide/manager/m;->b:Lcom/bumptech/glide/m;

    if-nez v0, :cond_8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/manager/m;->b:Lcom/bumptech/glide/m;

    if-nez v0, :cond_7

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/b;->a(Landroid/content/Context;)Lcom/bumptech/glide/b;

    move-result-object v0

    new-instance v1, Lh3/e;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Lh3/e;-><init>(I)V

    new-instance v2, LW3/e;

    const/16 v3, 0x13

    invoke-direct {v2, v3}, LW3/e;-><init>(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v3, Lcom/bumptech/glide/m;

    invoke-direct {v3, v0, v1, v2, p1}, Lcom/bumptech/glide/m;-><init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/manager/h;Lcom/bumptech/glide/manager/n;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/bumptech/glide/manager/m;->b:Lcom/bumptech/glide/m;

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_4

    :cond_7
    :goto_3
    monitor-exit p0

    goto :goto_5

    :goto_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_8
    :goto_5
    iget-object p1, p0, Lcom/bumptech/glide/manager/m;->b:Lcom/bumptech/glide/m;

    return-object p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot start a load on a null Context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
