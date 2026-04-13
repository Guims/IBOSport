.class public final Lk0/t;
.super Ljava/lang/Object;


# static fields
.field public static e:Lk0/t;


# instance fields
.field public a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/String;ILjava/util/ArrayList;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lk0/t;->b:Ljava/lang/Object;

    iput p3, p0, Lk0/t;->a:I

    if-nez p4, :cond_0

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lk0/t;->c:Ljava/lang/Object;

    iput-object p5, p0, Lk0/t;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LE1/w;ILjava/util/function/Consumer;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lk0/t;->a:I

    iput-object p3, p0, Lk0/t;->b:Ljava/lang/Object;

    iput-object p4, p0, Lk0/t;->c:Ljava/lang/Object;

    iput-object p1, p0, Lk0/t;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lk0/t;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lk0/t;->c:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lk0/t;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lk0/t;->a:I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lf/x;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lf/x;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static a(ILk0/t;)V
    .locals 3

    iget-object v0, p1, Lk0/t;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p1, Lk0/t;->a:I

    if-ne v1, p0, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iput p0, p1, Lk0/t;->a:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p1, Lk0/t;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LE0/g;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p0}, LE0/g;->a(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p1, Lk0/t;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lk0/t;
    .locals 2

    const-class v0, Lk0/t;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lk0/t;->e:Lk0/t;

    if-nez v1, :cond_0

    new-instance v1, Lk0/t;

    invoke-direct {v1, p0}, Lk0/t;-><init>(Landroid/content/Context;)V

    sput-object v1, Lk0/t;->e:Lk0/t;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lk0/t;->e:Lk0/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public c()I
    .locals 2

    iget-object v0, p0, Lk0/t;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lk0/t;->a:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d()I
    .locals 2

    iget v0, p0, Lk0/t;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v0, 0x200

    return v0

    :cond_1
    const/16 v0, 0x800

    return v0
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 5

    iget-object v0, p0, Lk0/t;->d:Ljava/lang/Object;

    check-cast v0, LE1/w;

    instance-of v1, p1, Ljava/util/concurrent/TimeoutException;

    const/16 v2, 0x1c

    const-string v3, "BillingClientTesting"

    if-eqz v1, :cond_0

    const/16 v1, 0x72

    sget-object v4, LE1/B;->s:LE1/f;

    invoke-virtual {v0, v1, v2, v4}, LE1/w;->B(IILE1/f;)V

    const-string v0, "Asynchronous call to Billing Override Service timed out."

    invoke-static {v3, v0, p1}, Lcom/google/android/gms/internal/play_billing/o0;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x6b

    sget-object v4, LE1/B;->s:LE1/f;

    invoke-virtual {v0, v1, v2, v4}, LE1/w;->B(IILE1/f;)V

    const-string v0, "An error occurred while retrieving billing override."

    invoke-static {v3, v0, p1}, Lcom/google/android/gms/internal/play_billing/o0;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object p1, p0, Lk0/t;->c:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
