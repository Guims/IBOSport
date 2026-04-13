.class public final Lr5/i;
.super Lm5/s;

# interfaces
.implements Lm5/z;


# static fields
.field public static final v:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public final r:Lm5/s;

.field private volatile runningWorkers:I

.field public final s:I

.field public final t:Lr5/l;

.field public final u:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lr5/i;

    const-string v1, "runningWorkers"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lr5/i;->v:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lm5/s;I)V
    .locals 0

    invoke-direct {p0}, Lm5/s;-><init>()V

    iput-object p1, p0, Lr5/i;->r:Lm5/s;

    iput p2, p0, Lr5/i;->s:I

    instance-of p2, p1, Lm5/z;

    if-eqz p2, :cond_0

    check-cast p1, Lm5/z;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    sget p1, Lm5/y;->a:I

    :cond_1
    new-instance p1, Lr5/l;

    invoke-direct {p1}, Lr5/l;-><init>()V

    iput-object p1, p0, Lr5/i;->t:Lr5/l;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr5/i;->u:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final x(LV4/i;Ljava/lang/Runnable;)V
    .locals 2

    iget-object p1, p0, Lr5/i;->t:Lr5/l;

    invoke-virtual {p1, p2}, Lr5/l;->a(Ljava/lang/Runnable;)Z

    sget-object p1, Lr5/i;->v:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p2

    iget v0, p0, Lr5/i;->s:I

    if-ge p2, v0, :cond_2

    iget-object p2, p0, Lr5/i;->u:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lr5/i;->s:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_0

    monitor-exit p2

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p2

    invoke-virtual {p0}, Lr5/i;->z()Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p2, LE1/k;

    const/16 v0, 0x13

    const/4 v1, 0x0

    invoke-direct {p2, p0, p1, v0, v1}, LE1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    iget-object p1, p0, Lr5/i;->r:Lm5/s;

    invoke-virtual {p1, p0, p2}, Lm5/s;->x(LV4/i;Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public final z()Ljava/lang/Runnable;
    .locals 3

    :goto_0
    iget-object v0, p0, Lr5/i;->t:Lr5/l;

    invoke-virtual {v0}, Lr5/l;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lr5/i;->u:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lr5/i;->v:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    iget-object v2, p0, Lr5/i;->t:Lr5/l;

    invoke-virtual {v2}, Lr5/l;->c()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    return-object v0
.end method
