.class Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$4;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/async/AsyncExecCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;->proceedToNextHop(Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$State;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecChain;Lorg/apache/hc/client5/http/async/AsyncExecCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;

.field final synthetic val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

.field final synthetic val$chain:Lorg/apache/hc/client5/http/async/AsyncExecChain;

.field final synthetic val$entityProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

.field final synthetic val$exchangeId:Ljava/lang/String;

.field final synthetic val$execRuntime:Lorg/apache/hc/client5/http/async/AsyncExecRuntime;

.field final synthetic val$request:Lorg/apache/hc/core5/http/HttpRequest;

.field final synthetic val$scope:Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;

.field final synthetic val$state:Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$State;

.field final synthetic val$tracker:Lorg/apache/hc/client5/http/RouteTracker;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;Lorg/apache/hc/client5/http/async/AsyncExecCallback;Lorg/apache/hc/client5/http/async/AsyncExecRuntime;Ljava/lang/String;Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$State;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecChain;Lorg/apache/hc/client5/http/RouteTracker;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$4;->this$0:Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$4;->val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

    iput-object p3, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$4;->val$execRuntime:Lorg/apache/hc/client5/http/async/AsyncExecRuntime;

    iput-object p4, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$4;->val$exchangeId:Ljava/lang/String;

    iput-object p5, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$4;->val$state:Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$State;

    iput-object p6, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$4;->val$request:Lorg/apache/hc/core5/http/HttpRequest;

    iput-object p7, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$4;->val$entityProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    iput-object p8, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$4;->val$scope:Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;

    iput-object p9, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$4;->val$chain:Lorg/apache/hc/client5/http/async/AsyncExecChain;

    iput-object p10, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$4;->val$tracker:Lorg/apache/hc/client5/http/RouteTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completed()V
    .locals 10

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$4;->val$execRuntime:Lorg/apache/hc/client5/http/async/AsyncExecRuntime;

    invoke-interface {v0}, Lorg/apache/hc/client5/http/async/AsyncExecRuntime;->isEndpointConnected()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;->access$100()LO5/a;

    move-result-object v0

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;->access$100()LO5/a;

    move-result-object v0

    const-string v1, "{} proxy disconnected"

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$4;->val$exchangeId:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$4;->val$state:Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$State;

    iget-object v0, v0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$State;->tracker:Lorg/apache/hc/client5/http/RouteTracker;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/RouteTracker;->reset()V

    :cond_1
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$4;->val$state:Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$State;

    iget-boolean v0, v0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$State;->challenged:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;->access$100()LO5/a;

    move-result-object v0

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;->access$100()LO5/a;

    move-result-object v0

    const-string v1, "{} proxy authentication required"

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$4;->val$exchangeId:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$4;->this$0:Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;

    iget-object v4, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$4;->val$state:Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$State;

    iget-object v5, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$4;->val$request:Lorg/apache/hc/core5/http/HttpRequest;

    iget-object v6, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$4;->val$entityProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    iget-object v7, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$4;->val$scope:Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;

    iget-object v8, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$4;->val$chain:Lorg/apache/hc/client5/http/async/AsyncExecChain;

    iget-object v9, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$4;->val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

    invoke-static/range {v3 .. v9}, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;->access$000(Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$State;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecChain;Lorg/apache/hc/client5/http/async/AsyncExecCallback;)V

    return-void

    :cond_3
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$4;->val$state:Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$State;

    iget-boolean v0, v0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$State;->tunnelRefused:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;->access$100()LO5/a;

    move-result-object v0

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;->access$100()LO5/a;

    move-result-object v0

    const-string v1, "{} tunnel refused"

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$4;->val$exchangeId:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$4;->val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

    new-instance v1, Lorg/apache/hc/client5/http/impl/TunnelRefusedException;

    const-string v2, "Tunnel refused"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/apache/hc/client5/http/impl/TunnelRefusedException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/apache/hc/client5/http/async/AsyncExecCallback;->failed(Ljava/lang/Exception;)V

    return-void

    :cond_5
    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;->access$100()LO5/a;

    move-result-object v0

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;->access$100()LO5/a;

    move-result-object v0

    const-string v1, "{} tunnel to target created"

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$4;->val$exchangeId:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$4;->val$tracker:Lorg/apache/hc/client5/http/RouteTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/hc/client5/http/RouteTracker;->tunnelTarget(Z)V

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$4;->this$0:Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$4;->val$state:Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$State;

    iget-object v4, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$4;->val$request:Lorg/apache/hc/core5/http/HttpRequest;

    iget-object v5, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$4;->val$entityProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    iget-object v6, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$4;->val$scope:Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;

    iget-object v7, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$4;->val$chain:Lorg/apache/hc/client5/http/async/AsyncExecChain;

    iget-object v8, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$4;->val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

    invoke-static/range {v2 .. v8}, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;->access$000(Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$State;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecChain;Lorg/apache/hc/client5/http/async/AsyncExecCallback;)V

    return-void
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$4;->val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

    invoke-interface {v0, p1}, Lorg/apache/hc/client5/http/async/AsyncExecCallback;->failed(Ljava/lang/Exception;)V

    return-void
.end method

.method public handleInformationResponse(Lorg/apache/hc/core5/http/HttpResponse;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$4;->val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

    invoke-interface {v0, p1}, Lorg/apache/hc/client5/http/async/AsyncExecCallback;->handleInformationResponse(Lorg/apache/hc/core5/http/HttpResponse;)V

    return-void
.end method

.method public handleResponse(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;)Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$4;->val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

    invoke-interface {v0, p1, p2}, Lorg/apache/hc/client5/http/async/AsyncExecCallback;->handleResponse(Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/EntityDetails;)Lorg/apache/hc/core5/http/nio/AsyncDataConsumer;

    move-result-object p1

    return-object p1
.end method
