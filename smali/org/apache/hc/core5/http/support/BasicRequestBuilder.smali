.class public Lorg/apache/hc/core5/http/support/BasicRequestBuilder;
.super Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/hc/core5/http/support/AbstractRequestBuilder<",
        "Lorg/apache/hc/core5/http/message/BasicHttpRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/net/URI;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;-><init>(Ljava/lang/String;Ljava/net/URI;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/Method;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/Method;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/Method;Ljava/net/URI;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;Ljava/net/URI;)V

    return-void
.end method

.method public static copy(Lorg/apache/hc/core5/http/HttpRequest;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;
    .locals 2

    const-string v0, "HTTP request"

    invoke-static {p0, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    invoke-interface {p0}, Lorg/apache/hc/core5/http/HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->digest(Lorg/apache/hc/core5/http/HttpRequest;)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;
    .locals 1

    const-string v0, "HTTP method"

    invoke-static {p0, v0}, Lorg/apache/hc/core5/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    new-instance v0, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    invoke-direct {v0, p0}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static delete()Lorg/apache/hc/core5/http/support/BasicRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->DELETE:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;)V

    return-object v0
.end method

.method public static delete(Ljava/lang/String;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->DELETE:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1, p0}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;Ljava/lang/String;)V

    return-object v0
.end method

.method public static delete(Ljava/net/URI;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->DELETE:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1, p0}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;Ljava/net/URI;)V

    return-object v0
.end method

.method public static get()Lorg/apache/hc/core5/http/support/BasicRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->GET:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;)V

    return-object v0
.end method

.method public static get(Ljava/lang/String;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->GET:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1, p0}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;Ljava/lang/String;)V

    return-object v0
.end method

.method public static get(Ljava/net/URI;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->GET:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1, p0}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;Ljava/net/URI;)V

    return-object v0
.end method

.method public static head()Lorg/apache/hc/core5/http/support/BasicRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->HEAD:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;)V

    return-object v0
.end method

.method public static head(Ljava/lang/String;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->HEAD:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1, p0}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;Ljava/lang/String;)V

    return-object v0
.end method

.method public static head(Ljava/net/URI;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->HEAD:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1, p0}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;Ljava/net/URI;)V

    return-object v0
.end method

.method public static options()Lorg/apache/hc/core5/http/support/BasicRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->OPTIONS:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;)V

    return-object v0
.end method

.method public static options(Ljava/lang/String;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->OPTIONS:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1, p0}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;Ljava/lang/String;)V

    return-object v0
.end method

.method public static options(Ljava/net/URI;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->OPTIONS:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1, p0}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;Ljava/net/URI;)V

    return-object v0
.end method

.method public static patch()Lorg/apache/hc/core5/http/support/BasicRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->PATCH:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;)V

    return-object v0
.end method

.method public static patch(Ljava/lang/String;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->PATCH:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1, p0}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;Ljava/lang/String;)V

    return-object v0
.end method

.method public static patch(Ljava/net/URI;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->PATCH:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1, p0}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;Ljava/net/URI;)V

    return-object v0
.end method

.method public static post()Lorg/apache/hc/core5/http/support/BasicRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->POST:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;)V

    return-object v0
.end method

.method public static post(Ljava/lang/String;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->POST:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1, p0}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;Ljava/lang/String;)V

    return-object v0
.end method

.method public static post(Ljava/net/URI;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->POST:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1, p0}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;Ljava/net/URI;)V

    return-object v0
.end method

.method public static put()Lorg/apache/hc/core5/http/support/BasicRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->PUT:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;)V

    return-object v0
.end method

.method public static put(Ljava/lang/String;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->PUT:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1, p0}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;Ljava/lang/String;)V

    return-object v0
.end method

.method public static put(Ljava/net/URI;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->PUT:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1, p0}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;Ljava/net/URI;)V

    return-object v0
.end method

.method public static trace()Lorg/apache/hc/core5/http/support/BasicRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->TRACE:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;)V

    return-object v0
.end method

.method public static trace(Ljava/lang/String;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->TRACE:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1, p0}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;Ljava/lang/String;)V

    return-object v0
.end method

.method public static trace(Ljava/net/URI;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->TRACE:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1, p0}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;Ljava/net/URI;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractMessageBuilder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/AbstractMessageBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;->addHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;->addHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public addHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->addHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic addParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addParameter(Lorg/apache/hc/core5/http/NameValuePair;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;->addParameter(Lorg/apache/hc/core5/http/NameValuePair;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public addParameter(Lorg/apache/hc/core5/http/NameValuePair;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->addParameter(Lorg/apache/hc/core5/http/NameValuePair;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic addParameters([Lorg/apache/hc/core5/http/NameValuePair;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;->addParameters([Lorg/apache/hc/core5/http/NameValuePair;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs addParameters([Lorg/apache/hc/core5/http/NameValuePair;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->addParameters([Lorg/apache/hc/core5/http/NameValuePair;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;->build()Lorg/apache/hc/core5/http/message/BasicHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/hc/core5/http/message/BasicHttpRequest;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->getParameters()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    new-instance v2, Lorg/apache/hc/core5/net/URIBuilder;

    invoke-direct {v2, v0}, Lorg/apache/hc/core5/net/URIBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/hc/core5/net/URIBuilder;->setCharset(Ljava/nio/charset/Charset;)Lorg/apache/hc/core5/net/URIBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/hc/core5/net/URIBuilder;->addParameters(Ljava/util/List;)Lorg/apache/hc/core5/net/URIBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/hc/core5/net/URIBuilder;->build()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    new-instance v1, Lorg/apache/hc/core5/http/message/BasicHttpRequest;

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->getAuthority()Lorg/apache/hc/core5/net/URIAuthority;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/apache/hc/core5/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/hc/core5/net/URIAuthority;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/support/AbstractMessageBuilder;->getVersion()Lorg/apache/hc/core5/http/ProtocolVersion;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->setVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)V

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/support/AbstractMessageBuilder;->getHeaders()[Lorg/apache/hc/core5/http/Header;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/hc/core5/http/message/HeaderGroup;->setHeaders([Lorg/apache/hc/core5/http/Header;)V

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->isAbsoluteRequestUri()Z

    move-result v0

    invoke-virtual {v1, v0}, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->setAbsoluteRequestUri(Z)V

    return-object v1
.end method

.method public bridge synthetic removeHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/AbstractMessageBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;->removeHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;->removeHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public removeHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->removeHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic removeHeaders(Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractMessageBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;->removeHeaders(Ljava/lang/String;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeHeaders(Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;->removeHeaders(Ljava/lang/String;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public removeHeaders(Ljava/lang/String;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->removeHeaders(Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic setAbsoluteRequestUri(Z)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;->setAbsoluteRequestUri(Z)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setAbsoluteRequestUri(Z)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->setAbsoluteRequestUri(Z)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic setAuthority(Lorg/apache/hc/core5/net/URIAuthority;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;->setAuthority(Lorg/apache/hc/core5/net/URIAuthority;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setAuthority(Lorg/apache/hc/core5/net/URIAuthority;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->setAuthority(Lorg/apache/hc/core5/net/URIAuthority;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic setCharset(Ljava/nio/charset/Charset;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;->setCharset(Ljava/nio/charset/Charset;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setCharset(Ljava/nio/charset/Charset;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->setCharset(Ljava/nio/charset/Charset;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic setHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractMessageBuilder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/AbstractMessageBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;->setHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;->setHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public setHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->setHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic setHeaders([Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/AbstractMessageBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;->setHeaders([Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setHeaders([Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;->setHeaders([Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs setHeaders([Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->setHeaders([Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic setHttpHost(Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;->setHttpHost(Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setHttpHost(Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->setHttpHost(Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic setPath(Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;->setPath(Ljava/lang/String;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setPath(Ljava/lang/String;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->setPath(Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic setScheme(Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;->setScheme(Ljava/lang/String;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setScheme(Ljava/lang/String;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->setScheme(Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic setUri(Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;->setUri(Ljava/lang/String;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUri(Ljava/net/URI;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;->setUri(Ljava/net/URI;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setUri(Ljava/lang/String;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->setUri(Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public setUri(Ljava/net/URI;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->setUri(Ljava/net/URI;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic setVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)Lorg/apache/hc/core5/http/support/AbstractMessageBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;->setVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;->setVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->setVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BasicRequestBuilder [method="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", scheme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", authority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->getAuthority()Lorg/apache/hc/core5/net/URIAuthority;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", parameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->getParameters()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", headerGroup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/support/AbstractMessageBuilder;->getHeaders()[Lorg/apache/hc/core5/http/Header;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
