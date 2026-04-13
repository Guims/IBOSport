.class public Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;
.super Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/hc/core5/http/support/AbstractRequestBuilder<",
        "Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private body:Lorg/apache/hc/client5/http/async/methods/SimpleBody;

.field private requestConfig:Lorg/apache/hc/client5/http/config/RequestConfig;


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

.method public static copy(Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;
    .locals 2

    const-string v0, "HTTP request"

    invoke-static {p0, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;->digest(Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;)V

    return-object v0
.end method

.method public static copy(Lorg/apache/hc/core5/http/HttpRequest;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;
    .locals 2

    const-string v0, "HTTP request"

    invoke-static {p0, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;

    invoke-interface {p0}, Lorg/apache/hc/core5/http/HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;->digest(Lorg/apache/hc/core5/http/HttpRequest;)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;
    .locals 1

    const-string v0, "HTTP method"

    invoke-static {p0, v0}, Lorg/apache/hc/core5/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    new-instance v0, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;

    invoke-direct {v0, p0}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static create(Lorg/apache/hc/core5/http/Method;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;
    .locals 1

    const-string v0, "HTTP method"

    invoke-static {p0, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;

    invoke-direct {v0, p0}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;)V

    return-object v0
.end method

.method public static delete()Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->DELETE:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;)V

    return-object v0
.end method

.method public static delete(Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->DELETE:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1, p0}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;Ljava/lang/String;)V

    return-object v0
.end method

.method public static delete(Ljava/net/URI;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->DELETE:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1, p0}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;Ljava/net/URI;)V

    return-object v0
.end method

.method public static get()Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->GET:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;)V

    return-object v0
.end method

.method public static get(Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->GET:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1, p0}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;Ljava/lang/String;)V

    return-object v0
.end method

.method public static get(Ljava/net/URI;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->GET:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1, p0}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;Ljava/net/URI;)V

    return-object v0
.end method

.method public static head()Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->HEAD:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;)V

    return-object v0
.end method

.method public static head(Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->HEAD:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1, p0}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;Ljava/lang/String;)V

    return-object v0
.end method

.method public static head(Ljava/net/URI;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->HEAD:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1, p0}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;Ljava/net/URI;)V

    return-object v0
.end method

.method public static options()Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->OPTIONS:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;)V

    return-object v0
.end method

.method public static options(Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->OPTIONS:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1, p0}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;Ljava/lang/String;)V

    return-object v0
.end method

.method public static options(Ljava/net/URI;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->OPTIONS:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1, p0}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;Ljava/net/URI;)V

    return-object v0
.end method

.method public static patch()Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->PATCH:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;)V

    return-object v0
.end method

.method public static patch(Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->PATCH:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1, p0}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;Ljava/lang/String;)V

    return-object v0
.end method

.method public static patch(Ljava/net/URI;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->PATCH:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1, p0}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;Ljava/net/URI;)V

    return-object v0
.end method

.method public static post()Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->POST:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;)V

    return-object v0
.end method

.method public static post(Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->POST:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1, p0}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;Ljava/lang/String;)V

    return-object v0
.end method

.method public static post(Ljava/net/URI;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->POST:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1, p0}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;Ljava/net/URI;)V

    return-object v0
.end method

.method public static put()Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->PUT:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;)V

    return-object v0
.end method

.method public static put(Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->PUT:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1, p0}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;Ljava/lang/String;)V

    return-object v0
.end method

.method public static put(Ljava/net/URI;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->PUT:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1, p0}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;Ljava/net/URI;)V

    return-object v0
.end method

.method public static trace()Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->TRACE:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;)V

    return-object v0
.end method

.method public static trace(Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->TRACE:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1, p0}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;Ljava/lang/String;)V

    return-object v0
.end method

.method public static trace(Ljava/net/URI;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->TRACE:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1, p0}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;Ljava/net/URI;)V

    return-object v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public addHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->addHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractMessageBuilder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/AbstractMessageBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;->addHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;->addHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public addParameter(Lorg/apache/hc/core5/http/NameValuePair;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->addParameter(Lorg/apache/hc/core5/http/NameValuePair;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic addParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addParameter(Lorg/apache/hc/core5/http/NameValuePair;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;->addParameter(Lorg/apache/hc/core5/http/NameValuePair;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs addParameters([Lorg/apache/hc/core5/http/NameValuePair;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->addParameters([Lorg/apache/hc/core5/http/NameValuePair;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic addParameters([Lorg/apache/hc/core5/http/NameValuePair;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;->addParameters([Lorg/apache/hc/core5/http/NameValuePair;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;->build()Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;
    .locals 6

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;->body:Lorg/apache/hc/client5/http/async/methods/SimpleBody;

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->getParameters()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    if-nez v1, :cond_2

    sget-object v5, Lorg/apache/hc/core5/http/Method;->POST:Lorg/apache/hc/core5/http/Method;

    invoke-virtual {v5, v2}, Lorg/apache/hc/core5/http/Method;->isSame(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lorg/apache/hc/core5/http/Method;->PUT:Lorg/apache/hc/core5/http/Method;

    invoke-virtual {v5, v2}, Lorg/apache/hc/core5/http/Method;->isSame(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/apache/hc/core5/http/ContentType;->APPLICATION_FORM_URLENCODED:Lorg/apache/hc/core5/http/ContentType;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http/ContentType;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    :goto_0
    invoke-static {v3, v4}, Lorg/apache/hc/core5/net/WWWFormCodec;->format(Ljava/lang/Iterable;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lorg/apache/hc/core5/http/ContentType;->APPLICATION_FORM_URLENCODED:Lorg/apache/hc/core5/http/ContentType;

    invoke-static {v1, v3}, Lorg/apache/hc/client5/http/async/methods/SimpleBody;->create(Ljava/lang/String;Lorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/client5/http/async/methods/SimpleBody;

    move-result-object v1

    goto :goto_1

    :cond_2
    :try_start_0
    new-instance v5, Lorg/apache/hc/core5/net/URIBuilder;

    invoke-direct {v5, v0}, Lorg/apache/hc/core5/net/URIBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Lorg/apache/hc/core5/net/URIBuilder;->setCharset(Ljava/nio/charset/Charset;)Lorg/apache/hc/core5/net/URIBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/hc/core5/net/URIBuilder;->addParameters(Ljava/util/List;)Lorg/apache/hc/core5/net/URIBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/hc/core5/net/URIBuilder;->build()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_1
    if-eqz v1, :cond_5

    sget-object v3, Lorg/apache/hc/core5/http/Method;->TRACE:Lorg/apache/hc/core5/http/Method;

    invoke-virtual {v3, v2}, Lorg/apache/hc/core5/http/Method;->isSame(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " requests may not include an entity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_2
    new-instance v3, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->getAuthority()Lorg/apache/hc/core5/net/URIAuthority;

    move-result-object v5

    invoke-direct {v3, v2, v4, v5, v0}, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/hc/core5/net/URIAuthority;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/support/AbstractMessageBuilder;->getVersion()Lorg/apache/hc/core5/http/ProtocolVersion;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->setVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)V

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/support/AbstractMessageBuilder;->getHeaders()[Lorg/apache/hc/core5/http/Header;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/hc/core5/http/message/HeaderGroup;->setHeaders([Lorg/apache/hc/core5/http/Header;)V

    invoke-virtual {v3, v1}, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;->setBody(Lorg/apache/hc/client5/http/async/methods/SimpleBody;)V

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->isAbsoluteRequestUri()Z

    move-result v0

    invoke-virtual {v3, v0}, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->setAbsoluteRequestUri(Z)V

    iget-object v0, p0, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;->requestConfig:Lorg/apache/hc/client5/http/config/RequestConfig;

    invoke-virtual {v3, v0}, Lorg/apache/hc/client5/http/async/methods/ConfigurableHttpRequest;->setConfig(Lorg/apache/hc/client5/http/config/RequestConfig;)V

    return-object v3
.end method

.method public digest(Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->digest(Lorg/apache/hc/core5/http/HttpRequest;)V

    invoke-virtual {p1}, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;->getBody()Lorg/apache/hc/client5/http/async/methods/SimpleBody;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;->setBody(Lorg/apache/hc/client5/http/async/methods/SimpleBody;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;

    return-void
.end method

.method public digest(Lorg/apache/hc/core5/http/HttpRequest;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->digest(Lorg/apache/hc/core5/http/HttpRequest;)V

    return-void
.end method

.method public getBody()Lorg/apache/hc/client5/http/async/methods/SimpleBody;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;->body:Lorg/apache/hc/client5/http/async/methods/SimpleBody;

    return-object v0
.end method

.method public getRequestConfig()Lorg/apache/hc/client5/http/config/RequestConfig;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;->requestConfig:Lorg/apache/hc/client5/http/config/RequestConfig;

    return-object v0
.end method

.method public removeHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->removeHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic removeHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/AbstractMessageBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;->removeHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;->removeHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public removeHeaders(Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->removeHeaders(Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic removeHeaders(Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractMessageBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;->removeHeaders(Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeHeaders(Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;->removeHeaders(Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setAbsoluteRequestUri(Z)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->setAbsoluteRequestUri(Z)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic setAbsoluteRequestUri(Z)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;->setAbsoluteRequestUri(Z)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setAuthority(Lorg/apache/hc/core5/net/URIAuthority;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->setAuthority(Lorg/apache/hc/core5/net/URIAuthority;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic setAuthority(Lorg/apache/hc/core5/net/URIAuthority;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;->setAuthority(Lorg/apache/hc/core5/net/URIAuthority;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setBody(Ljava/lang/String;Lorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;
    .locals 0

    invoke-static {p1, p2}, Lorg/apache/hc/client5/http/async/methods/SimpleBody;->create(Ljava/lang/String;Lorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/client5/http/async/methods/SimpleBody;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;->body:Lorg/apache/hc/client5/http/async/methods/SimpleBody;

    return-object p0
.end method

.method public setBody(Lorg/apache/hc/client5/http/async/methods/SimpleBody;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;->body:Lorg/apache/hc/client5/http/async/methods/SimpleBody;

    return-object p0
.end method

.method public setBody([BLorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;
    .locals 0

    invoke-static {p1, p2}, Lorg/apache/hc/client5/http/async/methods/SimpleBody;->create([BLorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/client5/http/async/methods/SimpleBody;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;->body:Lorg/apache/hc/client5/http/async/methods/SimpleBody;

    return-object p0
.end method

.method public setCharset(Ljava/nio/charset/Charset;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->setCharset(Ljava/nio/charset/Charset;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic setCharset(Ljava/nio/charset/Charset;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;->setCharset(Ljava/nio/charset/Charset;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public setHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->setHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic setHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractMessageBuilder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/AbstractMessageBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;->setHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;->setHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs setHeaders([Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->setHeaders([Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic setHeaders([Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/AbstractMessageBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;->setHeaders([Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setHeaders([Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;->setHeaders([Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setHttpHost(Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->setHttpHost(Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic setHttpHost(Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;->setHttpHost(Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setPath(Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->setPath(Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic setPath(Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;->setPath(Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setRequestConfig(Lorg/apache/hc/client5/http/config/RequestConfig;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;->requestConfig:Lorg/apache/hc/client5/http/config/RequestConfig;

    return-object p0
.end method

.method public setScheme(Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->setScheme(Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic setScheme(Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;->setScheme(Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setUri(Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->setUri(Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public setUri(Ljava/net/URI;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->setUri(Ljava/net/URI;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic setUri(Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;->setUri(Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUri(Ljava/net/URI;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;->setUri(Ljava/net/URI;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->setVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic setVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)Lorg/apache/hc/core5/http/support/AbstractMessageBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;->setVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;->setVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClassicRequestBuilder [method="

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

    const-string v1, ", body="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/client5/http/async/methods/SimpleRequestBuilder;->body:Lorg/apache/hc/client5/http/async/methods/SimpleBody;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
