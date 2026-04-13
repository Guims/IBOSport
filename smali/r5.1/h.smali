.class public final Lr5/h;
.super Lm5/B;

# interfaces
.implements LX4/d;
.implements LV4/d;


# static fields
.field public static final w:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _reusableCancellableContinuation:Ljava/lang/Object;

.field public final s:Lm5/s;

.field public final t:LX4/c;

.field public u:Ljava/lang/Object;

.field public final v:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "_reusableCancellableContinuation"

    const-class v2, Lr5/h;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lr5/h;->w:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lm5/s;LX4/c;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lm5/B;-><init>(I)V

    iput-object p1, p0, Lr5/h;->s:Lm5/s;

    iput-object p2, p0, Lr5/h;->t:LX4/c;

    sget-object p1, Lr5/a;->c:LE1/a;

    iput-object p1, p0, Lr5/h;->u:Ljava/lang/Object;

    invoke-interface {p2}, LV4/d;->getContext()LV4/i;

    move-result-object p1

    invoke-static {p1}, Lr5/a;->k(LV4/i;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lr5/h;->v:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V
    .locals 0

    instance-of p1, p1, Lm5/o;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public final c()LV4/d;
    .locals 0

    return-object p0
.end method

.method public final g()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lr5/h;->u:Ljava/lang/Object;

    sget-object v1, Lr5/a;->c:LE1/a;

    iput-object v1, p0, Lr5/h;->u:Ljava/lang/Object;

    return-object v0
.end method

.method public final getCallerFrame()LX4/d;
    .locals 1

    iget-object v0, p0, Lr5/h;->t:LX4/c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getContext()LV4/i;
    .locals 1

    iget-object v0, p0, Lr5/h;->t:LX4/c;

    invoke-interface {v0}, LV4/d;->getContext()LV4/i;

    move-result-object v0

    return-object v0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 9

    iget-object v0, p0, Lr5/h;->t:LX4/c;

    invoke-interface {v0}, LV4/d;->getContext()LV4/i;

    move-result-object v1

    invoke-static {p1}, LS4/f;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v4, p1

    goto :goto_0

    :cond_0
    new-instance v4, Lm5/n;

    invoke-direct {v4, v2, v3}, Lm5/n;-><init>(Ljava/lang/Throwable;Z)V

    :goto_0
    iget-object v2, p0, Lr5/h;->s:Lm5/s;

    invoke-virtual {v2}, Lm5/s;->y()Z

    move-result v5

    if-eqz v5, :cond_1

    iput-object v4, p0, Lr5/h;->u:Ljava/lang/Object;

    iput v3, p0, Lm5/B;->r:I

    invoke-virtual {v2, v1, p0}, Lm5/s;->x(LV4/i;Ljava/lang/Runnable;)V

    return-void

    :cond_1
    invoke-static {}, Lm5/i0;->a()Lm5/I;

    move-result-object v1

    iget-wide v5, v1, Lm5/I;->r:J

    const-wide v7, 0x100000000L

    cmp-long v2, v5, v7

    if-ltz v2, :cond_3

    iput-object v4, p0, Lr5/h;->u:Ljava/lang/Object;

    iput v3, p0, Lm5/B;->r:I

    iget-object p1, v1, Lm5/I;->t:LT4/e;

    if-nez p1, :cond_2

    new-instance p1, LT4/e;

    invoke-direct {p1}, LT4/e;-><init>()V

    iput-object p1, v1, Lm5/I;->t:LT4/e;

    :cond_2
    invoke-virtual {p1, p0}, LT4/e;->addLast(Ljava/lang/Object;)V

    return-void

    :cond_3
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lm5/I;->B(Z)V

    :try_start_0
    invoke-interface {v0}, LV4/d;->getContext()LV4/i;

    move-result-object v3

    iget-object v4, p0, Lr5/h;->v:Ljava/lang/Object;

    invoke-static {v3, v4}, Lr5/a;->l(LV4/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0, p1}, LV4/d;->resumeWith(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v3, v4}, Lr5/a;->f(LV4/i;Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {v1}, Lm5/I;->D()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_4

    :goto_1
    invoke-virtual {v1, v2}, Lm5/I;->z(Z)V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-static {v3, v4}, Lr5/a;->f(LV4/i;Ljava/lang/Object;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v0}, Lm5/B;->f(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :goto_3
    return-void

    :catchall_2
    move-exception p1

    invoke-virtual {v1, v2}, Lm5/I;->z(Z)V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DispatchedContinuation["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lr5/h;->s:Lm5/s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lr5/h;->t:LX4/c;

    invoke-static {v1}, Lm5/w;->j(LV4/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
