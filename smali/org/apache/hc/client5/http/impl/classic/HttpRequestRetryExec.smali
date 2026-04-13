.class public Lorg/apache/hc/client5/http/impl/classic/HttpRequestRetryExec;
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
.field private final retryStrategy:Lorg/apache/hc/client5/http/HttpRequestRetryStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/hc/client5/http/impl/classic/HttpRequestRetryExec;

    invoke-static {v0}, LO5/b;->d(Ljava/lang/Class;)LO5/a;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/classic/HttpRequestRetryExec;->LOG:LO5/a;

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/client5/http/HttpRequestRetryStrategy;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "retryStrategy"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/HttpRequestRetryExec;->retryStrategy:Lorg/apache/hc/client5/http/HttpRequestRetryStrategy;

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/client5/http/classic/ExecChain$Scope;Lorg/apache/hc/client5/http/classic/ExecChain;)Lorg/apache/hc/core5/http/ClassicHttpResponse;
    .locals 10

    const-string v0, "{} wait for {}"

    const-string v1, "{} cannot retry non-repeatable request"

    const-string v2, "request"

    invoke-static {p1, v2}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "scope"

    invoke-static {p2, v2}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v2, p2, Lorg/apache/hc/client5/http/classic/ExecChain$Scope;->exchangeId:Ljava/lang/String;

    iget-object v3, p2, Lorg/apache/hc/client5/http/classic/ExecChain$Scope;->route:Lorg/apache/hc/client5/http/HttpRoute;

    iget-object v4, p2, Lorg/apache/hc/client5/http/classic/ExecChain$Scope;->clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    const/4 v5, 0x1

    move-object v6, p1

    :goto_0
    :try_start_0
    invoke-interface {p3, v6, p2}, Lorg/apache/hc/client5/http/classic/ExecChain;->proceed(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/client5/http/classic/ExecChain$Scope;)Lorg/apache/hc/core5/http/ClassicHttpResponse;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpEntityContainer;->getEntity()Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Lorg/apache/hc/core5/http/HttpEntity;->isRepeatable()Z

    move-result v7

    if-nez v7, :cond_0

    sget-object p1, Lorg/apache/hc/client5/http/impl/classic/HttpRequestRetryExec;->LOG:LO5/a;

    invoke-interface {p1}, LO5/a;->c()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1, v2, v1}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    iget-object v7, p0, Lorg/apache/hc/client5/http/impl/classic/HttpRequestRetryExec;->retryStrategy:Lorg/apache/hc/client5/http/HttpRequestRetryStrategy;

    invoke-interface {v7, v6, v5, v4}, Lorg/apache/hc/client5/http/HttpRequestRetryStrategy;->retryRequest(Lorg/apache/hc/core5/http/HttpResponse;ILorg/apache/hc/core5/http/protocol/HttpContext;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lorg/apache/hc/client5/http/impl/classic/HttpRequestRetryExec;->retryStrategy:Lorg/apache/hc/client5/http/HttpRequestRetryStrategy;

    invoke-interface {v7, v6, v5, v4}, Lorg/apache/hc/client5/http/HttpRequestRetryStrategy;->getRetryInterval(Lorg/apache/hc/core5/http/HttpResponse;ILorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/util/TimeValue;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/hc/core5/util/TimeValue;->isPositive(Lorg/apache/hc/core5/util/TimeValue;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v4}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/hc/client5/http/config/RequestConfig;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/hc/client5/http/config/RequestConfig;->getResponseTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v7, v8}, Lorg/apache/hc/core5/util/TimeValue;->compareTo(Lorg/apache/hc/core5/util/TimeValue;)I

    move-result v8

    if-lez v8, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v6}, Ljava/io/Closeable;->close()V

    invoke-static {v7}, Lorg/apache/hc/core5/util/TimeValue;->isPositive(Lorg/apache/hc/core5/util/TimeValue;)Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v8, :cond_3

    :try_start_2
    sget-object v8, Lorg/apache/hc/client5/http/impl/classic/HttpRequestRetryExec;->LOG:LO5/a;

    invoke-interface {v8}, LO5/a;->c()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8, v2, v7, v0}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v7}, Lorg/apache/hc/core5/util/TimeValue;->sleep()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_1
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    :cond_3
    :goto_1
    iget-object v7, p2, Lorg/apache/hc/client5/http/classic/ExecChain$Scope;->originalRequest:Lorg/apache/hc/core5/http/ClassicHttpRequest;

    invoke-static {v7}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;->copy(Lorg/apache/hc/core5/http/ClassicHttpRequest;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;->build()Lorg/apache/hc/core5/http/ClassicHttpRequest;

    move-result-object v6
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_5

    :cond_4
    :goto_2
    return-object v6

    :goto_3
    invoke-interface {v6}, Ljava/io/Closeable;->close()V

    throw p1

    :catch_2
    move-exception v6

    iget-object v7, p2, Lorg/apache/hc/client5/http/classic/ExecChain$Scope;->execRuntime:Lorg/apache/hc/client5/http/classic/ExecRuntime;

    invoke-interface {v7}, Lorg/apache/hc/client5/http/classic/ExecRuntime;->isExecutionAborted()Z

    move-result v7

    if-nez v7, :cond_d

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpEntityContainer;->getEntity()Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-interface {v7}, Lorg/apache/hc/core5/http/HttpEntity;->isRepeatable()Z

    move-result v7

    if-nez v7, :cond_6

    sget-object p1, Lorg/apache/hc/client5/http/impl/classic/HttpRequestRetryExec;->LOG:LO5/a;

    invoke-interface {p1}, LO5/a;->c()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1, v2, v1}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    throw v6

    :cond_6
    iget-object v7, p0, Lorg/apache/hc/client5/http/impl/classic/HttpRequestRetryExec;->retryStrategy:Lorg/apache/hc/client5/http/HttpRequestRetryStrategy;

    invoke-interface {v7, p1, v6, v5, v4}, Lorg/apache/hc/client5/http/HttpRequestRetryStrategy;->retryRequest(Lorg/apache/hc/core5/http/HttpRequest;Ljava/io/IOException;ILorg/apache/hc/core5/http/protocol/HttpContext;)Z

    move-result v7

    if-eqz v7, :cond_b

    sget-object v7, Lorg/apache/hc/client5/http/impl/classic/HttpRequestRetryExec;->LOG:LO5/a;

    invoke-interface {v7}, LO5/a;->c()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v2, v8, v6}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "{} {}"

    invoke-interface {v7, v9, v8}, LO5/a;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    invoke-interface {v7}, LO5/a;->k()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Recoverable I/O exception ({}) caught when processing request to {}"

    invoke-interface {v7, v8, v3, v9}, LO5/a;->v(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_8
    iget-object v8, p0, Lorg/apache/hc/client5/http/impl/classic/HttpRequestRetryExec;->retryStrategy:Lorg/apache/hc/client5/http/HttpRequestRetryStrategy;

    invoke-interface {v8, p1, v6, v5, v4}, Lorg/apache/hc/client5/http/HttpRequestRetryStrategy;->getRetryInterval(Lorg/apache/hc/core5/http/HttpRequest;Ljava/io/IOException;ILorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/util/TimeValue;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/hc/core5/util/TimeValue;->isPositive(Lorg/apache/hc/core5/util/TimeValue;)Z

    move-result v8

    if-eqz v8, :cond_a

    :try_start_4
    invoke-interface {v7}, LO5/a;->c()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7, v2, v6, v0}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v6}, Lorg/apache/hc/core5/util/TimeValue;->sleep()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    :cond_a
    :goto_4
    iget-object v6, p2, Lorg/apache/hc/client5/http/classic/ExecChain$Scope;->originalRequest:Lorg/apache/hc/core5/http/ClassicHttpRequest;

    invoke-static {v6}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;->copy(Lorg/apache/hc/core5/http/ClassicHttpRequest;)Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/hc/core5/http/io/support/ClassicRequestBuilder;->build()Lorg/apache/hc/core5/http/ClassicHttpRequest;

    move-result-object v6

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_b
    instance-of p1, v6, Lorg/apache/hc/core5/http/NoHttpResponseException;

    if-eqz p1, :cond_c

    new-instance p1, Lorg/apache/hc/core5/http/NoHttpResponseException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lorg/apache/hc/client5/http/HttpRoute;->getTargetHost()Lorg/apache/hc/core5/http/HttpHost;

    move-result-object p3

    invoke-virtual {p3}, Lorg/apache/hc/core5/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " failed to respond"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/hc/core5/http/NoHttpResponseException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    throw p1

    :cond_c
    throw v6

    :cond_d
    new-instance p1, Lorg/apache/hc/client5/http/impl/classic/RequestFailedException;

    const-string p2, "Request aborted"

    invoke-direct {p1, p2}, Lorg/apache/hc/client5/http/impl/classic/RequestFailedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
