.class public Lorg/apache/hc/client5/http/impl/DefaultConnectionKeepAliveStrategy;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/ConnectionKeepAliveStrategy;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultConnectionKeepAliveStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/impl/DefaultConnectionKeepAliveStrategy;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/impl/DefaultConnectionKeepAliveStrategy;-><init>()V

    sput-object v0, Lorg/apache/hc/client5/http/impl/DefaultConnectionKeepAliveStrategy;->INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultConnectionKeepAliveStrategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeepAliveDuration(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/util/TimeValue;
    .locals 3

    const-string v0, "HTTP response"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "keep-alive"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/http/message/MessageSupport;->iterate(Lorg/apache/hc/core5/http/MessageHeaders;Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p1

    :catch_0
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/HeaderElement;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/hc/core5/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "timeout"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/TimeValue;->ofSeconds(J)Lorg/apache/hc/core5/util/TimeValue;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_1
    invoke-static {p2}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->adapt(Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/hc/client5/http/config/RequestConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/hc/client5/http/config/RequestConfig;->getConnectionKeepAlive()Lorg/apache/hc/core5/util/TimeValue;

    move-result-object p1

    return-object p1
.end method
