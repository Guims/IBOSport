.class public final Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequests;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;
    .locals 0

    invoke-static {p0}, Lorg/apache/hc/core5/http/Method;->normalizedValueOf(Ljava/lang/String;)Lorg/apache/hc/core5/http/Method;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequests;->create(Lorg/apache/hc/core5/http/Method;Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;Ljava/net/URI;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;
    .locals 0

    invoke-static {p0}, Lorg/apache/hc/core5/http/Method;->normalizedValueOf(Ljava/lang/String;)Lorg/apache/hc/core5/http/Method;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequests;->create(Lorg/apache/hc/core5/http/Method;Ljava/net/URI;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lorg/apache/hc/core5/http/Method;Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;
    .locals 0

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequests;->create(Lorg/apache/hc/core5/http/Method;Ljava/net/URI;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lorg/apache/hc/core5/http/Method;Ljava/net/URI;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;

    invoke-direct {v0, p0, p1}, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;-><init>(Lorg/apache/hc/core5/http/Method;Ljava/net/URI;)V

    return-object v0
.end method

.method public static create(Lorg/apache/hc/core5/http/Method;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;-><init>(Lorg/apache/hc/core5/http/Method;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;)V

    return-object v0
.end method

.method public static delete(Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;
    .locals 0

    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequests;->delete(Ljava/net/URI;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static delete(Ljava/net/URI;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http/Method;->DELETE:Lorg/apache/hc/core5/http/Method;

    invoke-static {v0, p0}, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequests;->create(Lorg/apache/hc/core5/http/Method;Ljava/net/URI;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static delete(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http/Method;->DELETE:Lorg/apache/hc/core5/http/Method;

    invoke-static {v0, p0, p1}, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequests;->create(Lorg/apache/hc/core5/http/Method;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;
    .locals 0

    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequests;->get(Ljava/net/URI;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/net/URI;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http/Method;->GET:Lorg/apache/hc/core5/http/Method;

    invoke-static {v0, p0}, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequests;->create(Lorg/apache/hc/core5/http/Method;Ljava/net/URI;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static get(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http/Method;->GET:Lorg/apache/hc/core5/http/Method;

    invoke-static {v0, p0, p1}, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequests;->create(Lorg/apache/hc/core5/http/Method;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static head(Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;
    .locals 0

    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequests;->head(Ljava/net/URI;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static head(Ljava/net/URI;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http/Method;->HEAD:Lorg/apache/hc/core5/http/Method;

    invoke-static {v0, p0}, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequests;->create(Lorg/apache/hc/core5/http/Method;Ljava/net/URI;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static head(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http/Method;->HEAD:Lorg/apache/hc/core5/http/Method;

    invoke-static {v0, p0, p1}, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequests;->create(Lorg/apache/hc/core5/http/Method;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static options(Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;
    .locals 0

    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequests;->options(Ljava/net/URI;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static options(Ljava/net/URI;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http/Method;->OPTIONS:Lorg/apache/hc/core5/http/Method;

    invoke-static {v0, p0}, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequests;->create(Lorg/apache/hc/core5/http/Method;Ljava/net/URI;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static options(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http/Method;->OPTIONS:Lorg/apache/hc/core5/http/Method;

    invoke-static {v0, p0, p1}, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequests;->create(Lorg/apache/hc/core5/http/Method;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static patch(Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;
    .locals 0

    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequests;->patch(Ljava/net/URI;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static patch(Ljava/net/URI;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http/Method;->PATCH:Lorg/apache/hc/core5/http/Method;

    invoke-static {v0, p0}, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequests;->create(Lorg/apache/hc/core5/http/Method;Ljava/net/URI;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static patch(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http/Method;->PATCH:Lorg/apache/hc/core5/http/Method;

    invoke-static {v0, p0, p1}, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequests;->create(Lorg/apache/hc/core5/http/Method;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static post(Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;
    .locals 0

    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequests;->post(Ljava/net/URI;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static post(Ljava/net/URI;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http/Method;->POST:Lorg/apache/hc/core5/http/Method;

    invoke-static {v0, p0}, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequests;->create(Lorg/apache/hc/core5/http/Method;Ljava/net/URI;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static post(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http/Method;->POST:Lorg/apache/hc/core5/http/Method;

    invoke-static {v0, p0, p1}, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequests;->create(Lorg/apache/hc/core5/http/Method;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static put(Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;
    .locals 0

    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequests;->put(Ljava/net/URI;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static put(Ljava/net/URI;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http/Method;->PUT:Lorg/apache/hc/core5/http/Method;

    invoke-static {v0, p0}, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequests;->create(Lorg/apache/hc/core5/http/Method;Ljava/net/URI;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static put(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http/Method;->PUT:Lorg/apache/hc/core5/http/Method;

    invoke-static {v0, p0, p1}, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequests;->create(Lorg/apache/hc/core5/http/Method;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static trace(Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;
    .locals 0

    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequests;->trace(Ljava/net/URI;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static trace(Ljava/net/URI;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http/Method;->TRACE:Lorg/apache/hc/core5/http/Method;

    invoke-static {v0, p0}, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequests;->create(Lorg/apache/hc/core5/http/Method;Ljava/net/URI;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static trace(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http/Method;->TRACE:Lorg/apache/hc/core5/http/Method;

    invoke-static {v0, p0, p1}, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequests;->create(Lorg/apache/hc/core5/http/Method;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;

    move-result-object p0

    return-object p0
.end method
