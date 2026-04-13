.class Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool$1;
.super Lorg/apache/hc/core5/concurrent/CallbackContribution;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool;->connectSession(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
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
.field final synthetic this$0:Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool;

.field final synthetic val$callback:Lorg/apache/hc/core5/concurrent/FutureCallback;

.field final synthetic val$connectTimeout:Lorg/apache/hc/core5/util/Timeout;

.field final synthetic val$namedEndpoint:Lorg/apache/hc/core5/http/HttpHost;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool;Lorg/apache/hc/core5/concurrent/FutureCallback;Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool$1;->this$0:Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool;

    iput-object p3, p0, Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool$1;->val$namedEndpoint:Lorg/apache/hc/core5/http/HttpHost;

    iput-object p4, p0, Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool$1;->val$connectTimeout:Lorg/apache/hc/core5/util/Timeout;

    iput-object p5, p0, Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool$1;->val$callback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    invoke-direct {p0, p2}, Lorg/apache/hc/core5/concurrent/CallbackContribution;-><init>(Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic completed(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/apache/hc/core5/reactor/IOSession;

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool$1;->completed(Lorg/apache/hc/core5/reactor/IOSession;)V

    return-void
.end method

.method public completed(Lorg/apache/hc/core5/reactor/IOSession;)V
    .locals 7

    iget-object v0, p0, Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool$1;->this$0:Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool;

    invoke-static {v0}, Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool;->access$000(Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool;)Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/hc/core5/http/URIScheme;->HTTPS:Lorg/apache/hc/core5/http/URIScheme;

    iget-object v1, p0, Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool$1;->val$namedEndpoint:Lorg/apache/hc/core5/http/HttpHost;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/http/URIScheme;->same(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/apache/hc/core5/reactor/ssl/TransportSecurityLayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool$1;->this$0:Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool;

    invoke-static {v0}, Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool;->access$000(Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool;)Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lorg/apache/hc/core5/reactor/ssl/TransportSecurityLayer;

    iget-object v3, p0, Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool$1;->val$namedEndpoint:Lorg/apache/hc/core5/http/HttpHost;

    iget-object v5, p0, Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool$1;->val$connectTimeout:Lorg/apache/hc/core5/util/Timeout;

    new-instance v6, Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool$1$1;

    iget-object v0, p0, Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool$1;->val$callback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    invoke-direct {v6, p0, v0, p1}, Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool$1$1;-><init>(Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool$1;Lorg/apache/hc/core5/concurrent/FutureCallback;Lorg/apache/hc/core5/reactor/IOSession;)V

    const/4 v4, 0x0

    invoke-interface/range {v1 .. v6}, Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;->upgrade(Lorg/apache/hc/core5/reactor/ssl/TransportSecurityLayer;Lorg/apache/hc/core5/net/NamedEndpoint;Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    iget-object v0, p0, Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool$1;->val$connectTimeout:Lorg/apache/hc/core5/util/Timeout;

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/reactor/IOSession;->setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/http2/nio/pool/H2ConnPool$1;->val$callback:Lorg/apache/hc/core5/concurrent/FutureCallback;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/concurrent/FutureCallback;->completed(Ljava/lang/Object;)V

    return-void
.end method
