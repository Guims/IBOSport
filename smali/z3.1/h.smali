.class public final Lz3/h;
.super Lo/g;

# interfaces
.implements Ljava/util/concurrent/ScheduledFuture;


# instance fields
.field public final w:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method public constructor <init>(Lz3/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lv0/f;

    invoke-direct {v0, p0}, Lv0/f;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lz3/g;->a(Lv0/f;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lz3/h;->w:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/util/concurrent/Delayed;

    iget-object v0, p0, Lz3/h;->w:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lz3/h;->w:Ljava/util/concurrent/ScheduledFuture;

    iget-object v1, p0, Lo/g;->b:Ljava/lang/Object;

    instance-of v2, v1, Lo/a;

    if-eqz v2, :cond_0

    check-cast v1, Lo/a;

    iget-boolean v1, v1, Lo/a;->a:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void
.end method

.method public final getDelay(Ljava/util/concurrent/TimeUnit;)J
    .locals 2

    iget-object v0, p0, Lz3/h;->w:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method
