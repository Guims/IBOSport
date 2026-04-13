.class Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool$1;
.super Lorg/apache/hc/core5/concurrent/CallbackContribution;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool;->getSession(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/hc/core5/concurrent/CallbackContribution<",
        "Lorg/apache/hc/core5/reactor/IOSession;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool;

.field final synthetic val$callback:Lorg/apache/hc/core5/concurrent/FutureCallback;

.field final synthetic val$connectionConfig:Lorg/apache/hc/client5/http/config/ConnectionConfig;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool;Lorg/apache/hc/core5/concurrent/FutureCallback;Lorg/apache/hc/client5/http/config/ConnectionConfig;Lorg/apache/hc/core5/concurrent/FutureCallback;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool$1;->this$0:Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool;

    iput-object p3, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool$1;->val$connectionConfig:Lorg/apache/hc/client5/http/config/ConnectionConfig;

    iput-object p4, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool$1;->val$callback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    invoke-direct {p0, p2}, Lorg/apache/hc/core5/concurrent/CallbackContribution;-><init>(Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic completed(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/apache/hc/core5/reactor/IOSession;

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool$1;->completed(Lorg/apache/hc/core5/reactor/IOSession;)V

    return-void
.end method

.method public completed(Lorg/apache/hc/core5/reactor/IOSession;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool$1;->val$connectionConfig:Lorg/apache/hc/client5/http/config/ConnectionConfig;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/config/ConnectionConfig;->getSocketTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/reactor/IOSession;->setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool$1;->val$callback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/concurrent/FutureCallback;->completed(Ljava/lang/Object;)V

    return-void
.end method
