.class public final Lw2/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final D:Lcom/google/android/gms/common/api/Status;

.field public static final E:Lcom/google/android/gms/common/api/Status;

.field public static final F:Ljava/lang/Object;

.field public static G:Lw2/d;


# instance fields
.field public final A:Ln/f;

.field public final B:LF2/e;

.field public volatile C:Z

.field public b:J

.field public q:Z

.field public r:Lx2/h;

.field public s:Lz2/c;

.field public final t:Landroid/content/Context;

.field public final u:Lu2/e;

.field public final v:Lp5/p;

.field public final w:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final x:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final y:Ljava/util/concurrent/ConcurrentHashMap;

.field public final z:Ln/f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x4

    const-string v2, "Sign-out occurred while this API call was in progress."

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lu2/a;)V

    sput-object v0, Lw2/d;->D:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v2, "The user must be signed in to make this API call."

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lu2/a;)V

    sput-object v0, Lw2/d;->E:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lw2/d;->F:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 6

    sget-object v0, Lu2/e;->d:Lu2/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, 0x2710

    iput-wide v1, p0, Lw2/d;->b:J

    const/4 v1, 0x0

    iput-boolean v1, p0, Lw2/d;->q:Z

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lw2/d;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lw2/d;->x:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v4, 0x5

    const/high16 v5, 0x3f400000    # 0.75f

    invoke-direct {v2, v4, v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v2, p0, Lw2/d;->y:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ln/f;

    invoke-direct {v2, v1}, Ln/f;-><init>(I)V

    iput-object v2, p0, Lw2/d;->z:Ln/f;

    new-instance v2, Ln/f;

    invoke-direct {v2, v1}, Ln/f;-><init>(I)V

    iput-object v2, p0, Lw2/d;->A:Ln/f;

    iput-boolean v3, p0, Lw2/d;->C:Z

    iput-object p1, p0, Lw2/d;->t:Landroid/content/Context;

    new-instance v2, LF2/e;

    invoke-direct {v2, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    iput-object v2, p0, Lw2/d;->B:LF2/e;

    iput-object v0, p0, Lw2/d;->u:Lu2/e;

    new-instance p2, Lp5/p;

    const/16 v0, 0x10

    invoke-direct {p2, v0}, Lp5/p;-><init>(I)V

    iput-object p2, p0, Lw2/d;->v:Lp5/p;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    sget-object p2, LB2/a;->e:Ljava/lang/Boolean;

    if-nez p2, :cond_1

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p2, v0, :cond_0

    const-string p2, "android.hardware.type.automotive"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, LB2/a;->e:Ljava/lang/Boolean;

    :cond_1
    sget-object p1, LB2/a;->e:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iput-boolean v1, p0, Lw2/d;->C:Z

    :cond_2
    const/4 p1, 0x6

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static b(Lw2/a;Lu2/a;)Lcom/google/android/gms/common/api/Status;
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    iget-object p0, p0, Lw2/a;->b:Lp5/p;

    iget-object p0, p0, Lp5/p;->r:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "API: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not available on this device. Connection failed with: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x11

    iget-object v2, p1, Lu2/a;->r:Landroid/app/PendingIntent;

    invoke-direct {v0, v1, p0, v2, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lu2/a;)V

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Lw2/d;
    .locals 5

    sget-object v0, Lw2/d;->F:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lw2/d;->G:Lw2/d;

    if-nez v1, :cond_1

    sget-object v1, Lx2/x;->g:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v2, Lx2/x;->i:Landroid/os/HandlerThread;

    if-eqz v2, :cond_0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "GoogleApiHandler"

    const/16 v4, 0x9

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lx2/x;->i:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    sget-object v2, Lx2/x;->i:Landroid/os/HandlerThread;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lw2/d;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v3, Lu2/e;->c:Ljava/lang/Object;

    invoke-direct {v2, p0, v1}, Lw2/d;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    sput-object v2, Lw2/d;->G:Lw2/d;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lw2/d;->G:Lw2/d;

    monitor-exit v0

    return-object p0

    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method


# virtual methods
.method public final a(Lu2/a;I)Z
    .locals 9

    iget-object v0, p0, Lw2/d;->u:Lu2/e;

    iget-object v1, p0, Lw2/d;->t:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v2, LC2/b;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, LC2/b;->b:Landroid/content/Context;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v4, :cond_1

    sget-object v8, LC2/b;->q:Ljava/lang/Boolean;

    if-eqz v8, :cond_1

    if-eq v4, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    goto :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_9

    :cond_1
    :goto_0
    :try_start_1
    sput-object v7, LC2/b;->q:Ljava/lang/Boolean;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1a

    if-lt v4, v8, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    move v4, v6

    :goto_1
    if-eqz v4, :cond_3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {v4}, LC2/a;->w(Landroid/content/pm/PackageManager;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, LC2/b;->q:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_3
    :try_start_2
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const-string v8, "com.google.android.instantapps.supervisor.InstantAppsRuntime"

    invoke-virtual {v4, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v4, LC2/b;->q:Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    :try_start_3
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v4, LC2/b;->q:Ljava/lang/Boolean;

    :goto_2
    sput-object v3, LC2/b;->b:Landroid/content/Context;

    sget-object v3, LC2/b;->q:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v2

    :goto_3
    if-eqz v3, :cond_4

    goto :goto_7

    :cond_4
    iget v2, p1, Lu2/a;->q:I

    if-eqz v2, :cond_5

    iget-object v3, p1, Lu2/a;->r:Landroid/app/PendingIntent;

    if-eqz v3, :cond_5

    move v3, v5

    goto :goto_4

    :cond_5
    move v3, v6

    :goto_4
    if-eqz v3, :cond_6

    iget-object v2, p1, Lu2/a;->r:Landroid/app/PendingIntent;

    goto :goto_6

    :cond_6
    invoke-virtual {v0, v2, v1, v7}, Lu2/f;->a(ILandroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_7

    goto :goto_5

    :cond_7
    const/high16 v3, 0xc000000

    invoke-static {v1, v6, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    :goto_5
    move-object v2, v7

    :goto_6
    if-eqz v2, :cond_8

    iget p1, p1, Lu2/a;->q:I

    sget v3, Lcom/google/android/gms/common/api/GoogleApiActivity;->q:I

    const-class v3, Lcom/google/android/gms/common/api/GoogleApiActivity;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "pending_intent"

    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "failing_client_id"

    invoke-virtual {v4, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "notify_manager"

    invoke-virtual {v4, p2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget p2, LF2/d;->a:I

    const/high16 v2, 0x8000000

    or-int/2addr p2, v2

    invoke-static {v1, v6, v4, p2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lu2/e;->g(Landroid/content/Context;ILandroid/app/PendingIntent;)V

    goto :goto_8

    :cond_8
    :goto_7
    move v5, v6

    :goto_8
    return v5

    :goto_9
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final c(Lz2/c;)Lw2/j;
    .locals 3

    iget-object v0, p1, Lz2/c;->e:Lw2/a;

    iget-object v1, p0, Lw2/d;->y:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw2/j;

    if-nez v2, :cond_0

    new-instance v2, Lw2/j;

    invoke-direct {v2, p0, p1}, Lw2/j;-><init>(Lw2/d;Lz2/c;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, v2, Lw2/j;->c:Lv2/a;

    invoke-interface {p1}, Lv2/a;->m()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lw2/d;->A:Ln/f;

    invoke-virtual {p1, v0}, Ln/f;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v2}, Lw2/j;->m()V

    return-object v2
.end method

.method public final e(Lu2/a;I)V
    .locals 3

    invoke-virtual {p0, p1, p2}, Lw2/d;->a(Lu2/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    const/4 v1, 0x0

    iget-object v2, p0, Lw2/d;->B:LF2/e;

    invoke-virtual {v2, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 14

    iget-object v0, p0, Lw2/d;->t:Landroid/content/Context;

    iget-object v1, p0, Lw2/d;->A:Ln/f;

    const-string v2, "GoogleApiManager"

    iget-object v3, p0, Lw2/d;->B:LF2/e;

    iget-object v4, p0, Lw2/d;->y:Ljava/util/concurrent/ConcurrentHashMap;

    iget v5, p1, Landroid/os/Message;->what:I

    const v6, 0xc1fa340

    const/4 v7, -0x1

    const-wide/32 v8, 0x493e0

    const/16 v10, 0x11

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    packed-switch v5, :pswitch_data_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unknown message id: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :pswitch_0
    iput-boolean v11, p0, Lw2/d;->q:Z

    return v13

    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lw2/o;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v0, 0x0

    cmp-long p1, v0, v0

    if-nez p1, :cond_1

    new-instance p1, Lx2/h;

    filled-new-array {v12}, [Lx2/e;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v11, v0}, Lx2/h;-><init>(ILjava/util/List;)V

    iget-object v0, p0, Lw2/d;->s:Lz2/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lw2/d;->t:Landroid/content/Context;

    new-instance v1, Lz2/c;

    sget-object v2, Lz2/c;->i:Lp5/p;

    sget-object v3, Lv2/b;->b:Lv2/b;

    invoke-direct {v1, v0, v2, v3}, Lz2/c;-><init>(Landroid/content/Context;Lp5/p;Lv2/b;)V

    iput-object v1, p0, Lw2/d;->s:Lz2/c;

    :cond_0
    iget-object v0, p0, Lw2/d;->s:Lz2/c;

    invoke-virtual {v0, p1}, Lz2/c;->a(Lx2/h;)LL2/r;

    return v13

    :cond_1
    iget-object p1, p0, Lw2/d;->r:Lx2/h;

    if-eqz p1, :cond_a

    iget-object v2, p1, Lx2/h;->q:Ljava/util/List;

    iget p1, p1, Lx2/h;->b:I

    if-nez p1, :cond_4

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-ltz p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lw2/d;->r:Lx2/h;

    iget-object v2, p1, Lx2/h;->q:Ljava/util/List;

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p1, Lx2/h;->q:Ljava/util/List;

    :cond_3
    iget-object p1, p1, Lx2/h;->q:Ljava/util/List;

    invoke-interface {p1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_4
    :goto_0
    invoke-virtual {v3, v10}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lw2/d;->r:Lx2/h;

    if-eqz p1, :cond_a

    iget v2, p1, Lx2/h;->b:I

    if-gtz v2, :cond_7

    iget-boolean v2, p0, Lw2/d;->q:Z

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    const-class v2, Lx2/f;

    monitor-enter v2

    :try_start_0
    sget-object v4, Lx2/f;->q:Lx2/f;

    if-nez v4, :cond_6

    new-instance v4, Lx2/f;

    invoke-direct {v4, v11}, Lx2/f;-><init>(I)V

    sput-object v4, Lx2/f;->q:Lx2/f;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_6
    :goto_1
    sget-object v4, Lx2/f;->q:Lx2/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lw2/d;->v:Lp5/p;

    iget-object v2, v2, Lp5/p;->q:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseIntArray;

    invoke-virtual {v2, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-eq v2, v7, :cond_7

    if-nez v2, :cond_9

    goto :goto_3

    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_7
    :goto_3
    iget-object v2, p0, Lw2/d;->s:Lz2/c;

    if-nez v2, :cond_8

    iget-object v2, p0, Lw2/d;->t:Landroid/content/Context;

    new-instance v4, Lz2/c;

    sget-object v5, Lz2/c;->i:Lp5/p;

    sget-object v6, Lv2/b;->b:Lv2/b;

    invoke-direct {v4, v2, v5, v6}, Lz2/c;-><init>(Landroid/content/Context;Lp5/p;Lv2/b;)V

    iput-object v4, p0, Lw2/d;->s:Lz2/c;

    :cond_8
    iget-object v2, p0, Lw2/d;->s:Lz2/c;

    invoke-virtual {v2, p1}, Lz2/c;->a(Lx2/h;)LL2/r;

    :cond_9
    :goto_4
    iput-object v12, p0, Lw2/d;->r:Lx2/h;

    :cond_a
    :goto_5
    iget-object p1, p0, Lw2/d;->r:Lx2/h;

    if-nez p1, :cond_24

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lx2/h;

    invoke-direct {v2, v11, p1}, Lx2/h;-><init>(ILjava/util/List;)V

    iput-object v2, p0, Lw2/d;->r:Lx2/h;

    invoke-virtual {v3, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v3, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v13

    :pswitch_2
    iget-object p1, p0, Lw2/d;->r:Lx2/h;

    if-eqz p1, :cond_24

    iget v0, p1, Lx2/h;->b:I

    if-gtz v0, :cond_d

    iget-boolean v0, p0, Lw2/d;->q:Z

    if-eqz v0, :cond_b

    goto :goto_9

    :cond_b
    const-class v0, Lx2/f;

    monitor-enter v0

    :try_start_2
    sget-object v1, Lx2/f;->q:Lx2/f;

    if-nez v1, :cond_c

    new-instance v1, Lx2/f;

    invoke-direct {v1, v11}, Lx2/f;-><init>(I)V

    sput-object v1, Lx2/f;->q:Lx2/f;

    goto :goto_6

    :catchall_1
    move-exception p1

    goto :goto_7

    :cond_c
    :goto_6
    sget-object v1, Lx2/f;->q:Lx2/f;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lw2/d;->v:Lp5/p;

    iget-object v0, v0, Lp5/p;->q:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v7, :cond_d

    if-nez v0, :cond_f

    goto :goto_8

    :goto_7
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_d
    :goto_8
    iget-object v0, p0, Lw2/d;->s:Lz2/c;

    if-nez v0, :cond_e

    iget-object v0, p0, Lw2/d;->t:Landroid/content/Context;

    new-instance v1, Lz2/c;

    sget-object v2, Lz2/c;->i:Lp5/p;

    sget-object v3, Lv2/b;->b:Lv2/b;

    invoke-direct {v1, v0, v2, v3}, Lz2/c;-><init>(Landroid/content/Context;Lp5/p;Lv2/b;)V

    iput-object v1, p0, Lw2/d;->s:Lz2/c;

    :cond_e
    iget-object v0, p0, Lw2/d;->s:Lz2/c;

    invoke-virtual {v0, p1}, Lz2/c;->a(Lx2/h;)LL2/r;

    :cond_f
    :goto_9
    iput-object v12, p0, Lw2/d;->r:Lx2/h;

    return v13

    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lw2/k;

    iget-object v0, p1, Lw2/k;->a:Lw2/a;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p1, Lw2/k;->a:Lw2/a;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw2/j;

    iget-object v1, v0, Lw2/j;->j:Ljava/util/ArrayList;

    iget-object v2, v0, Lw2/j;->l:Lw2/d;

    iget-object v3, v0, Lw2/j;->b:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, v2, Lw2/d;->B:LF2/e;

    const/16 v4, 0xf

    invoke-virtual {v1, v4, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v1, v2, Lw2/d;->B:LF2/e;

    const/16 v2, 0x10

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object p1, p1, Lw2/k;->b:Lu2/c;

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lw2/n;

    if-eqz v4, :cond_10

    invoke-virtual {v4, v0}, Lw2/n;->b(Lw2/j;)[Lu2/c;

    move-result-object v5

    if-eqz v5, :cond_10

    array-length v6, v5

    move v7, v11

    :goto_b
    if-ge v7, v6, :cond_10

    aget-object v8, v5, v7

    invoke-static {v8, p1}, Lx2/o;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    if-ltz v7, :cond_10

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_11
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_c
    if-ge v11, v0, :cond_24

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw2/n;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    new-instance v4, Lv2/g;

    invoke-direct {v4, p1}, Lv2/g;-><init>(Lu2/c;)V

    invoke-virtual {v2, v4}, Lw2/n;->d(Ljava/lang/Exception;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_c

    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lw2/k;

    iget-object v0, p1, Lw2/k;->a:Lw2/a;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p1, Lw2/k;->a:Lw2/a;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw2/j;

    iget-object v1, v0, Lw2/j;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto/16 :goto_14

    :cond_13
    iget-boolean p1, v0, Lw2/j;->i:Z

    if-nez p1, :cond_24

    iget-object p1, v0, Lw2/j;->c:Lv2/a;

    invoke-interface {p1}, Lv2/a;->h()Z

    move-result p1

    if-nez p1, :cond_14

    invoke-virtual {v0}, Lw2/j;->m()V

    return v13

    :cond_14
    invoke-virtual {v0}, Lw2/j;->g()V

    return v13

    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, LB/f;->j(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    move-result-object p1

    throw p1

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw2/j;

    iget-object v0, p1, Lw2/j;->l:Lw2/d;

    iget-object v0, v0, Lw2/d;->B:LF2/e;

    invoke-static {v0}, Lx2/o;->a(Landroid/os/Handler;)V

    iget-object v0, p1, Lw2/j;->c:Lv2/a;

    invoke-interface {v0}, Lv2/a;->h()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p1, Lw2/j;->g:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p1, Lw2/j;->e:Lp5/p;

    iget-object v2, v1, Lp5/p;->q:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v1, v1, Lp5/p;->r:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_d

    :cond_15
    const-string p1, "Timing out service connection."

    invoke-interface {v0, p1}, Lv2/a;->b(Ljava/lang/String;)V

    return v13

    :cond_16
    :goto_d
    invoke-virtual {p1}, Lw2/j;->j()V

    :cond_17
    return v13

    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw2/j;

    iget-object v0, p1, Lw2/j;->l:Lw2/d;

    iget-object v1, v0, Lw2/d;->B:LF2/e;

    invoke-static {v1}, Lx2/o;->a(Landroid/os/Handler;)V

    iget-boolean v1, p1, Lw2/j;->i:Z

    if-eqz v1, :cond_24

    iget-object v2, p1, Lw2/j;->d:Lw2/a;

    iget-object v3, p1, Lw2/j;->l:Lw2/d;

    iget-object v3, v3, Lw2/d;->B:LF2/e;

    if-eqz v1, :cond_18

    const/16 v1, 0xb

    invoke-virtual {v3, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/16 v1, 0x9

    invoke-virtual {v3, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iput-boolean v11, p1, Lw2/j;->i:Z

    :cond_18
    iget-object v1, v0, Lw2/d;->u:Lu2/e;

    iget-object v0, v0, Lw2/d;->t:Landroid/content/Context;

    sget v2, Lu2/f;->a:I

    invoke-virtual {v1, v0, v2}, Lu2/f;->b(Landroid/content/Context;I)I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_19

    const-string v0, "Connection timed out waiting for Google Play services update to complete."

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x15

    invoke-direct {v1, v2, v0, v12, v12}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lu2/a;)V

    goto :goto_e

    :cond_19
    const-string v0, "API failed to connect while resuming due to an unknown error."

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x16

    invoke-direct {v1, v2, v0, v12, v12}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lu2/a;)V

    :goto_e
    invoke-virtual {p1, v1}, Lw2/j;->e(Lcom/google/android/gms/common/api/Status;)V

    iget-object p1, p1, Lw2/j;->c:Lv2/a;

    const-string v0, "Timing out connection while resuming."

    invoke-interface {p1, v0}, Lv2/a;->b(Ljava/lang/String;)V

    return v13

    :pswitch_8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ln/a;

    invoke-direct {p1, v1}, Ln/a;-><init>(Ln/f;)V

    :cond_1a
    :goto_f
    invoke-virtual {p1}, Ln/a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Ln/a;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw2/a;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw2/j;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lw2/j;->p()V

    goto :goto_f

    :cond_1b
    invoke-virtual {v1}, Ln/f;->clear()V

    return v13

    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw2/j;

    iget-object v0, p1, Lw2/j;->l:Lw2/d;

    iget-object v0, v0, Lw2/d;->B:LF2/e;

    invoke-static {v0}, Lx2/o;->a(Landroid/os/Handler;)V

    iget-boolean v0, p1, Lw2/j;->i:Z

    if-eqz v0, :cond_24

    invoke-virtual {p1}, Lw2/j;->m()V

    return v13

    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lz2/c;

    invoke-virtual {p0, p1}, Lw2/d;->c(Lz2/c;)Lw2/j;

    return v13

    :pswitch_b
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_24

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    invoke-static {p1}, Lw2/c;->a(Landroid/app/Application;)V

    sget-object p1, Lw2/c;->t:Lw2/c;

    new-instance v0, Lw2/i;

    invoke-direct {v0, p0}, Lw2/i;-><init>(Lw2/d;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter p1

    :try_start_4
    iget-object v1, p1, Lw2/c;->r:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iget-object v0, p1, Lw2/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object p1, p1, Lw2/c;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1c

    new-instance v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    invoke-static {v1}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    invoke-virtual {p1, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_1c

    iget p1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v1, 0x64

    if-le p1, v1, :cond_1c

    invoke-virtual {v0, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1c
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_24

    iput-wide v8, p0, Lw2/d;->b:J

    return v13

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :pswitch_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lu2/a;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw2/j;

    iget v4, v3, Lw2/j;->h:I

    if-ne v4, v0, :cond_1d

    goto :goto_10

    :cond_1e
    move-object v3, v12

    :goto_10
    if-eqz v3, :cond_20

    iget v0, p1, Lu2/a;->q:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1f

    iget-object v1, p0, Lw2/d;->u:Lu2/e;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lu2/i;->c:I

    invoke-static {v0}, Lu2/a;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lu2/a;->s:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Error resolution was canceled by the user, original error message: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v10, p1, v12, v12}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lu2/a;)V

    invoke-virtual {v3, v2}, Lw2/j;->e(Lcom/google/android/gms/common/api/Status;)V

    return v13

    :cond_1f
    iget-object v0, v3, Lw2/j;->d:Lw2/a;

    invoke-static {v0, p1}, Lw2/d;->b(Lw2/a;Lu2/a;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {v3, p1}, Lw2/j;->e(Lcom/google/android/gms/common/api/Status;)V

    return v13

    :cond_20
    const-string p1, "Could not find API instance "

    const-string v1, " while trying to fail enqueued calls."

    invoke-static {p1, v0, v1}, LB/f;->n(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-static {v2, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v13

    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lw2/p;

    iget-object v0, p1, Lw2/p;->c:Lz2/c;

    iget-object v1, p1, Lw2/p;->a:Lw2/r;

    iget-object v0, v0, Lz2/c;->e:Lw2/a;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw2/j;

    if-nez v0, :cond_21

    iget-object v0, p1, Lw2/p;->c:Lz2/c;

    invoke-virtual {p0, v0}, Lw2/d;->c(Lz2/c;)Lw2/j;

    move-result-object v0

    :cond_21
    iget-object v2, v0, Lw2/j;->c:Lv2/a;

    invoke-interface {v2}, Lv2/a;->m()Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p0, Lw2/d;->x:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iget p1, p1, Lw2/p;->b:I

    if-eq v2, p1, :cond_22

    sget-object p1, Lw2/d;->D:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v1, p1}, Lw2/r;->c(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0}, Lw2/j;->p()V

    return v13

    :cond_22
    invoke-virtual {v0, v1}, Lw2/j;->n(Lw2/n;)V

    return v13

    :pswitch_e
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw2/j;

    iget-object v1, v0, Lw2/j;->l:Lw2/d;

    iget-object v1, v1, Lw2/d;->B:LF2/e;

    invoke-static {v1}, Lx2/o;->a(Landroid/os/Handler;)V

    iput-object v12, v0, Lw2/j;->k:Lu2/a;

    invoke-virtual {v0}, Lw2/j;->m()V

    goto :goto_11

    :pswitch_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, LB/f;->j(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    move-result-object p1

    throw p1

    :pswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eq v13, p1, :cond_23

    goto :goto_12

    :cond_23
    const-wide/16 v8, 0x2710

    :goto_12
    iput-wide v8, p0, Lw2/d;->b:J

    const/16 p1, 0xc

    invoke-virtual {v3, p1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw2/a;

    invoke-virtual {v3, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-wide v4, p0, Lw2/d;->b:J

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_13

    :cond_24
    :goto_14
    return v13

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_d
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
