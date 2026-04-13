.class public Lorg/apache/hc/client5/http/protocol/RequestClientConnControl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/HttpRequestInterceptor;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field private static final LOG:LO5/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/hc/client5/http/protocol/RequestClientConnControl;

    invoke-static {v0}, LO5/b;->d(Ljava/lang/Class;)LO5/a;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/protocol/RequestClientConnControl;->LOG:LO5/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 1

    const-string p2, "HTTP request"

    invoke-static {p1, p2}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lorg/apache/hc/core5/http/Method;->CONNECT:Lorg/apache/hc/core5/http/Method;

    invoke-virtual {v0, p2}, Lorg/apache/hc/core5/http/Method;->isSame(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->adapt(Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getExchangeId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getHttpRoute()Lorg/apache/hc/client5/http/RouteInfo;

    move-result-object p2

    if-nez p2, :cond_1

    sget-object p1, Lorg/apache/hc/client5/http/protocol/RequestClientConnControl;->LOG:LO5/a;

    invoke-interface {p1}, LO5/a;->c()Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "{} Connection route not set in the context"

    invoke-interface {p1, p3, p2}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-interface {p2}, Lorg/apache/hc/client5/http/RouteInfo;->getHopCount()I

    move-result p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    invoke-interface {p2}, Lorg/apache/hc/client5/http/RouteInfo;->isTunnelled()Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_2
    const-string p2, "Connection"

    invoke-interface {p1, p2}, Lorg/apache/hc/core5/http/MessageHeaders;->containsHeader(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_3

    const-string p3, "keep-alive"

    invoke-interface {p1, p2, p3}, Lorg/apache/hc/core5/http/HttpMessage;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method
