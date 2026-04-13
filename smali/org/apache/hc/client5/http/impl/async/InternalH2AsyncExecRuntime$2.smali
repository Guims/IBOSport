.class Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$2;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;->connectEndpoint(Lorg/apache/hc/client5/http/protocol/HttpClientContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)Lorg/apache/hc/core5/concurrent/Cancellable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/hc/core5/concurrent/FutureCallback<",
        "Lorg/apache/hc/core5/reactor/IOSession;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;

.field final synthetic val$callback:Lorg/apache/hc/core5/concurrent/FutureCallback;

.field final synthetic val$endpoint:Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$Endpoint;

.field final synthetic val$target:Lorg/apache/hc/core5/http/HttpHost;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$Endpoint;Lorg/apache/hc/core5/concurrent/FutureCallback;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$2;->this$0:Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$2;->val$target:Lorg/apache/hc/core5/http/HttpHost;

    iput-object p3, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$2;->val$endpoint:Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$Endpoint;

    iput-object p4, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$2;->val$callback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelled()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$2;->val$callback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    invoke-interface {v0}, Lorg/apache/hc/core5/concurrent/FutureCallback;->cancelled()V

    return-void
.end method

.method public bridge synthetic completed(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/apache/hc/core5/reactor/IOSession;

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$2;->completed(Lorg/apache/hc/core5/reactor/IOSession;)V

    return-void
.end method

.method public completed(Lorg/apache/hc/core5/reactor/IOSession;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$2;->this$0:Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;

    invoke-static {v0}, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;->access$000(Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    new-instance v1, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$Endpoint;

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$2;->val$target:Lorg/apache/hc/core5/http/HttpHost;

    invoke-direct {v1, v2, p1}, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$Endpoint;-><init>(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/reactor/IOSession;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$2;->this$0:Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;->access$102(Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;Z)Z

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$2;->this$0:Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;

    invoke-static {p1}, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;->access$200(Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;)LO5/a;

    move-result-object p1

    invoke-interface {p1}, LO5/a;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$2;->this$0:Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;

    invoke-static {p1}, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;->access$200(Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;)LO5/a;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$2;->val$endpoint:Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$Endpoint;

    invoke-static {v0}, Lorg/apache/hc/client5/http/impl/ConnPoolSupport;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "{} endpoint connected"

    invoke-interface {p1, v0, v1}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$2;->val$callback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$2;->this$0:Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime;

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/concurrent/FutureCallback;->completed(Ljava/lang/Object;)V

    return-void
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2AsyncExecRuntime$2;->val$callback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/concurrent/FutureCallback;->failed(Ljava/lang/Exception;)V

    return-void
.end method
