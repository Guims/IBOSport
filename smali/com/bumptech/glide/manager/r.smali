.class public final Lcom/bumptech/glide/manager/r;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/slf4j/ILoggerFactory;
.implements Ld2/g;
.implements Ly0/k;


# static fields
.field public static volatile t:Lcom/bumptech/glide/manager/r;


# instance fields
.field public final synthetic b:I

.field public q:Z

.field public r:Ljava/lang/Object;

.field public s:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    const/16 v0, 0x9

    iput v0, p0, Lcom/bumptech/glide/manager/r;->b:I

    new-instance v0, Ly0/b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ly0/b;-><init>(II)V

    new-instance v1, Ly0/b;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Ly0/b;-><init>(II)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/r;->r:Ljava/lang/Object;

    iput-object v1, p0, Lcom/bumptech/glide/manager/r;->s:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bumptech/glide/manager/r;->q:Z

    return-void
.end method

.method public constructor <init>(IB)V
    .locals 0

    iput p1, p0, Lcom/bumptech/glide/manager/r;->b:I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/manager/r;->r:Ljava/lang/Object;

    return-void

    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    :pswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/manager/r;->r:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/manager/r;->s:Ljava/lang/Object;

    return-void

    :pswitch_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bumptech/glide/manager/r;->q:Z

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/manager/r;->r:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/manager/r;->s:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/manager/r;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/r;->s:Ljava/lang/Object;

    new-instance v0, LC2/c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, LC2/c;-><init>(Landroid/content/Context;Z)V

    new-instance p1, LK1/n;

    invoke-direct {p1, v0}, LK1/n;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lcom/bumptech/glide/manager/o;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/manager/o;-><init>(Lcom/bumptech/glide/manager/r;)V

    new-instance v1, LE1/d;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/bumptech/glide/manager/q;

    invoke-direct {v2, v1}, Lcom/bumptech/glide/manager/q;-><init>(LE1/d;)V

    iput-object v2, v1, LE1/d;->d:Ljava/lang/Object;

    iput-object p1, v1, LE1/d;->c:Ljava/lang/Object;

    iput-object v0, v1, LE1/d;->b:Ljava/lang/Object;

    iput-object v1, p0, Lcom/bumptech/glide/manager/r;->r:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/activity/i;LB4/o;)V
    .locals 0

    const/4 p1, 0x3

    iput p1, p0, Lcom/bumptech/glide/manager/r;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/manager/r;->r:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/manager/r;->s:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/b;Ljava/util/ArrayList;LE5/l;)V
    .locals 0

    const/4 p3, 0x4

    iput p3, p0, Lcom/bumptech/glide/manager/r;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/manager/r;->r:Ljava/lang/Object;

    iput-object p2, p0, Lcom/bumptech/glide/manager/r;->s:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lv0/f;[Lu2/c;Z)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lcom/bumptech/glide/manager/r;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/manager/r;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/bumptech/glide/manager/r;->r:Ljava/lang/Object;

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput-boolean p1, p0, Lcom/bumptech/glide/manager/r;->q:Z

    return-void
.end method

.method public constructor <init>(Lw1/d;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lcom/bumptech/glide/manager/r;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/manager/r;->r:Ljava/lang/Object;

    new-instance p1, Lk/r;

    invoke-direct {p1}, Lk/r;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/manager/r;->s:Ljava/lang/Object;

    return-void
.end method

.method public static e(Landroid/content/Context;)Lcom/bumptech/glide/manager/r;
    .locals 2

    sget-object v0, Lcom/bumptech/glide/manager/r;->t:Lcom/bumptech/glide/manager/r;

    if-nez v0, :cond_1

    const-class v0, Lcom/bumptech/glide/manager/r;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bumptech/glide/manager/r;->t:Lcom/bumptech/glide/manager/r;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bumptech/glide/manager/r;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/bumptech/glide/manager/r;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/bumptech/glide/manager/r;->t:Lcom/bumptech/glide/manager/r;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/bumptech/glide/manager/r;->t:Lcom/bumptech/glide/manager/r;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic a(LD5/g;)Ly0/l;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/r;->c(LD5/g;)Ly0/c;

    move-result-object p1

    return-object p1
.end method

.method public b(LZ1/c;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/manager/r;->r:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lcom/bumptech/glide/manager/r;->s:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    invoke-interface {p1}, LZ1/c;->clear()V

    :cond_3
    return v0
.end method

.method public c(LD5/g;)Ly0/c;
    .locals 8

    const-string v0, "createCodec:"

    iget-object v1, p1, LD5/g;->a:Ljava/lang/Object;

    check-cast v1, Ly0/o;

    iget-object v1, v1, Ly0/o;->a:Ljava/lang/String;

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-boolean v1, p0, Lcom/bumptech/glide/manager/r;->q:Z

    const/16 v3, 0x23

    if-eqz v1, :cond_2

    iget-object v1, p1, LD5/g;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/Format;

    sget v4, Lk0/C;->a:I

    const/16 v5, 0x22

    if-ge v4, v5, :cond_0

    goto :goto_0

    :cond_0
    if-ge v4, v3, :cond_1

    iget-object v1, v1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v1}, Landroidx/media3/common/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v1, Lv0/f;

    invoke-direct {v1, v0}, Lv0/f;-><init>(Ljava/lang/Object;)V

    const/4 v4, 0x4

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_0
    new-instance v1, Ly0/e;

    iget-object v4, p0, Lcom/bumptech/glide/manager/r;->s:Ljava/lang/Object;

    check-cast v4, Ly0/b;

    invoke-virtual {v4}, Ly0/b;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/HandlerThread;

    invoke-direct {v1, v0, v4}, Ly0/e;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;)V

    const/4 v4, 0x0

    :goto_1
    new-instance v5, Ly0/c;

    iget-object v6, p0, Lcom/bumptech/glide/manager/r;->r:Ljava/lang/Object;

    check-cast v6, Ly0/b;

    invoke-virtual {v6}, Ly0/b;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/HandlerThread;

    iget-object v7, p1, LD5/g;->f:Ljava/lang/Object;

    check-cast v7, Lr0/C;

    invoke-direct {v5, v0, v6, v1, v7}, Ly0/c;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Ly0/m;Lr0/C;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object v1, p1, LD5/g;->d:Ljava/lang/Object;

    check-cast v1, Landroid/view/Surface;

    if-nez v1, :cond_3

    iget-object v2, p1, LD5/g;->a:Ljava/lang/Object;

    check-cast v2, Ly0/o;

    iget-boolean v2, v2, Ly0/o;->h:Z

    if-eqz v2, :cond_3

    sget v2, Lk0/C;->a:I

    if-lt v2, v3, :cond_3

    or-int/lit8 v4, v4, 0x8

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v2, v5

    goto :goto_3

    :cond_3
    :goto_2
    iget-object v2, p1, LD5/g;->b:Ljava/lang/Object;

    check-cast v2, Landroid/media/MediaFormat;

    iget-object p1, p1, LD5/g;->e:Ljava/lang/Object;

    check-cast p1, Landroid/media/MediaCrypto;

    invoke-static {v5, v2, v1, p1, v4}, Ly0/c;->e(Ly0/c;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v5

    :catch_2
    move-exception p1

    move-object v0, v2

    :goto_3
    if-nez v2, :cond_4

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ly0/c;->release()V

    :cond_5
    :goto_4
    throw p1
.end method

.method public d(Lv2/a;LL2/i;)V
    .locals 4

    iget-object v0, p0, Lcom/bumptech/glide/manager/r;->s:Ljava/lang/Object;

    check-cast v0, Lv0/f;

    iget-object v0, v0, Lv0/f;->b:Ljava/lang/Object;

    check-cast v0, Lv0/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lz2/d;

    iget-object v1, p1, Lcom/google/android/gms/common/internal/a;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p1, Lcom/google/android/gms/common/internal/a;->m:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/a;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p1, p1, Lcom/google/android/gms/common/internal/a;->j:Landroid/os/IInterface;

    const-string v2, "Client is connected but service is null"

    invoke-static {p1, v2}, Lx2/o;->f(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    check-cast p1, Lz2/a;

    iget-object v0, v0, Lv0/f;->b:Ljava/lang/Object;

    check-cast v0, Lx2/h;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    iget-object v2, p1, Lz2/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    sget v2, LF2/b;->a:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v1, v3}, Lx2/h;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    :try_start_1
    iget-object p1, p1, Lz2/a;->b:Landroid/os/IBinder;

    const/4 v0, 0x0

    invoke-interface {p1, v2, v1, v0, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    iget-object p1, p2, LL2/i;->a:LL2/r;

    invoke-virtual {p1, v0}, LL2/r;->j(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p1

    :catchall_1
    move-exception p1

    goto :goto_1

    :cond_1
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Landroid/os/DeadObjectException;

    invoke-direct {p1}, Landroid/os/DeadObjectException;-><init>()V

    throw p1

    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public f()V
    .locals 5

    iget-boolean v0, p0, Lcom/bumptech/glide/manager/r;->q:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bumptech/glide/manager/r;->s:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/manager/r;->r:Ljava/lang/Object;

    check-cast v0, LE1/d;

    iget-object v1, v0, LE1/d;->c:Ljava/lang/Object;

    check-cast v1, LK1/n;

    invoke-virtual {v1}, LK1/n;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    iput-boolean v2, v0, LE1/d;->a:Z

    :try_start_0
    invoke-virtual {v1}, LK1/n;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iget-object v0, v0, LE1/d;->d:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/manager/q;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v1, 0x5

    const-string v2, "ConnectivityMonitor"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Failed to register callback"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    iput-boolean v3, p0, Lcom/bumptech/glide/manager/r;->q:Z

    :cond_3
    :goto_2
    return-void
.end method

.method public declared-synchronized g(Ljava/lang/String;)LO5/a;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/manager/r;->r:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQ5/b;

    if-nez v0, :cond_0

    new-instance v0, LQ5/b;

    iget-object v1, p0, Lcom/bumptech/glide/manager/r;->s:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/LinkedBlockingQueue;

    iget-boolean v2, p0, Lcom/bumptech/glide/manager/r;->q:Z

    invoke-direct {v0, p1, v1, v2}, LQ5/b;-><init>(Ljava/lang/String;Ljava/util/concurrent/LinkedBlockingQueue;Z)V

    iget-object v1, p0, Lcom/bumptech/glide/manager/r;->r:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public get()Ljava/lang/Object;
    .locals 3

    iget-boolean v0, p0, Lcom/bumptech/glide/manager/r;->q:Z

    if-nez v0, :cond_0

    const-string v0, "Glide registry"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/manager/r;->q:Z

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/manager/r;->r:Ljava/lang/Object;

    check-cast v1, Lcom/bumptech/glide/b;

    iget-object v2, p0, Lcom/bumptech/glide/manager/r;->s:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/bumptech/glide/d;->j(Lcom/bumptech/glide/b;Ljava/util/ArrayList;)Lcom/bumptech/glide/i;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Lcom/bumptech/glide/manager/r;->q:Z

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v1

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lcom/bumptech/glide/manager/r;->q:Z

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recursive Registry initialization! In your AppGlideModule and LibraryGlideModules, Make sure you\'re using the provided Registry rather calling glide.getRegistry()!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()V
    .locals 4

    iget-object v0, p0, Lcom/bumptech/glide/manager/r;->r:Ljava/lang/Object;

    check-cast v0, Lw1/d;

    invoke-interface {v0}, Landroidx/lifecycle/r;->h()Landroidx/lifecycle/t;

    move-result-object v1

    iget-object v2, v1, Landroidx/lifecycle/t;->c:Landroidx/lifecycle/m;

    sget-object v3, Landroidx/lifecycle/m;->q:Landroidx/lifecycle/m;

    if-ne v2, v3, :cond_1

    new-instance v2, Landroidx/savedstate/Recreator;

    invoke-direct {v2, v0}, Landroidx/savedstate/Recreator;-><init>(Lw1/d;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/t;->a(Landroidx/lifecycle/q;)V

    iget-object v0, p0, Lcom/bumptech/glide/manager/r;->s:Ljava/lang/Object;

    check-cast v0, Lk/r;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v2, v0, Lk/r;->c:Z

    if-nez v2, :cond_0

    new-instance v2, Lw1/a;

    invoke-direct {v2, v0}, Lw1/a;-><init>(Lk/r;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/t;->a(Landroidx/lifecycle/q;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lk/r;->c:Z

    iput-boolean v1, p0, Lcom/bumptech/glide/manager/r;->q:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SavedStateRegistry was already attached."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Restarter must be created only during owner\'s initialization stage"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i(Landroid/os/Bundle;)V
    .locals 3

    iget-boolean v0, p0, Lcom/bumptech/glide/manager/r;->q:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/manager/r;->h()V

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/manager/r;->r:Ljava/lang/Object;

    check-cast v0, Lw1/d;

    invoke-interface {v0}, Landroidx/lifecycle/r;->h()Landroidx/lifecycle/t;

    move-result-object v0

    iget-object v1, v0, Landroidx/lifecycle/t;->c:Landroidx/lifecycle/m;

    sget-object v2, Landroidx/lifecycle/m;->s:Landroidx/lifecycle/m;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_4

    iget-object v0, p0, Lcom/bumptech/glide/manager/r;->s:Ljava/lang/Object;

    check-cast v0, Lk/r;

    iget-boolean v1, v0, Lk/r;->c:Z

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lk/r;->d:Z

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    const-string v1, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-object p1, v0, Lk/r;->a:Landroid/os/Parcelable;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lk/r;->d:Z

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "SavedStateRegistry was already restored."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You must call performAttach() before calling performRestore(Bundle)."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "performRestore cannot be called when owner is "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/lifecycle/t;->c:Landroidx/lifecycle/m;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j(Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lcom/bumptech/glide/manager/r;->s:Ljava/lang/Object;

    check-cast v0, Lk/r;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v0, Lk/r;->a:Landroid/os/Parcelable;

    check-cast v2, Landroid/os/Bundle;

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    iget-object v0, v0, Lk/r;->f:Ljava/lang/Object;

    check-cast v0, Lm/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lm/d;

    invoke-direct {v2, v0}, Lm/d;-><init>(Lm/f;)V

    iget-object v0, v0, Lm/f;->r:Ljava/util/WeakHashMap;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {v2}, Lm/d;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lm/d;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw1/c;

    invoke-interface {v0}, Lw1/c;->a()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public k(LL2/n;)V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/manager/r;->r:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/manager/r;->s:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayDeque;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lcom/bumptech/glide/manager/r;->s:Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/bumptech/glide/manager/r;->s:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public l(LL2/r;)V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/manager/r;->r:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/manager/r;->s:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayDeque;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/bumptech/glide/manager/r;->q:Z

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bumptech/glide/manager/r;->q:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    iget-object v1, p0, Lcom/bumptech/glide/manager/r;->r:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/manager/r;->s:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LL2/n;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bumptech/glide/manager/r;->q:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v0, p1}, LL2/n;->a(LL2/r;)V

    goto :goto_0

    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_2
    :try_start_3
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/bumptech/glide/manager/r;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{numRequests="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/manager/r;->r:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isPaused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/bumptech/glide/manager/r;->q:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
