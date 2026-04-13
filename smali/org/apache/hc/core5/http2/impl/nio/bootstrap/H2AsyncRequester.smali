.class public Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2AsyncRequester;
.super Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;


# instance fields
.field private final versionPolicy:Lorg/apache/hc/core5/http2/HttpVersionPolicy;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http2/HttpVersionPolicy;Lorg/apache/hc/core5/reactor/IOReactorConfig;Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;Lorg/apache/hc/core5/function/Decorator;Lorg/apache/hc/core5/function/Callback;Lorg/apache/hc/core5/reactor/IOSessionListener;Lorg/apache/hc/core5/pool/ManagedConnPool;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http2/HttpVersionPolicy;",
            "Lorg/apache/hc/core5/reactor/IOReactorConfig;",
            "Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;",
            "Lorg/apache/hc/core5/function/Decorator<",
            "Lorg/apache/hc/core5/reactor/IOSession;",
            ">;",
            "Lorg/apache/hc/core5/function/Callback<",
            "Ljava/lang/Exception;",
            ">;",
            "Lorg/apache/hc/core5/reactor/IOSessionListener;",
            "Lorg/apache/hc/core5/pool/ManagedConnPool<",
            "Lorg/apache/hc/core5/http/HttpHost;",
            "Lorg/apache/hc/core5/reactor/IOSession;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/apache/hc/core5/annotation/Internal;
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;-><init>(Lorg/apache/hc/core5/reactor/IOReactorConfig;Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;Lorg/apache/hc/core5/function/Decorator;Lorg/apache/hc/core5/function/Callback;Lorg/apache/hc/core5/reactor/IOSessionListener;Lorg/apache/hc/core5/pool/ManagedConnPool;)V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/apache/hc/core5/http2/HttpVersionPolicy;->NEGOTIATE:Lorg/apache/hc/core5/http2/HttpVersionPolicy;

    :goto_0
    iput-object p1, v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2AsyncRequester;->versionPolicy:Lorg/apache/hc/core5/http2/HttpVersionPolicy;

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http2/HttpVersionPolicy;Lorg/apache/hc/core5/reactor/IOReactorConfig;Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;Lorg/apache/hc/core5/function/Decorator;Lorg/apache/hc/core5/function/Callback;Lorg/apache/hc/core5/reactor/IOSessionListener;Lorg/apache/hc/core5/pool/ManagedConnPool;Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;Lorg/apache/hc/core5/util/Timeout;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http2/HttpVersionPolicy;",
            "Lorg/apache/hc/core5/reactor/IOReactorConfig;",
            "Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;",
            "Lorg/apache/hc/core5/function/Decorator<",
            "Lorg/apache/hc/core5/reactor/IOSession;",
            ">;",
            "Lorg/apache/hc/core5/function/Callback<",
            "Ljava/lang/Exception;",
            ">;",
            "Lorg/apache/hc/core5/reactor/IOSessionListener;",
            "Lorg/apache/hc/core5/pool/ManagedConnPool<",
            "Lorg/apache/hc/core5/http/HttpHost;",
            "Lorg/apache/hc/core5/reactor/IOSession;",
            ">;",
            "Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;",
            "Lorg/apache/hc/core5/util/Timeout;",
            ")V"
        }
    .end annotation

    .annotation build Lorg/apache/hc/core5/annotation/Internal;
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;-><init>(Lorg/apache/hc/core5/reactor/IOReactorConfig;Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;Lorg/apache/hc/core5/function/Decorator;Lorg/apache/hc/core5/function/Callback;Lorg/apache/hc/core5/reactor/IOSessionListener;Lorg/apache/hc/core5/pool/ManagedConnPool;Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;Lorg/apache/hc/core5/util/Timeout;)V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/apache/hc/core5/http2/HttpVersionPolicy;->NEGOTIATE:Lorg/apache/hc/core5/http2/HttpVersionPolicy;

    :goto_0
    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2AsyncRequester;->versionPolicy:Lorg/apache/hc/core5/http2/HttpVersionPolicy;

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2AsyncRequester;)Lorg/apache/hc/core5/http2/HttpVersionPolicy;
    .locals 0

    iget-object p0, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2AsyncRequester;->versionPolicy:Lorg/apache/hc/core5/http2/HttpVersionPolicy;

    return-object p0
.end method


# virtual methods
.method public doConnect(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Object;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/HttpHost;",
            "Lorg/apache/hc/core5/util/Timeout;",
            "Ljava/lang/Object;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "Lorg/apache/hc/core5/http/nio/AsyncClientEndpoint;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lorg/apache/hc/core5/http/nio/AsyncClientEndpoint;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2AsyncRequester;->versionPolicy:Lorg/apache/hc/core5/http2/HttpVersionPolicy;

    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;->doConnect(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Object;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public doTlsUpgrade(Lorg/apache/hc/core5/reactor/ProtocolIOSession;Lorg/apache/hc/core5/net/NamedEndpoint;Lorg/apache/hc/core5/concurrent/FutureCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/reactor/ProtocolIOSession;",
            "Lorg/apache/hc/core5/net/NamedEndpoint;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "Lorg/apache/hc/core5/reactor/ProtocolIOSession;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2AsyncRequester$1;

    invoke-direct {v0, p0, p3, p3}, Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2AsyncRequester$1;-><init>(Lorg/apache/hc/core5/http2/impl/nio/bootstrap/H2AsyncRequester;Lorg/apache/hc/core5/concurrent/FutureCallback;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    invoke-super {p0, p1, p2, v0}, Lorg/apache/hc/core5/http/impl/bootstrap/HttpAsyncRequester;->doTlsUpgrade(Lorg/apache/hc/core5/reactor/ProtocolIOSession;Lorg/apache/hc/core5/net/NamedEndpoint;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    return-void
.end method
