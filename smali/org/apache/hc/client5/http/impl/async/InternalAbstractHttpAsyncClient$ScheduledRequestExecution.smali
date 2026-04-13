.class Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$ScheduledRequestExecution;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;
.implements Lorg/apache/hc/core5/concurrent/Cancellable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScheduledRequestExecution"
.end annotation


# instance fields
.field final asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

.field final delay:Lorg/apache/hc/core5/util/TimeValue;

.field final entityProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

.field final request:Lorg/apache/hc/core5/http/HttpRequest;

.field final scope:Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;

.field final synthetic this$0:Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecCallback;Lorg/apache/hc/core5/util/TimeValue;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$ScheduledRequestExecution;->this$0:Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$ScheduledRequestExecution;->request:Lorg/apache/hc/core5/http/HttpRequest;

    iput-object p3, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$ScheduledRequestExecution;->entityProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    iput-object p4, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$ScheduledRequestExecution;->scope:Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;

    iput-object p5, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$ScheduledRequestExecution;->asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

    iput-object p6, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$ScheduledRequestExecution;->delay:Lorg/apache/hc/core5/util/TimeValue;

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$ScheduledRequestExecution;->asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string v2, "Request execution cancelled"

    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/apache/hc/client5/http/async/AsyncExecCallback;->failed(Ljava/lang/Exception;)V

    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$ScheduledRequestExecution;->this$0:Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;

    invoke-static {v0}, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;->access$000(Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient;)Lorg/apache/hc/client5/http/impl/async/AsyncExecChainElement;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$ScheduledRequestExecution;->request:Lorg/apache/hc/core5/http/HttpRequest;

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$ScheduledRequestExecution;->entityProducer:Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$ScheduledRequestExecution;->scope:Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;

    iget-object v4, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$ScheduledRequestExecution;->asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/hc/client5/http/impl/async/AsyncExecChainElement;->execute(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/AsyncEntityProducer;Lorg/apache/hc/client5/http/async/AsyncExecChain$Scope;Lorg/apache/hc/client5/http/async/AsyncExecCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/InternalAbstractHttpAsyncClient$ScheduledRequestExecution;->asyncExecCallback:Lorg/apache/hc/client5/http/async/AsyncExecCallback;

    invoke-interface {v1, v0}, Lorg/apache/hc/client5/http/async/AsyncExecCallback;->failed(Ljava/lang/Exception;)V

    return-void
.end method
