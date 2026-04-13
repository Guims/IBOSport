.class public Lorg/apache/hc/core5/http/nio/support/AsyncServerExpectationFilter;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/AsyncFilterHandler;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateResponseContent(Lorg/apache/hc/core5/http/HttpResponse;)Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final handle(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/http/nio/AsyncFilterChain$ResponseTrigger;Lorg/apache/hc/core5/http/nio/AsyncFilterChain;)Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;
    .locals 2

    if-eqz p2, :cond_1

    const-string v0, "Expect"

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/http/MessageHeaders;->getFirstHeader(Ljava/lang/String;)Lorg/apache/hc/core5/http/Header;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "100-continue"

    invoke-interface {v0}, Lorg/apache/hc/core5/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p3}, Lorg/apache/hc/core5/http/nio/support/AsyncServerExpectationFilter;->verify(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/hc/core5/http/message/BasicHttpResponse;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/message/BasicHttpResponse;-><init>(I)V

    invoke-interface {p4, v0}, Lorg/apache/hc/core5/http/nio/AsyncFilterChain$ResponseTrigger;->sendInformation(Lorg/apache/hc/core5/http/HttpResponse;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/hc/core5/http/message/BasicHttpResponse;

    const/16 p2, 0x1a1

    invoke-direct {p1, p2}, Lorg/apache/hc/core5/http/message/BasicHttpResponse;-><init>(I)V

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/nio/support/AsyncServerExpectationFilter;->generateResponseContent(Lorg/apache/hc/core5/http/HttpResponse;)Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    move-result-object p2

    invoke-interface {p4, p1, p2}, Lorg/apache/hc/core5/http/nio/AsyncFilterChain$ResponseTrigger;->submitResponse(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;)V

    const/4 p1, 0x0

    return-object p1

    :cond_1
    :goto_0
    invoke-interface {p5, p1, p2, p3, p4}, Lorg/apache/hc/core5/http/nio/AsyncFilterChain;->proceed(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/http/nio/AsyncFilterChain$ResponseTrigger;)Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;

    move-result-object p1

    return-object p1
.end method

.method public verify(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
