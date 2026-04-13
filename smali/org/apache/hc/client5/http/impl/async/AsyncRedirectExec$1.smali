.class Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/async/AsyncExecCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec;->internalExecute(Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;Lorg/apache/hc/client5/http/async/AsyncExecChain;Lorg/apache/hc/client5/http/async/AsyncExecCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec;

.field final synthetic val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

.field final synthetic val$chain:Lorg/apache/hc/client5/http/async/AsyncExecChain;

.field final synthetic val$clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

.field final synthetic val$currentRoute:Lorg/apache/hc/client5/http/HttpRoute;

.field final synthetic val$exchangeId:Ljava/lang/String;

.field final synthetic val$request:Lorg/apache/hc/core5/http/HttpRequest;

.field final synthetic val$scope:Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;

.field final synthetic val$state:Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec;Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;Lorg/apache/hc/client5/http/protocol/HttpClientContext;Lorg/apache/hc/core5/http/HttpRequest;Ljava/lang/String;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/HttpRoute;Lorg/apache/hc/client5/http/async/AsyncExecCallback;Lorg/apache/hc/client5/http/async/AsyncExecChain;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->this$0:Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$state:Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;

    iput-object p3, p0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    iput-object p4, p0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$request:Lorg/apache/hc/core5/http/HttpRequest;

    iput-object p5, p0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$exchangeId:Ljava/lang/String;

    iput-object p6, p0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$scope:Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;

    iput-object p7, p0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$currentRoute:Lorg/apache/hc/client5/http/HttpRoute;

    iput-object p8, p0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

    iput-object p9, p0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$chain:Lorg/apache/hc/client5/http/async/AsyncExecChain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completed()V
    .locals 4

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$state:Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;

    iget-object v0, v0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;->redirectURI:Ljava/net/URI;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

    invoke-interface {v0}, Lorg/apache/hc/client5/http/async/AsyncExecCallback;->completed()V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$state:Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;

    iget-object v0, v0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;->currentEntityProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/ResourceHolder;->releaseResources()V

    :cond_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;->isRepeatable()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec;->access$100()LO5/a;

    move-result-object v0

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec;->access$100()LO5/a;

    move-result-object v0

    const-string v1, "{} cannot redirect non-repeatable request"

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$exchangeId:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

    invoke-interface {v0}, Lorg/apache/hc/client5/http/async/AsyncExecCallback;->completed()V

    return-void

    :cond_3
    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$state:Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;

    iget-boolean v0, v0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;->reroute:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$scope:Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;

    iget-object v0, v0, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->execRuntime:Lorg/apache/hc/client5/http/async/AsyncExecRuntime;

    invoke-interface {v0}, Lorg/apache/hc/client5/http/async/AsyncExecRuntime;->releaseEndpoint()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->this$0:Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$state:Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$chain:Lorg/apache/hc/client5/http/async/AsyncExecChain;

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

    invoke-static {v0, v1, v2, v3}, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec;->access$300(Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec;Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;Lorg/apache/hc/client5/http/async/AsyncExecChain;Lorg/apache/hc/client5/http/async/AsyncExecCallback;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/hc/core5/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

    invoke-interface {v1, v0}, Lorg/apache/hc/client5/http/async/AsyncExecCallback;->failed(Ljava/lang/Exception;)V

    return-void
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

    invoke-interface {v0, p1}, Lorg/apache/hc/client5/http/async/AsyncExecCallback;->failed(Ljava/lang/Exception;)V

    return-void
.end method

.method public handleInformationResponse(Lorg/apache/hc/core5/http/HttpResponse;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

    invoke-interface {v0, p1}, Lorg/apache/hc/client5/http/async/AsyncExecCallback;->handleInformationResponse(Lorg/apache/hc/core5/http/HttpResponse;)V

    return-void
.end method

.method public handleResponse(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;)Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$state:Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;->redirectURI:Ljava/net/URI;

    iget-object v2, v0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    invoke-virtual {v2}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/hc/client5/http/config/RequestConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/hc/client5/http/config/RequestConfig;->isRedirectsEnabled()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, v0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->this$0:Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec;

    invoke-static {v4}, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec;->access$000(Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec;)Lorg/apache/hc/client5/http/protocol/RedirectStrategy;

    move-result-object v4

    iget-object v5, v0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$request:Lorg/apache/hc/core5/http/HttpRequest;

    iget-object v6, v0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    invoke-interface {v4, v5, v1, v6}, Lorg/apache/hc/client5/http/protocol/RedirectStrategy;->isRedirected(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/protocol/HttpContext;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, v0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$state:Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;

    iget v4, v4, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;->redirectCount:I

    iget-object v5, v0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$state:Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;

    iget v5, v5, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;->maxRedirects:I

    if-ge v4, v5, :cond_9

    iget-object v4, v0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$state:Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;

    iget v5, v4, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;->redirectCount:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, v4, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;->redirectCount:I

    iget-object v4, v0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->this$0:Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec;

    invoke-static {v4}, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec;->access$000(Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec;)Lorg/apache/hc/client5/http/protocol/RedirectStrategy;

    move-result-object v4

    iget-object v5, v0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$request:Lorg/apache/hc/core5/http/HttpRequest;

    iget-object v7, v0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    invoke-interface {v4, v5, v1, v7}, Lorg/apache/hc/client5/http/protocol/RedirectStrategy;->getLocationURI(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/net/URI;

    move-result-object v4

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec;->access$100()LO5/a;

    move-result-object v5

    invoke-interface {v5}, LO5/a;->c()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec;->access$100()LO5/a;

    move-result-object v5

    const-string v7, "{} redirect requested to location \'{}\'"

    iget-object v8, v0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$exchangeId:Ljava/lang/String;

    invoke-interface {v5, v8, v4, v7}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v2}, Lorg/apache/hc/client5/http/config/RequestConfig;->isCircularRedirectsAllowed()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$state:Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;

    iget-object v2, v2, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;->redirectLocations:Lorg/apache/hc/client5/http/protocol/RedirectLocations;

    invoke-virtual {v2, v4}, Lorg/apache/hc/client5/http/protocol/RedirectLocations;->contains(Ljava/net/URI;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/apache/hc/client5/http/CircularRedirectException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Circular redirect to \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/hc/client5/http/CircularRedirectException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    iget-object v2, v0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$state:Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;

    iget-object v2, v2, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;->redirectLocations:Lorg/apache/hc/client5/http/protocol/RedirectLocations;

    invoke-virtual {v2, v4}, Lorg/apache/hc/client5/http/protocol/RedirectLocations;->add(Ljava/net/URI;)V

    invoke-static {v4}, Lorg/apache/hc/client5/http/utils/URIUtils;->extractHost(Ljava/net/URI;)Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Lorg/apache/hc/core5/http/HttpResponse;->getCode()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    iget-object v5, v0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$scope:Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;

    iget-object v5, v5, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->originalRequest:Lorg/apache/hc/core5/http/HttpRequest;

    invoke-static {v5}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;->copy(Lorg/apache/hc/core5/http/HttpRequest;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    move-result-object v5

    goto :goto_1

    :pswitch_0
    sget-object v5, Lorg/apache/hc/core5/http/Method;->GET:Lorg/apache/hc/core5/http/Method;

    iget-object v7, v0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$request:Lorg/apache/hc/core5/http/HttpRequest;

    invoke-interface {v7}, Lorg/apache/hc/core5/http/HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/apache/hc/core5/http/Method;->isSame(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Lorg/apache/hc/core5/http/Method;->HEAD:Lorg/apache/hc/core5/http/Method;

    iget-object v7, v0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$request:Lorg/apache/hc/core5/http/HttpRequest;

    invoke-interface {v7}, Lorg/apache/hc/core5/http/HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/apache/hc/core5/http/Method;->isSame(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;->get()Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    move-result-object v5

    iget-object v7, v0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$state:Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;

    iput-object v3, v7, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;->currentEntityProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    goto :goto_1

    :cond_3
    iget-object v5, v0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$scope:Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;

    iget-object v5, v5, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->originalRequest:Lorg/apache/hc/core5/http/HttpRequest;

    invoke-static {v5}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;->copy(Lorg/apache/hc/core5/http/HttpRequest;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    move-result-object v5

    goto :goto_1

    :pswitch_1
    sget-object v5, Lorg/apache/hc/core5/http/Method;->POST:Lorg/apache/hc/core5/http/Method;

    iget-object v7, v0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$request:Lorg/apache/hc/core5/http/HttpRequest;

    invoke-interface {v7}, Lorg/apache/hc/core5/http/HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/apache/hc/core5/http/Method;->isSame(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;->get()Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    move-result-object v5

    iget-object v7, v0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$state:Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;

    iput-object v3, v7, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;->currentEntityProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    goto :goto_1

    :cond_4
    iget-object v5, v0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$scope:Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;

    iget-object v5, v5, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->originalRequest:Lorg/apache/hc/core5/http/HttpRequest;

    invoke-static {v5}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;->copy(Lorg/apache/hc/core5/http/HttpRequest;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    move-result-object v5

    :goto_1
    invoke-virtual {v5, v4}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;->setUri(Ljava/net/URI;)Lorg/apache/hc/core5/http/support/BasicRequestBuilder;

    iget-object v7, v0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$state:Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;->reroute:Z

    iget-object v7, v0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$state:Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;

    iput-object v4, v7, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;->redirectURI:Ljava/net/URI;

    iget-object v4, v0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$state:Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;

    invoke-virtual {v5}, Lorg/apache/hc/core5/http/support/BasicRequestBuilder;->build()Lorg/apache/hc/core5/http/message/BasicHttpRequest;

    move-result-object v5

    iput-object v5, v4, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;->currentRequest:Lorg/apache/hc/core5/http/HttpRequest;

    iget-object v4, v0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$currentRoute:Lorg/apache/hc/client5/http/HttpRoute;

    invoke-virtual {v4}, Lorg/apache/hc/client5/http/HttpRoute;->getTargetHost()Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v4

    invoke-static {v4, v2}, Lorg/apache/hc/core5/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, v0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->this$0:Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec;

    invoke-static {v4}, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec;->access$200(Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec;)Lorg/apache/hc/client5/http/routing/HttpRoutePlanner;

    move-result-object v4

    iget-object v5, v0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    invoke-interface {v4, v2, v5}, Lorg/apache/hc/client5/http/routing/HttpRoutePlanner;->determineRoute(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/HttpRoute;

    move-result-object v9

    iget-object v2, v0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$currentRoute:Lorg/apache/hc/client5/http/HttpRoute;

    invoke-static {v2, v9}, Lorg/apache/hc/core5/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$state:Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;

    iput-boolean v6, v2, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;->reroute:Z

    iget-object v2, v0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    iget-object v4, v0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$currentRoute:Lorg/apache/hc/client5/http/HttpRoute;

    invoke-virtual {v4}, Lorg/apache/hc/client5/http/HttpRoute;->getTargetHost()Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getAuthExchange(Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/client5/http/auth/AuthExchange;

    move-result-object v2

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec;->access$100()LO5/a;

    move-result-object v4

    invoke-interface {v4}, LO5/a;->c()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec;->access$100()LO5/a;

    move-result-object v4

    const-string v5, "{} resetting target auth state"

    iget-object v6, v0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$exchangeId:Ljava/lang/String;

    invoke-interface {v4, v6, v5}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v2}, Lorg/apache/hc/client5/http/auth/AuthExchange;->reset()V

    iget-object v2, v0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$currentRoute:Lorg/apache/hc/client5/http/HttpRoute;

    invoke-virtual {v2}, Lorg/apache/hc/client5/http/HttpRoute;->getProxyHost()Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, v0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    iget-object v4, v0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$currentRoute:Lorg/apache/hc/client5/http/HttpRoute;

    invoke-virtual {v4}, Lorg/apache/hc/client5/http/HttpRoute;->getProxyHost()Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getAuthExchange(Lorg/apache/hc/core5/http/HttpHost;)Lorg/apache/hc/client5/http/auth/AuthExchange;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/hc/client5/http/auth/AuthExchange;->isConnectionBased()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec;->access$100()LO5/a;

    move-result-object v4

    invoke-interface {v4}, LO5/a;->c()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec;->access$100()LO5/a;

    move-result-object v4

    const-string v5, "{} resetting proxy auth state"

    iget-object v6, v0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$exchangeId:Ljava/lang/String;

    invoke-interface {v4, v6, v5}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v2}, Lorg/apache/hc/client5/http/auth/AuthExchange;->reset()V

    :cond_7
    iget-object v2, v0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$state:Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;

    new-instance v7, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;

    iget-object v4, v0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$scope:Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;

    iget-object v8, v4, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->exchangeId:Ljava/lang/String;

    iget-object v10, v4, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->originalRequest:Lorg/apache/hc/core5/http/HttpRequest;

    iget-object v11, v4, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->cancellableDependency:Lorg/apache/hc/core5/concurrent/CancellableDependency;

    iget-object v12, v4, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->clientContext:Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    iget-object v13, v4, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->execRuntime:Lorg/apache/hc/client5/http/async/AsyncExecRuntime;

    iget-object v14, v4, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->scheduler:Lorg/apache/hc/client5/http/async/AsyncExecChain$Scheduler;

    iget-object v15, v4, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;->execCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct/range {v7 .. v15}, Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;-><init>(Ljava/lang/String;Lorg/apache/hc/client5/http/HttpRoute;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/concurrent/CancellableDependency;Lorg/apache/hc/client5/http/protocol/HttpClientContext;Lorg/apache/hc/client5/http/async/AsyncExecRuntime;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scheduler;Ljava/util/concurrent/atomic/AtomicInteger;)V

    iput-object v7, v2, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;->currentScope:Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;

    goto :goto_2

    :cond_8
    new-instance v1, Lorg/apache/hc/core5/http/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Redirect URI does not specify a valid host name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    new-instance v1, Lorg/apache/hc/client5/http/RedirectException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Maximum redirects ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$state:Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;

    iget v3, v3, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;->maxRedirects:I

    const-string v4, ") exceeded"

    invoke-static {v2, v3, v4}, Lcom/google/android/material/datepicker/e;->h(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/hc/client5/http/RedirectException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    :goto_2
    iget-object v2, v0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$state:Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;

    iget-object v2, v2, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;->redirectURI:Ljava/net/URI;

    if-eqz v2, :cond_c

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec;->access$100()LO5/a;

    move-result-object v1

    invoke-interface {v1}, LO5/a;->c()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec;->access$100()LO5/a;

    move-result-object v1

    iget-object v2, v0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$exchangeId:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$state:Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;

    iget-object v4, v4, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$State;->redirectURI:Ljava/net/URI;

    iget-object v5, v0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$currentRoute:Lorg/apache/hc/client5/http/HttpRoute;

    filled-new-array {v2, v4, v5}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, "{} redirecting to \'{}\' via {}"

    invoke-interface {v1, v4, v2}, LO5/a;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    return-object v3

    :cond_c
    iget-object v2, v0, Lorg/apache/hc/client5/http/impl/async/AsyncRedirectExec$1;->val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

    move-object/from16 v3, p2

    invoke-interface {v2, v1, v3}, Lorg/apache/hc/client5/http/async/AsyncExecCallback;->handleResponse(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;)Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
