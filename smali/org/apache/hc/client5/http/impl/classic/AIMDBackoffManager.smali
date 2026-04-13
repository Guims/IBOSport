.class public Lorg/apache/hc/client5/http/impl/classic/AIMDBackoffManager;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/classic/BackoffManager;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Experimental;
.end annotation


# instance fields
.field private backoffFactor:D

.field private cap:I

.field private final clock:Lorg/apache/hc/client5/http/impl/classic/Clock;

.field private final connPerRoute:Lorg/apache/hc/core5/pool/ConnPoolControl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/pool/ConnPoolControl<",
            "Lorg/apache/hc/client5/http/HttpRoute;",
            ">;"
        }
    .end annotation
.end field

.field private coolDown:Lorg/apache/hc/core5/util/TimeValue;

.field private final lastRouteBackoffs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/hc/client5/http/HttpRoute;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final lastRouteProbes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/hc/client5/http/HttpRoute;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/pool/ConnPoolControl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/pool/ConnPoolControl<",
            "Lorg/apache/hc/client5/http/HttpRoute;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/apache/hc/client5/http/impl/classic/SystemClock;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/impl/classic/SystemClock;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/hc/client5/http/impl/classic/AIMDBackoffManager;-><init>(Lorg/apache/hc/core5/pool/ConnPoolControl;Lorg/apache/hc/client5/http/impl/classic/Clock;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/pool/ConnPoolControl;Lorg/apache/hc/client5/http/impl/classic/Clock;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/pool/ConnPoolControl<",
            "Lorg/apache/hc/client5/http/HttpRoute;",
            ">;",
            "Lorg/apache/hc/client5/http/impl/classic/Clock;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x5

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/TimeValue;->ofSeconds(J)Lorg/apache/hc/core5/util/TimeValue;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/AIMDBackoffManager;->coolDown:Lorg/apache/hc/core5/util/TimeValue;

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lorg/apache/hc/client5/http/impl/classic/AIMDBackoffManager;->backoffFactor:D

    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/hc/client5/http/impl/classic/AIMDBackoffManager;->cap:I

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/classic/AIMDBackoffManager;->clock:Lorg/apache/hc/client5/http/impl/classic/Clock;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/AIMDBackoffManager;->connPerRoute:Lorg/apache/hc/core5/pool/ConnPoolControl;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/AIMDBackoffManager;->lastRouteProbes:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/AIMDBackoffManager;->lastRouteBackoffs:Ljava/util/Map;

    return-void
.end method

.method private getBackedOffPoolSize(I)I
    .locals 4

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    return v0

    :cond_0
    iget-wide v0, p0, Lorg/apache/hc/client5/http/impl/classic/AIMDBackoffManager;->backoffFactor:D

    int-to-double v2, p1

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method private getLastUpdate(Ljava/util/Map;Lorg/apache/hc/client5/http/HttpRoute;)Ljava/lang/Long;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/apache/hc/client5/http/HttpRoute;",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/apache/hc/client5/http/HttpRoute;",
            ")",
            "Ljava/lang/Long;"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_0

    const-wide/16 p1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public backOff(Lorg/apache/hc/client5/http/HttpRoute;)V
    .locals 9

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/AIMDBackoffManager;->connPerRoute:Lorg/apache/hc/core5/pool/ConnPoolControl;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/AIMDBackoffManager;->connPerRoute:Lorg/apache/hc/core5/pool/ConnPoolControl;

    invoke-interface {v1, p1}, Lorg/apache/hc/core5/pool/ConnPoolControl;->getMaxPerRoute(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/classic/AIMDBackoffManager;->lastRouteBackoffs:Ljava/util/Map;

    invoke-direct {p0, v2, p1}, Lorg/apache/hc/client5/http/impl/classic/AIMDBackoffManager;->getLastUpdate(Ljava/util/Map;Lorg/apache/hc/client5/http/HttpRoute;)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/classic/AIMDBackoffManager;->clock:Lorg/apache/hc/client5/http/impl/classic/Clock;

    invoke-interface {v3}, Lorg/apache/hc/client5/http/impl/classic/Clock;->getCurrentTime()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v5, v3, v5

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/classic/AIMDBackoffManager;->coolDown:Lorg/apache/hc/core5/util/TimeValue;

    invoke-virtual {v2}, Lorg/apache/hc/core5/util/TimeValue;->toMilliseconds()J

    move-result-wide v7

    cmp-long v2, v5, v7

    if-gez v2, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/classic/AIMDBackoffManager;->connPerRoute:Lorg/apache/hc/core5/pool/ConnPoolControl;

    invoke-direct {p0, v1}, Lorg/apache/hc/client5/http/impl/classic/AIMDBackoffManager;->getBackedOffPoolSize(I)I

    move-result v1

    invoke-interface {v2, p1, v1}, Lorg/apache/hc/core5/pool/ConnPoolControl;->setMaxPerRoute(Ljava/lang/Object;I)V

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/AIMDBackoffManager;->lastRouteBackoffs:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public probe(Lorg/apache/hc/client5/http/HttpRoute;)V
    .locals 10

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/AIMDBackoffManager;->connPerRoute:Lorg/apache/hc/core5/pool/ConnPoolControl;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/AIMDBackoffManager;->connPerRoute:Lorg/apache/hc/core5/pool/ConnPoolControl;

    invoke-interface {v1, p1}, Lorg/apache/hc/core5/pool/ConnPoolControl;->getMaxPerRoute(Ljava/lang/Object;)I

    move-result v1

    iget v2, p0, Lorg/apache/hc/client5/http/impl/classic/AIMDBackoffManager;->cap:I

    if-lt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v1, 0x1

    :goto_0
    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/AIMDBackoffManager;->lastRouteProbes:Ljava/util/Map;

    invoke-direct {p0, v1, p1}, Lorg/apache/hc/client5/http/impl/classic/AIMDBackoffManager;->getLastUpdate(Ljava/util/Map;Lorg/apache/hc/client5/http/HttpRoute;)Ljava/lang/Long;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/classic/AIMDBackoffManager;->lastRouteBackoffs:Ljava/util/Map;

    invoke-direct {p0, v3, p1}, Lorg/apache/hc/client5/http/impl/classic/AIMDBackoffManager;->getLastUpdate(Ljava/util/Map;Lorg/apache/hc/client5/http/HttpRoute;)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/hc/client5/http/impl/classic/AIMDBackoffManager;->clock:Lorg/apache/hc/client5/http/impl/classic/Clock;

    invoke-interface {v4}, Lorg/apache/hc/client5/http/impl/classic/Clock;->getCurrentTime()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v4, v6

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/AIMDBackoffManager;->coolDown:Lorg/apache/hc/core5/util/TimeValue;

    invoke-virtual {v1}, Lorg/apache/hc/core5/util/TimeValue;->toMilliseconds()J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-ltz v1, :cond_2

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v4, v6

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/AIMDBackoffManager;->coolDown:Lorg/apache/hc/core5/util/TimeValue;

    invoke-virtual {v1}, Lorg/apache/hc/core5/util/TimeValue;->toMilliseconds()J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-gez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/AIMDBackoffManager;->connPerRoute:Lorg/apache/hc/core5/pool/ConnPoolControl;

    invoke-interface {v1, p1, v2}, Lorg/apache/hc/core5/pool/ConnPoolControl;->setMaxPerRoute(Ljava/lang/Object;I)V

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/AIMDBackoffManager;->lastRouteProbes:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setBackoffFactor(D)V
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Backoff factor must be 0.0 < f < 1.0"

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/Args;->check(ZLjava/lang/String;)V

    iput-wide p1, p0, Lorg/apache/hc/client5/http/impl/classic/AIMDBackoffManager;->backoffFactor:D

    return-void
.end method

.method public setCoolDown(Lorg/apache/hc/core5/util/TimeValue;)V
    .locals 3

    invoke-virtual {p1}, Lorg/apache/hc/core5/util/TimeValue;->getDuration()J

    move-result-wide v0

    const-string v2, "coolDown"

    invoke-static {v0, v1, v2}, Lorg/apache/hc/core5/util/Args;->positive(JLjava/lang/String;)J

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/AIMDBackoffManager;->coolDown:Lorg/apache/hc/core5/util/TimeValue;

    return-void
.end method

.method public setPerHostConnectionCap(I)V
    .locals 1

    const-string v0, "Per host connection cap"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->positive(ILjava/lang/String;)I

    iput p1, p0, Lorg/apache/hc/client5/http/impl/classic/AIMDBackoffManager;->cap:I

    return-void
.end method
