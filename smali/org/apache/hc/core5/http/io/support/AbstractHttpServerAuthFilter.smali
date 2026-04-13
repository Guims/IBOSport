.class public abstract Lorg/apache/hc/core5/http/io/support/AbstractHttpServerAuthFilter;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/io/HttpFilterHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/hc/core5/http/io/HttpFilterHandler;"
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

    iput-boolean p1, p0, Lorg/apache/hc/core5/http/io/support/AbstractHttpServerAuthFilter;->respondImmediately:Z

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

.method public generateResponseContent(Lorg/apache/hc/core5/http/HttpResponse;)Lorg/apache/hc/core5/http/HttpEntity;
    .locals 1

    new-instance p1, Lorg/apache/hc/core5/http/io/entity/StringEntity;

    const-string v0, "Unauthorized"

    invoke-direct {p1, v0}, Lorg/apache/hc/core5/http/io/entity/StringEntity;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public final handle(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/io/HttpFilterChain$ResponseTrigger;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/http/io/HttpFilterChain;)V
    .locals 6

    const-string v0, "Authorization"

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/http/MessageHeaders;->getFirstHeader(Ljava/lang/String;)Lorg/apache/hc/core5/http/Header;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/hc/core5/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lorg/apache/hc/core5/http/io/support/AbstractHttpServerAuthFilter;->parseChallengeResponse(Ljava/lang/String;Lorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpRequest;->getAuthority()Lorg/apache/hc/core5/net/URIAuthority;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpRequest;->getRequestUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p3}, Lorg/apache/hc/core5/http/io/support/AbstractHttpServerAuthFilter;->authenticate(Ljava/lang/Object;Lorg/apache/hc/core5/net/URIAuthority;Ljava/lang/String;Lorg/apache/hc/core5/http/protocol/HttpContext;)Z

    move-result v3

    const-string v4, "Expect"

    invoke-interface {p1, v4}, Lorg/apache/hc/core5/http/MessageHeaders;->getFirstHeader(Ljava/lang/String;)Lorg/apache/hc/core5/http/Header;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, "100-continue"

    invoke-interface {v4}, Lorg/apache/hc/core5/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v3, :cond_3

    if-eqz v4, :cond_2

    new-instance v0, Lorg/apache/hc/core5/http/message/BasicClassicHttpResponse;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/message/BasicClassicHttpResponse;-><init>(I)V

    invoke-interface {p2, v0}, Lorg/apache/hc/core5/http/io/HttpFilterChain$ResponseTrigger;->sendInformation(Lorg/apache/hc/core5/http/ClassicHttpResponse;)V

    :cond_2
    invoke-interface {p4, p1, p2, p3}, Lorg/apache/hc/core5/http/io/HttpFilterChain;->proceed(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/io/HttpFilterChain$ResponseTrigger;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void

    :cond_3
    new-instance p4, Lorg/apache/hc/core5/http/message/BasicClassicHttpResponse;

    const/16 v3, 0x191

    invoke-direct {p4, v3}, Lorg/apache/hc/core5/http/message/BasicClassicHttpResponse;-><init>(I)V

    const-string v3, "WWW-Authenticate"

    invoke-virtual {p0, v0, v1, v2, p3}, Lorg/apache/hc/core5/http/io/support/AbstractHttpServerAuthFilter;->generateChallenge(Ljava/lang/Object;Lorg/apache/hc/core5/net/URIAuthority;Ljava/lang/String;Lorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p4, v3, p3}, Lorg/apache/hc/core5/http/HttpMessage;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p4}, Lorg/apache/hc/core5/http/io/support/AbstractHttpServerAuthFilter;->generateResponseContent(Lorg/apache/hc/core5/http/HttpResponse;)Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object p3

    invoke-interface {p4, p3}, Lorg/apache/hc/core5/http/HttpEntityContainer;->setEntity(Lorg/apache/hc/core5/http/HttpEntity;)V

    iget-boolean p3, p0, Lorg/apache/hc/core5/http/io/support/AbstractHttpServerAuthFilter;->respondImmediately:Z

    if-nez p3, :cond_5

    if-nez v4, :cond_5

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpEntityContainer;->getEntity()Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object p3

    if-nez p3, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpEntityContainer;->getEntity()Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/hc/core5/http/io/entity/EntityUtils;->consume(Lorg/apache/hc/core5/http/HttpEntity;)V

    invoke-interface {p2, p4}, Lorg/apache/hc/core5/http/io/HttpFilterChain$ResponseTrigger;->submitResponse(Lorg/apache/hc/core5/http/ClassicHttpResponse;)V

    return-void

    :cond_5
    :goto_2
    invoke-interface {p2, p4}, Lorg/apache/hc/core5/http/io/HttpFilterChain$ResponseTrigger;->submitResponse(Lorg/apache/hc/core5/http/ClassicHttpResponse;)V

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpEntityContainer;->getEntity()Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/hc/core5/http/io/entity/EntityUtils;->consume(Lorg/apache/hc/core5/http/HttpEntity;)V

    return-void
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
