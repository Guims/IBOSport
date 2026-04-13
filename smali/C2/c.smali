.class public final LC2/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/emoji2/text/i;
.implements Ld2/g;


# instance fields
.field public b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    iput-object p1, p0, LC2/c;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La/a;)V
    .locals 8

    new-instance v7, Landroidx/emoji2/text/a;

    const/4 v0, 0x0

    const-string v1, "EmojiCompatInitializer"

    invoke-direct {v7, v1, v0}, Landroidx/emoji2/text/a;-><init>(Ljava/lang/String;I)V

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0xf

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    new-instance v1, LG0/n;

    const/4 v2, 0x3

    invoke-direct {v1, p0, p1, v0, v2}, LG0/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()Lj2/k;
    .locals 13

    iget-object v0, p0, LC2/c;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v1, Lj2/k;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sget-object v2, Lj2/n;->a:Lu2/j;

    invoke-static {v2}, Ll2/a;->a(Ll2/b;)LR4/a;

    move-result-object v2

    iput-object v2, v1, Lj2/k;->b:LR4/a;

    new-instance v2, Ld/a;

    invoke-direct {v2, v0}, Ld/a;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lj2/k;->q:Ld/a;

    new-instance v0, Lcom/bumptech/glide/f;

    const/16 v3, 0x10

    invoke-direct {v0, v3, v2}, Lcom/bumptech/glide/f;-><init>(ILjava/lang/Object;)V

    new-instance v3, LY1/c;

    const/16 v4, 0x15

    invoke-direct {v3, v2, v4, v0}, LY1/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {v3}, Ll2/a;->a(Ll2/b;)LR4/a;

    move-result-object v0

    iput-object v0, v1, Lj2/k;->r:LR4/a;

    iget-object v0, v1, Lj2/k;->q:Ld/a;

    new-instance v2, Lk4/l;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v3}, Lk4/l;-><init>(LR4/a;I)V

    iput-object v2, v1, Lj2/k;->s:Lk4/l;

    new-instance v2, Lk4/l;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lk4/l;-><init>(LR4/a;I)V

    invoke-static {v2}, Ll2/a;->a(Ll2/b;)LR4/a;

    move-result-object v0

    iget-object v2, v1, Lj2/k;->s:Lk4/l;

    new-instance v3, Lg4/F;

    const/4 v4, 0x4

    invoke-direct {v3, v2, v0, v4}, Lg4/F;-><init>(LR4/a;LR4/a;I)V

    invoke-static {v3}, Ll2/a;->a(Ll2/b;)LR4/a;

    move-result-object v7

    iput-object v7, v1, Lj2/k;->t:LR4/a;

    new-instance v0, Lh3/e;

    const/16 v2, 0x1b

    invoke-direct {v0, v2}, Lh3/e;-><init>(I)V

    iget-object v2, v1, Lj2/k;->q:Ld/a;

    new-instance v8, LJ/l;

    const/16 v3, 0x1b

    invoke-direct {v8, v2, v7, v0, v3}, LJ/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v6, v1, Lj2/k;->b:LR4/a;

    move-object v9, v7

    iget-object v7, v1, Lj2/k;->r:LR4/a;

    new-instance v5, LG/c;

    const/4 v11, 0x5

    move-object v10, v9

    invoke-direct/range {v5 .. v11}, LG/c;-><init>(LR4/a;LR4/a;LR4/a;LR4/a;LR4/a;I)V

    move-object v0, v5

    new-instance v5, LK3/c;

    move-object v11, v9

    move-object v12, v9

    move-object v9, v8

    move-object v8, v10

    move-object v10, v6

    move-object v6, v2

    invoke-direct/range {v5 .. v12}, LK3/c;-><init>(LR4/a;LR4/a;LR4/a;LJ/l;LR4/a;LR4/a;LR4/a;)V

    move-object v2, v9

    move-object v9, v8

    move-object v8, v2

    move-object v2, v5

    move-object v6, v10

    new-instance v5, LK1/c;

    const/16 v10, 0x12

    move-object v7, v9

    invoke-direct/range {v5 .. v10}, LK1/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v3, LJ/l;

    const/16 v4, 0x17

    invoke-direct {v3, v0, v2, v5, v4}, LJ/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v3}, Ll2/a;->a(Ll2/b;)LR4/a;

    move-result-object v0

    iput-object v0, v1, Lj2/k;->u:LR4/a;

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must be set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, LC2/c;->b:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method
