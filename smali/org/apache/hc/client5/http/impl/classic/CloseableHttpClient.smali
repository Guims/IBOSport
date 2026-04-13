.class public abstract Lorg/apache/hc/client5/http/impl/classic/CloseableHttpClient;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/classic/HttpClient;
.implements Lorg/apache/hc/core5/io/ModalCloseable;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->SAFE:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field private static final LOG:LO5/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpClient;

    invoke-static {v0}, LO5/b;->d(Ljava/lang/Class;)LO5/a;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpClient;->LOG:LO5/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static determineTarget(Lorg/apache/hc/core5/http/ClassicHttpRequest;)Lorg/apache/hc/core5/http/HttpHost;
    .locals 1

    :try_start_0
    invoke-static {p0}, Lorg/apache/hc/client5/http/routing/RoutingSupport;->determineHost(Lorg/apache/hc/core5/http/HttpRequest;)Lorg/apache/hc/core5/http/HttpHost;

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/hc/core5/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/apache/hc/client5/http/ClientProtocolException;

    invoke-direct {v0, p0}, Lorg/apache/hc/client5/http/ClientProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public abstract doExecute(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;
.end method

.method public execute(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/io/HttpClientResponseHandler;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/hc/core5/http/ClassicHttpRequest;",
            "Lorg/apache/hc/core5/http/io/HttpClientResponseHandler<",
            "+TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpClient;->execute(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/http/io/HttpClientResponseHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/http/io/HttpClientResponseHandler;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/hc/core5/http/ClassicHttpRequest;",
            "Lorg/apache/hc/core5/http/protocol/HttpContext;",
            "Lorg/apache/hc/core5/http/io/HttpClientResponseHandler<",
            "+TT;>;)TT;"
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpClient;->determineTarget(Lorg/apache/hc/core5/http/ClassicHttpRequest;)Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpClient;->execute(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/http/io/HttpClientResponseHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/io/HttpClientResponseHandler;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/hc/core5/http/HttpHost;",
            "Lorg/apache/hc/core5/http/ClassicHttpRequest;",
            "Lorg/apache/hc/core5/http/io/HttpClientResponseHandler<",
            "+TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpClient;->execute(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/http/io/HttpClientResponseHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/http/io/HttpClientResponseHandler;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/hc/core5/http/HttpHost;",
            "Lorg/apache/hc/core5/http/ClassicHttpRequest;",
            "Lorg/apache/hc/core5/http/protocol/HttpContext;",
            "Lorg/apache/hc/core5/http/io/HttpClientResponseHandler<",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "Response handler"

    invoke-static {p4, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpClient;->doExecute(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;

    move-result-object p1

    :try_start_0
    invoke-interface {p4, p1}, Lorg/apache/hc/core5/http/io/HttpClientResponseHandler;->handleResponse(Lorg/apache/hc/core5/http/ClassicHttpResponse;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpEntityContainer;->getEntity()Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object p3

    invoke-static {p3}, Lorg/apache/hc/core5/http/io/entity/EntityUtils;->consume(Lorg/apache/hc/core5/http/HttpEntity;)V
    :try_end_0
    .catch Lorg/apache/hc/core5/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Ljava/io/Closeable;->close()V

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    :try_start_1
    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpEntityContainer;->getEntity()Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {p3}, Lorg/apache/hc/core5/http/io/entity/EntityUtils;->consume(Lorg/apache/hc/core5/http/HttpEntity;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_1
    move-exception p3

    :try_start_3
    sget-object p4, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpClient;->LOG:LO5/a;

    const-string v0, "Error consuming content after an exception."

    invoke-interface {p4, v0, p3}, LO5/a;->A(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    new-instance p3, Lorg/apache/hc/client5/http/ClientProtocolException;

    invoke-direct {p3, p2}, Lorg/apache/hc/client5/http/ClientProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p3

    if-eqz p1, :cond_0

    :try_start_5
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_2
    throw p3
.end method

.method public execute(Lorg/apache/hc/core5/http/ClassicHttpRequest;)Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpClient;->determineTarget(Lorg/apache/hc/core5/http/ClassicHttpRequest;)Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpClient;->doExecute(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "HTTP request"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpClient;->determineTarget(Lorg/apache/hc/core5/http/ClassicHttpRequest;)Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpClient;->doExecute(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/ClassicHttpRequest;)Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpClient;->doExecute(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpClient;->doExecute(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic execute(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/ClassicHttpRequest;)Lorg/apache/hc/core5/http/ClassicHttpResponse;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpClient;->execute(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/ClassicHttpRequest;)Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic execute(Lorg/apache/hc/core5/http/ClassicHttpRequest;)Lorg/apache/hc/core5/http/HttpResponse;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpClient;->execute(Lorg/apache/hc/core5/http/ClassicHttpRequest;)Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic execute(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/HttpResponse;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpClient;->execute(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic execute(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/HttpResponse;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpClient;->execute(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;

    move-result-object p1

    return-object p1
.end method
