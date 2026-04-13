.class public Lorg/apache/hc/core5/http/protocol/HttpCoreContext;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/protocol/HttpContext;


# static fields
.field public static final CONNECTION_ENDPOINT:Ljava/lang/String; = "http.connection-endpoint"

.field public static final HTTP_REQUEST:Ljava/lang/String; = "http.request"

.field public static final HTTP_RESPONSE:Ljava/lang/String; = "http.response"

.field public static final SSL_SESSION:Ljava/lang/String; = "http.ssl-session"


# instance fields
.field private final context:Lorg/apache/hc/core5/http/protocol/HttpContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/hc/core5/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/hc/core5/http/protocol/BasicHttpContext;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->context:Lorg/apache/hc/core5/http/protocol/HttpContext;

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->context:Lorg/apache/hc/core5/http/protocol/HttpContext;

    return-void
.end method

.method public static adapt(Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/protocol/HttpCoreContext;
    .locals 1

    if-nez p0, :cond_0

    new-instance p0, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

    invoke-direct {p0}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;-><init>()V

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

    return-object p0

    :cond_1
    new-instance v0, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

    invoke-direct {v0, p0}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;-><init>(Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-object v0
.end method

.method public static create()Lorg/apache/hc/core5/http/protocol/HttpCoreContext;
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;

    invoke-direct {v0}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->context:Lorg/apache/hc/core5/http/protocol/HttpContext;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAttribute(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "Attribute class"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getEndpointDetails()Lorg/apache/hc/core5/http/EndpointDetails;
    .locals 2

    const-string v0, "http.connection-endpoint"

    const-class v1, Lorg/apache/hc/core5/http/EndpointDetails;

    invoke-virtual {p0, v0, v1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->getAttribute(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/EndpointDetails;

    return-object v0
.end method

.method public getProtocolVersion()Lorg/apache/hc/core5/http/ProtocolVersion;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->context:Lorg/apache/hc/core5/http/protocol/HttpContext;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/protocol/HttpContext;->getProtocolVersion()Lorg/apache/hc/core5/http/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method public getRequest()Lorg/apache/hc/core5/http/HttpRequest;
    .locals 2

    const-string v0, "http.request"

    const-class v1, Lorg/apache/hc/core5/http/HttpRequest;

    invoke-virtual {p0, v0, v1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->getAttribute(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/HttpRequest;

    return-object v0
.end method

.method public getResponse()Lorg/apache/hc/core5/http/HttpResponse;
    .locals 2

    const-string v0, "http.response"

    const-class v1, Lorg/apache/hc/core5/http/HttpResponse;

    invoke-virtual {p0, v0, v1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->getAttribute(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/HttpResponse;

    return-object v0
.end method

.method public getSSLSession()Ljavax/net/ssl/SSLSession;
    .locals 2

    const-string v0, "http.ssl-session"

    const-class v1, Ljavax/net/ssl/SSLSession;

    invoke-virtual {p0, v0, v1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->getAttribute(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSession;

    return-object v0
.end method

.method public removeAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->context:Lorg/apache/hc/core5/http/protocol/HttpContext;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/protocol/HttpContext;->removeAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->context:Lorg/apache/hc/core5/http/protocol/HttpContext;

    invoke-interface {v0, p1, p2}, Lorg/apache/hc/core5/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setProtocolVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->context:Lorg/apache/hc/core5/http/protocol/HttpContext;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/protocol/HttpContext;->setProtocolVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)V

    return-void
.end method
