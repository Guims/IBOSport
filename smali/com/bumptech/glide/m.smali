.class public final Lcom/bumptech/glide/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ComponentCallbacks2;
.implements Lcom/bumptech/glide/manager/i;


# static fields
.field public static final z:LZ1/e;


# instance fields
.field public final b:Lcom/bumptech/glide/b;

.field public final q:Landroid/content/Context;

.field public final r:Lcom/bumptech/glide/manager/h;

.field public final s:Lcom/bumptech/glide/manager/r;

.field public final t:Lcom/bumptech/glide/manager/n;

.field public final u:Lcom/bumptech/glide/manager/s;

.field public final v:LA4/f;

.field public final w:Lcom/bumptech/glide/manager/b;

.field public final x:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final y:LZ1/e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LZ1/e;

    invoke-direct {v0}, LZ1/a;-><init>()V

    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, LZ1/a;->c(Ljava/lang/Class;)LZ1/a;

    move-result-object v0

    check-cast v0, LZ1/e;

    const/4 v1, 0x1

    iput-boolean v1, v0, LZ1/a;->C:Z

    sput-object v0, Lcom/bumptech/glide/m;->z:LZ1/e;

    new-instance v0, LZ1/e;

    invoke-direct {v0}, LZ1/a;-><init>()V

    const-class v2, LV1/b;

    invoke-virtual {v0, v2}, LZ1/a;->c(Ljava/lang/Class;)LZ1/a;

    move-result-object v0

    check-cast v0, LZ1/e;

    iput-boolean v1, v0, LZ1/a;->C:Z

    new-instance v0, LZ1/e;

    invoke-direct {v0}, LZ1/a;-><init>()V

    sget-object v1, LK1/m;->c:LK1/m;

    invoke-virtual {v0, v1}, LZ1/a;->d(LK1/m;)LZ1/a;

    move-result-object v0

    check-cast v0, LZ1/e;

    invoke-virtual {v0}, LZ1/a;->k()LZ1/a;

    move-result-object v0

    check-cast v0, LZ1/e;

    invoke-virtual {v0}, LZ1/a;->p()LZ1/a;

    move-result-object v0

    check-cast v0, LZ1/e;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/manager/h;Lcom/bumptech/glide/manager/n;Landroid/content/Context;)V
    .locals 6

    new-instance v0, Lcom/bumptech/glide/manager/r;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/manager/r;-><init>(IB)V

    iget-object v1, p1, Lcom/bumptech/glide/b;->u:Lu2/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lcom/bumptech/glide/manager/s;

    invoke-direct {v3}, Lcom/bumptech/glide/manager/s;-><init>()V

    iput-object v3, p0, Lcom/bumptech/glide/m;->u:Lcom/bumptech/glide/manager/s;

    new-instance v3, LA4/f;

    const/16 v4, 0x14

    invoke-direct {v3, v4, p0}, LA4/f;-><init>(ILjava/lang/Object;)V

    iput-object v3, p0, Lcom/bumptech/glide/m;->v:LA4/f;

    iput-object p1, p0, Lcom/bumptech/glide/m;->b:Lcom/bumptech/glide/b;

    iput-object p2, p0, Lcom/bumptech/glide/m;->r:Lcom/bumptech/glide/manager/h;

    iput-object p3, p0, Lcom/bumptech/glide/m;->t:Lcom/bumptech/glide/manager/n;

    iput-object v0, p0, Lcom/bumptech/glide/m;->s:Lcom/bumptech/glide/manager/r;

    iput-object p4, p0, Lcom/bumptech/glide/m;->q:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    new-instance p4, Lcom/bumptech/glide/l;

    invoke-direct {p4, p0, v0}, Lcom/bumptech/glide/l;-><init>(Lcom/bumptech/glide/m;Lcom/bumptech/glide/manager/r;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "ConnectivityMonitor"

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p3, v1}, LH3/u0;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x1

    if-nez v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/4 v5, 0x3

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v1, :cond_1

    const-string v5, "ACCESS_NETWORK_STATE permission granted, registering connectivity monitor"

    goto :goto_1

    :cond_1
    const-string v5, "ACCESS_NETWORK_STATE permission missing, cannot register connectivity monitor"

    :goto_1
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v1, :cond_3

    new-instance v0, Lcom/bumptech/glide/manager/c;

    invoke-direct {v0, p3, p4}, Lcom/bumptech/glide/manager/c;-><init>(Landroid/content/Context;Lcom/bumptech/glide/l;)V

    goto :goto_2

    :cond_3
    new-instance v0, Lcom/bumptech/glide/manager/l;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :goto_2
    iput-object v0, p0, Lcom/bumptech/glide/m;->w:Lcom/bumptech/glide/manager/b;

    iget-object p3, p1, Lcom/bumptech/glide/b;->v:Ljava/util/ArrayList;

    monitor-enter p3

    :try_start_0
    iget-object p4, p1, Lcom/bumptech/glide/b;->v:Ljava/util/ArrayList;

    invoke-virtual {p4, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_9

    iget-object p4, p1, Lcom/bumptech/glide/b;->v:Ljava/util/ArrayList;

    invoke-virtual {p4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    sget-object p3, Ld2/n;->a:[C

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    if-ne p3, p4, :cond_4

    move v2, v4

    :cond_4
    if-nez v2, :cond_5

    invoke-static {}, Ld2/n;->f()Landroid/os/Handler;

    move-result-object p3

    invoke-virtual {p3, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_5
    invoke-interface {p2, p0}, Lcom/bumptech/glide/manager/h;->c(Lcom/bumptech/glide/manager/i;)V

    :goto_3
    invoke-interface {p2, v0}, Lcom/bumptech/glide/manager/h;->c(Lcom/bumptech/glide/manager/i;)V

    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p3, p1, Lcom/bumptech/glide/b;->r:Lcom/bumptech/glide/e;

    iget-object p3, p3, Lcom/bumptech/glide/e;->e:Ljava/util/List;

    invoke-direct {p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/bumptech/glide/m;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p1, p1, Lcom/bumptech/glide/b;->r:Lcom/bumptech/glide/e;

    monitor-enter p1

    :try_start_1
    iget-object p2, p1, Lcom/bumptech/glide/e;->j:LZ1/e;

    if-nez p2, :cond_6

    iget-object p2, p1, Lcom/bumptech/glide/e;->d:Lx2/f;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, LZ1/e;

    invoke-direct {p2}, LZ1/a;-><init>()V

    iput-boolean v4, p2, LZ1/a;->C:Z

    iput-object p2, p1, Lcom/bumptech/glide/e;->j:LZ1/e;

    goto :goto_4

    :catchall_0
    move-exception p2

    goto :goto_6

    :cond_6
    :goto_4
    iget-object p2, p1, Lcom/bumptech/glide/e;->j:LZ1/e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p1

    monitor-enter p0

    :try_start_2
    invoke-virtual {p2}, LZ1/a;->b()LZ1/a;

    move-result-object p1

    check-cast p1, LZ1/e;

    iget-boolean p2, p1, LZ1/a;->C:Z

    if-eqz p2, :cond_8

    iget-boolean p2, p1, LZ1/a;->E:Z

    if-eqz p2, :cond_7

    goto :goto_5

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "You cannot auto lock an already locked options object, try clone() first"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_5
    iput-boolean v4, p1, LZ1/a;->E:Z

    iput-boolean v4, p1, LZ1/a;->C:Z

    iput-object p1, p0, Lcom/bumptech/glide/m;->y:LZ1/e;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :goto_6
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p2

    :catchall_2
    move-exception p1

    goto :goto_7

    :cond_9
    :try_start_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot register already registered manager"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_7
    monitor-exit p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1
.end method


# virtual methods
.method public final declared-synchronized d()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/m;->u:Lcom/bumptech/glide/manager/s;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/s;->d()V

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/m;->u:Lcom/bumptech/glide/manager/s;

    iget-object v0, v0, Lcom/bumptech/glide/manager/s;->b:Ljava/util/Set;

    invoke-static {v0}, Ld2/n;->e(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, La2/c;

    invoke-virtual {p0, v4}, Lcom/bumptech/glide/m;->l(La2/c;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/m;->u:Lcom/bumptech/glide/manager/s;

    iget-object v0, v0, Lcom/bumptech/glide/manager/s;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    iget-object v0, p0, Lcom/bumptech/glide/m;->s:Lcom/bumptech/glide/manager/r;

    iget-object v1, v0, Lcom/bumptech/glide/manager/r;->r:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-static {v1}, Ld2/n;->e(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_1
    if-ge v2, v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    check-cast v4, LZ1/c;

    invoke-virtual {v0, v4}, Lcom/bumptech/glide/manager/r;->b(LZ1/c;)Z

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lcom/bumptech/glide/manager/r;->s:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/bumptech/glide/m;->r:Lcom/bumptech/glide/manager/h;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/manager/h;->h(Lcom/bumptech/glide/manager/i;)V

    iget-object v0, p0, Lcom/bumptech/glide/m;->r:Lcom/bumptech/glide/manager/h;

    iget-object v1, p0, Lcom/bumptech/glide/m;->w:Lcom/bumptech/glide/manager/b;

    invoke-interface {v0, v1}, Lcom/bumptech/glide/manager/h;->h(Lcom/bumptech/glide/manager/i;)V

    iget-object v0, p0, Lcom/bumptech/glide/m;->v:LA4/f;

    invoke-static {}, Ld2/n;->f()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/bumptech/glide/m;->b:Lcom/bumptech/glide/b;

    iget-object v1, v0, Lcom/bumptech/glide/b;->v:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v2, v0, Lcom/bumptech/glide/b;->v:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, v0, Lcom/bumptech/glide/b;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_2
    :try_start_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot unregister not yet registered manager"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_4

    :goto_3
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0

    :goto_4
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0
.end method

.method public final declared-synchronized f()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/m;->u:Lcom/bumptech/glide/manager/s;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/s;->f()V

    invoke-virtual {p0}, Lcom/bumptech/glide/m;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized k()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/bumptech/glide/m;->p()V

    iget-object v0, p0, Lcom/bumptech/glide/m;->u:Lcom/bumptech/glide/manager/s;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/s;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final l(La2/c;)V
    .locals 6

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/m;->q(La2/c;)Z

    move-result v0

    invoke-interface {p1}, La2/c;->i()LZ1/c;

    move-result-object v1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bumptech/glide/m;->b:Lcom/bumptech/glide/b;

    iget-object v2, v0, Lcom/bumptech/glide/b;->v:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v0, v0, Lcom/bumptech/glide/b;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_1
    if-ge v4, v3, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/bumptech/glide/m;

    invoke-virtual {v5, p1}, Lcom/bumptech/glide/m;->q(La2/c;)Z

    move-result v5

    if-eqz v5, :cond_1

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    invoke-interface {p1, v0}, La2/c;->a(LZ1/c;)V

    invoke-interface {v1}, LZ1/c;->clear()V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public final m(Ljava/lang/Integer;)Lcom/bumptech/glide/k;
    .locals 6

    new-instance v0, Lcom/bumptech/glide/k;

    iget-object v1, p0, Lcom/bumptech/glide/m;->b:Lcom/bumptech/glide/b;

    iget-object v2, p0, Lcom/bumptech/glide/m;->q:Landroid/content/Context;

    const-class v3, Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v1, p0, v3, v2}, Lcom/bumptech/glide/k;-><init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/m;Ljava/lang/Class;Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/k;->B(Ljava/lang/Object;)Lcom/bumptech/glide/k;

    move-result-object p1

    iget-object v0, v0, Lcom/bumptech/glide/k;->H:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {p1, v1}, LZ1/a;->q(Landroid/content/res/Resources$Theme;)LZ1/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/k;

    sget-object v1, Lc2/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lc2/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LI1/f;

    if-nez v3, :cond_2

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Cannot resolve info for"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AppVersionSignature"

    invoke-static {v5, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_0

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    new-instance v4, Lc2/d;

    invoke-direct {v4, v3}, Lc2/d;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LI1/f;

    if-nez v1, :cond_1

    move-object v3, v4

    goto :goto_2

    :cond_1
    move-object v3, v1

    :cond_2
    :goto_2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    new-instance v1, Lc2/a;

    invoke-direct {v1, v0, v3}, Lc2/a;-><init>(ILI1/f;)V

    invoke-virtual {p1, v1}, LZ1/a;->o(LI1/f;)LZ1/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/k;

    return-object p1
.end method

.method public final n(Ljava/lang/String;)Lcom/bumptech/glide/k;
    .locals 4

    new-instance v0, Lcom/bumptech/glide/k;

    iget-object v1, p0, Lcom/bumptech/glide/m;->b:Lcom/bumptech/glide/b;

    iget-object v2, p0, Lcom/bumptech/glide/m;->q:Landroid/content/Context;

    const-class v3, Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v1, p0, v3, v2}, Lcom/bumptech/glide/k;-><init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/m;Ljava/lang/Class;Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/k;->B(Ljava/lang/Object;)Lcom/bumptech/glide/k;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized o()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/m;->s:Lcom/bumptech/glide/manager/r;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bumptech/glide/manager/r;->q:Z

    iget-object v1, v0, Lcom/bumptech/glide/manager/r;->r:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-static {v1}, Ld2/n;->e(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, LZ1/c;

    invoke-interface {v4}, LZ1/c;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, LZ1/c;->pause()V

    iget-object v5, v0, Lcom/bumptech/glide/manager/r;->s:Ljava/lang/Object;

    check-cast v5, Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public final onLowMemory()V
    .locals 0

    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized p()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/m;->s:Lcom/bumptech/glide/manager/r;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/bumptech/glide/manager/r;->q:Z

    iget-object v2, v0, Lcom/bumptech/glide/manager/r;->r:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    invoke-static {v2}, Ld2/n;->e(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    :cond_0
    :goto_0
    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    check-cast v4, LZ1/c;

    invoke-interface {v4}, LZ1/c;->j()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v4}, LZ1/c;->isRunning()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v4}, LZ1/c;->i()V

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/bumptech/glide/manager/r;->s:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized q(La2/c;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, La2/c;->i()LZ1/c;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/bumptech/glide/m;->s:Lcom/bumptech/glide/manager/r;

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/manager/r;->b(LZ1/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/m;->u:Lcom/bumptech/glide/manager/s;

    iget-object v0, v0, Lcom/bumptech/glide/manager/s;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-interface {p1, v0}, La2/c;->a(LZ1/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{tracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/m;->s:Lcom/bumptech/glide/manager/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", treeNode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/m;->t:Lcom/bumptech/glide/manager/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
