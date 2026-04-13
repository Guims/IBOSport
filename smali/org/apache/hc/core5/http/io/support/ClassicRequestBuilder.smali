.class public Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;
.super Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/hc/core5/http/support/AbstractRequestBuilder<",
        "Lorg/apache/hc/core5/http/ClassicHttpRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private entity:Lorg/apache/hc/core5/http/HttpEntity;


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

.method public static copy(Lorg/apache/hc/core5/http/ClassicHttpRequest;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;
    .locals 2

    const-string v0, "HTTP request"

    invoke-static {p0, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    invoke-interface {p0}, Lorg/apache/hc/core5/http/HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;->digest(Lorg/apache/hc/core5/http/ClassicHttpRequest;)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;
    .locals 1

    const-string v0, "HTTP method"

    invoke-static {p0, v0}, Lorg/apache/hc/core5/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    new-instance v0, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    invoke-direct {v0, p0}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static delete()Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->DELETE:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;)V

    return-object v0
.end method

.method public static delete(Ljava/lang/String;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->DELETE:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1, p0}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;Ljava/lang/String;)V

    return-object v0
.end method

.method public static delete(Ljava/net/URI;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->DELETE:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1, p0}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;Ljava/net/URI;)V

    return-object v0
.end method

.method public static get()Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->GET:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;)V

    return-object v0
.end method

.method public static get(Ljava/lang/String;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->GET:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1, p0}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;Ljava/lang/String;)V

    return-object v0
.end method

.method public static get(Ljava/net/URI;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->GET:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1, p0}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;Ljava/net/URI;)V

    return-object v0
.end method

.method public static head()Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->HEAD:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;)V

    return-object v0
.end method

.method public static head(Ljava/lang/String;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->HEAD:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1, p0}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;Ljava/lang/String;)V

    return-object v0
.end method

.method public static head(Ljava/net/URI;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->HEAD:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1, p0}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;Ljava/net/URI;)V

    return-object v0
.end method

.method public static options()Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->OPTIONS:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;)V

    return-object v0
.end method

.method public static options(Ljava/lang/String;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->OPTIONS:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1, p0}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;Ljava/lang/String;)V

    return-object v0
.end method

.method public static options(Ljava/net/URI;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->OPTIONS:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1, p0}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;Ljava/net/URI;)V

    return-object v0
.end method

.method public static patch()Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->PATCH:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;)V

    return-object v0
.end method

.method public static patch(Ljava/lang/String;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->PATCH:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1, p0}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;Ljava/lang/String;)V

    return-object v0
.end method

.method public static patch(Ljava/net/URI;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->PATCH:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1, p0}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;Ljava/net/URI;)V

    return-object v0
.end method

.method public static post()Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->POST:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;)V

    return-object v0
.end method

.method public static post(Ljava/lang/String;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->POST:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1, p0}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;Ljava/lang/String;)V

    return-object v0
.end method

.method public static post(Ljava/net/URI;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->POST:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1, p0}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;Ljava/net/URI;)V

    return-object v0
.end method

.method public static put()Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->PUT:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;)V

    return-object v0
.end method

.method public static put(Ljava/lang/String;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->PUT:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1, p0}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;Ljava/lang/String;)V

    return-object v0
.end method

.method public static put(Ljava/net/URI;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->PUT:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1, p0}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;Ljava/net/URI;)V

    return-object v0
.end method

.method public static trace()Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->TRACE:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;)V

    return-object v0
.end method

.method public static trace(Ljava/lang/String;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->TRACE:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1, p0}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;Ljava/lang/String;)V

    return-object v0
.end method

.method public static trace(Ljava/net/URI;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    sget-object v1, Lorg/apache/hc/core5/http/Method;->TRACE:Lorg/apache/hc/core5/http/Method;

    invoke-direct {v0, v1, p0}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;-><init>(Lorg/apache/hc/core5/http/Method;Ljava/net/URI;)V

    return-object v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public addHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->addHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractMessageBuilder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/AbstractMessageBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;->addHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;->addHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public addParameter(Lorg/apache/hc/core5/http/NameValuePair;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->addParameter(Lorg/apache/hc/core5/http/NameValuePair;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic addParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addParameter(Lorg/apache/hc/core5/http/NameValuePair;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;->addParameter(Lorg/apache/hc/core5/http/NameValuePair;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs addParameters([Lorg/apache/hc/core5/http/NameValuePair;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->addParameters([Lorg/apache/hc/core5/http/NameValuePair;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic addParameters([Lorg/apache/hc/core5/http/NameValuePair;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;->addParameters([Lorg/apache/hc/core5/http/NameValuePair;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;->build()Lorg/apache/hc/core5/http/ClassicHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/hc/core5/http/ClassicHttpRequest;
    .locals 6

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/hc/core5/util/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "/"

    :cond_0
    iget-object v1, p0, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;->entity:Lorg/apache/hc/core5/http/HttpEntity;

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->getParameters()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    if-nez v1, :cond_2

    sget-object v4, Lorg/apache/hc/core5/http/Method;->POST:Lorg/apache/hc/core5/http/Method;

    invoke-virtual {v4, v2}, Lorg/apache/hc/core5/http/Method;->isSame(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lorg/apache/hc/core5/http/Method;->PUT:Lorg/apache/hc/core5/http/Method;

    invoke-virtual {v4, v2}, Lorg/apache/hc/core5/http/Method;->isSame(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    invoke-virtual {p0}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-static {v3, v1}, Lorg/apache/hc/core5/http/io/entity/HttpEntities;->createUrlEncoded(Ljava/lang/Iterable;Ljava/nio/charset/Charset;)Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object v1

    goto :goto_0

    :cond_2
    :try_start_0
    new-instance v4, Lorg/apache/hc/core5/net/URIBuilder;

    invoke-direct {v4, v0}, Lorg/apache/hc/core5/net/URIBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/hc/core5/net/URIBuilder;->setCharset(Ljava/nio/charset/Charset;)Lorg/apache/hc/core5/net/URIBuilder;

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
    :goto_0
    if-eqz v1, :cond_5

    sget-object v3, Lorg/apache/hc/core5/http/Method;->TRACE:Lorg/apache/hc/core5/http/Method;

    invoke-virtual {v3, v2}, Lorg/apache/hc/core5/http/Method;->isSame(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

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
    :goto_1
    new-instance v3, Lorg/apache/hc/core5/http/message/BasicClassicHttpRequest;

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->getAuthority()Lorg/apache/hc/core5/net/URIAuthority;

    move-result-object v5

    invoke-direct {v3, v2, v4, v5, v0}, Lorg/apache/hc/core5/http/message/BasicClassicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/hc/core5/net/URIAuthority;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/support/AbstractMessageBuilder;->getVersion()Lorg/apache/hc/core5/http/ProtocolVersion;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->setVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)V

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/support/AbstractMessageBuilder;->getHeaders()[Lorg/apache/hc/core5/http/Header;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/hc/core5/http/message/HeaderGroup;->setHeaders([Lorg/apache/hc/core5/http/Header;)V

    invoke-virtual {v3, v1}, Lorg/apache/hc/core5/http/message/BasicClassicHttpRequest;->setEntity(Lorg/apache/hc/core5/http/HttpEntity;)V

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->isAbsoluteRequestUri()Z

    move-result v0

    invoke-virtual {v3, v0}, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->setAbsoluteRequestUri(Z)V

    return-object v3
.end method

.method public digest(Lorg/apache/hc/core5/http/ClassicHttpRequest;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->digest(Lorg/apache/hc/core5/http/HttpRequest;)V

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpEntityContainer;->getEntity()Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;->setEntity(Lorg/apache/hc/core5/http/HttpEntity;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    return-void
.end method

.method public getEntity()Lorg/apache/hc/core5/http/HttpEntity;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;->entity:Lorg/apache/hc/core5/http/HttpEntity;

    return-object v0
.end method

.method public removeHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->removeHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic removeHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/AbstractMessageBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;->removeHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;->removeHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public removeHeaders(Ljava/lang/String;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->removeHeaders(Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic removeHeaders(Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractMessageBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;->removeHeaders(Ljava/lang/String;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeHeaders(Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;->removeHeaders(Ljava/lang/String;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setAbsoluteRequestUri(Z)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->setAbsoluteRequestUri(Z)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic setAbsoluteRequestUri(Z)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;->setAbsoluteRequestUri(Z)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setAuthority(Lorg/apache/hc/core5/net/URIAuthority;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->setAuthority(Lorg/apache/hc/core5/net/URIAuthority;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic setAuthority(Lorg/apache/hc/core5/net/URIAuthority;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;->setAuthority(Lorg/apache/hc/core5/net/URIAuthority;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setCharset(Ljava/nio/charset/Charset;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->setCharset(Ljava/nio/charset/Charset;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic setCharset(Ljava/nio/charset/Charset;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;->setCharset(Ljava/nio/charset/Charset;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setEntity(Ljava/lang/String;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/io/entity/StringEntity;

    invoke-direct {v0, p1}, Lorg/apache/hc/core5/http/io/entity/StringEntity;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;->entity:Lorg/apache/hc/core5/http/HttpEntity;

    return-object p0
.end method

.method public setEntity(Ljava/lang/String;Lorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/io/entity/StringEntity;

    invoke-direct {v0, p1, p2}, Lorg/apache/hc/core5/http/io/entity/StringEntity;-><init>(Ljava/lang/String;Lorg/apache/hc/core5/http/ContentType;)V

    iput-object v0, p0, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;->entity:Lorg/apache/hc/core5/http/HttpEntity;

    return-object p0
.end method

.method public setEntity(Lorg/apache/hc/core5/http/HttpEntity;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;->entity:Lorg/apache/hc/core5/http/HttpEntity;

    return-object p0
.end method

.method public setEntity([BLorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/io/entity/ByteArrayEntity;

    invoke-direct {v0, p1, p2}, Lorg/apache/hc/core5/http/io/entity/ByteArrayEntity;-><init>([BLorg/apache/hc/core5/http/ContentType;)V

    iput-object v0, p0, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;->entity:Lorg/apache/hc/core5/http/HttpEntity;

    return-object p0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public setHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->setHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic setHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractMessageBuilder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/AbstractMessageBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;->setHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;->setHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs setHeaders([Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->setHeaders([Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic setHeaders([Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/AbstractMessageBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;->setHeaders([Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setHeaders([Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;->setHeaders([Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setHttpHost(Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->setHttpHost(Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic setHttpHost(Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;->setHttpHost(Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setPath(Ljava/lang/String;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->setPath(Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic setPath(Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;->setPath(Ljava/lang/String;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setScheme(Ljava/lang/String;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->setScheme(Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic setScheme(Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;->setScheme(Ljava/lang/String;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setUri(Ljava/lang/String;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->setUri(Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public setUri(Ljava/net/URI;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->setUri(Ljava/net/URI;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic setUri(Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;->setUri(Ljava/lang/String;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUri(Ljava/net/URI;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;->setUri(Ljava/net/URI;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;->setVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic setVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)Lorg/apache/hc/core5/http/support/AbstractMessageBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;->setVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)Lorg/apache/hc/core5/http/support/AbstractRequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;->setVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

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

    const-string v1, ", entity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;->entity:Lorg/apache/hc/core5/http/HttpEntity;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
