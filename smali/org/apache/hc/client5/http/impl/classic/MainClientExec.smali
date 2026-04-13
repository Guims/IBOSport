.class public final Lorg/apache/hc/client5/http/impl/classic/MainClientExec;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/classic/ExecChainHandler;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Internal;
.end annotation


# static fields
.field private static final LOG:LO5/a;


# instance fields
.field private final connectionManager:Lorg/apache/hc/client5/http/io/HttpClientConnectionManager;

.field private final httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

.field private final keepAliveStrategy:Lorg/apache/hc/client5/http/ConnectionKeepAliveStrategy;

.field private final reuseStrategy:Lorg/apache/hc/core5/http/ConnectionReuseStrategy;

.field private final userTokenHandler:Lorg/apache/hc/client5/http/UserTokenHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/hc/client5/http/impl/classic/MainClientExec;

    invoke-static {v0}, LO5/b;->d(Ljava/lang/Class;)LO5/a;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/classic/MainClientExec;->LOG:LO5/a;

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/client5/http/io/HttpClientConnectionManager;Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/ConnectionReuseStrategy;Lorg/apache/hc/client5/http/ConnectionKeepAliveStrategy;Lorg/apache/hc/client5/http/UserTokenHandler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Connection manager"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/client5/http/io/HttpClientConnectionManager;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/MainClientExec;->connectionManager:Lorg/apache/hc/client5/http/io/HttpClientConnectionManager;

    const-string p1, "HTTP protocol processor"

    invoke-static {p2, p1}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/MainClientExec;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    const-string p1, "Connection reuse strategy"

    invoke-static {p3, p1}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/ConnectionReuseStrategy;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/MainClientExec;->reuseStrategy:Lorg/apache/hc/core5/http/ConnectionReuseStrategy;

    const-string p1, "Connection keep alive strategy"

    invoke-static {p4, p1}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/client5/http/ConnectionKeepAliveStrategy;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/MainClientExec;->keepAliveStrategy:Lorg/apache/hc/client5/http/ConnectionKeepAliveStrategy;

    const-string p1, "User token handler"

    invoke-static {p5, p1}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/client5/http/UserTokenHandler;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/MainClientExec;->userTokenHandler:Lorg/apache/hc/client5/http/UserTokenHandler;

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/client5/http/classic/ExecChain$Scope;Lorg/apache/hc/client5/http/classic/ExecChain;)Lorg/apache/hc/core5/http/ClassicHttpResponse;
    .locals 7

    const-string p3, "for "

    const-string v0, "HTTP request"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Scope"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p2, Lorg/apache/hc/client5/http/classic/ExecChain$Scope;->exchangeId:Ljava/lang/String;

    iget-object v1, p2, Lorg/apache/hc/client5/http/classic/ExecChain$Scope;->route:Lorg/apache/hc/client5/http/HttpRoute;

    iget-object v2, p2, Lorg/apache/hc/client5/http/classic/ExecChain$Scope;->clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    iget-object p2, p2, Lorg/apache/hc/client5/http/classic/ExecChain$Scope;->execRuntime:Lorg/apache/hc/client5/http/classic/ExecRuntime;

    sget-object v3, Lorg/apache/hc/client5/http/impl/classic/MainClientExec;->LOG:LO5/a;

    invoke-interface {v3}, LO5/a;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lorg/apache/hc/core5/http/message/RequestLine;

    invoke-direct {v4, p1}, Lorg/apache/hc/core5/http/message/RequestLine;-><init>(Lorg/apache/hc/core5/http/HttpRequest;)V

    const-string v5, "{} executing {}"

    invoke-interface {v3, v0, v4, v5}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    const-string v4, "http.route"

    invoke-virtual {v2, v4, v1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "http.request"

    invoke-virtual {v2, v4, p1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lorg/apache/hc/client5/http/impl/classic/MainClientExec;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpEntityContainer;->getEntity()Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object v5

    invoke-interface {v4, p1, v5, v2}, Lorg/apache/hc/core5/http/HttpRequestInterceptor;->process(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    invoke-interface {p2, v0, p1, v2}, Lorg/apache/hc/client5/http/classic/ExecRuntime;->execute(Ljava/lang/String;Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/client5/http/protocol/HttpClientContext;)Lorg/apache/hc/core5/http/ClassicHttpResponse;

    move-result-object v4

    const-string v5, "http.response"

    invoke-virtual {v2, v5, v4}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lorg/apache/hc/client5/http/impl/classic/MainClientExec;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    invoke-interface {v4}, Lorg/apache/hc/core5/http/HttpEntityContainer;->getEntity()Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object v6

    invoke-interface {v5, v4, v6, v2}, Lorg/apache/hc/core5/http/HttpResponseInterceptor;->process(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    invoke-virtual {v2}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getUserToken()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lorg/apache/hc/client5/http/impl/classic/MainClientExec;->userTokenHandler:Lorg/apache/hc/client5/http/UserTokenHandler;

    invoke-interface {v5, v1, p1, v2}, Lorg/apache/hc/client5/http/UserTokenHandler;->getUserToken(Lorg/apache/hc/client5/http/HttpRoute;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v5

    const-string v1, "http.user-token"

    invoke-virtual {v2, v1, v5}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    goto :goto_5

    :catch_2
    move-exception p1

    goto :goto_5

    :catch_3
    move-exception p1

    goto :goto_5

    :catch_4
    move-exception p1

    goto :goto_6

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/classic/MainClientExec;->reuseStrategy:Lorg/apache/hc/core5/http/ConnectionReuseStrategy;

    invoke-interface {v1, p1, v4, v2}, Lorg/apache/hc/core5/http/ConnectionReuseStrategy;->keepAlive(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/protocol/HttpContext;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/MainClientExec;->keepAliveStrategy:Lorg/apache/hc/client5/http/ConnectionKeepAliveStrategy;

    invoke-interface {p1, v4, v2}, Lorg/apache/hc/client5/http/ConnectionKeepAliveStrategy;->getKeepAliveDuration(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/util/TimeValue;

    move-result-object p1

    invoke-interface {v3}, LO5/a;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_2
    const-string p3, "indefinitely"

    :goto_1
    const-string v1, "{} connection can be kept alive {}"

    invoke-interface {v3, v0, p3, v1}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    invoke-interface {p2, v5, p1}, Lorg/apache/hc/client5/http/classic/ExecRuntime;->markConnectionReusable(Ljava/lang/Object;Lorg/apache/hc/core5/util/TimeValue;)V

    goto :goto_2

    :cond_4
    invoke-interface {p2}, Lorg/apache/hc/client5/http/classic/ExecRuntime;->markConnectionNonReusable()V

    :goto_2
    invoke-interface {v4}, Lorg/apache/hc/core5/http/HttpEntityContainer;->getEntity()Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpEntity;->isStreaming()Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    new-instance p1, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;

    invoke-direct {p1, v4, p2}, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;-><init>(Lorg/apache/hc/core5/http/ClassicHttpResponse;Lorg/apache/hc/client5/http/classic/ExecRuntime;)V

    return-object p1

    :cond_6
    :goto_3
    invoke-interface {p2}, Lorg/apache/hc/client5/http/classic/ExecRuntime;->releaseEndpoint()V

    new-instance p1, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;

    const/4 p3, 0x0

    invoke-direct {p1, v4, p3}, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;-><init>(Lorg/apache/hc/core5/http/ClassicHttpResponse;Lorg/apache/hc/client5/http/classic/ExecRuntime;)V
    :try_end_0
    .catch Lorg/apache/hc/client5/http/impl/ConnectionShutdownException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/apache/hc/core5/http/HttpException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_4
    iget-object p2, p0, Lorg/apache/hc/client5/http/impl/classic/MainClientExec;->connectionManager:Lorg/apache/hc/client5/http/io/HttpClientConnectionManager;

    sget-object p3, Lorg/apache/hc/core5/io/CloseMode;->IMMEDIATE:Lorg/apache/hc/core5/io/CloseMode;

    invoke-interface {p2, p3}, Lorg/apache/hc/core5/io/ModalCloseable;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    throw p1

    :goto_5
    invoke-interface {p2}, Lorg/apache/hc/client5/http/classic/ExecRuntime;->discardEndpoint()V

    throw p1

    :goto_6
    new-instance p3, Ljava/io/InterruptedIOException;

    const-string v0, "Connection has been shut down"

    invoke-direct {p3, v0}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    invoke-interface {p2}, Lorg/apache/hc/client5/http/classic/ExecRuntime;->discardEndpoint()V

    throw p3
.end method
