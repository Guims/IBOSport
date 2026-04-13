.class Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$2;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;->proceedToNextHop(Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$State;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecChain;Lorg/apache/hc/client5/http/async/AsyncExecCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/hc/core5/concurrent/FutureCallback<",
        "Lorg/apache/hc/client5/http/async/AsyncExecRuntime;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;

.field final synthetic val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

.field final synthetic val$chain:Lorg/apache/hc/client5/http/async/AsyncExecChain;

.field final synthetic val$entityProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

.field final synthetic val$exchangeId:Ljava/lang/String;

.field final synthetic val$request:Lorg/apache/hc/core5/http/HttpRequest;

.field final synthetic val$route:Lorg/apache/hc/client5/http/HttpRoute;

.field final synthetic val$scope:Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;

.field final synthetic val$state:Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$State;

.field final synthetic val$tracker:Lorg/apache/hc/client5/http/RouteTracker;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;Lorg/apache/hc/client5/http/RouteTracker;Lorg/apache/hc/client5/http/HttpRoute;Ljava/lang/String;Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$State;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecChain;Lorg/apache/hc/client5/http/async/AsyncExecCallback;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$2;->this$0:Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$2;->val$tracker:Lorg/apache/hc/client5/http/RouteTracker;

    iput-object p3, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$2;->val$route:Lorg/apache/hc/client5/http/HttpRoute;

    iput-object p4, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$2;->val$exchangeId:Ljava/lang/String;

    iput-object p5, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$2;->val$state:Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$State;

    iput-object p6, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$2;->val$request:Lorg/apache/hc/core5/http/HttpRequest;

    iput-object p7, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$2;->val$entityProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    iput-object p8, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$2;->val$scope:Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;

    iput-object p9, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$2;->val$chain:Lorg/apache/hc/client5/http/async/AsyncExecChain;

    iput-object p10, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$2;->val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelled()V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$2;->val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    invoke-interface {v0, v1}, Lorg/apache/hc/client5/http/async/AsyncExecCallback;->failed(Ljava/lang/Exception;)V

    return-void
.end method

.method public bridge synthetic completed(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/apache/hc/client5/http/async/AsyncExecRuntime;

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$2;->completed(Lorg/apache/hc/client5/http/async/AsyncExecRuntime;)V

    return-void
.end method

.method public completed(Lorg/apache/hc/client5/http/async/AsyncExecRuntime;)V
    .locals 9

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$2;->val$tracker:Lorg/apache/hc/client5/http/RouteTracker;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$2;->val$route:Lorg/apache/hc/client5/http/HttpRoute;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/HttpRoute;->isSecure()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/hc/client5/http/RouteTracker;->connectTarget(Z)V

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;->access$100()LO5/a;

    move-result-object p1

    invoke-interface {p1}, LO5/a;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;->access$100()LO5/a;

    move-result-object p1

    const-string v0, "{} connected to target"

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$2;->val$exchangeId:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$2;->this$0:Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$2;->val$state:Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$State;

    iget-object v4, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$2;->val$request:Lorg/apache/hc/core5/http/HttpRequest;

    iget-object v5, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$2;->val$entityProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    iget-object v6, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$2;->val$scope:Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;

    iget-object v7, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$2;->val$chain:Lorg/apache/hc/client5/http/async/AsyncExecChain;

    iget-object v8, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$2;->val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

    invoke-static/range {v2 .. v8}, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;->access$000(Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$State;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecChain;Lorg/apache/hc/client5/http/async/AsyncExecCallback;)V

    return-void
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$2;->val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

    invoke-interface {v0, p1}, Lorg/apache/hc/client5/http/async/AsyncExecCallback;->failed(Ljava/lang/Exception;)V

    return-void
.end method
