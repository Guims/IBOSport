.class public Lorg/apache/hc/client5/http/impl/DefaultHttpRequestRetryStrategy;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/HttpRequestRetryStrategy;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultHttpRequestRetryStrategy;


# instance fields
.field private final defaultRetryInterval:Lorg/apache/hc/core5/util/TimeValue;

.field private final maxRetries:I

.field private final nonRetriableIOExceptionClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/io/IOException;",
            ">;>;"
        }
    .end annotation
.end field

.field private final retriableCodes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/impl/DefaultHttpRequestRetryStrategy;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/impl/DefaultHttpRequestRetryStrategy;-><init>()V

    sput-object v0, Lorg/apache/hc/client5/http/impl/DefaultHttpRequestRetryStrategy;->INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultHttpRequestRetryStrategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/TimeValue;->ofSeconds(J)Lorg/apache/hc/core5/util/TimeValue;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lorg/apache/hc/client5/http/impl/DefaultHttpRequestRetryStrategy;-><init>(ILorg/apache/hc/core5/util/TimeValue;)V

    return-void
.end method

.method public constructor <init>(ILorg/apache/hc/core5/util/TimeValue;)V
    .locals 6

    const-class v4, Ljava/net/NoRouteToHostException;

    const-class v5, Ljavax/net/ssl/SSLException;

    const-class v0, Ljava/io/InterruptedIOException;

    const-class v1, Ljava/net/UnknownHostException;

    const-class v2, Ljava/net/ConnectException;

    const-class v3, Lorg/apache/hc/core5/http/ConnectionClosedException;

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x1ad

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1f7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/hc/client5/http/impl/DefaultHttpRequestRetryStrategy;-><init>(ILorg/apache/hc/core5/util/TimeValue;Ljava/util/Collection;Ljava/util/Collection;)V

    return-void
.end method

.method public constructor <init>(ILorg/apache/hc/core5/util/TimeValue;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/hc/core5/util/TimeValue;",
            "Ljava/util/Collection<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/io/IOException;",
            ">;>;",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "maxRetries"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNegative(ILjava/lang/String;)I

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/TimeValue;->getDuration()J

    move-result-wide v0

    const-string v2, "defaultRetryInterval"

    invoke-static {v0, v1, v2}, Lorg/apache/hc/core5/util/Args;->notNegative(JLjava/lang/String;)J

    iput p1, p0, Lorg/apache/hc/client5/http/impl/DefaultHttpRequestRetryStrategy;->maxRetries:I

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/DefaultHttpRequestRetryStrategy;->defaultRetryInterval:Lorg/apache/hc/core5/util/TimeValue;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/DefaultHttpRequestRetryStrategy;->nonRetriableIOExceptionClasses:Ljava/util/Set;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/DefaultHttpRequestRetryStrategy;->retriableCodes:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public getRetryInterval(Lorg/apache/hc/core5/http/HttpResponse;ILorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/util/TimeValue;
    .locals 2

    const-string p2, "response"

    invoke-static {p1, p2}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p2, "Retry-After"

    invoke-interface {p1, p2}, Lorg/apache/hc/core5/http/MessageHeaders;->getFirstHeader(Ljava/lang/String;)Lorg/apache/hc/core5/http/Header;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/apache/hc/core5/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    invoke-static {p2, p3}, Lorg/apache/hc/core5/util/TimeValue;->ofSeconds(J)Lorg/apache/hc/core5/util/TimeValue;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {p1}, Lorg/apache/hc/client5/http/utils/DateUtils;->parseStandardDate(Ljava/lang/String;)Ljava/time/Instant;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, LW3/h;->d(Ljava/time/Instant;)J

    move-result-wide p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Lorg/apache/hc/core5/util/TimeValue;->ofMilliseconds(J)Lorg/apache/hc/core5/util/TimeValue;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lorg/apache/hc/core5/util/TimeValue;->isPositive(Lorg/apache/hc/core5/util/TimeValue;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    :cond_1
    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/DefaultHttpRequestRetryStrategy;->defaultRetryInterval:Lorg/apache/hc/core5/util/TimeValue;

    return-object p1
.end method

.method public handleAsIdempotent(Lorg/apache/hc/core5/http/HttpRequest;)Z
    .locals 0

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/hc/core5/http/Method;->isIdempotent(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public retryRequest(Lorg/apache/hc/core5/http/HttpRequest;Ljava/io/IOException;ILorg/apache/hc/core5/http/protocol/HttpContext;)Z
    .locals 1

    const-string p4, "request"

    invoke-static {p1, p4}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p4, "exception"

    invoke-static {p2, p4}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget p4, p0, Lorg/apache/hc/client5/http/impl/DefaultHttpRequestRetryStrategy;->maxRetries:I

    const/4 v0, 0x0

    if-le p3, p4, :cond_0

    return v0

    :cond_0
    iget-object p3, p0, Lorg/apache/hc/client5/http/impl/DefaultHttpRequestRetryStrategy;->nonRetriableIOExceptionClasses:Ljava/util/Set;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    return v0

    :cond_1
    iget-object p3, p0, Lorg/apache/hc/client5/http/impl/DefaultHttpRequestRetryStrategy;->nonRetriableIOExceptionClasses:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Class;

    invoke-virtual {p4, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    return v0

    :cond_3
    instance-of p2, p1, Lorg/apache/hc/core5/concurrent/CancellableDependency;

    if-eqz p2, :cond_4

    move-object p2, p1

    check-cast p2, Lorg/apache/hc/core5/concurrent/CancellableDependency;

    invoke-interface {p2}, Lorg/apache/hc/core5/concurrent/CancellableDependency;->isCancelled()Z

    move-result p2

    if-eqz p2, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/DefaultHttpRequestRetryStrategy;->handleAsIdempotent(Lorg/apache/hc/core5/http/HttpRequest;)Z

    move-result p1

    return p1
.end method

.method public retryRequest(Lorg/apache/hc/core5/http/HttpResponse;ILorg/apache/hc/core5/http/protocol/HttpContext;)Z
    .locals 0

    const-string p3, "response"

    invoke-static {p1, p3}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget p3, p0, Lorg/apache/hc/client5/http/impl/DefaultHttpRequestRetryStrategy;->maxRetries:I

    if-gt p2, p3, :cond_0

    iget-object p2, p0, Lorg/apache/hc/client5/http/impl/DefaultHttpRequestRetryStrategy;->retriableCodes:Ljava/util/Set;

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpResponse;->getCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
