.class Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator;->connect(Lorg/apache/hc/core5/reactor/ConnectionInitiator;Lorg/apache/hc/core5/http/HttpHost;Ljava/net/SocketAddress;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Object;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
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
.field final synthetic this$0:Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator;

.field final synthetic val$attachment:Ljava/lang/Object;

.field final synthetic val$connectTimeout:Lorg/apache/hc/core5/util/Timeout;

.field final synthetic val$future:Lorg/apache/hc/core5/concurrent/ComplexFuture;

.field final synthetic val$host:Lorg/apache/hc/core5/http/HttpHost;

.field final synthetic val$tlsConfig:Lorg/apache/hc/client5/http/config/TlsConfig;

.field final synthetic val$tlsStrategy:Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator;Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/config/TlsConfig;Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/ComplexFuture;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator$1;->this$0:Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator$1;->val$tlsStrategy:Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;

    iput-object p3, p0, Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator$1;->val$host:Lorg/apache/hc/core5/http/HttpHost;

    iput-object p4, p0, Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator$1;->val$tlsConfig:Lorg/apache/hc/client5/http/config/TlsConfig;

    iput-object p5, p0, Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator$1;->val$attachment:Ljava/lang/Object;

    iput-object p6, p0, Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator$1;->val$connectTimeout:Lorg/apache/hc/core5/util/Timeout;

    iput-object p7, p0, Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator$1;->val$future:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelled()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator$1;->val$future:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    invoke-virtual {v0}, Lorg/apache/hc/core5/concurrent/BasicFuture;->cancel()Z

    return-void
.end method

.method public bridge synthetic completed(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/apache/hc/core5/reactor/IOSession;

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator$1;->completed(Lorg/apache/hc/core5/reactor/IOSession;)V

    return-void
.end method

.method public completed(Lorg/apache/hc/core5/reactor/IOSession;)V
    .locals 7

    new-instance v1, Lorg/apache/hc/client5/http/impl/nio/DefaultManagedAsyncClientConnection;

    invoke-direct {v1, p1}, Lorg/apache/hc/client5/http/impl/nio/DefaultManagedAsyncClientConnection;-><init>(Lorg/apache/hc/core5/reactor/IOSession;)V

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator$1;->val$tlsStrategy:Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;

    if-eqz p1, :cond_1

    sget-object p1, Lorg/apache/hc/core5/http/URIScheme;->HTTPS:Lorg/apache/hc/core5/http/URIScheme;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator$1;->val$host:Lorg/apache/hc/core5/http/HttpHost;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/hc/core5/http/URIScheme;->same(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {v1}, Lorg/apache/hc/client5/http/impl/nio/DefaultManagedAsyncClientConnection;->getSocketTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator$1;->val$tlsConfig:Lorg/apache/hc/client5/http/config/TlsConfig;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/config/TlsConfig;->getHandshakeTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object v0

    move-object v2, v0

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator$1;->val$tlsStrategy:Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;

    move-object v3, v2

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator$1;->val$host:Lorg/apache/hc/core5/http/HttpHost;

    move-object v4, v3

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator$1;->val$attachment:Ljava/lang/Object;

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator$1;->val$connectTimeout:Lorg/apache/hc/core5/util/Timeout;

    :goto_0
    new-instance v5, Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator$1$1;

    iget-object v6, p0, Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator$1;->val$future:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    invoke-direct {v5, p0, v6, v1, p1}, Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator$1$1;-><init>(Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator$1;Lorg/apache/hc/core5/concurrent/BasicFuture;Lorg/apache/hc/client5/http/impl/nio/DefaultManagedAsyncClientConnection;Lorg/apache/hc/core5/util/Timeout;)V

    invoke-interface/range {v0 .. v5}, Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;->upgrade(Lorg/apache/hc/core5/reactor/ssl/TransportSecurityLayer;Lorg/apache/hc/core5/net/NamedEndpoint;Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator$1;->val$future:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/concurrent/ComplexFuture;->failed(Ljava/lang/Exception;)Z

    return-void

    :cond_1
    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator$1;->val$future:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    invoke-virtual {p1, v1}, Lorg/apache/hc/core5/concurrent/ComplexFuture;->completed(Ljava/lang/Object;)Z

    return-void
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator$1;->val$future:Lorg/apache/hc/core5/concurrent/ComplexFuture;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/concurrent/ComplexFuture;->failed(Ljava/lang/Exception;)Z

    return-void
.end method
