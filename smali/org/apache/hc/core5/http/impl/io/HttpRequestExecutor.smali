.class public Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor$Builder;
    }
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->IMMUTABLE:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final DEFAULT_WAIT_FOR_CONTINUE:Lorg/apache/hc/core5/util/Timeout;


# instance fields
.field private final connReuseStrategy:Lorg/apache/hc/core5/http/ConnectionReuseStrategy;

.field private final streamListener:Lorg/apache/hc/core5/http/impl/Http1StreamListener;

.field private final waitForContinue:Lorg/apache/hc/core5/util/Timeout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x3

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/Timeout;->ofSeconds(J)Lorg/apache/hc/core5/util/Timeout;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;->DEFAULT_WAIT_FOR_CONTINUE:Lorg/apache/hc/core5/util/Timeout;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;->DEFAULT_WAIT_FOR_CONTINUE:Lorg/apache/hc/core5/util/Timeout;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;-><init>(Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/http/ConnectionReuseStrategy;Lorg/apache/hc/core5/http/impl/Http1StreamListener;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/ConnectionReuseStrategy;)V
    .locals 2

    sget-object v0, Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;->DEFAULT_WAIT_FOR_CONTINUE:Lorg/apache/hc/core5/util/Timeout;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;-><init>(Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/http/ConnectionReuseStrategy;Lorg/apache/hc/core5/http/impl/Http1StreamListener;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/http/ConnectionReuseStrategy;Lorg/apache/hc/core5/http/impl/Http1StreamListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Wait for continue time"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->positive(Lorg/apache/hc/core5/util/TimeValue;Ljava/lang/String;)Lorg/apache/hc/core5/util/TimeValue;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/util/Timeout;

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;->waitForContinue:Lorg/apache/hc/core5/util/Timeout;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lorg/apache/hc/core5/http/impl/DefaultConnectionReuseStrategy;->INSTANCE:Lorg/apache/hc/core5/http/impl/DefaultConnectionReuseStrategy;

    :goto_0
    iput-object p2, p0, Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;->connReuseStrategy:Lorg/apache/hc/core5/http/ConnectionReuseStrategy;

    iput-object p3, p0, Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;->streamListener:Lorg/apache/hc/core5/http/impl/Http1StreamListener;

    return-void
.end method

.method public static builder()Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor$Builder;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor$Builder;-><init>(Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor$1;)V

    return-object v0
.end method


# virtual methods
.method public execute(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/io/HttpClientConnection;Lorg/apache/hc/core5/http/io/HttpResponseInformationCallback;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/ClassicHttpResponse;
    .locals 7

    const-string v0, "HTTP request"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Client connection"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP context"

    invoke-static {p4, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    const-string v0, "http.ssl-session"

    invoke-interface {p2}, Lorg/apache/hc/core5/http/HttpConnection;->getSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-interface {p4, v0, v1}, Lorg/apache/hc/core5/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "http.connection-endpoint"

    invoke-interface {p2}, Lorg/apache/hc/core5/http/HttpConnection;->getEndpointDetails()Lorg/apache/hc/core5/http/EndpointDetails;

    move-result-object v1

    invoke-interface {p4, v0, v1}, Lorg/apache/hc/core5/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, p1}, Lorg/apache/hc/core5/http/io/HttpClientConnection;->sendRequestHeader(Lorg/apache/hc/core5/http/ClassicHttpRequest;)V

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;->streamListener:Lorg/apache/hc/core5/http/impl/Http1StreamListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2, p1}, Lorg/apache/hc/core5/http/impl/Http1StreamListener;->onRequestHead(Lorg/apache/hc/core5/http/HttpConnection;Lorg/apache/hc/core5/http/HttpRequest;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_6

    :catch_1
    move-exception p1

    goto/16 :goto_6

    :catch_2
    move-exception p1

    goto/16 :goto_6

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpEntityContainer;->getEntity()Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v0, "Expect"

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/http/MessageHeaders;->getFirstHeader(Ljava/lang/String;)Lorg/apache/hc/core5/http/Header;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "100-continue"

    invoke-interface {v0}, Lorg/apache/hc/core5/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-nez v0, :cond_3

    invoke-interface {p2, p1}, Lorg/apache/hc/core5/http/io/HttpClientConnection;->sendRequestEntity(Lorg/apache/hc/core5/http/ClassicHttpRequest;)V

    goto :goto_2

    :cond_2
    move v0, v1

    :cond_3
    :goto_2
    invoke-interface {p2}, Lorg/apache/hc/core5/http/io/BHttpConnection;->flush()V

    const/4 v2, 0x0

    :cond_4
    :goto_3
    move-object v3, v2

    :cond_5
    :goto_4
    if-nez v3, :cond_e

    const/16 v4, 0xc8

    const/16 v5, 0x64

    if-eqz v0, :cond_b

    iget-object v6, p0, Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;->waitForContinue:Lorg/apache/hc/core5/util/Timeout;

    invoke-interface {p2, v6}, Lorg/apache/hc/core5/http/io/BHttpConnection;->isDataAvailable(Lorg/apache/hc/core5/util/Timeout;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {p2}, Lorg/apache/hc/core5/http/io/HttpClientConnection;->receiveResponseHeader()Lorg/apache/hc/core5/http/ClassicHttpResponse;

    move-result-object v3

    iget-object v6, p0, Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;->streamListener:Lorg/apache/hc/core5/http/impl/Http1StreamListener;

    if-eqz v6, :cond_6

    invoke-interface {v6, p2, v3}, Lorg/apache/hc/core5/http/impl/Http1StreamListener;->onResponseHead(Lorg/apache/hc/core5/http/HttpConnection;Lorg/apache/hc/core5/http/HttpResponse;)V

    :cond_6
    invoke-interface {v3}, Lorg/apache/hc/core5/http/HttpResponse;->getCode()I

    move-result v6

    if-ne v6, v5, :cond_7

    invoke-interface {p2, p1}, Lorg/apache/hc/core5/http/io/HttpClientConnection;->sendRequestEntity(Lorg/apache/hc/core5/http/ClassicHttpRequest;)V

    move-object v3, v2

    goto :goto_5

    :cond_7
    if-ge v6, v4, :cond_8

    if-eqz p3, :cond_4

    invoke-interface {p3, v3, p2, p4}, Lorg/apache/hc/core5/http/io/HttpResponseInformationCallback;->execute(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/HttpConnection;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    goto :goto_3

    :cond_8
    const/16 v0, 0x190

    if-lt v6, v0, :cond_9

    invoke-interface {p2, p1}, Lorg/apache/hc/core5/http/io/HttpClientConnection;->terminateRequest(Lorg/apache/hc/core5/http/ClassicHttpRequest;)V

    goto :goto_5

    :cond_9
    invoke-interface {p2, p1}, Lorg/apache/hc/core5/http/io/HttpClientConnection;->sendRequestEntity(Lorg/apache/hc/core5/http/ClassicHttpRequest;)V

    goto :goto_5

    :cond_a
    invoke-interface {p2, p1}, Lorg/apache/hc/core5/http/io/HttpClientConnection;->sendRequestEntity(Lorg/apache/hc/core5/http/ClassicHttpRequest;)V

    :goto_5
    invoke-interface {p2}, Lorg/apache/hc/core5/http/io/BHttpConnection;->flush()V

    move v0, v1

    goto :goto_4

    :cond_b
    invoke-interface {p2}, Lorg/apache/hc/core5/http/io/HttpClientConnection;->receiveResponseHeader()Lorg/apache/hc/core5/http/ClassicHttpResponse;

    move-result-object v3

    iget-object v6, p0, Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;->streamListener:Lorg/apache/hc/core5/http/impl/Http1StreamListener;

    if-eqz v6, :cond_c

    invoke-interface {v6, p2, v3}, Lorg/apache/hc/core5/http/impl/Http1StreamListener;->onResponseHead(Lorg/apache/hc/core5/http/HttpConnection;Lorg/apache/hc/core5/http/HttpResponse;)V

    :cond_c
    invoke-interface {v3}, Lorg/apache/hc/core5/http/HttpResponse;->getCode()I

    move-result v6

    if-lt v6, v5, :cond_d

    if-ge v6, v4, :cond_5

    if-eqz p3, :cond_4

    if-eq v6, v5, :cond_4

    invoke-interface {p3, v3, p2, p4}, Lorg/apache/hc/core5/http/io/HttpResponseInformationCallback;->execute(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/HttpConnection;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    goto :goto_3

    :cond_d
    new-instance p1, Lorg/apache/hc/core5/http/ProtocolException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid response: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p4, Lorg/apache/hc/core5/http/message/StatusLine;

    invoke-direct {p4, v3}, Lorg/apache/hc/core5/http/message/StatusLine;-><init>(Lorg/apache/hc/core5/http/HttpResponse;)V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lorg/apache/hc/core5/http/message/MessageSupport;->canResponseHaveBody(Ljava/lang/String;Lorg/apache/hc/core5/http/HttpResponse;)Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-interface {p2, v3}, Lorg/apache/hc/core5/http/io/HttpClientConnection;->receiveResponseEntity(Lorg/apache/hc/core5/http/ClassicHttpResponse;)V
    :try_end_0
    .catch Lorg/apache/hc/core5/http/HttpException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_f
    return-object v3

    :goto_6
    invoke-static {p2}, Lorg/apache/hc/core5/io/Closer;->closeQuietly(Ljava/io/Closeable;)V

    throw p1
.end method

.method public execute(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/io/HttpClientConnection;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/ClassicHttpResponse;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;->execute(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/io/HttpClientConnection;Lorg/apache/hc/core5/http/io/HttpResponseInformationCallback;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/ClassicHttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public keepAlive(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/ClassicHttpResponse;Lorg/apache/hc/core5/http/io/HttpClientConnection;Lorg/apache/hc/core5/http/protocol/HttpContext;)Z
    .locals 1

    const-string v0, "HTTP connection"

    invoke-static {p3, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP request"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP response"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP context"

    invoke-static {p4, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p3}, Lorg/apache/hc/core5/http/io/HttpClientConnection;->isConsistent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;->connReuseStrategy:Lorg/apache/hc/core5/http/ConnectionReuseStrategy;

    invoke-interface {v0, p1, p2, p4}, Lorg/apache/hc/core5/http/ConnectionReuseStrategy;->keepAlive(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/protocol/HttpContext;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;->streamListener:Lorg/apache/hc/core5/http/impl/Http1StreamListener;

    if-eqz p2, :cond_1

    invoke-interface {p2, p3, p1}, Lorg/apache/hc/core5/http/impl/Http1StreamListener;->onExchangeComplete(Lorg/apache/hc/core5/http/HttpConnection;Z)V

    :cond_1
    return p1
.end method

.method public postProcess(Lorg/apache/hc/core5/http/ClassicHttpResponse;Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 1

    const-string v0, "HTTP response"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP processor"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP context"

    invoke-static {p3, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpMessage;->getVersion()Lorg/apache/hc/core5/http/ProtocolVersion;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/hc/core5/http/HttpVersion;->HTTP_1_1:Lorg/apache/hc/core5/http/HttpVersion;

    :goto_0
    invoke-interface {p3, v0}, Lorg/apache/hc/core5/http/protocol/HttpContext;->setProtocolVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)V

    const-string v0, "http.response"

    invoke-interface {p3, v0, p1}, Lorg/apache/hc/core5/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpEntityContainer;->getEntity()Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object v0

    invoke-interface {p2, p1, v0, p3}, Lorg/apache/hc/core5/http/HttpResponseInterceptor;->process(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void
.end method

.method public preProcess(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 2

    const-string v0, "HTTP request"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP processor"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP context"

    invoke-static {p3, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpMessage;->getVersion()Lorg/apache/hc/core5/http/ProtocolVersion;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lorg/apache/hc/core5/http/HttpVersion;->HTTP_2:Lorg/apache/hc/core5/http/HttpVersion;

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/http/ProtocolVersion;->greaterEquals(Lorg/apache/hc/core5/http/ProtocolVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/hc/core5/http/UnsupportedHttpVersionException;

    invoke-direct {p1, v0}, Lorg/apache/hc/core5/http/UnsupportedHttpVersionException;-><init>(Lorg/apache/hc/core5/http/ProtocolVersion;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Lorg/apache/hc/core5/http/HttpVersion;->HTTP_1_1:Lorg/apache/hc/core5/http/HttpVersion;

    :goto_1
    invoke-interface {p3, v0}, Lorg/apache/hc/core5/http/protocol/HttpContext;->setProtocolVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)V

    const-string v0, "http.request"

    invoke-interface {p3, v0, p1}, Lorg/apache/hc/core5/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpEntityContainer;->getEntity()Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object v0

    invoke-interface {p2, p1, v0, p3}, Lorg/apache/hc/core5/http/HttpRequestInterceptor;->process(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void
.end method
