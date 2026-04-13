.class public final synthetic LE1/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public q:Ljava/lang/Object;

.field public final synthetic r:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/i;Ljava/util/ArrayList;Landroidx/fragment/app/X;)V
    .locals 0

    const/16 p1, 0x10

    iput p1, p0, LE1/k;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LE1/k;->q:Ljava/lang/Object;

    iput-object p3, p0, LE1/k;->r:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;Landroid/view/View;Z)V
    .locals 0

    const/16 p3, 0xf

    iput p3, p0, LE1/k;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE1/k;->r:Ljava/lang/Object;

    iput-object p2, p0, LE1/k;->q:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, LE1/k;->b:I

    iput-object p1, p0, LE1/k;->q:Ljava/lang/Object;

    iput-object p3, p0, LE1/k;->r:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 0

    iput p3, p0, LE1/k;->b:I

    iput-object p1, p0, LE1/k;->r:Ljava/lang/Object;

    iput-object p2, p0, LE1/k;->q:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lz3/i;)V
    .locals 1

    const/16 v0, 0x18

    iput v0, p0, LE1/k;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE1/k;->r:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v2, p0, LE1/k;->r:Ljava/lang/Object;

    check-cast v2, Lz3/i;

    iget-object v2, v2, Lz3/i;->q:Ljava/util/ArrayDeque;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x1

    if-nez v0, :cond_1

    :try_start_1
    iget-object v0, p0, LE1/k;->r:Ljava/lang/Object;

    check-cast v0, Lz3/i;

    iget v4, v0, Lz3/i;->r:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_0
    :try_start_2
    iget-wide v6, v0, Lz3/i;->s:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v0, Lz3/i;->s:J

    iput v5, v0, Lz3/i;->r:I

    move v0, v3

    :cond_1
    iget-object v4, p0, LE1/k;->r:Ljava/lang/Object;

    check-cast v4, Lz3/i;

    iget-object v4, v4, Lz3/i;->q:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    iput-object v4, p0, LE1/k;->q:Ljava/lang/Object;

    if-nez v4, :cond_3

    iget-object v0, p0, LE1/k;->r:Ljava/lang/Object;

    check-cast v0, Lz3/i;

    iput v3, v0, Lz3/i;->r:I

    monitor-exit v2

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    return-void

    :cond_3
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    or-int/2addr v1, v2

    const/4 v2, 0x0

    :try_start_4
    iget-object v3, p0, LE1/k;->q:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_3
    :try_start_5
    iput-object v2, p0, LE1/k;->q:Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v3

    :try_start_6
    sget-object v4, Lz3/i;->u:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception while executing runnable "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, LE1/k;->q:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_3

    :goto_4
    :try_start_7
    iput-object v2, p0, LE1/k;->q:Ljava/lang/Object;

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_5
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :goto_6
    if-eqz v1, :cond_4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_4
    throw v0
.end method

.method public final run()V
    .locals 7

    iget v0, p0, LE1/k;->b:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    :try_start_0
    invoke-virtual {p0}, LE1/k;->a()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, LE1/k;->r:Ljava/lang/Object;

    check-cast v1, Lz3/i;

    iget-object v1, v1, Lz3/i;->q:Ljava/util/ArrayDeque;

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, LE1/k;->r:Ljava/lang/Object;

    check-cast v2, Lz3/i;

    iput v3, v2, Lz3/i;->r:I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :pswitch_0
    iget-object v0, p0, LE1/k;->r:Ljava/lang/Object;

    iget-object v1, p0, LE1/k;->q:Ljava/lang/Object;

    :try_start_3
    sget-object v2, Ly/d;->d:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v4, "AppCompat recreation"

    filled-new-array {v0, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_0
    sget-object v2, Ly/d;->e:Ljava/lang/reflect/Method;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :goto_0
    const-string v1, "ActivityRecreator"

    const-string v2, "Exception while invoking performStopActivity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/RuntimeException;

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to stop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    throw v0

    :cond_2
    :goto_2
    return-void

    :pswitch_1
    iget-object v0, p0, LE1/k;->q:Ljava/lang/Object;

    check-cast v0, Landroid/app/Application;

    iget-object v1, p0, LE1/k;->r:Ljava/lang/Object;

    check-cast v1, Ly/c;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void

    :pswitch_2
    iget-object v0, p0, LE1/k;->q:Ljava/lang/Object;

    check-cast v0, Ly/c;

    iget-object v1, p0, LE1/k;->r:Ljava/lang/Object;

    iput-object v1, v0, Ly/c;->b:Ljava/lang/Object;

    return-void

    :pswitch_3
    iget-object v0, p0, LE1/k;->q:Ljava/lang/Object;

    check-cast v0, Lu2/a;

    iget-object v2, p0, LE1/k;->r:Ljava/lang/Object;

    check-cast v2, LE1/E;

    iget-object v4, v2, LE1/E;->b:Ljava/lang/Object;

    check-cast v4, Lv2/a;

    iget-object v5, v2, LE1/E;->f:Ljava/lang/Object;

    check-cast v5, Lw2/d;

    iget-object v5, v5, Lw2/d;->y:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v6, v2, LE1/E;->c:Ljava/lang/Object;

    check-cast v6, Lw2/a;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lw2/j;

    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    iget v6, v0, Lu2/a;->q:I

    if-nez v6, :cond_5

    iput-boolean v3, v2, LE1/E;->a:Z

    invoke-interface {v4}, Lv2/a;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, v2, LE1/E;->a:Z

    if-eqz v0, :cond_6

    iget-object v0, v2, LE1/E;->d:Ljava/lang/Object;

    check-cast v0, Lx2/d;

    if-eqz v0, :cond_6

    iget-object v1, v2, LE1/E;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-interface {v4, v0, v1}, Lv2/a;->l(Lx2/d;Ljava/util/Set;)V

    goto :goto_3

    :cond_4
    :try_start_4
    invoke-interface {v4}, Lv2/a;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Lv2/a;->l(Lx2/d;Ljava/util/Set;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    const-string v2, "GoogleApiManager"

    const-string v3, "Failed to get service from broker. "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "Failed to get service from broker."

    invoke-interface {v4, v0}, Lv2/a;->b(Ljava/lang/String;)V

    new-instance v0, Lu2/a;

    const/16 v2, 0xa

    invoke-direct {v0, v2}, Lu2/a;-><init>(I)V

    invoke-virtual {v5, v0, v1}, Lw2/j;->o(Lu2/a;Ljava/lang/RuntimeException;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v5, v0, v1}, Lw2/j;->o(Lu2/a;Ljava/lang/RuntimeException;)V

    :cond_6
    :goto_3
    return-void

    :pswitch_4
    iget-object v0, p0, LE1/k;->r:Ljava/lang/Object;

    check-cast v0, Lr5/i;

    iget-object v1, v0, Lr5/i;->r:Lm5/s;

    const/4 v2, 0x0

    :cond_7
    :try_start_5
    iget-object v4, p0, LE1/k;->q:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v4

    sget-object v5, LV4/j;->b:LV4/j;

    invoke-static {v5, v4}, Lm5/w;->e(LV4/i;Ljava/lang/Throwable;)V

    :goto_4
    invoke-virtual {v0}, Lr5/i;->z()Ljava/lang/Runnable;

    move-result-object v4

    if-nez v4, :cond_8

    goto :goto_5

    :cond_8
    iput-object v4, p0, LE1/k;->q:Ljava/lang/Object;

    add-int/2addr v2, v3

    const/16 v4, 0x10

    if-lt v2, v4, :cond_7

    invoke-virtual {v1}, Lm5/s;->y()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v1, v0, p0}, Lm5/s;->x(LV4/i;Ljava/lang/Runnable;)V

    :goto_5
    return-void

    :pswitch_5
    iget-object v0, p0, LE1/k;->r:Ljava/lang/Object;

    check-cast v0, Lio/realm/w;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lio/realm/exceptions/RealmException;

    const-string v1, "Async transaction failed"

    iget-object v2, p0, LE1/k;->q:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_6
    iget-object v0, p0, LE1/k;->r:Ljava/lang/Object;

    check-cast v0, Lio/realm/w;

    iget-object v1, v0, Lio/realm/w;->s:LA3/d;

    iget-object v0, v0, Lio/realm/w;->u:Lio/realm/y;

    invoke-virtual {v0}, Lio/realm/d;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v1}, LA3/d;->n()V

    goto :goto_7

    :cond_9
    iget-object v2, v0, Lio/realm/d;->t:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v2}, Lio/realm/internal/OsSharedRealm;->getVersionID()Lio/realm/internal/t;

    move-result-object v2

    iget-object v3, p0, LE1/k;->q:Ljava/lang/Object;

    check-cast v3, Lio/realm/internal/t;

    iget-wide v4, v2, Lio/realm/internal/t;->b:J

    iget-wide v2, v3, Lio/realm/internal/t;->b:J

    cmp-long v2, v4, v2

    if-lez v2, :cond_a

    goto :goto_6

    :cond_a
    if-gez v2, :cond_b

    iget-object v0, v0, Lio/realm/d;->t:Lio/realm/internal/OsSharedRealm;

    iget-object v0, v0, Lio/realm/internal/OsSharedRealm;->realmNotifier:Lio/realm/internal/RealmNotifier;

    new-instance v1, LA4/f;

    const/16 v2, 0x1b

    invoke-direct {v1, v2, p0}, LA4/f;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lio/realm/internal/RealmNotifier;->addTransactionCallback(Ljava/lang/Runnable;)V

    goto :goto_7

    :cond_b
    :goto_6
    invoke-virtual {v1}, LA3/d;->n()V

    :goto_7
    return-void

    :pswitch_7
    iget-object v0, p0, LE1/k;->q:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, LE1/k;->r:Ljava/lang/Object;

    check-cast v1, Landroidx/fragment/app/X;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, v1, Landroidx/fragment/app/X;->c:Landroidx/fragment/app/t;

    iget-object v0, v0, Landroidx/fragment/app/t;->T:Landroid/view/View;

    iget v1, v1, Landroidx/fragment/app/X;->a:I

    invoke-static {v0, v1}, LB/f;->a(Landroid/view/View;I)V

    :cond_c
    return-void

    :pswitch_8
    iget-object v0, p0, LE1/k;->r:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:LS/e;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, LS/e;->f()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, LE1/k;->q:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    sget-object v1, LJ/U;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_d
    return-void

    :pswitch_9
    iget-object v0, p0, LE1/k;->r:Ljava/lang/Object;

    check-cast v0, LN1/b;

    iget-boolean v1, v0, LN1/b;->d:Z

    if-eqz v1, :cond_e

    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :cond_e
    :try_start_6
    iget-object v1, p0, LE1/k;->q:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_8

    :catchall_3
    move-exception v1

    iget-object v0, v0, LN1/b;->c:LN1/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "GlideExecutor"

    const/4 v2, 0x6

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "Request threw uncaught throwable"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_f
    :goto_8
    return-void

    :pswitch_a
    iget-object v0, p0, LE1/k;->q:Ljava/lang/Object;

    check-cast v0, LL2/r;

    :try_start_7
    iget-object v1, p0, LE1/k;->r:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, LL2/r;->j(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_b

    :catchall_4
    move-exception v1

    goto :goto_9

    :catch_3
    move-exception v1

    goto :goto_a

    :goto_9
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v2}, LL2/r;->i(Ljava/lang/Exception;)V

    goto :goto_b

    :goto_a
    invoke-virtual {v0, v1}, LL2/r;->i(Ljava/lang/Exception;)V

    :goto_b
    return-void

    :pswitch_b
    iget-object v0, p0, LE1/k;->r:Ljava/lang/Object;

    check-cast v0, LL2/m;

    :try_start_8
    iget-object v1, v0, LL2/m;->r:Ljava/lang/Object;

    check-cast v1, LL2/h;

    iget-object v2, p0, LE1/k;->q:Ljava/lang/Object;

    check-cast v2, LL2/r;

    invoke-virtual {v2}, LL2/r;->e()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, LL2/h;->k(Ljava/lang/Object;)LL2/r;

    move-result-object v1
    :try_end_8
    .catch LL2/g; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    sget-object v2, LL2/j;->b:LL2/p;

    invoke-virtual {v1, v2, v0}, LL2/r;->b(Ljava/util/concurrent/Executor;LL2/f;)V

    invoke-virtual {v1, v2, v0}, LL2/r;->a(Ljava/util/concurrent/Executor;LL2/e;)V

    new-instance v3, LL2/m;

    invoke-direct {v3, v2, v0}, LL2/m;-><init>(Ljava/util/concurrent/Executor;LL2/c;)V

    iget-object v0, v1, LL2/r;->b:Lcom/bumptech/glide/manager/r;

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/manager/r;->k(LL2/n;)V

    invoke-virtual {v1}, LL2/r;->n()V

    goto :goto_e

    :catch_4
    move-exception v1

    goto :goto_c

    :catch_5
    move-exception v1

    goto :goto_d

    :goto_c
    invoke-virtual {v0, v1}, LL2/m;->q(Ljava/lang/Exception;)V

    goto :goto_e

    :catch_6
    invoke-virtual {v0}, LL2/m;->i()V

    goto :goto_e

    :goto_d
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Exception;

    if-eqz v2, :cond_10

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/Exception;

    invoke-virtual {v0, v1}, LL2/m;->q(Ljava/lang/Exception;)V

    goto :goto_e

    :cond_10
    invoke-virtual {v0, v1}, LL2/m;->q(Ljava/lang/Exception;)V

    :goto_e
    return-void

    :pswitch_c
    iget-object v0, p0, LE1/k;->r:Ljava/lang/Object;

    check-cast v0, LL2/m;

    iget-object v0, v0, LL2/m;->r:Ljava/lang/Object;

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, LE1/k;->r:Ljava/lang/Object;

    check-cast v1, LL2/m;

    iget-object v1, v1, LL2/m;->s:Ljava/lang/Object;

    check-cast v1, LL2/f;

    iget-object v2, p0, LE1/k;->q:Ljava/lang/Object;

    check-cast v2, LL2/r;

    invoke-virtual {v2}, LL2/r;->e()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, LL2/f;->d(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_5
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw v1

    :pswitch_d
    iget-object v0, p0, LE1/k;->r:Ljava/lang/Object;

    check-cast v0, LL2/m;

    iget-object v0, v0, LL2/m;->r:Ljava/lang/Object;

    monitor-enter v0

    :try_start_a
    iget-object v1, p0, LE1/k;->r:Ljava/lang/Object;

    check-cast v1, LL2/m;

    iget-object v1, v1, LL2/m;->s:Ljava/lang/Object;

    check-cast v1, LL2/e;

    iget-object v2, p0, LE1/k;->q:Ljava/lang/Object;

    check-cast v2, LL2/r;

    invoke-virtual {v2}, LL2/r;->d()Ljava/lang/Exception;

    move-result-object v2

    invoke-static {v2}, Lx2/o;->e(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, LL2/e;->q(Ljava/lang/Exception;)V

    monitor-exit v0

    return-void

    :catchall_6
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    throw v1

    :pswitch_e
    iget-object v0, p0, LE1/k;->r:Ljava/lang/Object;

    check-cast v0, LL2/m;

    iget-object v0, v0, LL2/m;->r:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    iget-object v1, p0, LE1/k;->r:Ljava/lang/Object;

    check-cast v1, LL2/m;

    iget-object v1, v1, LL2/m;->s:Ljava/lang/Object;

    check-cast v1, LL2/d;

    iget-object v2, p0, LE1/k;->q:Ljava/lang/Object;

    check-cast v2, LL2/r;

    invoke-interface {v1, v2}, LL2/d;->e(LL2/r;)V

    monitor-exit v0

    return-void

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    throw v1

    :pswitch_f
    iget-object v0, p0, LE1/k;->r:Ljava/lang/Object;

    check-cast v0, LL2/l;

    iget-object v1, v0, LL2/l;->s:LL2/r;

    :try_start_c
    iget-object v2, v0, LL2/l;->r:LL2/a;

    iget-object v3, p0, LE1/k;->q:Ljava/lang/Object;

    check-cast v3, LL2/r;

    invoke-interface {v2, v3}, LL2/a;->g(LL2/r;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LL2/r;
    :try_end_c
    .catch LL2/g; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    if-nez v2, :cond_11

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Continuation returned null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, LL2/l;->q(Ljava/lang/Exception;)V

    goto :goto_11

    :cond_11
    sget-object v1, LL2/j;->b:LL2/p;

    invoke-virtual {v2, v1, v0}, LL2/r;->b(Ljava/util/concurrent/Executor;LL2/f;)V

    invoke-virtual {v2, v1, v0}, LL2/r;->a(Ljava/util/concurrent/Executor;LL2/e;)V

    new-instance v3, LL2/m;

    invoke-direct {v3, v1, v0}, LL2/m;-><init>(Ljava/util/concurrent/Executor;LL2/c;)V

    iget-object v0, v2, LL2/r;->b:Lcom/bumptech/glide/manager/r;

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/manager/r;->k(LL2/n;)V

    invoke-virtual {v2}, LL2/r;->n()V

    goto :goto_11

    :catch_7
    move-exception v0

    goto :goto_f

    :catch_8
    move-exception v0

    goto :goto_10

    :goto_f
    invoke-virtual {v1, v0}, LL2/r;->i(Ljava/lang/Exception;)V

    goto :goto_11

    :goto_10
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Exception;

    if-eqz v2, :cond_12

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v1, v0}, LL2/r;->i(Ljava/lang/Exception;)V

    goto :goto_11

    :cond_12
    invoke-virtual {v1, v0}, LL2/r;->i(Ljava/lang/Exception;)V

    :goto_11
    return-void

    :pswitch_10
    iget-object v0, p0, LE1/k;->q:Ljava/lang/Object;

    check-cast v0, LL2/r;

    iget-boolean v0, v0, LL2/r;->d:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, LE1/k;->r:Ljava/lang/Object;

    check-cast v0, LL2/l;

    iget-object v0, v0, LL2/l;->s:LL2/r;

    invoke-virtual {v0}, LL2/r;->k()V

    goto :goto_14

    :cond_13
    :try_start_d
    iget-object v0, p0, LE1/k;->r:Ljava/lang/Object;

    check-cast v0, LL2/l;

    iget-object v0, v0, LL2/l;->r:LL2/a;

    iget-object v1, p0, LE1/k;->q:Ljava/lang/Object;

    check-cast v1, LL2/r;

    invoke-interface {v0, v1}, LL2/a;->g(LL2/r;)Ljava/lang/Object;

    move-result-object v0
    :try_end_d
    .catch LL2/g; {:try_start_d .. :try_end_d} :catch_a
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    iget-object v1, p0, LE1/k;->r:Ljava/lang/Object;

    check-cast v1, LL2/l;

    iget-object v1, v1, LL2/l;->s:LL2/r;

    invoke-virtual {v1, v0}, LL2/r;->j(Ljava/lang/Object;)V

    goto :goto_14

    :catch_9
    move-exception v0

    goto :goto_12

    :catch_a
    move-exception v0

    goto :goto_13

    :goto_12
    iget-object v1, p0, LE1/k;->r:Ljava/lang/Object;

    check-cast v1, LL2/l;

    iget-object v1, v1, LL2/l;->s:LL2/r;

    invoke-virtual {v1, v0}, LL2/r;->i(Ljava/lang/Exception;)V

    goto :goto_14

    :goto_13
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_14

    iget-object v1, p0, LE1/k;->r:Ljava/lang/Object;

    check-cast v1, LL2/l;

    iget-object v1, v1, LL2/l;->s:LL2/r;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v1, v0}, LL2/r;->i(Ljava/lang/Exception;)V

    goto :goto_14

    :cond_14
    iget-object v1, p0, LE1/k;->r:Ljava/lang/Object;

    check-cast v1, LL2/l;

    iget-object v1, v1, LL2/l;->s:LL2/r;

    invoke-virtual {v1, v0}, LL2/r;->i(Ljava/lang/Exception;)V

    :goto_14
    return-void

    :pswitch_11
    iget-object v0, p0, LE1/k;->q:Ljava/lang/Object;

    check-cast v0, LG/e;

    iget-object v1, p0, LE1/k;->r:Ljava/lang/Object;

    invoke-virtual {v0, v1}, LG/e;->accept(Ljava/lang/Object;)V

    return-void

    :pswitch_12
    iget-object v0, p0, LE1/k;->q:Ljava/lang/Object;

    check-cast v0, Le4/c;

    iget-object v1, p0, LE1/k;->r:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Typeface;

    iget-object v0, v0, Le4/c;->q:Ljava/lang/Object;

    check-cast v0, LA/b;

    if-eqz v0, :cond_15

    invoke-virtual {v0, v1}, LA/b;->h(Landroid/graphics/Typeface;)V

    :cond_15
    return-void

    :pswitch_13
    iget-object v0, p0, LE1/k;->q:Ljava/lang/Object;

    check-cast v0, LE1/b;

    iget-object v1, p0, LE1/k;->r:Ljava/lang/Object;

    check-cast v1, Lib/player/base/helper/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, LE1/B;->l:LE1/f;

    const/4 v4, 0x3

    invoke-virtual {v0, v2, v4, v3}, LE1/b;->u(IILE1/f;)V

    invoke-virtual {v1, v3}, Lib/player/base/helper/a;->a(LE1/f;)V

    return-void

    :pswitch_14
    iget-object v0, p0, LE1/k;->q:Ljava/lang/Object;

    check-cast v0, LE1/b;

    iget-object v2, p0, LE1/k;->r:Ljava/lang/Object;

    check-cast v2, LE1/f;

    iget-object v3, v0, LE1/b;->e:LE1/E;

    iget-object v3, v3, LE1/E;->c:Ljava/lang/Object;

    check-cast v3, Lib/player/base/helper/c;

    if-eqz v3, :cond_16

    iget-object v0, v0, LE1/b;->e:LE1/E;

    iget-object v0, v0, LE1/E;->c:Ljava/lang/Object;

    check-cast v0, Lib/player/base/helper/c;

    invoke-virtual {v0, v2, v1}, Lib/player/base/helper/c;->k(LE1/f;Ljava/util/List;)V

    goto :goto_15

    :cond_16
    const-string v0, "BillingClient"

    const-string v1, "No valid listener is set in BroadcastManager"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/o0;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_15
    return-void

    :pswitch_15
    iget-object v0, p0, LE1/k;->q:Ljava/lang/Object;

    check-cast v0, LE1/b;

    iget-object v1, p0, LE1/k;->r:Ljava/lang/Object;

    check-cast v1, Lib/player/base/helper/a;

    sget-object v3, LE1/B;->l:LE1/f;

    const/4 v4, 0x7

    invoke-virtual {v0, v2, v4, v3}, LE1/b;->u(IILE1/f;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v3, v0}, Lib/player/base/helper/a;->b(LE1/f;Ljava/util/ArrayList;)V

    return-void

    :pswitch_16
    iget-object v0, p0, LE1/k;->q:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_17

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, p0, LE1/k;->r:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v0, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const-string v0, "BillingClient"

    const-string v2, "Async task is taking too long, cancel it!"

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/o0;->f(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_17

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_17
    return-void

    :pswitch_17
    iget-object v0, p0, LE1/k;->q:Ljava/lang/Object;

    check-cast v0, LE1/b;

    iget-object v1, p0, LE1/k;->r:Ljava/lang/Object;

    check-cast v1, Lib/player/base/helper/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, LE1/B;->l:LE1/f;

    const/16 v4, 0x9

    invoke-virtual {v0, v2, v4, v3}, LE1/b;->u(IILE1/f;)V

    sget-object v0, Lcom/google/android/gms/internal/play_billing/C;->q:Lcom/google/android/gms/internal/play_billing/z;

    sget-object v0, Lcom/google/android/gms/internal/play_billing/Q;->t:Lcom/google/android/gms/internal/play_billing/Q;

    invoke-virtual {v1, v3, v0}, Lib/player/base/helper/a;->c(LE1/f;Ljava/util/List;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, LE1/k;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, LE1/k;->q:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    const-string v1, "}"

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SequentialExecutorWorker{running="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "SequentialExecutorWorker{state="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, LE1/k;->r:Ljava/lang/Object;

    check-cast v2, Lz3/i;

    iget v2, v2, Lz3/i;->r:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const-string v2, "null"

    goto :goto_0

    :cond_1
    const-string v2, "RUNNING"

    goto :goto_0

    :cond_2
    const-string v2, "QUEUED"

    goto :goto_0

    :cond_3
    const-string v2, "QUEUING"

    goto :goto_0

    :cond_4
    const-string v2, "IDLE"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
    .end packed-switch
.end method
