.class Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;->execute(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecChain;Lorg/apache/hc/client5/http/async/AsyncExecCallback;)V
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

.field final synthetic val$request:Lorg/apache/hc/core5/http/HttpRequest;

.field final synthetic val$scope:Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;

.field final synthetic val$state:Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$State;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;Lorg/apache/hc/client5/http/async/AsyncExecChain;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecCallback;Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$State;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$1;->this$0:Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$1;->val$chain:Lorg/apache/hc/client5/http/async/AsyncExecChain;

    iput-object p3, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$1;->val$request:Lorg/apache/hc/core5/http/HttpRequest;

    iput-object p4, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$1;->val$entityProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    iput-object p5, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$1;->val$scope:Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;

    iput-object p6, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$1;->val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

    iput-object p7, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$1;->val$state:Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelled()V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$1;->val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    invoke-interface {v0, v1}, Lorg/apache/hc/client5/http/async/AsyncExecCallback;->failed(Ljava/lang/Exception;)V

    return-void
.end method

.method public bridge synthetic completed(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/apache/hc/client5/http/async/AsyncExecRuntime;

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$1;->completed(Lorg/apache/hc/client5/http/async/AsyncExecRuntime;)V

    return-void
.end method

.method public completed(Lorg/apache/hc/client5/http/async/AsyncExecRuntime;)V
    .locals 8

    invoke-interface {p1}, Lorg/apache/hc/client5/http/async/AsyncExecRuntime;->isEndpointConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$1;->val$chain:Lorg/apache/hc/client5/http/async/AsyncExecChain;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$1;->val$request:Lorg/apache/hc/core5/http/HttpRequest;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$1;->val$entityProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$1;->val$scope:Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$1;->val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

    invoke-interface {p1, v0, v1, v2, v3}, Lorg/apache/hc/client5/http/async/AsyncExecChain;->proceed(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecCallback;)V
    :try_end_0
    .catch Lorg/apache/hc/core5/http/HttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    :goto_0
    move-object p1, v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$1;->val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

    invoke-interface {v0, p1}, Lorg/apache/hc/client5/http/async/AsyncExecCallback;->failed(Ljava/lang/Exception;)V

    return-void

    :cond_0
    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$1;->this$0:Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$1;->val$state:Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$State;

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$1;->val$request:Lorg/apache/hc/core5/http/HttpRequest;

    iget-object v4, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$1;->val$entityProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    iget-object v5, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$1;->val$scope:Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;

    iget-object v6, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$1;->val$chain:Lorg/apache/hc/client5/http/async/AsyncExecChain;

    iget-object v7, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$1;->val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

    invoke-static/range {v1 .. v7}, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;->access$000(Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$State;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecChain;Lorg/apache/hc/client5/http/async/AsyncExecCallback;)V

    return-void
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$1;->val$asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

    invoke-interface {v0, p1}, Lorg/apache/hc/client5/http/async/AsyncExecCallback;->failed(Ljava/lang/Exception;)V

    return-void
.end method
