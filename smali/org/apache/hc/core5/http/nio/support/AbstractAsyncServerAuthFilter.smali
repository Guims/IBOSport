.class public abstract Lorg/apache/hc/core5/http/nio/support/AbstractAsyncServerAuthFilter;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/AsyncFilterHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/hc/core5/http/nio/AsyncFilterHandler;"
    }
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# instance fields
.field private final respondImmediately:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncServerAuthFilter;->respondImmediately:Z

    return-void
.end method


# virtual methods
.method public abstract authenticate(Ljava/lang/Object;Lorg/apache/hc/core5/net/URIAuthority;Ljava/lang/String;Lorg/apache/hc/core5/http/protocol/HttpContext;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/hc/core5/net/URIAuthority;",
            "Ljava/lang/String;",
            "Lorg/apache/hc/core5/http/protocol/HttpContext;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract generateChallenge(Ljava/lang/Object;Lorg/apache/hc/core5/net/URIAuthority;Ljava/lang/String;Lorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/hc/core5/net/URIAuthority;",
            "Ljava/lang/String;",
            "Lorg/apache/hc/core5/http/protocol/HttpContext;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public generateResponseContent(Lorg/apache/hc/core5/http/HttpResponse;)Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;
    .locals 0

    const-string p1, "Unauthorized"

    invoke-static {p1}, Lorg/apache/hc/core5/http/nio/entity/AsyncEntityProducers;->create(Ljava/lang/String;)Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    move-result-object p1

    return-object p1
.end method

.method public final handle(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/http/nio/AsyncFilterChain$ResponseTrigger;Lorg/apache/hc/core5/http/nio/AsyncFilterChain;)Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;
    .locals 7

    const-string v0, "Authorization"

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/http/MessageHeaders;->getFirstHeader(Ljava/lang/String;)Lorg/apache/hc/core5/http/Header;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/hc/core5/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncServerAuthFilter;->parseChallengeResponse(Ljava/lang/String;Lorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpRequest;->getAuthority()Lorg/apache/hc/core5/net/URIAuthority;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpRequest;->getRequestUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3, p3}, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncServerAuthFilter;->authenticate(Ljava/lang/Object;Lorg/apache/hc/core5/net/URIAuthority;Ljava/lang/String;Lorg/apache/hc/core5/http/protocol/HttpContext;)Z

    move-result v4

    const-string v5, "Expect"

    invoke-interface {p1, v5}, Lorg/apache/hc/core5/http/MessageHeaders;->getFirstHeader(Ljava/lang/String;)Lorg/apache/hc/core5/http/Header;

    move-result-object v5

    if-eqz v5, :cond_1

    const-string v6, "100-continue"

    invoke-interface {v5}, Lorg/apache/hc/core5/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v4, :cond_3

    if-eqz v5, :cond_2

    new-instance v0, Lorg/apache/hc/core5/http/message/BasicClassicHttpResponse;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/message/BasicClassicHttpResponse;-><init>(I)V

    invoke-interface {p4, v0}, Lorg/apache/hc/core5/http/nio/AsyncFilterChain$ResponseTrigger;->sendInformation(Lorg/apache/hc/core5/http/HttpResponse;)V

    :cond_2
    invoke-interface {p5, p1, p2, p3, p4}, Lorg/apache/hc/core5/http/nio/AsyncFilterChain;->proceed(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/http/nio/AsyncFilterChain$ResponseTrigger;)Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Lorg/apache/hc/core5/http/message/BasicHttpResponse;

    const/16 p5, 0x191

    invoke-direct {p1, p5}, Lorg/apache/hc/core5/http/message/BasicHttpResponse;-><init>(I)V

    const-string p5, "WWW-Authenticate"

    invoke-virtual {p0, v0, v2, v3, p3}, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncServerAuthFilter;->generateChallenge(Ljava/lang/Object;Lorg/apache/hc/core5/net/URIAuthority;Ljava/lang/String;Lorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p5, p3}, Lorg/apache/hc/core5/http/HttpMessage;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncServerAuthFilter;->generateResponseContent(Lorg/apache/hc/core5/http/HttpResponse;)Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    move-result-object p3

    iget-boolean p5, p0, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncServerAuthFilter;->respondImmediately:Z

    if-nez p5, :cond_5

    if-nez v5, :cond_5

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    new-instance p2, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncServerAuthFilter$1;

    invoke-direct {p2, p0, p4, p1, p3}, Lorg/apache/hc/core5/http/nio/support/AbstractAsyncServerAuthFilter$1;-><init>(Lorg/apache/hc/core5/http/nio/support/AbstractAsyncServerAuthFilter;Lorg/apache/hc/core5/http/nio/AsyncFilterChain$ResponseTrigger;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;)V

    return-object p2

    :cond_5
    :goto_2
    invoke-interface {p4, p1, p3}, Lorg/apache/hc/core5/http/nio/AsyncFilterChain$ResponseTrigger;->submitResponse(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;)V

    return-object v1
.end method

.method public abstract parseChallengeResponse(Ljava/lang/String;Lorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/hc/core5/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation
.end method
