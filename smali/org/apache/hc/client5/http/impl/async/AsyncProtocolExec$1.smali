.class Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/async/AsyncExecCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec;->internalExecute(Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/client5/http/auth/AuthExchange;Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecChain;Lorg/apache/hc/client5/http/async/AsyncExecCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec;

.field final synthetic val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

.field final synthetic val$chain:Lorg/apache/hc/client5/http/async/AsyncExecChain;

.field final synthetic val$challenged:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

.field final synthetic val$entityProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

.field final synthetic val$exchangeId:Ljava/lang/String;

.field final synthetic val$execRuntime:Lorg/apache/hc/client5/http/async/AsyncExecRuntime;

.field final synthetic val$pathPrefix:Ljava/lang/String;

.field final synthetic val$proxy:Lorg/apache/hc/core5/http/HttpHost;

.field final synthetic val$proxyAuthExchange:Lorg/apache/hc/client5/http/auth/AuthExchange;

.field final synthetic val$request:Lorg/apache/hc/core5/http/HttpRequest;

.field final synthetic val$scope:Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;

.field final synthetic val$target:Lorg/apache/hc/core5/http/HttpHost;

.field final synthetic val$targetAuthExchange:Lorg/apache/hc/client5/http/auth/AuthExchange;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/client5/http/async/AsyncExecCallback;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Lorg/apache/hc/client5/http/protocol/HttpClientContext;Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/apache/hc/client5/http/async/AsyncExecRuntime;Ljava/lang/String;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecChain;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->this$0:Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$request:Lorg/apache/hc/core5/http/HttpRequest;

    iput-object p3, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

    iput-object p4, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$targetAuthExchange:Lorg/apache/hc/client5/http/auth/AuthExchange;

    iput-object p5, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$proxyAuthExchange:Lorg/apache/hc/client5/http/auth/AuthExchange;

    iput-object p6, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$proxy:Lorg/apache/hc/core5/http/HttpHost;

    iput-object p7, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$target:Lorg/apache/hc/core5/http/HttpHost;

    iput-object p8, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$pathPrefix:Ljava/lang/String;

    iput-object p9, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    iput-object p10, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$challenged:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p11, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$execRuntime:Lorg/apache/hc/client5/http/async/AsyncExecRuntime;

    iput-object p12, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$exchangeId:Ljava/lang/String;

    iput-object p13, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$entityProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    iput-object p14, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$scope:Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;

    iput-object p15, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$chain:Lorg/apache/hc/client5/http/async/AsyncExecChain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completed()V
    .locals 12

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$execRuntime:Lorg/apache/hc/client5/http/async/AsyncExecRuntime;

    invoke-interface {v0}, Lorg/apache/hc/client5/http/async/AsyncExecRuntime;->isEndpointConnected()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$proxyAuthExchange:Lorg/apache/hc/client5/http/auth/AuthExchange;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/auth/AuthExchange;->getState()Lorg/apache/hc/client5/http/auth/AuthExchange$State;

    move-result-object v0

    sget-object v1, Lorg/apache/hc/client5/http/auth/AuthExchange$State;->SUCCESS:Lorg/apache/hc/client5/http/auth/AuthExchange$State;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$proxyAuthExchange:Lorg/apache/hc/client5/http/auth/AuthExchange;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/auth/AuthExchange;->isConnectionBased()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec;->access$100()LO5/a;

    move-result-object v0

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec;->access$100()LO5/a;

    move-result-object v0

    const-string v2, "{} resetting proxy auth state"

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$exchangeId:Ljava/lang/String;

    invoke-interface {v0, v3, v2}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$proxyAuthExchange:Lorg/apache/hc/client5/http/auth/AuthExchange;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/auth/AuthExchange;->reset()V

    :cond_1
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$targetAuthExchange:Lorg/apache/hc/client5/http/auth/AuthExchange;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/auth/AuthExchange;->getState()Lorg/apache/hc/client5/http/auth/AuthExchange$State;

    move-result-object v0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$targetAuthExchange:Lorg/apache/hc/client5/http/auth/AuthExchange;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/auth/AuthExchange;->isConnectionBased()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec;->access$100()LO5/a;

    move-result-object v0

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec;->access$100()LO5/a;

    move-result-object v0

    const-string v1, "{} resetting target auth state"

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$exchangeId:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$targetAuthExchange:Lorg/apache/hc/client5/http/auth/AuthExchange;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/auth/AuthExchange;->reset()V

    :cond_3
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$challenged:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$entityProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;->isRepeatable()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec;->access$100()LO5/a;

    move-result-object v0

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec;->access$100()LO5/a;

    move-result-object v0

    const-string v1, "{} cannot retry non-repeatable request"

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$exchangeId:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

    invoke-interface {v0}, Lorg/apache/hc/client5/http/async/AsyncExecCallback;->completed()V

    return-void

    :cond_5
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$scope:Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;

    iget-object v0, v0, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->originalRequest:Lorg/apache/hc/core5/http/HttpRequest;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$request:Lorg/apache/hc/core5/http/HttpRequest;

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/apache/hc/core5/http/Header;

    invoke-interface {v1, v2}, Lorg/apache/hc/core5/http/HttpMessage;->setHeaders([Lorg/apache/hc/core5/http/Header;)V

    invoke-interface {v0}, Lorg/apache/hc/core5/http/MessageHeaders;->headerIterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$request:Lorg/apache/hc/core5/http/HttpRequest;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/hc/core5/http/Header;

    invoke-interface {v1, v2}, Lorg/apache/hc/core5/http/HttpMessage;->addHeader(Lorg/apache/hc/core5/http/Header;)V

    goto :goto_0

    :cond_6
    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$entityProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/ResourceHolder;->releaseResources()V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_7
    :goto_1
    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->this$0:Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec;

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$target:Lorg/apache/hc/core5/http/HttpHost;

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$pathPrefix:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$targetAuthExchange:Lorg/apache/hc/client5/http/auth/AuthExchange;

    iget-object v5, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$proxyAuthExchange:Lorg/apache/hc/client5/http/auth/AuthExchange;

    iget-object v6, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$challenged:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v7, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$request:Lorg/apache/hc/core5/http/HttpRequest;

    iget-object v8, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$entityProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    iget-object v9, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$scope:Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;

    iget-object v10, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$chain:Lorg/apache/hc/client5/http/async/AsyncExecChain;

    iget-object v11, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

    invoke-static/range {v1 .. v11}, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec;->access$200(Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/client5/http/auth/AuthExchange;Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecChain;Lorg/apache/hc/client5/http/async/AsyncExecCallback;)V
    :try_end_0
    .catch Lorg/apache/hc/core5/http/HttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

    invoke-interface {v1, v0}, Lorg/apache/hc/client5/http/async/AsyncExecCallback;->failed(Ljava/lang/Exception;)V

    :goto_3
    return-void

    :cond_8
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

    invoke-interface {v0}, Lorg/apache/hc/client5/http/async/AsyncExecCallback;->completed()V

    return-void
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 3

    instance-of v0, p1, Ljava/io/IOException;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getAuthExchanges()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/hc/client5/http/auth/AuthExchange;

    invoke-virtual {v1}, Lorg/apache/hc/client5/http/auth/AuthExchange;->isConnectionBased()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lorg/apache/hc/client5/http/auth/AuthExchange;->reset()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

    invoke-interface {v0, p1}, Lorg/apache/hc/client5/http/async/AsyncExecCallback;->failed(Ljava/lang/Exception;)V

    return-void
.end method

.method public handleInformationResponse(Lorg/apache/hc/core5/http/HttpResponse;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

    invoke-interface {v0, p1}, Lorg/apache/hc/client5/http/async/AsyncExecCallback;->handleInformationResponse(Lorg/apache/hc/core5/http/HttpResponse;)V

    return-void
.end method

.method public handleResponse(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;)Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;
    .locals 8

    sget-object v0, Lorg/apache/hc/core5/http/Method;->TRACE:Lorg/apache/hc/core5/http/Method;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$request:Lorg/apache/hc/core5/http/HttpRequest;

    invoke-interface {v1}, Lorg/apache/hc/core5/http/HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/http/Method;->isSame(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

    invoke-interface {v0, p1, p2}, Lorg/apache/hc/client5/http/async/AsyncExecCallback;->handleResponse(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;)Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->this$0:Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$targetAuthExchange:Lorg/apache/hc/client5/http/auth/AuthExchange;

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$proxyAuthExchange:Lorg/apache/hc/client5/http/auth/AuthExchange;

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$proxy:Lorg/apache/hc/core5/http/HttpHost;

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$target:Lorg/apache/hc/core5/http/HttpHost;

    :goto_0
    iget-object v4, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$target:Lorg/apache/hc/core5/http/HttpHost;

    iget-object v5, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$pathPrefix:Ljava/lang/String;

    iget-object v7, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    move-object v6, p1

    invoke-static/range {v0 .. v7}, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec;->access$000(Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/client5/http/protocol/HttpClientContext;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$challenged:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 p1, 0x0

    return-object p1

    :cond_2
    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$challenged:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncProtocolExec$1;->val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

    invoke-interface {p1, v6, p2}, Lorg/apache/hc/client5/http/async/AsyncExecCallback;->handleResponse(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;)Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;

    move-result-object p1

    return-object p1
.end method
