.class Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$6;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/async/AsyncExecCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;->createTunnel(Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$State;Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecChain;Lorg/apache/hc/client5/http/async/AsyncExecCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;

.field final synthetic val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

.field final synthetic val$clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

.field final synthetic val$proxy:Lorg/apache/hc/core5/http/HttpHost;

.field final synthetic val$proxyAuthExchange:Lorg/apache/hc/client5/http/auth/AuthExchange;

.field final synthetic val$state:Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$State;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;Lorg/apache/hc/client5/http/protocol/HttpClientContext;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$State;Lorg/apache/hc/client5/http/async/AsyncExecCallback;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$6;->this$0:Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$6;->val$clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    iput-object p3, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$6;->val$proxyAuthExchange:Lorg/apache/hc/client5/http/auth/AuthExchange;

    iput-object p4, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$6;->val$proxy:Lorg/apache/hc/core5/http/HttpHost;

    iput-object p5, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$6;->val$state:Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$State;

    iput-object p6, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$6;->val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completed()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$6;->val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

    invoke-interface {v0}, Lorg/apache/hc/client5/http/async/AsyncExecCallback;->completed()V

    return-void
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$6;->val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

    invoke-interface {v0, p1}, Lorg/apache/hc/client5/http/async/AsyncExecCallback;->failed(Ljava/lang/Exception;)V

    return-void
.end method

.method public handleInformationResponse(Lorg/apache/hc/core5/http/HttpResponse;)V
    .locals 0

    return-void
.end method

.method public handleResponse(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;)Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;
    .locals 5

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$6;->val$clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    const-string v1, "http.response"

    invoke-virtual {v0, v1, p1}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$6;->this$0:Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;

    invoke-static {v0}, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;->access$200(Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;)Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$6;->val$clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    invoke-interface {v0, p1, p2, v1}, Lorg/apache/hc/core5/http/HttpResponseInterceptor;->process(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpResponse;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_2

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$6;->this$0:Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$6;->val$proxyAuthExchange:Lorg/apache/hc/client5/http/auth/AuthExchange;

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$6;->val$proxy:Lorg/apache/hc/core5/http/HttpHost;

    iget-object v4, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$6;->val$clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    invoke-static {v1, v2, v3, p1, v4}, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;->access$300(Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/client5/http/protocol/HttpClientContext;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$6;->val$state:Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$State;

    iput-boolean v3, p1, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$State;->challenged:Z

    return-object v2

    :cond_0
    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$6;->val$state:Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$State;

    const/4 v4, 0x0

    iput-boolean v4, v1, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$State;->challenged:Z

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$6;->val$state:Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$State;

    iput-boolean v3, v0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$State;->tunnelRefused:Z

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$6;->val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

    invoke-interface {v0, p1, p2}, Lorg/apache/hc/client5/http/async/AsyncExecCallback;->handleResponse(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;)Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v2

    :cond_2
    new-instance p2, Lorg/apache/hc/core5/http/HttpException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected response to CONNECT request: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/hc/core5/http/message/StatusLine;

    invoke-direct {v1, p1}, Lorg/apache/hc/core5/http/message/StatusLine;-><init>(Lorg/apache/hc/core5/http/HttpResponse;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/hc/core5/http/HttpException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
